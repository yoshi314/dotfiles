
#!/bin/sh
browser=firefox

which firefox-bin && browser=firefox-bin

${browser} "$@"
