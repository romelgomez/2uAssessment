# find everything and deleted except the update.sh file and .git folder 
rm -rf static & rm -rf temp & find . -maxdepth 1 -type f ! -name 'update.sh' ! -name 'README.md' -delete

# Create a new temp folder
mkdir -p temp/

# Clone Autana - Angular - project in the temp/ foler
git clone git@github.com:romelgomez/2ulaundry.git temp/

# Install dependencies 
(cd temp/ && yarn install)

# build for production
(cd temp/ && yarn build)

# move the build files to the root path
mv temp/build/* .

rm -rf temp