# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

equations = [
  ["8 + 10 = 21", 0],
  ["8 - 11 = 8", 0],
  ["10 / 10 = -7", 0],
  ["8 / 8 = -1", 0],
  ["4 / 4 = -2", 0],
  ["4 / 1 = 3", 0],
  ["9 - 2 = 3", 0],
  ["9 + 9 = 26", 0],
  ["11 / 11 = 0", 0],
  ["6 - 2 = -1", 0],
  ["2 - 8 = -15", 0],
  ["10 - 4 = 2", 0],
  ["10 / 5 = 0", 0],
  ["11 + 5 = 20", 0],
  ["5 X 4 = 21", 0],
  ["2 / 2 = 0", 0],
  ["8 / 8 = -1", 0],
  ["1 + 1 = 4", 0],
  ["2 + 2 = 5", 0],
  ["8 + 8 = 18", 0],
  ["6 + 2 = 17", 0],
  ["6 - 11 = -5", 0],
  ["11 x 3 = 42", 0],
  ["5 / 5 = -8", 0],
  ["2 - 4 = -2", 0],
  ["4 + 4 = 10", 0],
  ["1 + 3 = 9", 0],
  ["6 x 4 = 31", 0],
  ["10 / 1 = 2", 0],
  ["2 - 6 = -11", 0],
  ["4 - 9 = -12", 0],
  ["10 x 7 = 79", 0],
  ["11 x 5 = 60", 0],
  ["3 / 3 = -2", 0],
  ["9 x 4 = 37", 0],
  ["2 x 1 = 10", 0],
  ["3 / 3 = -7", 0],
  ["8 / 2 = 2", 0],
  ["2 / 2 = -3", 0],
  ["5 / 1 = 1", 0],
  ["1 + 7 = 8", 1],
  ["2 / 2 = 1", 1],
  ["4 / 2 = 2", 1],
  ["3 / 1 = 3", 1],
  ["10 X 9 = 90", 1],
  ["7 X 7 = 49", 1],
  ["8 - 3 = 5", 1],
  ["2 +  4 = 6", 1],
  ["2 + 2 = 4", 1],
  ["7 / 7 = 1", 1],
  ["10 X 2 = 20", 1],
  ["7 X 8 = 63", 1],
  ["3 - 9 = -6", 1],
  ["2 / 1 = 2", 1],
  ["11 + 7 = 18", 1],
  ["5 X 2 = 10", 1],
  ["6 / 3 = 2", 1],
  ["2 / 2 = 1", 1],
  ["9 /3 = 3", 1],
  ["9 / 9 = 1", 1],
  ["4 / 1 = 4", 1],
  ["6 - 5 = 1", 1],
  ["6 + 11 = 17", 1],
  ["4 - 6 = -2", 1],
  ["10 + 6 = 17", 1],
  ["6 - 9 = -3", 1],
  ["11 + 6 = 17", 1],
  ["6 x 8 = 48", 1],
  ["2 / 1 = 2", 1],
  ["9 + 8 = 17", 1],
  ["10 - 11 = -1", 1],
  ["7 / 1 = 7", 1],
  ["3 / 1 = 3", 1],
  ["11 / 1 = 11", 1],
  ["1 / 1 = 1", 1],
  ["6 / 2 = 3", 1],
  ["8 + 5 = 13", 1],
  ["6 x 2 = 12", 1],
  ["7 - 2 = 5", 1],
  ["9 / 1 = 9", 1],
  ["9 + 9 = 18", 1],
]

equations.each do |equation, veracity|
  Equation.create(equation: equation, veracity: veracity )
end

sentences = [
  ["Always wear your seatbelt in a car.", 1],
  ["You keep clothes in a dresser.", 1],
  ["You can boil water in a saucepan.", 1],
  ["The colour of a banana is yellow.", 1],
  ["You wear socks on your feet.", 1],
  ["Your teeth are in your mouth.", 1],
  ["A car has four wheels.", 1],
  ["A magician performs magic.", 1],
  ["The number after four is five.", 1],
  ["I can smell with my nose.", 1],
  ["I can see with my eyes.", 1],
  ["The opposite of long is short.", 1],
  ["A house is made of bricks.", 1],
  ["A king wears a crown.", 1],
  ["You can hear with your ears.", 1],
  ["The sea is very deep.", 1],
  ["The number after two is three.", 1],
  ["The number after ten is eleven.", 1],
  ["Stone is very hard.", 1],
  ["Thomas is a name for a boy.", 1],
  ["A baby duck is called a duckling.", 1],
  ["Jack and Jill went up the hill.", 1],
  ["A birthday cake has candles.", 1],
  ["A feather is very light.", 1],
  ["Schools have a playground.", 1],
  ["A flower has petals.", 1],
  ["To make tea you need a teapot.", 1],
  ["A hairdresser cuts hair.", 1],
  ["You can use an umbrella if it rains.", 1],
  ["Rockets fly in outer space.", 1],
  ["If you are thirsty you have a drink.", 1],
  ["If you are hungry you eat food.", 1],
  ["A pineapple is coloured pink.", 0],
  ["An onion is a fruit.", 0],
  ["We celebrate Christmas in July.", 0],
  ["There are forty months in a year.", 0],
  ["There are two hundred letters in the alphabet.", 0],
  ["A freezer keeps your food warm.", 0],
  ["Pigs live on the moon.", 0],
  ["Horses go to the supermarket.", 0],
  ["A biscuit is made of wood.", 0],
  ["A toaster can drive a kart.", 0],
  ["A shark can run a race.", 0],
  ["Donkeys live in dustbins.", 0],
  ["A bat can fly a in helicopter.", 0],
  ["A squirrel likes to eat potatoes.", 0],
  ["We have Easter in November.", 0],
  ["A suitcase is made of jelly.", 0],
  ["A trampoline is made of butter.", 0],
  ["A crocodile is coloured blue.", 0],
  ["A cloud is made of rubber.", 0],
  ["Boots are made of milk.", 0],
  ["Your nose is on your arm.", 0],
  ["You eat your dinner with a spade.", 0],
  ["Fish can play the guitar.", 0],
  ["You tell the time with a calculator.", 0],
  ["Rainbows appear on the fridge.", 0],
  ["A boat likes to eat crisps.", 0],
  ["Sand is very sharp.", 0],
  ["A book is a musical instrument.", 0],
  ["Ice cream feels very hot.", 0],
  ["A pavement is made of plums.", 0],
  ["Heavy is the opposite of the short.", 0],
  ["Hand sanitizer creates germs.", 0],
  ["Cars can fly.", 0],
  ["Pens do not use ink.", 0],
  ["Humans have tails.", 0],
  ["Mississippi is a country.", 0],
  ["Glass does not crack.", 0],
  ["Concrete is soft.", 0],
  ["Chairs float in the air.", 0],
  ["Coats make people cold.", 0],
  ["Paper comes from trees.", 1],
  ["Windows can be made of glass.", 1],
  ["Rain comes from the sky.", 1],
  ["Horses have teeth.", 1],
  ["Trucks have tires.", 1],
  ["Garbage does not smell good.", 1],
  ["Computers are made of metal.", 1],
  ["Post-it notes are sticky.", 1],
  ["Vegetables are food.", 1],
]

sentences.each do |sentence, veracity|
  Sentence.create(sentence: sentence, veracity: veracity)
end

Setting.create(delay: 1, maximum_value: 99, minimum_value: 1, surveys: 3)

