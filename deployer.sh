set -e

echo "deploying Application"

# Enter Maintance Mode
(php artisan down --message 'the app is being updated.')
#updated
git pull origin master

#Exit Maintance Mode
php artisan up

echo "Application deployed done"