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

get '/math.erb' do
resp = RestClient.get('http://en.wikipedia.org/w/api.php?action=opensearch&search=')
doc = JSON.parse(resp)
@doc = []
  erb :math
end

get '/reading.erb' do
resp = RestClient.get('http://en.wikipedia.org/w/api.php?action=opensearch&search=')
doc = JSON.parse(resp)
@doc = []
  erb :reading
end

get '/' do 
resp = RestClient.get('http://en.wikipedia.org/w/api.php?action=opensearch&search=')
doc = JSON.parse(resp)
@doc = []
  erb :home
end