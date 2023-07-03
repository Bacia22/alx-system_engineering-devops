
nstall ngix server
nstalldvance
exec { 'update':
  command  => 'sudo apt-get update',
  provider => shell,
}
-> package {'nginx':
  ensure => present,
}
-> file_line { 'header line':
  ensure => present,
  path   => '/etc/nginx/sites-available/default',
  line   => "	location / {
  add_header X-Served-By ${hostname};",
  match  => '^\tlocation / {',
}
-> exec { 'restart service':
  command  => 'sudo service nginx restart',
  provider => shell,
} ngix server

sudo apt-get update
sudo apt-get -y install nginx
sudo ufw allow 'Nginx HTTP'
echo "Hello World" > /var/www/html/index.html
echo "Ceci n'est pas une page" > /var/www/html/404.html
sed -i '/listen 80 default_server/a rewrite ^/redirect_me https://www.youtube.com/watch?v=QH2-TGUlwu4 permanent;' /etc/nginx/sites-available/default
sed -i '/listen 80 default_server/a \\terror_page 404 /404.html;' /etc/nginx/sites-available/default
sudo sed -i "/listen 80 default_server/a add_header X-Served-By '$HOSTNAME';" /etc/nginx/sites-available/default
sudo service nginx reload
sudo service nginx start

sudo apt-get update
sudo apt-get -y install nginx
sudo ufw allow 'Nginx HTTP'
echo "Hello World" > /var/www/html/index.html
echo "Ceci n'est pas une page" > /var/www/html/404.html
sed -i '/listen 80 default_server/a rewrite ^/redirect_me https://www.youtube.com/watch?v=QH2-TGUlwu4 permanent;' /etc/nginx/sites-available/default
sed -i '/listen 80 default_server/a \\terror_page 404 /404.html;' /etc/nginx/sites-available/default
sudo sed -i "/listen 80 default_server/a add_header X-Served-By '$HOSTNAME';" /etc/nginx/sites-available/default
sudo service nginx reload
sudo service nginx start
