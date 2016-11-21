import scrapy
from scrapy import Spider
from scrapy.selector import Selector
from top.items import TopItem


class doMain(Spider):
    name = 'top'
    allowde_domains = 'http://www.guokr.com'
    start_urls = [
        'http://www.guokr.com/scientific'
    ]

    def parse(self, respons):
        res = Selector(respons).xpath('//*[@id="waterfall"]/div')
        for queue in res:
            item = TopItem()
            item['title'] = queue.xpath('h3/a/text()').extract()[0]
            item['img'] = queue.xpath('a/img/@src').extract()[0]
            item['desc'] = queue.xpath('p/text()').extract()[0]
            item['link_url'] = queue.xpath('h3/a/@href').extract()[0]
            link_url = queue.xpath('h3/a/@href').extract()[0]
            yield scrapy.Request(url=link_url, meta={'item':item}, callback=self.parse_news)

    def parse_news(self, response):
        item = response.meta['item']
        item['content'] = Selector(response).xpath('//*[@id="articleContent"]/div/div/p').extract()
        yield item