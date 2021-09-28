import subprocess

from i3pystatus import Status

#from i3pystatus.core import Status

status = Status(standalone=True)

# Displays clock like this:
# Tue 30 Jul 11:59:46 PM KW31
#                          ^-- calendar week
status.register("clock",
    format="%a %-d %b %X KW%V",)
# status.reti

# Shows the average load of the last minute and the last 5 minutes
# (the default value for format is used)
status.register("load")


status.register("weather",
        city_code="PLXX0049",
        )

status.register("disk",
	path="/var",
	format="/var [free {avail}G]",)


status.register("mpd",
    format="{status} {title} | {artist}",
    status={
        "pause": "▷",
        "play": "▶",
        "stop": "◾",
    },)



status.run()
