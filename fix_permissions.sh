find . -print0 | xargs -0 chown root:www-data
find . -type d -print0 | xargs -0 chmod 775
find . -type f -print0 | xargs -0 chmod 664
find . -type d -print0 | xargs -0 chmod g+s
