require_relative "string"

print "What is your task? " 
task = gets.chomp.split.map(&:capitalize).join(' ')

print "Press Enter to Start Your '#{task}' Pomodoro Timer"; gets;

pomodoro = 60*25

while(pomodoro >= 0) do
  print "Focus:" + " #{Time.at(pomodoro).utc.strftime("%M:%S") + "\r"}".light_blue
  sleep(1)
  pomodoro -= 1
end