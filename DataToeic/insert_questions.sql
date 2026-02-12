-- insert_questions.sql
-- 600 English test questions divided by topic (IDTest 2–31)
-- Each test has 20 questions
SET NOCOUNT ON;

-- Test 2: Greetings & Introductions (20 unique questions, IDTest = 2)

INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES 
(N'What is your name?', N'I am fine', N'It is blue', N'Yes, it is', N'My name is John', N'My name is John', 2),
(N'How are you today?', N'I am ten', N'I am fine', N'I am from Japan', N'I like pizza', N'I am fine', 2),
(N'Where do you come from?', N'I like pizza', N'I am from Canada', N'I have two brothers', N'I am busy', N'I am from Canada', 2),
(N'Which greeting is appropriate in the morning?', N'Good evening', N'Good night', N'Good morning', N'Hello', N'Good morning', 2),
(N'Choose the correct response: "Nice to meet you."', N'No thanks', N'Nice to meet you too', N'See you later', N'I am fine', N'Nice to meet you too', 2),
(N'How do you introduce yourself formally?', N'Hi, I am Peter', N'Hey there!', N'Hello, my name is Sarah', N'Yo!', N'Hello, my name is Sarah', 2),
(N'What is the polite way to greet a teacher?', N'Hi buddy!', N'Good morning, sir', N'Yo!', N'Hey!', N'Good morning, sir', 2),
(N'Which is correct for meeting a new colleague?', N'Nice to meet you', N'Goodbye', N'See you later', N'How old are you?', N'Nice to meet you', 2),
(N'Complete the sentence: "Hello, I ___ John."', N'am', N'is', N'are', N'be', N'am', 2),
(N'Choose the appropriate response: "How do you do?"', N'How do you do?', N'Hello', N'Goodbye', N'Nice', N'How do you do?', 2),
(N'Which phrase is informal?', N'Pleased to meet you', N'Hey! How’s it going?', N'It’s a pleasure', N'Nice to meet you', N'Hey! How’s it going?', 2),
(N'Formal introduction in a business email should begin with?', N'Dear Mr. Smith', N'Hey there!', N'Yo!', N'Hi buddy', N'Dear Mr. Smith', 2),
(N'Which is the correct formal way to introduce a team member?', N'This is my colleague, Mr. John Smith', N'This is my buddy', N'Yo! Meet John', N'Hi! This is John', N'This is my colleague, Mr. John Smith', 2),
(N'Correct the greeting: "Hi! I am Sarah. Good morning."', N'Good morning, I am Sarah', N'Hi, good morning', N'Good morning Sarah!', N'Hello, I am Sarah', N'Good morning, I am Sarah', 2),
(N'Which greeting is used in the evening?', N'Good morning', N'Good afternoon', N'Good evening', N'Hello', N'Good evening', 2),
(N'Choose the formal version of: "Hey! Nice to meet ya."', N'Hello! Pleased to meet you', N'Yo! Nice to meet you', N'Hi! Nice to meet ya', N'Hey! How’s it going?', N'Hello! Pleased to meet you', 2),
(N'Paraphrase formally: "I’m delighted to make your acquaintance."', N'I am pleased to meet you', N'Hi, nice to meet you', N'Hello there', N'Hey! Nice to meet you', N'I am pleased to meet you', 2),
(N'Complete the formal introduction: "Allow me to ___ my colleague."', N'introduce', N'show', N'tell', N'present', N'introduce', 2),
(N'Correct this introduction for professional tone: "Hi! Me name is Jake."', N'Hello! My name is Jake', N'Hi! I am Jake', N'Hello! Me name is Jake', N'Hi! My name Jake', N'Hello! My name is Jake', 2),
(N'Write a formal self-introduction for an international conference including name, profession, and one personal detail.', N'Example answer: "Good morning, I am Dr. Anna Smith, a software engineer. I enjoy traveling."', N'Hello, I am Anna', N'Hi, I work in IT', N'My name is Anna', N'Example answer: "Good morning, I am Dr. Anna Smith, a software engineer. I enjoy traveling."', 2);
 
-- Test 3: Family & Friends (20 unique questions, IDTest = 3)

INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES
(N'Who is your father?', N'My father is a teacher', N'My mother is a doctor', N'My brother is tall', N'I have a cat', N'My father is a teacher', 3),
(N'How many siblings do you have?', N'I have one sister', N'I am a teacher', N'I like pizza', N'I have a dog', N'I have one sister', 3),
(N'He is my uncle. He is my ___.', N'uncle', N'brother', N'sister', N'friend', N'uncle', 3),
(N'My best friend likes to ___.', N'play football', N'cook meals', N'be a doctor', N'drive a bus', N'play football', 3),
(N'They are a family. They live ___.', N'together', N'alone', N'yesterday', N'quickly', N'together', 3),
(N'Who is your grandmother?', N'My grandmother is kind', N'My father is tall', N'I have a brother', N'We live in Hanoi', N'My grandmother is kind', 3),
(N'She is my cousin. She is my ___.', N'sister', N'friend', N'cousin', N'mother', N'cousin', 3),
(N'How old is your younger brother?', N'He is ten years old', N'I am fine', N'I like football', N'We live in Hanoi', N'He is ten years old', 3),
(N'My best friend enjoys ___.', N'reading books', N'working in a bank', N'teaching', N'driving a bus', N'reading books', 3),
(N'We are siblings. We get along ___.', N'wonderfully', N'quickly', N'yesterday', N'alone', N'wonderfully', 3),
(N'Who takes care of you when you are sick?', N'My mother', N'My teacher', N'My friend', N'My neighbor', N'My mother', 3),
(N'He is my nephew. He is my ___.', N'nephew', N'brother', N'uncle', N'cousin', N'nephew', 3),
(N'How often do you meet your grandparents?', N'Every weekend', N'Twice a year', N'Once a month', N'Never', N'Every weekend', 3),
(N'My best friend likes to play ___.', N'chess', N'do homework', N'swim', N'write letters', N'chess', 3),
(N'They are a family. They eat meals ___.', N'together', N'separately', N'quickly', N'yesterday', N'together', 3),
(N'Who is your oldest sibling?', N'My brother John', N'My mother', N'My father', N'My friend', N'My brother John', 3),
(N'She is my niece. She is my ___.', N'niece', N'daughter', N'sister', N'friend', N'niece', 3),
(N'How do you describe your best friend?', N'He is funny and kind', N'He is a teacher', N'He is tall', N'He is busy', N'He is funny and kind', 3),
(N'My family often goes on trips ___.', N'together', N'alone', N'yesterday', N'quickly', N'together', 3),
(N'Write a sentence introducing your family to a new friend, including at least three members.', N'Example: "This is my father, my mother, and my sister."', N'This is my dog', N'I have a cat', N'This is my neighbor', N'Example: "This is my father, my mother, and my sister."', 3);


-- Test 4: Numbers & Alphabet (20 unique questions, IDTest = 4)

INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES
(N'What comes after five?', N'four', N'six', N'seven', N'five', N'six', 4),
(N'How many letters are there in the English alphabet?', N'24', N'26', N'25', N'30', N'26', 4),
(N'What is 7 + 8?', N'14', N'15', N'16', N'17', N'15', 4),
(N'Which number is even?', N'7', N'9', N'12', N'15', N'12', 4),
(N'What is the first letter of "Banana"?', N'A', N'B', N'C', N'D', N'B', 4),
(N'What number comes before 10?', N'9', N'11', N'8', N'10', N'9', 4),
(N'Which is a multiple of 3?', N'10', N'12', N'14', N'16', N'12', 4),
(N'What is 20 – 7?', N'13', N'12', N'14', N'15', N'13', 4),
(N'Which letter is a vowel?', N'B', N'C', N'E', N'D', N'E', 4),
(N'What comes after 99?', N'100', N'101', N'98', N'102', N'100', 4),
(N'Which number is odd?', N'4', N'6', N'9', N'8', N'9', 4),
(N'What is the last letter of the English alphabet?', N'X', N'Y', N'Z', N'W', N'Z', 4),
(N'What is 15 ÷ 3?', N'4', N'5', N'6', N'3', N'5', 4),
(N'Which number is a prime number?', N'9', N'11', N'12', N'15', N'11', 4),
(N'What is the second letter of "Computer"?', N'O', N'C', N'M', N'U', N'O', 4),
(N'What is 50 + 25?', N'70', N'75', N'80', N'60', N'75', 4),
(N'Which letters are consonants?', N'A, E, I', N'B, C, D', N'O, U, E', N'A, O, U', N'B, C, D', 4),
(N'What comes before 1?', N'0', N'2', N'-1', N'10', N'0', 4),
(N'What is 100 – 37?', N'63', N'73', N'67', N'77', N'63', 4),
(N'Which letter is the 10th letter in the alphabet?', N'J', N'I', N'K', N'L', N'J', 4);

-- Test 5: Jobs & Occupations (20 unique questions, IDTest = 5)

INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES
(N'He works in a hospital. He is a ___.', N'teacher', N'farmer', N'chef', N'doctor', N'doctor', 5),
(N'Who teaches students in a school?', N'a driver', N'a banker', N'a nurse', N'a teacher', N'a teacher', 5),
(N'A person who fixes cars is a ___.', N'mechanic', N'pilot', N'chef', N'artist', N'mechanic', 5),
(N'A chef works in a ___.', N'classroom', N'office', N'kitchen', N'factory', N'kitchen', 5),
(N'Which job works with money?', N'actor', N'singer', N'banker', N'farmer', N'banker', 5),
(N'A person who flies an airplane is a ___.', N'pilot', N'mechanic', N'doctor', N'chef', N'pilot', 5),
(N'Who treats sick animals?', N'veterinarian', N'teacher', N'banker', N'driver', N'veterinarian', 5),
(N'A person who paints pictures is a ___.', N'artist', N'mechanic', N'chef', N'doctor', N'artist', 5),
(N'Which job works in a courtroom?', N'lawyer', N'chef', N'pilot', N'teacher', N'lawyer', 5),
(N'Who takes care of patients in a hospital?', N'nurse', N'teacher', N'pilot', N'artist', N'nurse', 5),
(N'A farmer usually works in a ___.', N'farm', N'office', N'hospital', N'school', N'farm', 5),
(N'Which job delivers letters and packages?', N'postman', N'banker', N'chef', N'doctor', N'postman', 5),
(N'Who designs buildings?', N'architect', N'artist', N'mechanic', N'pilot', N'architect', 5),
(N'A person who drives a bus is a ___.', N'teacher', N'driver', N'chef', N'artist', N'driver', 5),
(N'Who works in a police station?', N'policeman', N'pilot', N'chef', N'teacher', N'policeman', 5),
(N'A person who works in a factory and makes clothes is a ___.', N'tailor', N'doctor', N'banker', N'chef', N'tailor', 5),
(N'Which job works with numbers and accounts?', N'banker', N'artist', N'pilot', N'driver', N'banker', 5),
(N'Who performs on stage singing songs?', N'singer', N'teacher', N'doctor', N'mechanic', N'singer', 5),
(N'Who writes news for a newspaper or website?', N'journalist', N'lawyer', N'chef', N'farmer', N'journalist', 5),
(N'A scientist studies and researches in a ___.', N'laboratory', N'classroom', N'office', N'farm', N'laboratory', 5);


-- Test 6: Daily Activities (20 unique questions, IDTest = 6)

INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES
(N'What do you usually do in the morning?', N'Go to bed', N'Have breakfast', N'Watch TV', N'Play games', N'Have breakfast', 6),
(N'Which activity is done at night?', N'Brush teeth', N'Go to school', N'Have lunch', N'Wake up', N'Brush teeth', 6),
(N'He __ at 7 a.m. every day.', N'wakes up', N'sleeps', N'eats dinner', N'plays', N'wakes up', 6),
(N'Which activity do people do to stay healthy?', N'Exercise', N'Sleep', N'Watch TV', N'Eat candy', N'Exercise', 6),
(N'What do you do before going to bed?', N'Brush teeth', N'Go to work', N'Have breakfast', N'Play football', N'Brush teeth', 6),
(N'He is preparing food. He is ___.', N'cooking', N'reading', N'sleeping', N'working', N'cooking', 6),
(N'Which activity is done in the kitchen?', N'Cooking', N'Sleeping', N'Reading', N'Driving', N'Cooking', 6),
(N'She __ her homework every evening.', N'does', N'cooks', N'sleeps', N'plays', N'does', 6),
(N'Which activity helps you learn new things?', N'Reading', N'Sleeping', N'Eating', N'Watching TV', N'Reading', 6),
(N'He goes to the gym to __.', N'exercise', N'sleep', N'eat', N'watch', N'exercise', 6),
(N'What do you usually do on weekends?', N'Go shopping', N'Go to school', N'Work', N'Attend meetings', N'Go shopping', 6),
(N'She wakes up at 6 a.m. and __ breakfast.', N'has', N'watches', N'plays', N'reads', N'has', 6),
(N'Which activity is usually done in the morning?', N'Go to bed', N'Have breakfast', N'Watch TV', N'Play games', N'Have breakfast', 6),
(N'He is listening to music. He is ___.', N'listening', N'sleeping', N'cooking', N'exercising', N'listening', 6),
(N'Which activity helps you relax?', N'Listening to music', N'Running', N'Eating fast food', N'Working overtime', N'Listening to music', 6),
(N'She usually __ to school by bus.', N'goes', N'plays', N'sleeps', N'cooks', N'goes', 6),
(N'Which activity do people do to rest?', N'Sleeping', N'Eating', N'Cooking', N'Driving', N'Sleeping', 6),
(N'He __ the dishes after dinner.', N'washes', N'reads', N'plays', N'sleeps', N'washes', 6),
(N'Which activity is done in the living room?', N'Watching TV', N'Cooking', N'Brushing teeth', N'Sleeping', N'Watching TV', 6),
(N'Write a sentence about your daily routine including at least three activities.', N'Example: "I wake up, have breakfast, and go to school."', N'I eat candy', N'I sleep all day', N'I watch TV only', N'Example: "I wake up, have breakfast, and go to school."', 6);


-- Test 7: Food & Drink (20 unique questions, IDTest = 7)

INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES
(N'I like to eat ___.', N'noodles', N'books', N'computers', N'chairs', N'noodles', 7),
(N'What do you usually drink in the morning?', N'tea', N'coffee', N'juice', N'water', N'tea', 7),
(N'This fruit is yellow and sour: ___.', N'lemon', N'apple', N'banana', N'grape', N'lemon', 7),
(N'Which drink is cold and fizzy?', N'soda', N'tea', N'water', N'milk', N'soda', 7),
(N'I am hungry. I want to ___.', N'eat', N'sleep', N'read', N'run', N'eat', 7),
(N'Which food is usually eaten for breakfast?', N'pasta', N'cereal', N'burger', N'pizza', N'cereal', 7),
(N'What do you drink when you are thirsty?', N'water', N'chocolate', N'bread', N'cheese', N'water', 7),
(N'This fruit is red and sweet: ___.', N'apple', N'lemon', N'grape', N'banana', N'apple', 7),
(N'Which food is made from flour and baked?', N'bread', N'rice', N'meat', N'cheese', N'bread', 7),
(N'Which meal is eaten at noon?', N'breakfast', N'lunch', N'dinner', N'snack', N'lunch', 7),
(N'I drink milk every morning because it is ___.', N'healthy', N'sweet', N'bitter', N'salty', N'healthy', 7),
(N'This vegetable is orange and crunchy: ___.', N'carrot', N'tomato', N'cucumber', N'pepper', N'carrot', 7),
(N'Which food do you usually eat with a spoon?', N'soup', N'steak', N'burger', N'salad', N'soup', 7),
(N'Which drink is hot and usually served in a cup?', N'tea', N'soda', N'water', N'juice', N'tea', 7),
(N'I want a sweet dessert. I will eat ___.', N'cake', N'bread', N'cheese', N'rice', N'cake', 7),
(N'Which fruit is green on the outside and red inside?', N'watermelon', N'apple', N'lemon', N'banana', N'watermelon', 7),
(N'Which food comes from cows?', N'milk', N'carrot', N'potato', N'rice', N'milk', 7),
(N'Which drink is often served with ice?', N'soda', N'tea', N'coffee', N'milk', N'soda', 7),
(N'This fruit is small and purple: ___.', N'grape', N'banana', N'apple', N'lemon', N'grape', 7),
(N'I eat vegetables because they are ___.', N'healthy', N'sweet', N'salty', N'bitter', N'healthy', 7);


-- Test 8: Clothes (20 unique questions, IDTest = 8)

INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES
(N'What do you wear on your feet?', N'shoes', N'socks', N'hat', N'belt', N'shoes', 8),
(N'He is wearing a ___ on his head.', N'cap', N'gloves', N'scarf', N'shirt', N'cap', 8),
(N'These keep you warm in winter: ___.', N'coats', N't-shirts', N'shorts', N'sandals', N'coats', 8),
(N'She puts on a ___ before going out.', N'jacket', N'dress', N'gloves', N'pants', N'jacket', 8),
(N'People wear ___ to sleep.', N'pyjamas', N'boots', N'tie', N'suit', N'pyjamas', 8),
(N'Which clothing item is worn around the waist?', N'belt', N'hat', N'shirt', N'shoes', N'belt', 8),
(N'He wears ___ to protect his hands from cold.', N'gloves', N'socks', N'shoes', N'cap', N'gloves', 8),
(N'These are usually worn on legs in summer: ___.', N'shorts', N'pants', N'coats', N'skirts', N'shorts', 8),
(N'A formal woman often wears this at a party: ___.', N'dress', N't-shirt', N'shirt', N'sandals', N'dress', 8),
(N'What do you wear on your head when it is sunny?', N'hat', N'shirt', N'shoes', N'gloves', N'hat', 8),
(N'People wear ___ to keep their feet warm indoors.', N'slippers', N'socks', N'shoes', N'shorts', N'slippers', 8),
(N'Which clothing item do athletes wear while running?', N't-shirt', N'coat', N'dress', N'tie', N't-shirt', 8),
(N'This is worn over a shirt in cold weather: ___.', N'jacket', N'shorts', N'dress', N'tie', N'jacket', 8),
(N'What is usually worn with a suit?', N'tie', N'cap', N'shorts', N'sandals', N'tie', 8),
(N'People wear ___ in the rain to stay dry.', N'raincoat', N'dress', N'socks', N'shoes', N'raincoat', 8),
(N'Which item covers the neck for warmth?', N'scarf', N'shoes', N'gloves', N'belt', N'scarf', 8),
(N'This type of clothing is worn on the upper body: ___.', N'shirt', N'pants', N'shoes', N'cap', N'shirt', 8),
(N'Which clothing is often worn at the beach?', N'swimsuit', N'coat', N'tie', N'pants', N'swimsuit', 8),
(N'People wear ___ on their hands in winter.', N'gloves', N'socks', N'shoes', N'scarf', N'gloves', 8),
(N'Which item is part of traditional evening wear?', N'gown', N't-shirt', N'shorts', N'sandals', N'gown', 8);

-- Test 9: Hobbies & Sports (20 unique questions, IDTest = 9)

INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES
(N'What is your favorite hobby?', N'reading', N'gardening', N'coding', N'painting', N'reading', 9),
(N'He likes to play ___ every weekend.', N'football', N'chess', N'cooking', N'sleeping', N'football', 9),
(N'Which of these is a sport?', N'painting', N'tennis', N'sleeping', N'reading', N'tennis', 9),
(N'She practices ___ every morning to stay fit.', N'yoga', N'dancing', N'sleeping', N'cooking', N'yoga', 9),
(N'They went outside to ___ together.', N'jog', N'shop', N'read', N'paint', N'jog', 9),
(N'His favorite hobby is ___.', N'playing guitar', N'watching TV', N'cooking', N'gardening', N'playing guitar', 9),
(N'Which activity is done for fun?', N'sleeping', N'football', N'reading', N'eating', N'reading', 9),
(N'She spends her free time ___ every evening.', N'swimming', N'cleaning', N'sleeping', N'working', N'swimming', 9),
(N'Which of these is a team sport?', N'chess', N'tennis', N'volleyball', N'painting', N'volleyball', 9),
(N'He enjoys ___ on weekends.', N'cycling', N'sleeping', N'reading', N'shopping', N'cycling', 9),
(N'Which hobby improves creativity?', N'drawing', N'sleeping', N'eating', N'jogging', N'drawing', 9),
(N'She practices ___ to relax her mind.', N'yoga', N'football', N'cooking', N'cycling', N'yoga', 9),
(N'They play ___ outdoors with friends.', N'football', N'watching TV', N'painting', N'sleeping', N'football', 9),
(N'His favorite indoor hobby is ___.', N'painting', N'football', N'cycling', N'jogging', N'painting', 9),
(N'She likes to ___ after school.', N'read books', N'sleep', N'cook', N'watch TV', N'read books', 9),
(N'Which of these is an individual sport?', N'tennis', N'volleyball', N'football', N'chess', N'tennis', 9),
(N'He enjoys ___ to improve health.', N'running', N'painting', N'sleeping', N'watching TV', N'running', 9),
(N'She practices ___ to reduce stress.', N'yoga', N'football', N'shopping', N'cooking', N'yoga', 9),
(N'They went to the park to ___.', N'play badminton', N'sleep', N'cook', N'watch TV', N'play badminton', 9),
(N'Which hobby involves using paint and brushes?', N'drawing', N'swimming', N'football', N'yoga', N'drawing', 9);


-- Test 10: Weather (20 unique questions, IDTest = 10)

INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES
(N'It is raining. You should take an ___.', N'umbrella', N'hat', N'shoes', N'coat', N'umbrella', 10),
(N'The weather is very __ today.', N'hot', N'cold', N'sunny', N'rainy', N'hot', 10),
(N'Which season is usually cold?', N'winter', N'summer', N'spring', N'autumn', N'winter', 10),
(N'Today is bright and clear. It is ___.', N'sunny', N'rainy', N'windy', N'snowy', N'sunny', 10),
(N'There are many clouds in the sky. It is ___.', N'cloudy', N'sunny', N'rainy', N'snowy', N'cloudy', 10),
(N'When it snows, you wear ___.', N'boots', N'sandals', N'shoes', N'socks', N'boots', 10),
(N'The wind is very strong. It is ___.', N'windy', N'hot', N'sunny', N'rainy', N'windy', 10),
(N'During a thunderstorm, it is ___.', N'safe to stay indoors', N'recommended to swim', N'good to walk outside', N'time to picnic', N'safe to stay indoors', 10),
(N'The weather in spring is usually ___.', N'mild', N'freezing', N'hot', N'snowy', N'mild', 10),
(N'Which season comes after summer?', N'autumn', N'winter', N'spring', N'summer', N'autumn', 10),
(N'Fog makes it __ to drive.', N'dangerous', N'easy', N'fun', N'safe', N'dangerous', 10),
(N'Lightning is usually seen during ___.', N'thunderstorms', N'sunny days', N'snowy days', N'autumn', N'thunderstorms', 10),
(N'Which weather is ideal for flying a kite?', N'windy', N'rainy', N'snowy', N'foggy', N'windy', 10),
(N'During very hot days, it is important to ___.', N'drink water', N'sleep all day', N'wear a coat', N'stand in the snow', N'drink water', 10),
(N'Stormy weather can cause ___.', N'power outages', N'happy mood', N'ice cream sales', N'picnics', N'power outages', 10),
(N'The sun sets in the ___.', N'west', N'east', N'north', N'south', N'west', 10),
(N'Which is a natural disaster related to weather?', N'hurricane', N'fire', N'earthquake', N'volcano', N'hurricane', 10),
(N'It is freezing outside. You should wear ___.', N'a warm coat', N'sandals', N'shorts', N't-shirt', N'a warm coat', 10),
(N'The sky is clear with no clouds. It is a __ day.', N'sunny', N'rainy', N'foggy', N'snowy', N'sunny', 10),
(N'During autumn, leaves ___.', N'fall from trees', N'grow on trees', N'turn green', N'disappear underground', N'fall from trees', 10);

-- Test 11: Places in a City (20 unique questions, IDTest = 11)

INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES
(N'You can borrow books at the ___.', N'library', N'restaurant', N'hotel', N'market', N'library', 11),
(N'Where do you buy fresh vegetables?', N'market', N'school', N'bank', N'park', N'market', 11),
(N'The hospital is for ___.', N'sick people', N'cars', N'movies', N'books', N'sick people', 11),
(N'We catch a train at the ___.', N'station', N'cinema', N'garden', N'office', N'station', 11),
(N'Where do students study?', N'school', N'factory', N'bank', N'airport', N'school', 11),
(N'You can buy clothes at a ___.', N'shop', N'library', N'hospital', N'station', N'shop', 11),
(N'People go to the __ to watch films.', N'cinema', N'market', N'library', N'hotel', N'cinema', 11),
(N'A place to relax and see flowers is a ___.', N'garden', N'bank', N'school', N'station', N'garden', 11),
(N'Tourists sleep in a ___.', N'hotel', N'market', N'library', N'cinema', N'hotel', 11),
(N'Where do you catch a flight?', N'airport', N'school', N'market', N'garden', N'airport', 11),
(N'A large building for office work is called a ___.', N'office', N'shop', N'library', N'hospital', N'office', 11),
(N'A place to eat meals outside home is a ___.', N'restaurant', N'hotel', N'school', N'market', N'restaurant', 11),
(N'Where do children play outdoors?', N'park', N'hospital', N'office', N'shop', N'park', 11),
(N'Where can you withdraw money?', N'bank', N'market', N'library', N'cinema', N'bank', 11),
(N'A place to learn swimming is a ___.', N'swimming pool', N'school', N'market', N'hospital', N'swimming pool', 11),
(N'Where do you send letters?', N'post office', N'hotel', N'market', N'garden', N'post office', 11),
(N'A place for public transport buses is a ___.', N'bus station', N'shop', N'hospital', N'cinema', N'bus station', 11),
(N'People go to the __ to see art.', N'museum', N'library', N'park', N'market', N'museum', 11),
(N'Where can you exercise or play sports?', N'sports center', N'hotel', N'bank', N'market', N'sports center', 11),
(N'Where do you wait for a train?', N'station', N'cinema', N'hospital', N'shop', N'station', 11);

-- Test 12: Travel & Holidays (20 unique questions, IDTest = 12)
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES
(N'I need a passport to ___.', N'travel abroad', N'cook dinner', N'read books', N'paint walls', N'travel abroad', 12),
(N'Where do you stay on holiday?', N'hotel', N'office', N'factory', N'bank', N'hotel', 12),
(N'She bought a ticket for the ___.', N'flight', N'market', N'library', N'school', N'flight', 12),
(N'We go on holiday in ___.', N'summer', N'winter', N'autumn', N'spring', N'summer', 12),
(N'They visited a famous ___.', N'museum', N'printer', N'computer', N'television', N'museum', 12),
(N'People go to the __ to see historical places.', N'sightseeing tour', N'market', N'hotel', N'school', N'sightseeing tour', 12),
(N'What do you pack in a suitcase?', N'clothes', N'car', N'books', N'fridge', N'clothes', 12),
(N'Where can you rent a car?', N'rental agency', N'library', N'hospital', N'shop', N'rental agency', 12),
(N'Which document do you need at customs?', N'passport', N'notebook', N'shoe', N'pen', N'passport', 12),
(N'People buy souvenirs at a ___.', N'market', N'hotel', N'bank', N'school', N'market', 12),
(N'Where do you go for a beach holiday?', N'resort', N'school', N'hospital', N'market', N'resort', 12),
(N'A ticket for a train is bought at the ___.', N'station', N'hotel', N'market', N'library', N'station', 12),
(N'Where can you go skiing?', N'mountains', N'beach', N'park', N'city', N'mountains', 12),
(N'Which place is popular for cruises?', N'port', N'school', N'library', N'hospital', N'port', 12),
(N'People stay in a __ when camping.', N'tent', N'hotel', N'office', N'market', N'tent', 12),
(N'What do travelers use to see the map?', N'GPS', N'pen', N'book', N'car', N'GPS', 12),
(N'Where do you exchange money?', N'bank', N'shop', N'hotel', N'museum', N'bank', 12),
(N'A place to book holiday trips online is a ___.', N'travel agency', N'cinema', N'hospital', N'park', N'travel agency', 12),
(N'Which season is best for skiing?', N'winter', N'summer', N'autumn', N'spring', N'winter', 12),
(N'Where do people take photos of landmarks?', N'tourist spot', N'school', N'factory', N'office', N'tourist spot', 12);


-- Test 13: Health & Lifestyle (20 unique questions, IDTest = 13)
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES
(N'To stay healthy, we should ___.', N'exercise', N'sleep late', N'smoke', N'eat junk', N'exercise', 13),
(N'He goes to the doctor because he is ___.', N'sick', N'happy', N'rich', N'young', N'sick', 13),
(N'Eating vegetables is ___.', N'good for you', N'dangerous', N'expensive', N'fast', N'good for you', 13),
(N'She runs to keep ___.', N'fit', N'bored', N'dirty', N'late', N'fit', 13),
(N'You should drink plenty of ___.', N'water', N'plastic', N'metal', N'paper', N'water', 13),
(N'Which activity improves mental health?', N'reading', N'sleeping all day', N'watching TV', N'smoking', N'reading', 13),
(N'What food is rich in vitamins?', N'fruits', N'chips', N'burger', N'soda', N'fruits', 13),
(N'How many hours of sleep do adults need?', N'7-9', N'3-5', N'10-12', N'1-2', N'7-9', 13),
(N'Which habit is bad for your heart?', N'smoking', N'exercising', N'eating vegetables', N'walking', N'smoking', 13),
(N'What should you do when stressed?', N'meditate', N'ignore it', N'yell at others', N'skip meals', N'meditate', 13),
(N'Which drink is healthy?', N'water', N'soda', N'energy drink', N'coffee with sugar', N'water', 13),
(N'What is a good form of exercise?', N'swimming', N'sitting', N'watching TV', N'playing video games', N'swimming', 13),
(N'Which snack is the healthiest?', N'nuts', N'chips', N'candy', N'soda', N'nuts', 13),
(N'How often should adults exercise?', N'at least 3 times a week', N'once a year', N'never', N'daily without rest', N'at least 3 times a week', 13),
(N'What protects you from germs?', N'handwashing', N'touching eyes', N'smoking', N'not showering', N'handwashing', 13),
(N'Which habit improves eye health?', N'reading in daylight', N'staring at screens', N'reading in the dark', N'sleeping less', N'reading in daylight', 13),
(N'What is important for strong bones?', N'calcium', N'sugar', N'salt', N'fast food', N'calcium', 13),
(N'Which food should be eaten in moderation?', N'sugar', N'vegetables', N'fruits', N'water', N'sugar', 13),
(N'Which activity helps maintain flexibility?', N'yoga', N'sleeping', N'watching TV', N'playing video games', N'yoga', 13),
(N'Which habit helps prevent illness?', N'getting vaccinated', N'smoking', N'sleeping less', N'eating junk food', N'getting vaccinated', 13);


-- Test 14: Education & Learning (20 unique questions, IDTest = 14)
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES
(N'Where do students go to study science?', N'lab', N'market', N'hospital', N'station', N'lab', 14),
(N'Who helps students learn at school?', N'doctor', N'teacher', N'pilot', N'chef', N'teacher', 14),
(N'What subject involves numbers and calculations?', N'Math', N'History', N'Music', N'Art', N'Math', 14),
(N'Where can you borrow books?', N'library', N'shop', N'bank', N'hotel', N'library', 14),
(N'Which activity is done during a class?', N'sleep', N'play games', N'take notes', N'watch TV', N'take notes', 14),
(N'What do you need to write on paper?', N'pen', N'plate', N'spoon', N'phone', N'pen', 14),
(N'Which subject studies the past?', N'History', N'Physics', N'Chemistry', N'PE', N'History', 14),
(N'Where do students go to learn computers?', N'computer lab', N'garden', N'garage', N'factory', N'computer lab', 14),
(N'Who helps with school exams?', N'teacher', N'chef', N'driver', N'doctor', N'teacher', 14),
(N'What is the main language used in school?', N'English', N'Cooking', N'Sports', N'Music', N'English', 14),
(N'Where do students go for physical activity?', N'gym', N'kitchen', N'classroom', N'library', N'gym', 14),
(N'Which tool is used to calculate?', N'calculator', N'spoon', N'pencil', N'shoes', N'calculator', 14),
(N'Which subject involves experiments?', N'Science', N'Art', N'PE', N'Music', N'Science', 14),
(N'Who supervises the school playground?', N'teacher', N'doctor', N'pilot', N'chef', N'teacher', 14),
(N'What do students read for learning?', N'books', N'menus', N'newspapers', N'magazines', N'books', 14),
(N'Where do students sit during lessons?', N'classroom', N'garden', N'hospital', N'market', N'classroom', 14),
(N'Which subject uses a microscope?', N'Biology', N'Math', N'History', N'PE', N'Biology', 14),
(N'What is a common tool for drawing?', N'pencil', N'fork', N'knife', N'spoon', N'pencil', 14),
(N'Where do students learn to play music?', N'music room', N'kitchen', N'gym', N'library', N'music room', 14),
(N'Which activity is important for learning?', N'studying', N'watching TV', N'sleeping all day', N'playing games', N'studying', 14);


-- Test 15: Technology & Internet (20 unique questions, IDTest = 15)
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES
(N'What device do you use to call people?', N'Laptop', N'Tablet', N'Smartphone', N'Table', N'Smartphone', 15),
(N'Which device allows you to type documents?', N'Keyboard', N'Mouse', N'Monitor', N'Printer', N'Keyboard', 15),
(N'Where do you go to visit websites?', N'Browser', N'Book', N'Pen', N'Notebook', N'Browser', 15),
(N'Which device is used to print papers?', N'Printer', N'Speaker', N'Monitor', N'Keyboard', N'Printer', 15),
(N'What connects devices to the internet wirelessly?', N'Wi-Fi', N'USB', N'Keyboard', N'Mouse', N'Wi-Fi', 15),
(N'Where do you store files on your computer?', N'Folder', N'Chair', N'Table', N'Plate', N'Folder', 15),
(N'What is a program for writing letters electronically?', N'Email', N'Notebook', N'Book', N'Magazine', N'Email', 15),
(N'Which device displays images and videos?', N'Monitor', N'Keyboard', N'Mouse', N'Chair', N'Monitor', 15),
(N'Which device controls the cursor on a computer?', N'Mouse', N'Keyboard', N'Monitor', N'Speaker', N'Mouse', 15),
(N'Which device stores large amounts of data?', N'Hard Drive', N'Keyboard', N'Mouse', N'Book', N'Hard Drive', 15),
(N'Which software is used to create presentations?', N'PowerPoint', N'Word', N'Excel', N'Paint', N'PowerPoint', 15),
(N'Which device captures photos?', N'Camera', N'Speaker', N'Monitor', N'Keyboard', N'Camera', 15),
(N'Which program helps you browse the internet?', N'Chrome', N'Word', N'Excel', N'PowerPoint', N'Chrome', 15),
(N'Which device plays audio?', N'Speaker', N'Keyboard', N'Mouse', N'Monitor', N'Speaker', 15),
(N'Which device is portable and used for computing?', N'Laptop', N'Printer', N'Monitor', N'Keyboard', N'Laptop', 15),
(N'Which device stores data on the cloud?', N'Cloud Storage', N'Hard Drive', N'Monitor', N'Keyboard', N'Cloud Storage', 15),
(N'Which technology allows communication via text?', N'Messaging App', N'Printer', N'Monitor', N'Keyboard', N'Messaging App', 15),
(N'Which device can scan documents?', N'Scanner', N'Keyboard', N'Mouse', N'Monitor', N'Scanner', 15),
(N'Which program helps manage spreadsheets?', N'Excel', N'Word', N'PowerPoint', N'Chrome', N'Excel', 15),
(N'Which device projects images on a large screen?', N'Projector', N'Keyboard', N'Mouse', N'Monitor', N'Projector', 15);


-- Test 16: Environment (20 unique questions, IDTest = 16)
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES
(N'What can reduce air pollution?', N'Cars', N'Factories', N'Trees', N'Plastic', N'Trees', 16),
(N'Which energy is renewable?', N'Coal', N'Solar', N'Oil', N'Gas', N'Solar', 16),
(N'What should we recycle?', N'Paper', N'Shoes', N'Books', N'Food', N'Paper', 16),
(N'What causes global warming?', N'Trees', N'Fossil fuels', N'Wind', N'Water', N'Fossil fuels', 16),
(N'Which is harmful to oceans?', N'Plastic waste', N'Fish', N'Coral', N'Water', N'Plastic waste', 16),
(N'What helps save water at home?', N'Leakage', N'Dripping taps', N'Fixing taps', N'Overflow', N'Fixing taps', 16),
(N'Which animal is endangered?', N'Tiger', N'Dog', N'Cat', N'Cow', N'Tiger', 16),
(N'What can reduce noise pollution?', N'Music', N'Trees', N'Cars', N'Machines', N'Trees', 16),
(N'Which fuel is cleanest?', N'Coal', N'Petrol', N'Wind', N'Oil', N'Wind', 16),
(N'What can prevent soil erosion?', N'Planting trees', N'Burning leaves', N'Cutting grass', N'Digging holes', N'Planting trees', 16),
(N'Which contributes to air pollution?', N'Trees', N'Factories', N'Rivers', N'Grass', N'Factories', 16),
(N'What reduces carbon footprint?', N'Walking', N'Driving', N'Flying', N'Eating meat', N'Walking', 16),
(N'Which is a greenhouse gas?', N'Oxygen', N'Carbon dioxide', N'Water', N'Nitrogen', N'Carbon dioxide', 16),
(N'What is biodegradable?', N'Plastic', N'Paper', N'Metal', N'Glass', N'Paper', 16),
(N'Which can help conserve wildlife?', N'Hunting', N'Poaching', N'Protected areas', N'Logging', N'Protected areas', 16),
(N'What should we avoid to protect forests?', N'Reforestation', N'Deforestation', N'Planting trees', N'Gardening', N'Deforestation', 16),
(N'Which energy source is non-renewable?', N'Wind', N'Solar', N'Coal', N'Hydro', N'Coal', 16),
(N'What is eco-friendly transportation?', N'Car', N'Motorbike', N'Bicycle', N'Plane', N'Bicycle', 16),
(N'Which action helps reduce waste?', N'Throwing everything', N'Recycling', N'Burning waste', N'Dumping', N'Recycling', 16),
(N'Why is clean air important?', N'Health', N'Noise', N'Cost', N'Time', N'Health', 16);


-- Test 17: Shopping & Consumerism (20 unique questions, IDTest = 17)
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES
(N'Where do you go to buy clothes?', N'School', N'Market', N'Hospital', N'Library', N'Market', 17),
(N'Which payment method is cashless?', N'Coins', N'Credit card', N'Cash', N'Notes', N'Credit card', 17),
(N'What do you need to get a discount?', N'Receipt', N'Membership card', N'Bag', N'Shoes', N'Membership card', 17),
(N'Which store sells groceries?', N'Bookstore', N'Supermarket', N'Cinema', N'Garage', N'Supermarket', 17),
(N'What can you buy at a pharmacy?', N'Clothes', N'Medicine', N'Furniture', N'Toys', N'Medicine', 17),
(N'Where can you try on clothes?', N'Trial room', N'Garage', N'Kitchen', N'Garden', N'Trial room', 17),
(N'Which is an online shopping platform?', N'Instagram', N'Facebook', N'Amazon', N'Twitter', N'Amazon', 17),
(N'What should you check before buying electronics?', N'Warranty', N'Color', N'Brand', N'Weight', N'Warranty', 17),
(N'Which item is a luxury product?', N'Designer bag', N'T-shirt', N'Sandals', N'Socks', N'Designer bag', 17),
(N'Where do you return a faulty product?', N'Return desk', N'Parking', N'Library', N'Office', N'Return desk', 17),
(N'What is a receipt?', N'Proof of purchase', N'A discount', N'A bag', N'Money', N'Proof of purchase', 17),
(N'Which is a seasonal sale?', N'Christmas sale', N'Weekly sale', N'Daily offer', N'Monthly plan', N'Christmas sale', 17),
(N'What can help you save money?', N'Coupon', N'Book', N'Toy', N'Chair', N'Coupon', 17),
(N'Where do you buy fresh fruits?', N'Market', N'Garage', N'Cinema', N'Pharmacy', N'Market', 17),
(N'Which product is consumable?', N'Smartphone', N'Chocolate', N'Table', N'Shoes', N'Chocolate', 17),
(N'Where do you find sales promotions?', N'Shopping mall', N'Gym', N'Park', N'School', N'Shopping mall', 17),
(N'What is the purpose of a shopping list?', N'To organize purchases', N'To sleep', N'To study', N'To cook', N'To organize purchases', 17),
(N'Which item is non-perishable?', N'Bread', N'Canned food', N'Milk', N'Fruit', N'Canned food', 17),
(N'How can you pay without cash?', N'Credit card', N'Coin', N'Cash', N'Check', N'Credit card', 17),
(N'Which is an essential item for daily shopping?', N'Milk', N'Toy', N'Shoes', N'T-Shirt', N'Milk', 17);


-- Test 18: Movies & Music (20 unique questions, IDTest = 18)
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES
(N'Which genre of movie is full of action?', N'Comedy', N'Horror', N'Action', N'Drama', N'Action', 18),
(N'What instrument has keys and produces melodies?', N'Guitar', N'Piano', N'Drum', N'Violin', N'Piano', 18),
(N'Who directs a film?', N'Actor', N'Director', N'Singer', N'Dancer', N'Director', 18),
(N'Which platform streams movies online?', N'TV', N'Netflix', N'Radio', N'Newspaper', N'Netflix', 18),
(N'What do you call recorded music?', N'Album', N'Book', N'Poster', N'Painting', N'Album', 18),
(N'Which movie genre is scary?', N'Horror', N'Comedy', N'Drama', N'Romance', N'Horror', 18),
(N'Which instrument is played by blowing air?', N'Flute', N'Guitar', N'Piano', N'Drum', N'Flute', 18),
(N'Who acts in a movie?', N'Actor', N'Director', N'Producer', N'Editor', N'Actor', 18),
(N'Which music genre uses strong rhythms?', N'Jazz', N'Rock', N'Classical', N'Folk', N'Rock', 18),
(N'Where do you watch a movie on the big screen?', N'Theater', N'Park', N'Mall', N'School', N'Theater', 18),
(N'What is a soundtrack?', N'Movie poster', N'Music from a film', N'Storyline', N'Actor list', N'Music from a film', 18),
(N'Which movie is animated?', N'Toy Story', N'Titanic', N'Gladiator', N'Inception', N'Toy Story', 18),
(N'What device plays music digitally?', N'Television', N'Phone', N'Radio', N'Lamp', N'Phone', 18),
(N'Which instrument has strings?', N'Guitar', N'Flute', N'Drum', N'Trumpet', N'Guitar', 18),
(N'Which genre tells a love story?', N'Romance', N'Horror', N'Action', N'Sci-Fi', N'Romance', 18),
(N'Who writes songs?', N'Songwriter', N'Producer', N'Director', N'Actor', N'Songwriter', 18),
(N'Which app is used to listen to music?', N'Spotify', N'Word', N'Excel', N'Paint', N'Spotify', 18),
(N'Which genre is humorous and funny?', N'Comedy', N'Horror', N'Drama', N'Action', N'Comedy', 18),
(N'What is a movie trailer?', N'Preview of the film', N'Full movie', N'Song', N'Book', N'Preview of the film', 18),
(N'Who composes music?', N'Composer', N'Actor', N'Director', N'Singer', N'Composer', 18);

-- Test 19: Personality & Feelings (20 unique questions, IDTest = 19)
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES
(N'He feels very ___.', N'happy', N'sad', N'tired', N'excited', N'happy', 19),
(N'She is always ___.', N'kind', N'rude', N'lazy', N'angry', N'kind', 19),
(N'When I am nervous, I feel ___.', N'excited', N'scared', N'happy', N'bored', N'scared', 19),
(N'He is ___. when he helps others.', N'selfish', N'generous', N'angry', N'lazy', N'generous', 19),
(N'I feel ___. after a long day of work.', N'tired', N'happy', N'excited', N'angry', N'tired', 19),
(N'She gets ___. if someone lies to her.', N'angry', N'happy', N'quiet', N'tired', N'angry', 19),
(N'He feels ___. when he wins a prize.', N'sad', N'happy', N'bored', N'angry', N'happy', 19),
(N'People are ___. if they always help friends.', N'selfish', N'friendly', N'rude', N'lazy', N'friendly', 19),
(N'I feel ___. when I listen to music I like.', N'excited', N'sad', N'happy', N'tired', N'happy', 19),
(N'She is ___. and always smiles at everyone.', N'angry', N'happy', N'rude', N'scared', N'happy', 19),
(N'He feels ___. before giving a speech.', N'nervous', N'happy', N'tired', N'excited', N'nervous', 19),
(N'People feel ___. when it is cold outside.', N'happy', N'sad', N'cold', N'excited', N'sad', 19),
(N'When I finish my homework, I feel ___.', N'happy', N'bored', N'sad', N'lazy', N'happy', 19),
(N'She gets ___. if someone hurts her friend.', N'angry', N'happy', N'tired', N'excited', N'angry', 19),
(N'He feels ___. when watching a funny movie.', N'sad', N'happy', N'nervous', N'tired', N'happy', 19),
(N'People feel ___. when they are alone.', N'loved', N'lonesome', N'excited', N'happy', N'lonesome', 19),
(N'She is very ___. She always shares her food.', N'selfish', N'generous', N'lazy', N'rude', N'generous', 19),
(N'I feel ___. when it rains all day.', N'bored', N'excited', N'happy', N'angry', N'bored', 19),
(N'He feels ___. because he studied hard for the test.', N'happy', N'sad', N'tired', N'nervous', N'happy', 19),
(N'She seems ___. after running a marathon.', N'tired', N'happy', N'excited', N'nervous', N'tired', 19);

-- Test 20: News & Events (20 unique questions, IDTest = 20)
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES
(N'Where did the festival take place?', N'in the park', N'at school', N'in the kitchen', N'on the street', N'in the park', 20),
(N'The newspaper reports about ___.', N'a sports match', N'a new restaurant', N'a recipe', N'a song', N'a sports match', 20),
(N'Who writes the news articles?', N'teachers', N'reporters', N'doctors', N'farmers', N'reporters', 20),
(N'The government announced the ___.', N'weather', N'concert', N'results', N'game', N'results', 20),
(N'What happened in the city yesterday?', N'a festival', N'a party', N'a meeting', N'a concert', N'a festival', 20),
(N'Where is the press conference held?', N'at the hotel', N'at the library', N'at the park', N'at home', N'at the hotel', 20),
(N'The breaking news is about ___.', N'a fire', N'a book', N'a shoe', N'a cup', N'a fire', 20),
(N'Reporters write ___.', N'songs', N'articles', N'movies', N'dances', N'articles', 20),
(N'They announced the results of ___.', N'the exam', N'the party', N'the shopping', N'the game', N'the exam', 20),
(N'What event was held last weekend?', N'a football match', N'a cooking class', N'a car race', N'a reading session', N'a football match', 20),
(N'Where did the meeting take place?', N'at the office', N'at the park', N'at the supermarket', N'at the cinema', N'at the office', 20),
(N'The news headline is about ___.', N'a new movie', N'a car', N'a festival', N'a bag', N'a festival', 20),
(N'Who gives information on TV?', N'reporters', N'drivers', N'teachers', N'chefs', N'reporters', 20),
(N'They reported a ___.', N'storm', N'shoe', N'table', N'pen', N'storm', 20),
(N'What happened at the school yesterday?', N'a science fair', N'a football game', N'a market', N'a concert', N'a science fair', 20),
(N'Where will the next concert take place?', N'in the park', N'at home', N'in the kitchen', N'at the library', N'in the park', 20),
(N'The evening news talks about ___.', N'a festival', N'a pencil', N'a book', N'a bag', N'a festival', 20),
(N'Reporters write about ___.', N'sports events', N'shoes', N'chairs', N'pencils', N'sports events', 20),
(N'They announced the winner of ___.', N'the contest', N'the game', N'the party', N'the meeting', N'the contest', 20),
(N'What was reported in the local news?', N'a charity event', N'a chair', N'a cup', N'a pen', N'a charity event', 20);


-- Test 21: Work & Career (20 unique questions, IDTest = 21)
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES
(N'He wants to find ___.', N'a new hobby', N'a job', N'a car', N'a house', N'a job', 21),
(N'She works as a ___.', N'doctor', N'engineer', N'singer', N'chef', N'engineer', 21),
(N'A resume shows your ___.', N'experience', N'age', N'height', N'weight', N'experience', 21),
(N'He applies for a ___.', N'position', N'ticket', N'book', N'pen', N'position', 21),
(N'They have an interview ___.', N'today', N'yesterday', N'last year', N'tomorrow', N'today', 21),
(N'Which skill is important for work?', N'coding', N'singing', N'dancing', N'sleeping', N'coding', 21),
(N'She wants to ___.', N'be promoted', N'cook', N'play', N'sleep', N'be promoted', 21),
(N'Who manages the team?', N'The boss', N'A student', N'A driver', N'A singer', N'The boss', 21),
(N'He prepares for ___.', N'a meeting', N'a trip', N'a party', N'a sleep', N'a meeting', 21),
(N'An office worker uses ___.', N'a laptop', N'a bike', N'a ball', N'a book', N'a laptop', 21),
(N'He writes emails to ___.', N'friends', N'colleagues', N'neighbors', N'family', N'colleagues', 21),
(N'She wears ___.', N'a uniform', N'shoes', N'hats', N'gloves', N'a uniform', 21),
(N'He attends ___.', N'a meeting', N'a concert', N'a market', N'a festival', N'a meeting', 21),
(N'What is required for a job?', N'experience', N'shoes', N'book', N'car', N'experience', 21),
(N'She is looking for ___.', N'a promotion', N'a pen', N'a bag', N'a cup', N'a promotion', 21),
(N'He submits his ___.', N'resume', N'book', N'shoes', N'bag', N'resume', 21),
(N'Who conducts interviews?', N'The HR', N'The driver', N'The chef', N'The teacher', N'The HR', 21),
(N'Employees work in a ___.', N'office', N'park', N'school', N'kitchen', N'office', 21),
(N'He checks his ___.', N'emails', N'books', N'shoes', N'clothes', N'emails', 21),
(N'To get a job, you need ___.', N'experience', N'toys', N'books', N'shoes', N'experience', 21);


-- Test 22: Science & Research (20 unique questions, IDTest = 22)
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES
(N'Scientists study ___.', N'movies', N'nature', N'shoes', N'toys', N'nature', 22),
(N'Research helps us ___.', N'learn new things', N'sleep more', N'run faster', N'watch TV', N'learn new things', 22),
(N'A lab is used for ___.', N'cooking', N'experiments', N'sleeping', N'shopping', N'experiments', 22),
(N'Which person is a scientist?', N'driver', N'researcher', N'chef', N'singer', N'researcher', 22),
(N'They collect data for ___.', N'analysis', N'music', N'sport', N'fun', N'analysis', 22),
(N'What do scientists write?', N'articles', N'songs', N'letters', N'recipes', N'articles', 22),
(N'Which tool is used in a lab?', N'beaker', N'spoon', N'ball', N'book', N'beaker', 22),
(N'What is the study of stars called?', N'astronomy', N'biology', N'chemistry', N'geography', N'astronomy', 22),
(N'A researcher studies ___.', N'songs', N'nature', N'shoes', N'toys', N'nature', 22),
(N'Experiments are done to ___.', N'learn', N'sleep', N'run', N'play', N'learn', 22),
(N'Which is a scientific method step?', N'observation', N'sleeping', N'watching TV', N'playing', N'observation', 22),
(N'A microscope is used to see ___.', N'cells', N'cars', N'books', N'people', N'cells', 22),
(N'Chemists work with ___.', N'materials', N'shoes', N'music', N'games', N'materials', 22),
(N'Which is a famous scientist?', N'Albert Einstein', N'A singer', N'A chef', N'A driver', N'Albert Einstein', 22),
(N'Data is important for ___.', N'research', N'sports', N'movies', N'music', N'research', 22),
(N'A field study is conducted ___.', N'outdoors', N'at home', N'in a shop', N'in a cinema', N'outdoors', 22),
(N'Which subject studies animals?', N'Zoology', N'Chemistry', N'Physics', N'Geography', N'Zoology', 22),
(N'Scientific papers are published in ___.', N'journals', N'books', N'magazines', N'newspapers', N'journals', 22),
(N'A hypothesis is ___.', N'an educated guess', N'a random choice', N'a book', N'a movie', N'an educated guess', 22),
(N'Technology is developed through ___.', N'research', N'playing', N'sleeping', N'watching TV', N'research', 22);


-- Test 23: Politics & Society (20 unique questions, IDTest = 23)
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES
(N'Voting is part of ___.', N'cooking', N'sleeping', N'reading', N'democracy', N'democracy', 23),
(N'A leader governs a ___.', N'garden', N'room', N'country', N'kitchen', N'country', 23),
(N'Citizens have ___.', N'shoes', N'rights', N'tables', N'flowers', N'rights', 23),
(N'The law applies to ___.', N'everyone', N'only cats', N'only trees', N'only cars', N'everyone', 23),
(N'They discussed public ___.', N'color', N'size', N'shape', N'policy', N'policy', 23),
(N'What is a government?', N'an organization', N'a shop', N'a park', N'a school', N'an organization', 23),
(N'Who can vote?', N'minors', N'citizens', N'visitors', N'tourists', N'citizens', 23),
(N'A parliament makes ___.', N'law', N'food', N'games', N'songs', N'law', 23),
(N'Democracy means ___.', N'people rule', N'only one rules', N'no rules', N'random rules', N'people rule', 23),
(N'Rights are ___.', N'obligations', N'freedoms', N'chores', N'payments', N'freedoms', 23),
(N'A mayor leads a ___.', N'city', N'house', N'garden', N'school', N'city', 23),
(N'The president governs a ___.', N'room', N'country', N'kitchen', N'garden', N'country', 23),
(N'Citizens can participate in ___.', N'elections', N'sleep', N'watching TV', N'cooking', N'elections', 23),
(N'Law enforcement ensures ___.', N'justice', N'fun', N'music', N'sports', N'justice', 23),
(N'Policies are ___.', N'rules or plans', N'books', N'games', N'shops', N'rules or plans', 23),
(N'Voting day happens ___.', N'annually', N'every hour', N'daily', N'never', N'annually', 23),
(N'Leaders must be ___.', N'elected', N'sleepy', N'random', N'silent', N'elected', 23),
(N'Public debate is about ___.', N'policy', N'food', N'movies', N'sports', N'policy', 23),
(N'Citizens obey the ___.', N'law', N'games', N'shopping', N'music', N'law', 23),
(N'Government decisions affect ___.', N'everyone', N'only one', N'only cats', N'only cars', N'everyone', 23);


-- Test 24: Economics & Finance (20 unique questions, IDTest = 24)
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES
(N'Money is used to ___.', N'sing songs', N'sleep', N'walk', N'buy things', N'buy things', 24),
(N'A budget helps ___.', N'play music', N'paint', N'plan spending', N'run faster', N'plan spending', 24),
(N'Banks keep ___.', N'chairs', N'money', N'trees', N'books', N'money', 24),
(N'Which is a currency? ___.', N'dollar', N'chair', N'car', N'shirt', N'dollar', 24),
(N'Prices show the ___.', N'sound', N'smell', N'color', N'cost', N'cost', 24),
(N'Investments help ___.', N'grow money', N'paint', N'sleep', N'walk', N'grow money', 24),
(N'Expenses mean ___.', N'money spent', N'money earned', N'games', N'books', N'money spent', 24),
(N'Income is ___.', N'money earned', N'money lost', N'money spent', N'books', N'money earned', 24),
(N'Savings are ___.', N'money kept', N'money spent', N'money lost', N'money earned', N'money kept', 24),
(N'Taxes are ___.', N'fees paid to government', N'books', N'games', N'songs', N'fees paid to government', 24),
(N'A bank account stores ___.', N'money', N'chairs', N'books', N'trees', N'money', 24),
(N'A credit card is used to ___.', N'pay', N'sing', N'walk', N'paint', N'pay', 24),
(N'Debt means ___.', N'money owed', N'money earned', N'money saved', N'money spent', N'money owed', 24),
(N'A loan is ___.', N'money borrowed', N'money spent', N'money saved', N'money earned', N'money borrowed', 24),
(N'Profit is ___.', N'money earned minus cost', N'money spent', N'money lost', N'money borrowed', N'money earned minus cost', 24),
(N'A stock represents ___.', N'ownership in company', N'money', N'book', N'chair', N'ownership in company', 24),
(N'A market is ___.', N'place to buy and sell', N'sleep area', N'park', N'school', N'place to buy and sell', 24),
(N'Inflation means ___.', N'prices rise', N'prices fall', N'prices stay same', N'prices unknown', N'prices rise', 24),
(N'Financial planning helps ___.', N'manage money', N'sleep', N'play', N'eat', N'manage money', 24),
(N'Investment risk is ___.', N'possibility of losing money', N'possibility of earning money', N'possibility of sleeping', N'possibility of eating', N'possibility of losing money', 24);

-- Test 25: Art & Literature (20 unique questions, IDTest = 25)
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES
(N'An author writes a ___.', N'table', N'shoe', N'car', N'book', N'book', 25),
(N'Which is a painting? ___.', N'food', N'weather', N'art', N'money', N'art', 25),
(N'She reads ___.', N'a stone', N'a novel', N'a bottle', N'a spoon', N'a novel', 25),
(N'A museum shows ___.', N'artworks', N'cars', N'computers', N'shoes', N'artworks', 25),
(N'He is a famous ___.', N'driver', N'chef', N'pilot', N'poet', N'poet', 25),
(N'A poet writes ___.', N'songs', N'books', N'paintings', N'stories', N'stories', 25),
(N'An exhibition shows ___.', N'clothes', N'art', N'food', N'money', N'art', 25),
(N'She enjoys reading ___.', N'a novel', N'a bottle', N'a stone', N'a spoon', N'a novel', 25),
(N'A gallery displays ___.', N'artworks', N'cars', N'shoes', N'computers', N'artworks', 25),
(N'He is known as a ___.', N'chef', N'poet', N'driver', N'pilot', N'poet', 25),
(N'Authors often write ___.', N'books', N'tables', N'shoes', N'cars', N'books', 25),
(N'A famous painting is ___.', N'art', N'money', N'food', N'weather', N'art', 25),
(N'She likes to read ___.', N'a bottle', N'a novel', N'a stone', N'a spoon', N'a novel', 25),
(N'Museums display ___.', N'artworks', N'computers', N'shoes', N'cars', N'artworks', 25),
(N'He writes poetry as a ___.', N'pilot', N'driver', N'chef', N'poet', N'poet', 25),
(N'A novelist creates ___.', N'books', N'shoes', N'cars', N'tables', N'books', 25),
(N'Paintings are examples of ___.', N'art', N'money', N'food', N'weather', N'art', 25),
(N'She reads novels and ___.', N'a spoon', N'a stone', N'a bottle', N'a novel', N'a novel', 25),
(N'A museum often shows ___.', N'shoes', N'artworks', N'cars', N'computers', N'artworks', 25),
(N'Famous literary figures include ___.', N'poet', N'driver', N'chef', N'pilot', N'poet', 25);


-- Test 26: Law & Crime (20 unique questions, IDTest = 26)
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES
(N'Who enforces the law?', N'chefs', N'teachers', N'singers', N'police', N'police', 26),
(N'A court decides ___.', N'colors', N'smells', N'guilt', N'tastes', N'guilt', 26),
(N'Robbery is a ___.', N'book', N'crime', N'song', N'sport', N'crime', 26),
(N'You should follow the ___.', N'rules', N'fruits', N'games', N'weather', N'rules', 26),
(N'They arrested the ___.', N'market', N'ticket', N'window', N'suspect', N'suspect', 26),
(N'Breaking the law can lead to ___.', N'fun', N'punishment', N'reward', N'celebration', N'punishment', 26),
(N'A judge works in a ___.', N'stadium', N'school', N'court', N'park', N'court', 26),
(N'The police catch ___.', N'criminals', N'songs', N'flowers', N'books', N'criminals', 26),
(N'Laws are made by ___.', N'citizens', N'government', N'teachers', N'doctors', N'government', 26),
(N'You must obey ___.', N'rules', N'games', N'foods', N'weather', N'rules', 26),
(N'Criminals may go to ___.', N'school', N'prison', N'park', N'market', N'prison', 26),
(N'A witness gives ___.', N'opinions', N'evidence', N'songs', N'paintings', N'evidence', 26),
(N'Illegal acts are called ___.', N'crimes', N'sports', N'books', N'foods', N'crimes', 26),
(N'The law protects ___.', N'everyone', N'trees', N'cars', N'cats', N'everyone', 26),
(N'Police work to maintain ___.', N'order', N'chaos', N'fun', N'games', N'order', 26),
(N'Following traffic rules prevents ___.', N'accidents', N'books', N'songs', N'paintings', N'accidents', 26),
(N'A detective solves ___.', N'mysteries', N'books', N'paintings', N'songs', N'mysteries', 26),
(N'They arrested the ___.', N'suspect', N'market', N'ticket', N'window', N'suspect', 26),
(N'A law ensures ___.', N'justice', N'fun', N'games', N'weather', N'justice', 26),
(N'Citizens must respect ___.', N'rules', N'flowers', N'tables', N'shoes', N'rules', 26);


-- Test 27: Psychology (20 unique questions, IDTest = 27)
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES
(N'Psychology studies the ___.', N'cars', N'cakes', N'houses', N'mind', N'mind', 27),
(N'He feels anxious or ___.', N'loud', N'flat', N'nervous', N'wooden', N'nervous', 27),
(N'Therapy can help with ___.', N'keys', N'emotions', N'breakfast', N'pets', N'emotions', 27),
(N'Memory helps us ___.', N'remember', N'forget', N'eat', N'sleep', N'remember', 27),
(N'Behavior is how people ___.', N'sit', N'stand', N'paint', N'act', N'act', 27),
(N'Stress can cause ___.', N'illness', N'paintings', N'cars', N'books', N'illness', 27),
(N'Positive thinking improves ___.', N'health', N'cars', N'food', N'houses', N'health', 27),
(N'Personality describes ___.', N'behavior', N'shoes', N'cars', N'flowers', N'behavior', 27),
(N'Learning is part of ___.', N'education', N'weather', N'music', N'food', N'education', 27),
(N'Emotions can be ___.', N'shared', N'sold', N'cooked', N'bought', N'shared', 27),
(N'Children develop ___.', N'skills', N'shoes', N'cars', N'books', N'skills', 27),
(N'People may feel ___.', N'happy', N'spoons', N'tables', N'chairs', N'happy', 27),
(N'Memory loss can affect ___.', N'daily life', N'cars', N'songs', N'flowers', N'daily life', 27),
(N'Therapists help people ___.', N'solve problems', N'sleep', N'cook', N'run', N'solve problems', 27),
(N'Anxiety can lead to ___.', N'worry', N'painting', N'books', N'flowers', N'worry', 27),
(N'Observation helps us ___.', N'understand behavior', N'cook', N'sing', N'paint', N'understand behavior', 27),
(N'Social interaction improves ___.', N'mental health', N'cars', N'books', N'food', N'mental health', 27),
(N'Motivation drives ___.', N'action', N'flowers', N'chairs', N'spoons', N'action', 27),
(N'Self-awareness helps with ___.', N'personal growth', N'painting', N'cars', N'books', N'personal growth', 27),
(N'Behavior is influenced by ___.', N'environment', N'shoes', N'books', N'tables', N'environment', 27);

-- Test 28: Global Issues (20 unique questions, IDTest = 28)
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES
(N'Climate change affects ___.', N'the toaster', N'the pencil', N'the shoe', N'the planet', N'the planet', 28),
(N'Hunger is a world ___.', N'song', N'pen', N'problem', N'color', N'problem', 28),
(N'We should reduce ___.', N'chairs', N'waste', N'music', N'books', N'waste', 28),
(N'International aid helps ___.', N'countries', N'tables', N'cups', N'stones', N'countries', 28),
(N'Global issues need ___.', N'silence', N'noise', N'sleep', N'cooperation', N'cooperation', 28),
(N'Which of these is renewable? ___.', N'plastic', N'coal', N'solar energy', N'oil', N'solar energy', 28),
(N'We must __ waste to protect the environment.', N'produce', N'reduce', N'destroy', N'ignore', N'reduce', 28),
(N'People should recycle ___.', N'papers', N'cars', N'flowers', N'shoes', N'papers', 28),
(N'The Earth is ___.', N'flat', N'round', N'square', N'triangle', N'round', 28),
(N'Air pollution is caused by ___.', N'vehicles', N'books', N'chairs', N'flowers', N'vehicles', 28),
(N'Global warming is increasing ___.', N'temperature', N'flowers', N'books', N'chairs', N'temperature', 28),
(N'People donate to ___.', N'hunger', N'shoes', N'pens', N'books', N'hunger', 28),
(N'Recycling helps ___.', N'plants', N'waste', N'trees', N'cars', N'trees', 28),
(N'We should __ energy.', N'waste', N'save', N'ignore', N'destroy', N'save', 28),
(N'Natural disasters can __ lives.', N'save', N'destroy', N'paint', N'cook', N'destroy', 28),
(N'Which sentence is correct? ___.', N'The planet is in danger.', N'The planet in danger is.', N'Danger is planet the.', N'Planet is danger.', N'The planet is in danger.', 28),
(N'People must work ___.', N'independently', N'together', N'alone', N'silently', N'together', 28),
(N'Which of these is a solution? ___.', N'planting trees', N'polluting rivers', N'cutting forests', N'dumping trash', N'planting trees', 28),
(N'We should protect ___.', N'the environment', N'cars', N'shoes', N'chairs', N'the environment', 28),
(N'Global cooperation is ___.', N'important', N'unnecessary', N'boring', N'dangerous', N'important', 28);

-- Test 29: Business & Entrepreneurship (IDTest = 29)
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES
(N'A startup is a new ___.', N'book', N'song', N'shoe', N'business', N'business', 29),
(N'Entrepreneurs take ___.', N'naps', N'breakfasts', N'risks', N'photos', N'risks', 29),
(N'They pitch an ___.', N'apple', N'idea', N'umbrella', N'chair', N'idea', 29),
(N'Profit is revenue minus ___.', N'costs', N'colors', N'sounds', N'sizes', N'costs', 29),
(N'He founded a ___.', N'library', N'market', N'park', N'company', N'company', 29),
(N'A successful business usually ___.', N'fails', N'grows', N'sleeps', N'runs', N'grows', 29),
(N'Entrepreneurs must be ___.', N'lazy', N'risky', N'innovative', N'quiet', N'innovative', 29),
(N'Which sentence is correct? ___.', N'She runs a business.', N'Business she runs.', N'Runs business she.', N'She business runs.', N'She runs a business.', 29),
(N'A budget helps a startup ___.', N'spend wisely', N'ignore money', N'lose money', N'sleep well', N'spend wisely', 29),
(N'To succeed, you need ___.', N'talent', N'mistakes', N'failure', N'stagnation', N'talent', 29),
(N'Entrepreneurs often work ___.', N'hard', N'lazy', N'slow', N'nervous', N'hard', 29),
(N'Which phrase is correct? ___.', N'Make profits.', N'Profits make.', N'Make profitly.', N'Profit making.', N'Make profits.', 29),
(N'A good idea can ___.', N'fail', N'change the world', N'disappear', N'ignore', N'change the world', 29),
(N'The company grew ___.', N'slowly', N'quickly', N'lazily', N'quietly', N'quickly', 29),
(N'Which sentence uses passive voice correctly? ___.', N'The product was launched by the startup.', N'The startup launches the product.', N'Launches product by startup.', N'The product launch startup.', N'The product was launched by the startup.', 29),
(N'Investors are people who ___.', N'buy stocks', N'sell shoes', N'eat books', N'paint chairs', N'buy stocks', 29),
(N'Which sentence is conditional? ___.', N'If you invest wisely, you will profit.', N'Invest wisely.', N'You profit.', N'Wise investment.', N'If you invest wisely, you will profit.', 29),
(N'A business plan should ___.', N'outline goals', N'ignore goals', N'forget goals', N'hide goals', N'outline goals', 29),
(N'Which sentence is complex? ___.', N'Although the market is risky, he invested.', N'He invested.', N'Market is risky.', N'Invested he did.', N'Although the market is risky, he invested.', 29),
(N'The entrepreneur succeeded because ___.', N'she worked hard', N'she slept', N'she ignored advice', N'she failed', N'she worked hard', 29);

-- Test 30: History (IDTest = 30)
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES
(N'Who discovered America?', N'Newton', N'Einstein', N'Beethoven', N'Columbus', N'Columbus', 30),
(N'History studies past ___.', N'numbers', N'socks', N'events', N'vegetables', N'events', 30),
(N'They visited a historic ___.', N'plate', N'site', N'phone', N'bottle', N'site', 30),
(N'The war ended many ___.', N'years ago', N'minutes ago', N'seconds ago', N'hours ago', N'years ago', 30),
(N'Ancient people used to ___.', N'tweet', N'email', N'drive', N'farm', N'farm', 30),
(N'Which sentence is correct? ___.', N'Columbus discovered America.', N'America discovered Columbus.', N'Discovered Columbus America.', N'America Columbus discovered.', N'Columbus discovered America.', 30),
(N'History can teach us ___.', N'lessons', N'pets', N'games', N'songs', N'lessons', 30),
(N'The museum exhibits ___.', N'ancient artifacts', N'shoes', N'cars', N'trees', N'ancient artifacts', 30),
(N'Which sentence uses past tense correctly? ___.', N'The king ruled wisely.', N'The king rules wisely.', N'Ruling the king wisely.', N'Wise rules the king.', N'The king ruled wisely.', 30),
(N'People in ancient times ___.', N'farmed', N'watched TV', N'played computers', N'sent emails', N'farmed', 30),
(N'The battle lasted ___.', N'many years', N'a second', N'an hour', N'a minute', N'many years', 30),
(N'Which sentence is in passive voice? ___.', N'The castle was built in 1500.', N'They build the castle in 1500.', N'Built they castle 1500.', N'The castle built in 1500.', N'The castle was built in 1500.', 30),
(N'The explorers traveled ___.', N'by ship', N'by car', N'by plane', N'on foot', N'by ship', 30),
(N'Which sentence is complex? ___.', N'Although it was dangerous, they sailed across the ocean.', N'They sailed across the ocean.', N'It was dangerous.', N'They sailed and ocean.', N'Although it was dangerous, they sailed across the ocean.', 30),
(N'Historical records ___.', N'document events', N'ignore events', N'lose events', N'hide events', N'document events', 30),
(N'Who was the first president of the United States?', N'Lincoln', N'Washington', N'Jefferson', N'Adams', N'Washington', 30),
(N'Which sentence uses conditional correctly? ___.', N'If they study history, they will understand the present.', N'They study history if.', N'Understanding the present if history studied.', N'History will study if they understand.', N'If they study history, they will understand the present.', 30),
(N'Ancient civilizations ___.', N'invented writing', N'watched TV', N'used cars', N'sent emails', N'invented writing', 30),
(N'Which sentence uses reported speech correctly? ___.', N'The teacher said that the Romans built roads.', N'The teacher says Romans build roads.', N'Teacher says roads Romans built.', N'Romans roads built teacher says.', N'The teacher said that the Romans built roads.', 30),
(N'Understanding history helps us ___.', N'make better decisions', N'play games', N'ignore mistakes', N'sleep more', N'make better decisions', 30);

-- Test 31: Philosophy

INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest, Level) VALUES 
(N'Philosophy asks about ___', N'furniture', N'dessert', N'socks', N'life', N'life', 31, 'A1'),
(N'Who thinks about right and wrong?', N'singers', N'chefs', N'philosophers', N'drivers', N'philosophers', 31, 'A2'),
(N'What is the study of knowledge called?', N'engineering', N'epistemology', N'biology', N'mathematics', N'epistemology', 31, 'B1'),
(N'Philosophy often uses ___ to form arguments', N'reasoning', N'cooking', N'painting', N'singing', N'reasoning', 31, 'B2'),
(N'A famous Greek philosopher is ___', N'Tesla', N'Mozart', N'Picasso', N'Plato', N'Plato', 31, 'C1'),
(N'Ethics studies ___', N'actions', N'desserts', N'socks', N'furniture', N'actions', 31, 'C2'),
(N'Logic helps philosophers ___', N'cook', N'argue correctly', N'dance', N'paint', N'argue correctly', 31, 'A1'),
(N'Metaphysics studies ___', N'materials', N'reality', N'food', N'clothes', N'reality', 31, 'A2'),
(N'Epistemology focuses on ___', N'knowledge', N'songs', N'paintings', N'dishes', N'knowledge', 31, 'B1'),
(N'Philosophers ask questions about ___', N'love and life', N'shoes', N'cars', N'clothes', N'love and life', 31, 'B2'),
(N'Existentialism explores ___', N'human existence', N'furniture', N'games', N'foods', N'human existence', 31, 'C1'),
(N'Pragmatism evaluates ideas by their ___', N'practical effect', N'color', N'taste', N'size', N'practical effect', 31, 'C2'),
(N'Who wrote "The Republic"?', N'Plato', N'Tesla', N'Mozart', N'Picasso', N'Plato', 31, 'A1'),
(N'Philosophy can help people ___', N'make better decisions', N'cook', N'paint', N'sing', N'make better decisions', 31, 'A2'),
(N'Which branch studies beauty and art?', N'Aesthetics', N'Mathematics', N'Physics', N'Chemistry', N'Aesthetics', 31, 'B1'),
(N'Philosophical skepticism questions ___', N'certainty', N'desserts', N'clothes', N'music', N'certainty', 31, 'B2'),
(N'Who is considered the father of modern philosophy?', N'Descartes', N'Plato', N'Tesla', N'Mozart', N'Descartes', 31, 'C1'),
(N'Phenomenology studies ___', N'experience', N'food', N'furniture', N'socks', N'experience', 31, 'C2'),
(N'Which philosopher wrote "Critique of Pure Reason"?', N'Immanuel Kant', N'Picasso', N'Mozart', N'Tesla', N'Immanuel Kant', 31, 'C1'),
(N'Philosophy encourages ___ thinking', N'critical', N'shallow', N'superficial', N'random', N'critical', 31, 'C2');
