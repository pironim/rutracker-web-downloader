QUICK AND DIRTY
RUTRACKER TORRENTS DOWNLOADER FOR ANY FORUM
NOT AUTOMATED
NO CHEATING. JUST PLAIN JS CLICKS

There some limits for daily downloads - 100 or 1000

run script and enter login,password from your account.
There is no checks it start working after 60 seconds

Customize JS which can download all torrents on page 
and visit next page on forum
Change hardcoded value for number of pages

THERE IS NO checks for failed download

```
ruby run.rb
```
and click allow multiple downloads(can be added to script)

ruby > 3.0 should be fine but maybe it working with older versions

and checking progress
```
ls -al ~/Downloads/*.torrent | wc -l
```
