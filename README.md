### README

git push origin master
git push heroku master
heroku run rake db:migrate
heroku run rails console

link: https://rails7-andrews-photo-app-b0e26baac650.herokuapp.com/

logs: heroku logs --tail

I have used amazon s3 bucket

### get credentials

# edit/create
EDITOR="nano" rails credentials:edit
# show
rails credentials:show

config/credentials.yml.enc - encrypted file
/config/master.key - file contains key for decryption should not be pushed to git! 