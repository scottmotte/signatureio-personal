# Signature.io Personal

Signature.io Personal is an example app demonstrating the use of the Heroku Signature Add-On. See below to get started.

## Get Started

After cloning this repo run the following:

    $ bundle
    $ bundle exec heroku create
    $ bundle exec heroku addons:add signature
    $ git push heroku master

You should now be able to visit the subdomain heroku gave you and try out the application.

### Testing Locally

To test locally you will need to setup an environment variable for your SIGNATURE_SECRET_API_KEY.

    $ bundle exec heroku config:get SIGNATURE_SECRET_API_KEY

Note the value of SIGNATURE_SECRET_API_KEY, and then set that locally in your terminal.

    $ export SIGNATURE_SECRET_API_KEY=st_7a70d7776ddf29b883b25ae08f18ff

Now you can run the app locally.

    $ bundle exec rails s

## Additional Information

This example application heavily uses the [signatureio rubygem](https://github.com/scottmotte/signatureio)

10. bundle exec rails server

11. 