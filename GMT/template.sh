#set file name
out_ps=template.ps
  
# reset output paper size to A4
gmt set PS_MEDIA A4
  
# start gmt session
gmt psxy -R0/1/0/1 -JX1c -T -K -P > $out_ps
  
echo 0 0 | gmt psxy -R-100/100/-80/120 -JX10 -Sc1 -Ba20g10/a20g10 -P -O -K >> $out_ps
echo 20 20 | gmt psxy -R-100/100/-80/120 -JX10 -Sc1 -Ba20g10/a20g10 -P -O -K >> $out_ps
echo -20 -20 | gmt psxy -R-100/100/-80/120 -JX10 -Sc1 -Ba20g10/a20g10 -P -O -K >> $out_ps
echo 40 40 | gmt psxy -R-100/100/-80/120 -JX10 -Sc1 -Ba20g10/a20g10 -P -O -K >> $out_ps


  
# end gmt session
gmt psxy -R -J -O -T >> $out_ps
  
# convert to pdf
gmt psconvert $out_ps -P -Tf
# convert to png
gmt psconvert $out_ps -P -Tg 