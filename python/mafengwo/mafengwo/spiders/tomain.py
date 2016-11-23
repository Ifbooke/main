import scrapy
import json
import re
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
    "Content-Type":" application/x-www-form-urlencoded; charset=UTF-8",
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

    def parse(self, response):
        self.log('进来了.......')
        # print(response.body)
        body = response.body.decode("utf-8")
        mfw = json.loads(body)
        html = mfw['data']['html']

        res = Selector(text=html).xpath('//*[@id="_j_tn_content"]/div')
        content = []
        for queue in res:
            item = MafengwoItem()
            item['title'] = queue.xpath('div/div/dl/dt/a/text()').extract()
            item['desc'] = queue.xpath('div/div/dl/dd/a/text()').extract()
            item['pic_url'] = queue.xpath('div/div/a/img/@src').extract()
            item['link_url'] = queue.xpath('div/div/a/@href').extract()
            yield scrapy.Request(url='http://www.mafengwo.cn' + next, headers=self.headers, meta={'item':item}, callback=self.get_content, dont_filter=True)


    def get_content(self, response):
        self.log('进来了呀呀呀呀呀呀呀.......')
        body = response.body.decode("utf-8")
        item=response.meta['item']
        linkurl =

        content.append(Selector(text=body).xpath('/html/body/div[2]/div[3]/div[1]/div[3]/div[1]').extract())
        return content