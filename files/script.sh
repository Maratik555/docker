sed -i 's|%OWNER%|'"$OWNER"'|g' /var/www/html/index.html

echo "Done"

nginx -g "daemon off;"
