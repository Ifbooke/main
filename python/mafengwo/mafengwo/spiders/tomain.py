import scrapy
import json
import re
import time
import copy
from scrapy import Spider
from scrapy.selector import Selector
from mafengwo.items import MafengwoItem


class doMain(Spider):
    name = 'mafengwo'
    allowed_domains = 'http://www.mafengwo.cn/'
    start_urls = [
        'http://www.mafengwo.cn/ajax/ajax_fetch_pagelet.php?params={"type":0,"objid":0,"page":1,"ajax":1,"retina":0}&api=:mfw:pagelet:recommendGinfoApi&_=1479795547892'
    ]

    headers = {
        "Accept": "text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8",
        "Accept-Encoding": "gzip,deflate",
        "Accept-Language": "en-US,en;q=0.8,zh-TW;q=0.6,zh;q=0.4",
        "Connection": "keep-alive",
        "Content-Type": " application/x-www-form-urlencoded; charset=UTF-8",
        "User-Agent": "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36",
        "Referer": "http://www.mafengwo.cn/"
    }

    headers = {'Content-Type': 'application/x-www-form-urlencoded; charset=UTF-8'}

    # def parse(self, response):
    #     self.log('正在查询......')
    #     yield scrapy.Request('http://www.mafengwo.cn/', headers=self.headers, callback=self.passs, dont_filter=True)
    #
    # def passs(self, response):
    #     self.log('进来了.......')
    #     item = MafengwoItem()
    #     item['title'] = Selector(response).xpath('//*[@id="_j_tn_content"]/div[1]/div[1]/div[2]/dl/dt/a/text()').extract()
    #     yield item

    # sites = json.loads(response.body_as_unicode())
    page = 1
    def parse(self, response):
        self.log('正在抓取第' + str(doMain.page) + '页')
        # print(response.body)
        body = response.body.decode("utf-8")
        mfw = json.loads(body)
        html = mfw['data']['html']

        netx_page = Selector(text=html).xpath('//a[@class="pg-next _j_pageitem"]/text()').extract()[0] # 下一页
        title = Selector(text=html).xpath('//*[@id="_j_tn_content"]/div/div/div/dl/dt/a/text()').extract()
        desc = Selector(text=html).xpath('//*[@id="_j_tn_content"]/div/div/div/dl/dd/a/text()').extract()
        pic_url = Selector(text=html).xpath('//*[@id="_j_tn_content"]/div/div/div/a/img/@src').extract()
        link_url = Selector(text=html).xpath('//*[@id="_j_tn_content"]/div/div/div/a/@href').extract()
        for i in range(12):
            yield scrapy.Request(url=response.urljoin(link_url[i]), headers=self.headers, meta={'title': title[i], 'desc': desc[i], 'pic_url': pic_url[i], 'link_url': link_url[i]}, callback=self.get_content, dont_filter=True)

        if netx_page:
            doMain.page += 1
            next_url = 'http://www.mafengwo.cn/ajax/ajax_fetch_pagelet.php?params={"type":0,"objid":0,"page":' + str(doMain.page) +',"ajax":1,"retina":0}&api=:mfw:pagelet:recommendGinfoApi&_=1479795547892'
            yield scrapy.Request(next_url, callback=self.parse, dont_filter=True)
        else:
            self.log('全部页面抓取完成.....')
            return

    def get_content(self, response):
        body = response.body.decode("utf-8")
        item = MafengwoItem()
        item['title'] = response.meta['title']
        item['desc'] = response.meta['desc']
        item['pic_url'] = response.meta['pic_url']
        item['link_url'] =response.meta['link_url']
        content = Selector(text=body).xpath('//div[@class="vc_article"]').extract()
        if not content:
            content = Selector(text=body).xpath('//*[@id="pnl_contentinfo"]/p').extract()
        item['content'] = content
        yield item

