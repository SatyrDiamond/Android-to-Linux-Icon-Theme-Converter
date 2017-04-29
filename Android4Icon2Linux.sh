mkdir ./converted_theme/

makethemedir()
{
  eval size="$1"
  mkdir ./converted_theme/${size}
  mkdir ./converted_theme/${size}/actions
  mkdir ./converted_theme/${size}/apps
  mkdir ./converted_theme/${size}/categories
  mkdir ./converted_theme/${size}/devices
  mkdir ./converted_theme/${size}/emblems
  mkdir ./converted_theme/${size}/emotes
  mkdir ./converted_theme/${size}/mimetypes
  mkdir ./converted_theme/${size}/places
  mkdir ./converted_theme/${size}/status
  mkdir ./converted_theme/${size}/web
}

makethemedir "512x512@2x"
makethemedir "512x512"
makethemedir "48x48@2x"
makethemedir "48x48"
makethemedir "32x32@2x"
makethemedir "32x32"
makethemedir "24x24@2x"
makethemedir "24x24"
makethemedir "16x16@2x"
makethemedir "16x16"

converticon()
{
  echo "converting Android Icon (${androidiconname}) to Linux Icon (${linuxiconname})"
  eval androidiconname="$1"
  eval linuxiconname="$2"
  eval cat="$3"
  convert ./res/drawable-nodpi-v4/${androidiconname}.png -resize 16x16 ./converted_theme/16x16/${cat}/${linuxiconname}.png
  convert ./res/drawable-nodpi-v4/${androidiconname}.png -resize 32x32 ./converted_theme/16x16@2x/${cat}/${linuxiconname}.png
  convert ./res/drawable-nodpi-v4/${androidiconname}.png -resize 24x24 ./converted_theme/24x24/${cat}/${linuxiconname}.png
  convert ./res/drawable-nodpi-v4/${androidiconname}.png -resize 48x48 ./converted_theme/24x24@2x/${cat}/${linuxiconname}.png
  convert ./res/drawable-nodpi-v4/${androidiconname}.png -resize 32x32 ./converted_theme/32x32/${cat}/${linuxiconname}.png
  convert ./res/drawable-nodpi-v4/${androidiconname}.png -resize 64x64 ./converted_theme/32x32@2x/${cat}/${linuxiconname}.png
  convert ./res/drawable-nodpi-v4/${androidiconname}.png -resize 48x48 ./converted_theme/48x48/${cat}/${linuxiconname}.png
  convert ./res/drawable-nodpi-v4/${androidiconname}.png -resize 96x96 ./converted_theme/48x48@2x/${cat}/${linuxiconname}.png
  convert ./res/drawable-nodpi-v4/${androidiconname}.png -resize 512x512 ./converted_theme/512x512/${cat}/${linuxiconname}.png
  convert ./res/drawable-nodpi-v4/${androidiconname}.png -resize 1024x1024 ./converted_theme/512x512@2x/${cat}/${linuxiconname}.png
}

converticon amazon amazon-mp3-store-source web
converticon amazon amazon-store web
converticon amazon Amazon-www.amazon.ca web
converticon amazon Amazon-www.amazon.cn web
converticon amazon Amazon-www.amazon.co.uk web
converticon amazon Amazon-www.amazon.com web
converticon amazon Amazon-www.amazon.de web
converticon amazon Amazon-www.amazon.es web
converticon amazon Amazon-www.amazon.fr web
converticon amazon Amazon-www.amazon.it web
converticon lastfm as-icon web
converticon lastfm as-powered web
converticon drive chrome-apdfllckaahabafndbhieahigkjlhalf-Default web
converticon youtube chrome-blpcfgokakmgnkcojhhkbfbldkacnbeo-Default web
converticon telegram chrome-clhhggbfdinjmjhajaheehoeibfljjno-Default web
converticon googleplus chrome-coobgpohoikkiipiblmjeljniedjpjpf-Default web
converticon telegram chrome-fahmaaghhglfmonjliepjlchgpgfmobi-Default web
converticon plex chrome-fpniocchabmgenibceglhnfeimmdhdfm-Default web
converticon slack chrome-jeogkiiogjbmhklcnbgkdcjoioegiknm-Default web
converticon hangouts chrome-knipolnnllmklapflnccelgolnpehhp web
converticon hangouts chrome-knipolnnllmklapflnccelgolnpehhp-Default web
converticon evernote chrome-lbfehkoinhhcknnbdgnnmjhiladcgbol-Default web
converticon messenger chrome-mdapmeleikeppmfgadilffngabfpibok-Default web
converticon pocket chrome-mjcnijlhddpbdemagnpefmlkjdagkogk-Default web
converticon hangouts chrome-nckgahadagoaajjgafhacjanaoiihapd-Default web
converticon pocket chrome-niloccemoadcdkdjlinkgdfekeahmflj-Default web
converticon dropbox Dropbox web
converticon evernote Evernote web
converticon evernote Evernote-evernote.com web
converticon evernote Evernote-www.evernote.com web
converticon evernote everpad web
converticon facebook facebook web
converticon facebook facebook-facebook.com web
converticon messenger FacebookMessenger-facebook.com web
converticon facebook facebookresource web
converticon messenger fbmessenger web
converticon flickr flickr web
converticon foursquare foursquare web
converticon lastfm goa-account-lastfm web
converticon microsoft goa-account-microsoft web
converticon microsoft goa-account-msn web
converticon pocket goa-account-pocket web
converticon twitter goa-account-twitter web
converticon yahoo goa-account-yahoo web
converticon drive google-drive web
converticon hangouts google-hangouts web
converticon googleplus Google-plus.google.com web
converticon googleplus googleplus web
converticon twitter gtwitter web
converticon drive gwoffice web
converticon facebook im-facebook web
converticon hangouts im-google-talk web
converticon microsoft im-msn web
converticon yahoo im-yahoo web
converticon youtube krunner_youtube.com web
converticon lastfm lastfm web
converticon lastfm lastfm-audioscrobbler web
converticon lastfm lastfm-www.last.fm web
converticon microsoft microsoft web
converticon microsoft msn web
converticon plex plexhometheater web
converticon plex plexmediamanager web
converticon pocket Pocket-getpocket.com web
converticon reddit reddit-is-a-dead-bird web
converticon reddit Reddit-pay.reddit.com web
converticon reddit Reddit-reddit.com web
converticon slack slack web
converticon telegram telegram web
converticon twitter twitter web
converticon twitter Twitter-twitter.com web
converticon facebook unity-webapps-facebook web
converticon news unity-webapps-google-news web
converticon lastfm unity-webapps-lastfm web
converticon pocket unity-webapps-pocket web
converticon reddit unity-webapps-reddit web
converticon telegram unity-webapps-telegram web
converticon yahoo unity-webapps-yahoo-mail web
converticon yahoo unity-webapps-yahoonews web
converticon youtube unity-webapps-youtube.com web
converticon amazon web-amazon web
converticon dropbox web-dropbox web
converticon evernote web-evernote web
converticon facebook web-facebook web
converticon messenger web-facebook-messenger web
converticon flickr web-flickr web
converticon foursquare web-foursquare web
converticon drive web-google-drive web
converticon hangouts web-google-hangouts web
converticon googleplus web-google-plus web
converticon lastfm web-lastfm web
converticon microsoft web-microsoft web
converticon plex web-plex web
converticon pocket web-pocket web
converticon reddit web-reddit web
converticon slack web-slack web
converticon telegram web-telegram web
converticon twitter web-twitter web
converticon whatsapp web-whatsapp web
converticon yahoo web-yahoo web
converticon youtube web-youtube web
converticon whatsapp whatsappfordesktop web
converticon whatsapp whatsie web
converticon youtube YouTube-youtube.com web

converticon calculator accessories-calculator apps
converticon camera accessories-camera apps
converticon native_clipboard accessories-clipboard apps
converticon clock accessories-clock apps
converticon dictionary accessories-dictionary apps
converticon adobe_flash adobe-flash apps
converticon adobereader AdobeReader apps
converticon adobereader adobe-reader apps
converticon adobereader AdobeReader8 apps
converticon adobereader AdobeReader9 apps
converticon adobereader AdobeReader10 apps
converticon adobereader AdobeReader11 apps
converticon adobereader AdobeReader12 apps
converticon clock clock apps
converticon rssfeedreader akregator apps
converticon clock alarm-clock apps
converticon voicerecorder audio-recorder apps
converticon authy authy apps
converticon rssfeedreader blam apps
converticon bluetooth blueman apps
converticon bluetooth blueradio apps
converticon bluetooth blueradio-48 apps
converticon bluetooth bluetooth-48 apps
converticon bluetooth bluetoothradio apps
converticon bluetooth bluetooth-radio apps
converticon browser browser apps
converticon bluetooth bt-logo apps
converticon calculator calc apps
converticon calendar calendar apps
converticon ic_calendar_1 calendar-blue-01 apps
converticon ic_calendar_2 calendar-blue-02 apps
converticon ic_calendar_3 calendar-blue-03 apps
converticon ic_calendar_4 calendar-blue-04 apps
converticon ic_calendar_5 calendar-blue-05 apps
converticon ic_calendar_6 calendar-blue-06 apps
converticon ic_calendar_7 calendar-blue-07 apps
converticon ic_calendar_8 calendar-blue-08 apps
converticon ic_calendar_9 calendar-blue-09 apps
converticon ic_calendar_10 calendar-blue-10 apps
converticon ic_calendar_11 calendar-blue-11 apps
converticon ic_calendar_12 calendar-blue-12 apps
converticon ic_calendar_13 calendar-blue-13 apps
converticon ic_calendar_14 calendar-blue-14 apps
converticon ic_calendar_15 calendar-blue-15 apps
converticon ic_calendar_16 calendar-blue-16 apps
converticon ic_calendar_17 calendar-blue-17 apps
converticon ic_calendar_18 calendar-blue-18 apps
converticon ic_calendar_19 calendar-blue-19 apps
converticon ic_calendar_20 calendar-blue-20 apps
converticon ic_calendar_21 calendar-blue-21 apps
converticon ic_calendar_22 calendar-blue-22 apps
converticon ic_calendar_23 calendar-blue-23 apps
converticon ic_calendar_24 calendar-blue-24 apps
converticon ic_calendar_25 calendar-blue-25 apps
converticon ic_calendar_26 calendar-blue-26 apps
converticon ic_calendar_27 calendar-blue-27 apps
converticon ic_calendar_28 calendar-blue-28 apps
converticon ic_calendar_29 calendar-blue-29 apps
converticon ic_calendar_30 calendar-blue-30 apps
converticon ic_calendar_31 calendar-blue-31 apps
converticon ic_calendar_1 calendar-purple-01 apps
converticon ic_calendar_2 calendar-purple-02 apps
converticon ic_calendar_3 calendar-purple-03 apps
converticon ic_calendar_4 calendar-purple-04 apps
converticon ic_calendar_5 calendar-purple-05 apps
converticon ic_calendar_6 calendar-purple-06 apps
converticon ic_calendar_7 calendar-purple-07 apps
converticon ic_calendar_8 calendar-purple-08 apps
converticon ic_calendar_9 calendar-purple-09 apps
converticon ic_calendar_10 calendar-purple-10 apps
converticon ic_calendar_11 calendar-purple-11 apps
converticon ic_calendar_12 calendar-purple-12 apps
converticon ic_calendar_13 calendar-purple-13 apps
converticon ic_calendar_14 calendar-purple-14 apps
converticon ic_calendar_15 calendar-purple-15 apps
converticon ic_calendar_16 calendar-purple-16 apps
converticon ic_calendar_17 calendar-purple-17 apps
converticon ic_calendar_18 calendar-purple-18 apps
converticon ic_calendar_19 calendar-purple-19 apps
converticon ic_calendar_20 calendar-purple-20 apps
converticon ic_calendar_21 calendar-purple-21 apps
converticon ic_calendar_22 calendar-purple-22 apps
converticon ic_calendar_23 calendar-purple-23 apps
converticon ic_calendar_24 calendar-purple-24 apps
converticon ic_calendar_25 calendar-purple-25 apps
converticon ic_calendar_26 calendar-purple-26 apps
converticon ic_calendar_27 calendar-purple-27 apps
converticon ic_calendar_28 calendar-purple-28 apps
converticon ic_calendar_29 calendar-purple-29 apps
converticon ic_calendar_30 calendar-purple-30 apps
converticon ic_calendar_31 calendar-purple-31 apps
converticon ic_calendar_1 calendar-red-01 apps
converticon ic_calendar_2 calendar-red-02 apps
converticon ic_calendar_3 calendar-red-03 apps
converticon ic_calendar_4 calendar-red-04 apps
converticon ic_calendar_5 calendar-red-05 apps
converticon ic_calendar_6 calendar-red-06 apps
converticon ic_calendar_7 calendar-red-07 apps
converticon ic_calendar_8 calendar-red-08 apps
converticon ic_calendar_9 calendar-red-09 apps
converticon ic_calendar_10 calendar-red-10 apps
converticon ic_calendar_11 calendar-red-11 apps
converticon ic_calendar_12 calendar-red-12 apps
converticon ic_calendar_13 calendar-red-13 apps
converticon ic_calendar_14 calendar-red-14 apps
converticon ic_calendar_15 calendar-red-15 apps
converticon ic_calendar_16 calendar-red-16 apps
converticon ic_calendar_17 calendar-red-17 apps
converticon ic_calendar_18 calendar-red-18 apps
converticon ic_calendar_19 calendar-red-19 apps
converticon ic_calendar_20 calendar-red-20 apps
converticon ic_calendar_21 calendar-red-21 apps
converticon ic_calendar_22 calendar-red-22 apps
converticon ic_calendar_23 calendar-red-23 apps
converticon ic_calendar_24 calendar-red-24 apps
converticon ic_calendar_25 calendar-red-25 apps
converticon ic_calendar_26 calendar-red-26 apps
converticon ic_calendar_27 calendar-red-27 apps
converticon ic_calendar_28 calendar-red-28 apps
converticon ic_calendar_29 calendar-red-29 apps
converticon ic_calendar_30 calendar-red-30 apps
converticon ic_calendar_31 calendar-red-31 apps
converticon chrome chrome apps
converticon spotify chrome-cnkjkdjlofllcpbemipjbcpfnglbgieh-Default apps
converticon authy chrome-gaedmjdfmmahhbjefcbgaolhhanlaolb-Default apps
converticon chromium chromium apps
converticon chromium chromium-browser apps
converticon bluetooth cs-bluetooth apps
converticon clock cs-date-time apps
converticon fonts cs-fonts apps
converticon keyboard cs-keyboard apps
converticon notifications_manager cs-notifications apps
converticon clock cuckoo apps
converticon calendar date apps
converticon calendar dayfolder apps
converticon dictionary dictionary apps
converticon discord discord apps
converticon browser epiphany apps
converticon browser epiphany-browser apps
converticon browser epiphany-icon apps
converticon browser epiphany-webkit apps
converticon rssfeedreader feedreader apps
converticon file-manager file-manager apps
converticon applock_fingerprint fingerprint apps
converticon firefox firefox apps
converticon firefox firefox-3.0 apps
converticon firefox firefox-3.5 apps
converticon firefox firefox3 apps
converticon firefox firefox-4.0 apps
converticon firefox firefox-beta apps
converticon firefox firefox-default apps
converticon firefox firefox-esr apps
converticon firefox firefox-gtk3 apps
converticon firefox firefox-icon apps
converticon firefox firefox-original apps
converticon firefox firefox-nightly apps
converticon firefox firefox-nightly-icon apps
converticon firefox firefox-trunk apps
converticon firefox firefox-aurora apps
converticon firefox firefox-developer-icon apps
converticon fonts fonts apps
converticon fonts font-viewer apps
converticon calculator galculator apps
converticon skype ghetto-skype apps
converticon github git apps
converticon calculator gnome-calculator apps
converticon calendar gnome-calendar apps
converticon clock gnome-clocks apps
converticon file_commander gnome-commander apps
converticon contacts gnome-contacts apps
converticon terminal deepin-terminal apps
converticon terminal Etermutilities-terminal apps
converticon terminal gnome-eterm apps
converticon music gnome-music apps
converticon terminal gnome-xterm apps
converticon terminal gnome-terminal apps
converticon voicerecorder gnome-sound-recorder apps
converticon notes gnome-sticky-notes-applet apps
converticon todo gnome-todo apps
converticon weather gnome-weather apps
converticon notes gnote apps
converticon chrome googlechrome apps
converticon chrome google-chrome apps
converticon chrome google-chrome2 apps
converticon chrome_beta google-chrome-beta apps
converticon chrome_dev google-chrome-unstable apps
converticon mail internet-mail apps
converticon browser internet-web-browser apps
converticon camera kamoso apps
converticon calculator kcalc apps
converticon videomaker kdenlive apps
converticon videomaker avidemux apps
converticon keepass2android keepass apps
converticon keepass2android keepass2 apps
converticon keepass2android keepassx apps
converticon keepass2android keepassx2 apps
converticon mail kmail apps
converticon notes knotes apps
converticon kodi kodi apps
converticon terminal konsole apps
converticon contacts kontact apps
converticon contacts ktp-contacts apps
converticon terminal lxterminal apps
converticon mail mail_generic apps
converticon mail mail-generic apps
converticon notifications_manager mate-notification-properties apps
converticon calendar maya apps
converticon browser midori apps
converticon minecraft minecraft apps
converticon playerpro multimedia apps
converticon music multimedia-audio-player apps
converticon videos multimedia-video-player apps
converticon volumecontrol multimedia-volume-control apps
converticon file_manager nautilus apps
converticon file_manager nautilus-actions apps
converticon file_manager nautilus-actions-config-tool apps
converticon file_manager nemo apps
converticon contacts office-addressbook apps
converticon contacts office-address-book apps
converticon calendar office-calendar apps
converticon opera opera apps
converticon opera_beta opera-beta apps
converticon opera opera-browser apps
converticon opera opera-browser-icon apps
converticon opera opera-developer apps
converticon opera opera-icon apps
converticon videomaker openshot apps
converticon terminal openterm apps
converticon calendar org.gnome.Calendar apps
converticon camera org.gnome.Cheese apps
converticon clock org.gnome.clocks apps
converticon contacts org.gnome.Contacts apps
converticon documents org.gnome.Documents apps
converticon filemanager org.gnome.Files apps
converticon music org.gnome.Music apps
converticon filemanager org.gnome.Nautilus apps
converticon todo org.gnome.Todo apps
converticon videos org.gnome.Totem apps
converticon weather org.gnome.Weather.Application apps
converticon weather org.gnome.Weather apps
converticon calendar osmo apps
converticon popcorn-time popcorn-time apps
converticon bluetooth preferences-bluetooth apps
converticon calendar preferences-calendar-and-tasks apps
converticon bluetooth preferences-system-bluetooth apps
converticon clock preferences-system-time apps
converticon terminal qterminal apps
converticon email redhat-email apps
converticon filemanager redhat-filemanager apps
converticon browser redhat-web-browser apps
converticon music rhythmbox apps
converticon skype skype apps
converticon skype skype_protocol apps
converticon skype skype-call-recorder apps
converticon skype skypeforlinux apps
converticon spotify spotify apps
converticon spotify spotify-beta apps
converticon spotify spotify-client apps
converticon spotify spotify-exe apps
converticon spotify spotify-linux-48x48 apps
converticon mail sylpheed apps
converticon syncthing syncthing apps
converticon syncthing syncthing-gtk apps
converticon filemanager system-file-manager apps
converticon search system-search apps
converticon terminal terminal apps
converticon terminal terminal-tango apps
converticon terminal terminology apps
converticon terminal terra apps
converticon filemanager Thunar apps
converticon mail thunderbird apps
converticon videos totem apps
converticon tomahawk tomahawk apps
converticon mail unity-mail apps
converticon clock unity-datetime-panel apps
converticon terminal utilities-terminal apps
converticon terminal utilities-x-terminal apps
converticon terminal utilities-terminal-alt apps
converticon vlc vlc apps
converticon vlc vlc-xmas apps
converticon browser web-browser apps
converticon browser webbrowser-app apps
converticon wolframalpha wolfram-mathematica apps
converticon wolfram_alpha wolfram-mathematica apps
converticon calendar xfcalendar apps
converticon dictionary xfce4-dict apps
converticon filemanager xfce-filemanager apps
converticon mail xfce-mail apps
converticon terminal xfce-terminal apps
converticon calendar ximian-evolution-calendar apps
converticon terminal xterm apps
converticon terminal xterm_32x32 apps
converticon terminal xterm_48x48 apps
converticon terminal xterm-color apps
converticon terminal xterm-color_32x32 apps
converticon terminal xterm-color_48x48 apps
converticon playerpro xplayer apps