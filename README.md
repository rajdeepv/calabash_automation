calabash_automation for testing parallel_calabash gem
===================

git clone https://github.com/rajdeepv/calabash_automation
bundle install

Connect 3/4 android devices on your computer

run this command:

bundle exec parallel_calabash -a DroidBootcamp.apk -o'-r features' features/ --serialize-stdout
