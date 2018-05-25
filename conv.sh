mkdir 03
convert 10.03.gif -coalesce ./03/10.03-%04d.gif
convert 2_5.03.gif -coalesce ./03/2_5.03-%04d.gif
for f in ./03/10.03-*.gif; do convert $f ${f/10/2_5} +append $f; done
mkdir 09
convert 10.09.gif -coalesce ./09/10.09-%04d.gif
convert 2_5.09.gif -coalesce ./09/2_5.09-%04d.gif
for f in ./09/10.09-*.gif; do convert $f ${f/10/2_5} +append $f; done
mkdir conv
for f in ./03/10.03-*.gif; do convert $f ${f/03\/10.03/09\/10.09} -append ./conv/${f/.\/03\//}; done
convert -loop 0 -delay 100 ./conv/10.03-*.gif result.gif
rm -r 03 09 conv
