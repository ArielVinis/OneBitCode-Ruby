require 'net/http'

req = Net::HTTP::Post.new("/api/users")
# para fazer chamadas https
req.set_form_data({ name: 'Mickael', job: 'Developer' })

response = Net::HTTP.start('reqres.in', use_ssl: true) do |https|
  https.request(req)
end

puts response.code
puts response.message
puts response.body
