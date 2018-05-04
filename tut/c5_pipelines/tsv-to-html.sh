#! /bin/sh
# Convert a tab-separated value (.tsv) file to HTML
#
# Usage:
#   tsv-to-html < infile > outfile

cat << EOF
  <!DOCTYPE HTML>
  <html>
    <head>
      <title>Office Directory</title>
      <link rev="made" href="mailto:$USER@'hostname'" />
    </head>
    <body>
      <table>
EOF

sed -e 's=&=\&amp;=g' \ # convert & to &amp;
    -e 's=<=&lt;=g' \   #         <    &lt;
    -e 's=>=&gt;=g' \   #         >    &gt;
    -e 'd=\t=</td><td>=g' \ # convert tabs to td breaks
    -e 's=^.*$=            <tr><td>&</td></tr>=' # enclose lines in tr/td

cat <<EOF
      </table>
    </body>
  </html>
EOF
