require 'Faker'

def shortener
  random_letters = Faker::Lorem.word.split('').sample(4)
  random_numbers = rand(100..900).to_s.split(//).sample(3)
  random_chars =random_letters.zip(random_numbers)
  random_chars.flatten!.shuffle.join('')
end
