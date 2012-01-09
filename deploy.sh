for a in *.mkd;
do ./markdown.py $a > $a.html
done

mmv "*.mkd.html" "#1.html"
scp markdown.css *.html it@itdaniher.com:~/public_html
rm *html
