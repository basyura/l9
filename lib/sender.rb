require 'net/http'

uri = URI.parse("http://localhost:3000/api/create.json")
response = Net::HTTP.post_form(uri, {
  "username" => "basyura",
  "date"     => "2013-09-04 12:10",
  "message"  => "ヽ(｀Д´)ﾉ",
})

puts response.body
