require 'pry'

require 'nokogiri'
require 'open-uri'

html = open("https://flatironschool.com/")

doc = Nokogiri::HTML(html)

courses = doc.css(".tout__label.heading.heading--level-4")

p courses[0].attributes
# courses.each do |course|
#     puts course.text.strip
# end

#binding.pry