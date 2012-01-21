#Three ways to create regex
a = Regexp.new('^\s*[a-z]')
b = /^\s*[a-z]/
c = %r{^\s*[a-z]}

def show_regexp(a, re)
  if a =~ re
    puts "#{$`}<<#{$&}>>#{$'}"
  else
    puts "no match"
  end
end

show_regexp("abcde", a)

show_regexp("this is\nthe time", /^th/)
show_regexp("this is\nthe time", /is$/)
show_regexp("this is\nthe time", /\Ath/)
show_regexp("this is\nthe time", /\Athe/)
show_regexp("This is\nthe time", /\bi/)
show_regexp("This is\nthe time", /\Bi/)

show_regexp("banana", /an/)
show_regexp("banana", /(an)*/)
show_regexp("banana", /(an)/)
show_regexp("banana", /(an)+/)


a = "red ball blue sky"
show_regexp(a, /red|blue \w+/)
show_regexp(a, /(red|blue) \w+/)
show_regexp("the red angry sky", /red (ball|angry) sky/)

"12:50am" =~ /(\d\d):(\d\d)(..)/
puts "Hour is #$1, minute is #$2."
"12:50am" =~ /((\d\d):(\d\d))(..)/
puts "Time is #$1, hour is #$2, minute is #$3, AM/PM is #$4"

#Match duplicated letter
show_regexp('He said "Hello"', /(\w)\1/)
'He said "Hello"' =~ /(\w)\1/
puts $1, $2, $3

#Match duplicated substring
show_regexp("Mississippi", /(\w+)\1/)
