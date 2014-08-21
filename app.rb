require 'sinatra'
require 'nokogiri' 
require 'crack'
require 'rest-client'
require 'rubygems'
require 'open-uri'

MATHWIKI_URL = "http://en.wikipedia.org/wiki/Mathematics"
READWIKI_URL = "http://en.wikipedia.org/wiki/Reading_(visual_activity)"
MATH2PAGE_URL = "http://www.testprepreview.com/math-grade-2.htm"
MATH3PAGE_URL = "http://www.testprepreview.com/math-grade-3.htm"
MATH4PAGE_URL = "http://www.testprepreview.com/math-grade-4.htm"

READ2PAGE_URL = "http://www.testprepreview.com/ela-grade-2.htm"
READ3PAGE_URL = "http://www.testprepreview.com/ela-grade-3.htm"
READ4PAGE_URL = "http://www.testprepreview.com/ela-grade-4.htm"

  set :bind, '0.0.0.0'
  set :port, 3000

get '/' do
  "Hello, world"
end