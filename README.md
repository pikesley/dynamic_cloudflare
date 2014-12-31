[![Build Status](http://img.shields.io/travis/pikesley/dynamic_cloudflare.svg)](https://travis-ci.org/pikesley/dynamic_cloudflare)
[![Dependency Status](http://img.shields.io/gemnasium/pikesley/dynamic_cloudflare.svg)](https://gemnasium.com/pikesley/dynamic_cloudflare)
[![Coverage Status](http://img.shields.io/coveralls/pikesley/dynamic_cloudflare.svg)](https://coveralls.io/r/pikesley/dynamic_cloudflare)
[![Code Climate](http://img.shields.io/codeclimate/github/pikesley/dynamic_cloudflare.svg)](https://codeclimate.com/github/pikesley/dynamic_cloudflare)
[![Github Issues](http://githubbadges.herokuapp.com/pikesley/dynamic_cloudflare/issues.svg)](https://github.com/pikesley/dynamic_cloudflare/issues)
[![Pending Pull-Requests](http://githubbadges.herokuapp.com/pikesley/dynamic_cloudflare/pulls.svg)](https://github.com/pikesley/dynamic_cloudflare/pulls)
[![License](http://img.shields.io/:license-mit-blue.svg)](http://pikesley.mit-license.org)
[![Badges](http://img.shields.io/:badges-8/8-ff6799.svg)](https://github.com/badges/badgerbadgerbadger)

_One more tiny project for 2014:_

#Dynamic Cloudflare

A proxy between your router and [Cloudflare](https://www.cloudflare.com)'s API, to simplify doing Dynamic DNS

* Deploy to Heroku
* `heroku config:set` the following:

  * `CF_TOKEN:     somelongtokenstring`
  * `CF_USERNAME:  email@email.com`
  * `DYNAMIC_HOST: gw.your.domain`
  * `USERNAME:     somelogin`
  * `PASSWORD:     somelongpassword`

`CF_TOKEN` and `CF_USERNAME` you get from Cloudflare, `USERNAME` and `PASSWORD` are the credentials for logging into this service, and `DYNAMIC_HOST` should be obvious (although I found that this A-record has to _already exist_ on Cloudflare, this service won't create it from scratch)

Then if your router has some sort of `custom_url` setting for Dynamic DNS, give it:

      https://somelogin:somepassword@wherever-you-deployed.herokuapp.com/
and you should be good to go.

Well, it worked for me, anyway.

Happy 2015!
