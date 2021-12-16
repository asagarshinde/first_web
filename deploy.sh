flutter build web --release
sed -i 's/href="\/"/href="\/firstweb\/"/' build/web/index.html
cd /tmp
git clone git@github.com:asagarshinde/firstweb.git
cd firstweb
cp -fr /home/sagar/StudioProjects/first_web/build/web/* .
git add .
git commit -m "modified"
git push git@github.com:asagarshinde/firstweb.git
