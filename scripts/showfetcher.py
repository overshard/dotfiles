import urllib2
import re
import time
import os.path
from operator import attrgetter
from datetime import datetime

#
# A TV Show Fetcher for EZTV.it
# -- Will export an rss feed <title>.rss
#

#
# TV Show Node Class
#
class Show:
    def __init__(self, season, episode, title, link):
        self.season = season
        self.episode = episode
        self.title = title
        self.link = link

    def __repr__(self):
        return repr((self.season, self.episode, self.title, self.link))

#
# Used in actually fetcing shows
# @param title is the title of the show, will be used as the file name too
# @param url is the url to the eztv show page
#
class ShowFetcher:

    #
    # LOL constructors... This, Is, Python!
    #
    def __init__(self, title, url):
        html = self.fetchShow(url)
        showList = self.parseEpisodes(html)
        self.exportShow(title, url, showList)

    #
    # Fetches the show page and returns a string of the page
    # @param url is the eztv.it show page
    #
    def fetchShow(self, url):
        html = urllib2.urlopen(url).read()
        return html

    def parseEpisodes(self, html):
        findShows = re.findall('<a href=".*" title=".*" alt=".*" class="epinfo">(.*)<\/a>\s*.*\s*.*<a href="(.*)" class="download_1" title="Download Mirror #1"><\/a>', html)
        showList = []
        for item in findShows:
            seasonAndEpisode = re.search('(?:S|s)(\d{2}).*(?:E|e)(\d{2})', item[0])
            if (seasonAndEpisode != None):
                showList.append(Show(int(seasonAndEpisode.group(1)), int(seasonAndEpisode.group(2)), item[0], item[1]))
            else:
                seasonAndEpisode = re.search('(\d{1})x(\d{2})', item[0])
                if (seasonAndEpisode != None):
                    showList.append(Show(int(seasonAndEpisode.group(1)), int(seasonAndEpisode.group(2)), item[0], item[1]))
        if (len(showList) > 10):
            showList = showList[0:10]
        return showList

    def exportShow(self, title, link, showList):
        fileName = title.lower().replace(' ', '') + ".rss"
        if os.path.exists(fileName):
            fileContents = open(fileName, 'r').read()
            showsContained = re.findall('<title>(.*)<\/title>', fileContents)
            for item in showsContained:
                for itemIter in showList:
                    if (item == itemIter.title):
                        showList.remove(itemIter)
                        break
            if (len(showList) > 0):
                oldContents = re.findall('((?:.|\n)*)<\/channel>\s*<\/rss>', fileContents)
                fileContents = open(fileName, 'w')
                fileContents.write(oldContents[0])
                for show in showList:
                    # Start preformatting
                    fileContents.write('''
  <item>
    <updated>''' + str(datetime.now()) + '''</updated>
    <title>''' + show.title + '''</title>
    <link>''' + show.link + '''</link>
    <guid>''' + show.link + '''</guid>
  </item>''')

                fileContents.write('''
</channel>
</rss>''')
                # End preformatting
        else:
            fileContents = open(fileName, 'w')
            # Start preformatting
            fileContents.write('''<?xml version="1.0" encoding="ISO-8859-1" ?>
<rss version="2.0">
<channel>
  <title>''' + title + '''</title>
  <link>''' + link + '''</link>''')
            for show in showList:
                fileContents.write('''

  <item>
    <updated>''' + str(datetime.now()) + '''</updated>
    <title>''' + show.title + '''</title>
    <link>''' + show.link + '''</link>
    <guid>''' + show.link + '''</guid>
  </item>''')

            fileContents.write('''
</channel>
</rss>''')
            # End preformatting

#
# Fetch our shows.
#

shows = [
    ['Camelot', 'http://eztv.it/shows/469/camelot/'],
    ['Archer', 'http://eztv.it/shows/319/archer-2009/'],
    ['American Dad', 'http://eztv.it/shows/7/american-dad/'],
    ['Family Guy', 'http://eztv.it/shows/92/family-guy/'],
    ['South Park', 'http://eztv.it/shows/257/south-park/'],
    ['Saturday Night Live', 'http://eztv.it/shows/241/saturday-night-live/'],
    ['Sons of Anarchy', 'http://eztv.it/shows/255/sons-of-anarchy/'],
    ['Sherlock', 'http://eztv.it/shows/376/sherlock/'],
    ['Psych', 'http://eztv.it/shows/220/psych/'],
    ['Castle', 'http://eztv.it/shows/42/castle-2009/'],
    ['The Big Bang Theory', 'http://eztv.it/shows/23/the-big-bang-theory/'],
    ['How I Met Your Mother', 'http://eztv.it/shows/125/how-i-met-your-mother/'],
    ['Game of Thrones', 'http://eztv.it/shows/481/game-of-thrones/'],
    ['Futurama', 'http://eztv.it/shows/374/futurama/'],
    ['Torchwood', 'http://eztv.it/shows/277/torchwood/'],
    ['Eureka', 'http://eztv.it/shows/89/eureka/'],
    ['Doctor Who', 'http://eztv.it/shows/82/doctor-who/'],
    ['The Mentalist', 'http://eztv.it/shows/179/the-mentalist/'],
]

for show in shows:
    time.sleep(5)
    ShowFetcher(show[0], show[1])