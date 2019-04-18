# set file name
out_ps=02_taiwan.ps
  
# reset output paper size to A4
gmt set PS_MEDIA A4
  
# start gmt session
gmt psxy -R0/1/0/1 -JX1c -T -K > $out_ps
  
# write your gmt code here
gmt pscoast -R122/154/20/46 -Jm0.5 -B1 -W1 -Df -Ia -P -O -K >> $out_ps
# end gmt session
gmt psxy -R -J -O -T >> $out_ps
  
# convert to pdf
gmt psconvert $out_ps -P -Tf
# convert to png
gmt psconvert $out_ps -P -Tg