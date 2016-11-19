from scrapy import Spider
from scrapy.selector import Selector
from dandan.items import DandanItem

class doMain(Spider):
    name = 'dandan'
    allowed_domains = 'http://group.jobbole.com'
    start_urls = [
        'http://group.jobbole.com/category/tech/python/',
    ]

    def parse(self, response):
        res = Selector(response).xpath('/html/body/div[1]/div/div/div/div[1]/div[1]/ul/li')

        for queue in res:
            item = DandanItem()
            item['title'] = queue.xpath('div/h3/a/text()').extract()[0]

            yield item