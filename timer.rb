require_relative "string"

print "What is your task? " 
task = gets.chomp.split.map(&:capitalize).join(' ')

print "Press Enter to Start Your '#{task}' Pomodoro Timer"; gets;

counter = 0
count_flag = true

while(count_flag) do
  pomodoro = 3
  rest = 3

  while(pomodoro >= 0) do
    print "Focus: #{Time.at(pomodoro).utc.strftime("%M:%S") + "\r"}".yellow
    sleep(1)
    pomodoro -= 1
  end

  counter += 1
  puts "#{counter} pomodoro(s) completed".pink
  puts "Take 5 minutes to rest and review your progress".pink
  
  while(rest >= 0) do
    print "Rest: #{Time.at(rest).utc.strftime("%M:%S") + "\r"}".yellow
    sleep(1)
    rest -= 1
  end

  puts "Did you finish your task (y/n)?"
  answer = gets.chomp.downcase[0]
  if answer == "y"
    count_flag = false
  end
end

puts "Congratulations. Exiting pomodoro".green