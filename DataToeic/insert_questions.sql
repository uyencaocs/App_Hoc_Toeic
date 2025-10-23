-- insert_questions.sql
-- 600 English test questions divided by topic (IDTest 2–31)
-- Mỗi Test có 20 câu.
SET NOCOUNT ON;
select * from question;
-- Test 2: Greetings & Introductions
-- Câu trả lời đã được chuyển từ văn bản ('My name is John') sang ký tự đơn ('D')
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'What is your name (Q1)?', N'I am fine', N'It is blue', N'Yes, it is', N'My name is John', 'D', 2);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'How are you (Q2)?', N'I am a teacher', N'I am from Japan', N'I am fine', N'I am ten', 'C', 2);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Where are you from (Q3)?', N'I have two brothers', N'I am from Japan', N'I am busy', N'I like pizza', 'B', 2);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Nice to meet you. — ___ (Q4)?', N'Nice to meet you too', N'I am fine', N'No thanks', N'See you later', 'A', 2);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Good morning — used at ___. (Q5)?', N'the end of the day', N'night time', N'midnight', N'the start of the day', 'D', 2);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'What is your name (Q6)?', N'It is blue', N'Yes, it is', N'My name is John', N'I am fine', 'C', 2);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'How are you (Q7)?', N'I am from Japan', N'I am fine', N'I am ten', N'I am a teacher', 'B', 2);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Where are you from (Q8)?', N'I am from Japan', N'I am busy', N'I like pizza', N'I have two brothers', 'A', 2);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Nice to meet you. — ___ (Q9)?', N'I am fine', N'No thanks', N'See you later', N'Nice to meet you too', 'D', 2);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Good morning — used at ___. (Q10)?', N'night time', N'midnight', N'the start of the day', N'the end of the day', 'C', 2);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'What is your name (Q11)?', N'Yes, it is', N'My name is John', N'I am fine', N'It is blue', 'B', 2);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'How are you (Q12)?', N'I am fine', N'I am ten', N'I am a teacher', N'I am from Japan', 'A', 2);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Where are you from (Q13)?', N'I am busy', N'I like pizza', N'I have two brothers', N'I am from Japan', 'D', 2);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Nice to meet you. — ___ (Q14)?', N'No thanks', N'See you later', N'Nice to meet you too', N'I am fine', 'C', 2);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Good morning — used at ___. (Q15)?', N'midnight', N'the start of the day', N'the end of the day', N'night time', 'B', 2);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'What is your name (Q16)?', N'My name is John', N'I am fine', N'It is blue', N'Yes, it is', 'A', 2);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'How are you (Q17)?', N'I am ten', N'I am a teacher', N'I am from Japan', N'I am fine', 'D', 2);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Where are you from (Q18)?', N'I like pizza', N'I have two brothers', N'I am from Japan', N'I am busy', 'C', 2);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Nice to meet you. — ___ (Q19)?', N'See you later', N'Nice to meet you too', N'I am fine', N'No thanks', 'B', 2);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Good morning — used at ___. (Q20)?', N'the start of the day', N'the end of the day', N'night time', N'midnight', 'A', 2);s
-- Test 3: Family & Friends
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Who is your mother (Q1)?', N'My father is tall', N'I have a cat', N'We live in Hanoi', N'My mother is a teacher', 'D', 3);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'He is my brother. He is my ___. (Q2)?', N'friend', N'uncle', N'brother', N'sister', 'C', 3);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'How many siblings do you have (Q3)?', N'I work', N'I have two siblings', N'I like football', N'I am a student', 'B', 3);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'My best friend likes to ___. (Q4)?', N'play guitar', N'be a doctor', N'study math', N'drive a bus', 'A', 3);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'They are a family. They live ___. (Q5)?', N'alone', N'yesterday', N'quickly', N'together', 'D', 3);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Who is your mother (Q6)?', N'I have a cat', N'We live in Hanoi', N'My mother is a teacher', N'My father is tall', 'C', 3);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'He is my brother. He is my ___. (Q7)?', N'uncle', N'brother', N'sister', N'friend', 'B', 3);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'How many siblings do you have (Q8)?', N'I have two siblings', N'I like football', N'I am a student', N'I work', 'A', 3);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'My best friend likes to ___. (Q9)?', N'be a doctor', N'study math', N'drive a bus', N'play guitar', 'D', 3);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'They are a family. They live ___. (Q10)?', N'yesterday', N'quickly', N'together', N'alone', 'C', 3);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Who is your mother (Q11)?', N'We live in Hanoi', N'My mother is a teacher', N'My father is tall', N'I have a cat', 'B', 3);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'He is my brother. He is my ___. (Q12)?', N'brother', N'sister', N'friend', N'uncle', 'A', 3);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'How many siblings do you have (Q13)?', N'I like football', N'I am a student', N'I work', N'I have two siblings', 'D', 3);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'My best friend likes to ___. (Q14)?', N'study math', N'drive a bus', N'play guitar', N'be a doctor', 'C', 3);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'They are a family. They live ___. (Q15)?', N'quickly', N'together', N'alone', N'yesterday', 'B', 3);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Who is your mother (Q16)?', N'My mother is a teacher', N'My father is tall', N'I have a cat', N'We live in Hanoi', 'A', 3);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'He is my brother. He is my ___. (Q17)?', N'sister', N'friend', N'uncle', N'brother', 'D', 3);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'How many siblings do you have (Q18)?', N'I am a student', N'I work', N'I have two siblings', N'I like football', 'C', 3);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'My best friend likes to ___. (Q19)?', N'drive a bus', N'play guitar', N'be a doctor', N'study math', 'B', 3);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'They are a family. They live ___. (Q20)?', N'together', N'alone', N'yesterday', N'quickly', 'A', 3);

-- Test 4: Numbers & Alphabet
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'What comes after two (Q1)?', N'one', N'zero', N'five', N'three', 'D', 4);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'How many letters are in the English alphabet (Q2)?', N'20', N'30', N'26', N'24', 'C', 4);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'What number is 10 + 5 (Q3)?', N'20', N'15', N'10', N'5', 'B', 4);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Which is an even number (Q4)?', N'four', N'three', N'five', N'seven', 'A', 4);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'What is the first letter of ''Apple'' (Q5)?', N'B', N'C', N'D', N'A', 'D', 4);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'What comes after two (Q6)?', N'zero', N'five', N'three', N'one', 'C', 4);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'How many letters are in the English alphabet (Q7)?', N'30', N'26', N'24', N'20', 'B', 4);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'What number is 10 + 5 (Q8)?', N'15', N'10', N'5', N'20', 'A', 4);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Which is an even number (Q9)?', N'three', N'five', N'seven', N'four', 'D', 4);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'What is the first letter of ''Apple'' (Q10)?', N'C', N'D', N'A', N'B', 'C', 4);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'What comes after two (Q11)?', N'five', N'three', N'one', N'zero', 'B', 4);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'How many letters are in the English alphabet (Q12)?', N'26', N'24', N'20', N'30', 'A', 4);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'What number is 10 + 5 (Q13)?', N'10', N'5', N'20', N'15', 'D', 4);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Which is an even number (Q14)?', N'five', N'seven', N'four', N'three', 'C', 4);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'What is the first letter of ''Apple'' (Q15)?', N'D', N'A', N'B', N'C', 'B', 4);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'What comes after two (Q16)?', N'three', N'one', N'zero', N'five', 'A', 4);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'How many letters are in the English alphabet (Q17)?', N'24', N'20', N'30', N'26', 'D', 4);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'What number is 10 + 5 (Q18)?', N'5', N'20', N'15', N'10', 'C', 4);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Which is an even number (Q19)?', N'seven', N'four', N'three', N'five', 'B', 4);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'What is the first letter of ''Apple'' (Q20)?', N'A', N'B', N'C', N'D', 'A', 4);

-- Test 5: Jobs & Occupations
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'He works in a hospital. He is a ___. (Q1)?', N'teacher', N'farmer', N'chef', N'doctor', 'D', 5);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Who teaches students (Q2)?', N'a nurse', N'a banker', N'a teacher', N'a driver', 'C', 5);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'A person who fixes cars is a ___. (Q3)?', N'chef', N'mechanic', N'artist', N'pilot', 'B', 5);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'A chef works in a ___. (Q4)?', N'kitchen', N'classroom', N'office', N'factory', 'A', 5);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Which job works with money (Q5)?', N'farmer', N'actor', N'singer', N'banker', 'D', 5);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'He works in a hospital. He is a ___. (Q6)?', N'farmer', N'chef', N'doctor', N'teacher', 'C', 5);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Who teaches students (Q7)?', N'a banker', N'a teacher', N'a driver', N'a nurse', 'B', 5);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'A person who fixes cars is a ___. (Q8)?', N'mechanic', N'artist', N'pilot', N'chef', 'A', 5);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'A chef works in a ___. (Q9)?', N'classroom', N'office', N'factory', N'kitchen', 'D', 5);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Which job works with money (Q10)?', N'actor', N'singer', N'banker', N'farmer', 'C', 5);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'He works in a hospital. He is a ___. (Q11)?', N'chef', N'doctor', N'teacher', N'farmer', 'B', 5);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Who teaches students (Q12)?', N'a teacher', N'a driver', N'a nurse', N'a banker', 'A', 5);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'A person who fixes cars is a ___. (Q13)?', N'artist', N'pilot', N'chef', N'mechanic', 'D', 5);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'A chef works in a ___. (Q14)?', N'office', N'factory', N'kitchen', N'classroom', 'C', 5);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Which job works with money (Q15)?', N'singer', N'banker', N'farmer', N'actor', 'B', 5);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'He works in a hospital. He is a ___. (Q16)?', N'doctor', N'teacher', N'farmer', N'chef', 'A', 5);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Who teaches students (Q17)?', N'a driver', N'a nurse', N'a banker', N'a teacher', 'D', 5);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'A person who fixes cars is a ___. (Q18)?', N'pilot', N'chef', N'mechanic', N'artist', 'C', 5);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'A chef works in a ___. (Q19)?', N'factory', N'kitchen', N'classroom', N'office', 'B', 5);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Which job works with money (Q20)?', N'banker', N'farmer', N'actor', N'singer', 'A', 5);

-- Test 6: Daily Routines
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'What do you do in the morning (Q1)?', N'sleep', N'eat dinner', N'watch TV at night', N'get up', 'D', 6);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'I brush my teeth ___. (Q2)?', N'never', N'yesterday', N'every morning', N'at midnight', 'C', 6);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'She goes to school ___. (Q3)?', N'yesterday', N'by bus', N'tomorrow', N'last year', 'B', 6);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'What time do you go to bed (Q4)?', N'at 10 pm', N'in 2050', N'in summer', N'next week', 'A', 6);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'He usually ___ coffee in the morning. (Q5)?', N'drank', N'drink', N'drinking', N'drinks', 'D', 6);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'What do you do in the morning (Q6)?', N'eat dinner', N'watch TV at night', N'get up', N'sleep', 'C', 6);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'I brush my teeth ___. (Q7)?', N'yesterday', N'every morning', N'at midnight', N'never', 'B', 6);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'She goes to school ___. (Q8)?', N'by bus', N'tomorrow', N'last year', N'yesterday', 'A', 6);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'What time do you go to bed (Q9)?', N'in 2050', N'in summer', N'next week', N'at 10 pm', 'D', 6);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'He usually ___ coffee in the morning. (Q10)?', N'drink', N'drinking', N'drinks', N'drank', 'C', 6);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'What do you do in the morning (Q11)?', N'watch TV at night', N'get up', N'sleep', N'eat dinner', 'B', 6);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'I brush my teeth ___. (Q12)?', N'every morning', N'at midnight', N'never', N'yesterday', 'A', 6);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'She goes to school ___. (Q13)?', N'tomorrow', N'last year', N'yesterday', N'by bus', 'D', 6);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'What time do you go to bed (Q14)?', N'in summer', N'next week', N'at 10 pm', N'in 2050', 'C', 6);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'He usually ___ coffee in the morning. (Q15)?', N'drinking', N'drinks', N'drank', N'drink', 'B', 6);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'What do you do in the morning (Q16)?', N'get up', N'sleep', N'eat dinner', N'watch TV at night', 'A', 6);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'I brush my teeth ___. (Q17)?', N'at midnight', N'never', N'yesterday', N'every morning', 'D', 6);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'She goes to school ___. (Q18)?', N'last year', N'yesterday', N'by bus', N'tomorrow', 'C', 6);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'What time do you go to bed (Q19)?', N'next week', N'at 10 pm', N'in 2050', N'in summer', 'B', 6);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'He usually ___ coffee in the morning. (Q20)?', N'drinks', N'drank', N'drink', N'drinking', 'A', 6);

-- Test 7: Food & Drink
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'I like to eat ___. (Q1)?', N'computers', N'books', N'chairs', N'noodles', 'D', 7);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'What do you drink with breakfast (Q2)?', N'a phone', N'a shirt', N'tea', N'a car', 'C', 7);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'This fruit is yellow and sour: ___. (Q3)?', N'grape', N'lemon', N'apple', N'banana', 'B', 7);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Do you want some ___ (Q4)?', N'water', N'paper', N'glass', N'money', 'A', 7);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'I am hungry. I want to ___. (Q5)?', N'sleep', N'run', N'read', N'eat', 'D', 7);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'I like to eat ___. (Q6)?', N'books', N'chairs', N'noodles', N'computers', 'C', 7);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'What do you drink with breakfast (Q7)?', N'a shirt', N'tea', N'a car', N'a phone', 'B', 7);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'This fruit is yellow and sour: ___. (Q8)?', N'lemon', N'apple', N'banana', N'grape', 'A', 7);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Do you want some ___ (Q9)?', N'paper', N'glass', N'money', N'water', 'D', 7);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'I am hungry. I want to ___. (Q10)?', N'run', N'read', N'eat', N'sleep', 'C', 7);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'I like to eat ___. (Q11)?', N'chairs', N'noodles', N'computers', N'books', 'B', 7);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'What do you drink with breakfast (Q12)?', N'tea', N'a car', N'a phone', N'a shirt', 'A', 7);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'This fruit is yellow and sour: ___. (Q13)?', N'apple', N'banana', N'grape', N'lemon', 'D', 7);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Do you want some ___ (Q14)?', N'glass', N'money', N'water', N'paper', 'C', 7);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'I am hungry. I want to ___. (Q15)?', N'read', N'eat', N'sleep', N'run', 'B', 7);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'I like to eat ___. (Q16)?', N'noodles', N'computers', N'books', N'chairs', 'A', 7);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'What do you drink with breakfast (Q17)?', N'a car', N'a phone', N'a shirt', N'tea', 'D', 7);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'This fruit is yellow and sour: ___. (Q18)?', N'banana', N'grape', N'lemon', N'apple', 'C', 7);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Do you want some ___ (Q19)?', N'money', N'water', N'paper', N'glass', 'B', 7);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'I am hungry. I want to ___. (Q20)?', N'eat', N'sleep', N'run', N'read', 'A', 7);

-- Test 8: Clothes
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'What do you wear on your feet (Q1)?', N'hat', N'shirt', N'belt', N'shoes', 'D', 8);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'He is wearing a ___ on his head. (Q2)?', N'glove', N'sock', N'hat', N'shoe', 'C', 8);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'These are warm for winter: ___. (Q3)?', N't-shirt', N'coats', N'shorts', N'sandals', 'B', 8);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'She puts on a ___ before going out. (Q4)?', N'jacket', N'fork', N'pencil', N'map', 'A', 8);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'People wear ___ to bed. (Q5)?', N'boots', N'suit', N'tie', N'pyjamas', 'D', 8);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'What do you wear on your feet (Q6)?', N'shirt', N'belt', N'shoes', N'hat', 'C', 8);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'He is wearing a ___ on his head. (Q7)?', N'sock', N'hat', N'shoe', N'glove', 'B', 8);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'These are warm for winter: ___. (Q8)?', N'coats', N'shorts', N'sandals', N't-shirt', 'A', 8);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'She puts on a ___ before going out. (Q9)?', N'fork', N'pencil', N'map', N'jacket', 'D', 8);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'People wear ___ to bed. (Q10)?', N'suit', N'tie', N'pyjamas', N'boots', 'C', 8);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'What do you wear on your feet (Q11)?', N'belt', N'shoes', N'hat', N'shirt', 'B', 8);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'He is wearing a ___ on his head. (Q12)?', N'hat', N'shoe', N'glove', N'sock', 'A', 8);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'These are warm for winter: ___. (Q13)?', N'shorts', N'sandals', N't-shirt', N'coats', 'D', 8);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'She puts on a ___ before going out. (Q14)?', N'pencil', N'map', N'jacket', N'fork', 'C', 8);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'People wear ___ to bed. (Q15)?', N'tie', N'pyjamas', N'boots', N'suit', 'B', 8);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'What do you wear on your feet (Q16)?', N'shoes', N'hat', N'shirt', N'belt', 'A', 8);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'He is wearing a ___ on his head. (Q17)?', N'shoe', N'glove', N'sock', N'hat', 'D', 8);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'These are warm for winter: ___. (Q18)?', N'sandals', N't-shirt', N'coats', N'shorts', 'C', 8);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'She puts on a ___ before going out. (Q19)?', N'map', N'jacket', N'fork', N'pencil', 'B', 8);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'People wear ___ to bed. (Q20)?', N'pyjamas', N'boots', N'suit', N'tie', 'A', 8);

-- Test 9: Hobbies & Sports
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'My hobby is ___. (Q1)?', N'driving', N'cooking professionally', N'accounting', N'reading', 'D', 9);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'He plays ___ on weekends. (Q2)?', N'television', N'book', N'football', N'computer', 'C', 9);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Which is a sport (Q3)?', N'sleeping', N'tennis', N'painting', N'cooking', 'B', 9);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'She practices ___ every day. (Q4)?', N'yoga', N'shopping', N'cleaning', N'sleeping', 'A', 9);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'They went to the park to ___. (Q5)?', N'study', N'shop', N'cook', N'jog', 'D', 9);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'My hobby is ___. (Q6)?', N'cooking professionally', N'accounting', N'reading', N'driving', 'C', 9);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'He plays ___ on weekends. (Q7)?', N'book', N'football', N'computer', N'television', 'B', 9);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Which is a sport (Q8)?', N'tennis', N'painting', N'cooking', N'sleeping', 'A', 9);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'She practices ___ every day. (Q9)?', N'shopping', N'cleaning', N'sleeping', N'yoga', 'D', 9);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'They went to the park to ___. (Q10)?', N'shop', N'cook', N'jog', N'study', 'C', 9);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'My hobby is ___. (Q11)?', N'accounting', N'reading', N'driving', N'cooking professionally', 'B', 9);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'He plays ___ on weekends. (Q12)?', N'football', N'computer', N'television', N'book', 'A', 9);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Which is a sport (Q13)?', N'painting', N'cooking', N'sleeping', N'tennis', 'D', 9);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'She practices ___ every day. (Q14)?', N'cleaning', N'sleeping', N'yoga', N'shopping', 'C', 9);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'They went to the park to ___. (Q15)?', N'cook', N'jog', N'study', N'shop', 'B', 9);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'My hobby is ___. (Q16)?', N'reading', N'driving', N'cooking professionally', N'accounting', 'A', 9);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'He plays ___ on weekends. (Q17)?', N'computer', N'television', N'book', N'football', 'D', 9);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Which is a sport (Q18)?', N'cooking', N'sleeping', N'tennis', N'painting', 'C', 9);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'She practices ___ every day. (Q19)?', N'sleeping', N'yoga', N'shopping', N'cleaning', 'B', 9);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'They went to the park to ___. (Q20)?', N'jog', N'study', N'shop', N'cook', 'A', 9);

-- Test 10: Weather
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'It is raining. Take an ___. (Q1)?', N'apple', N'pencil', N'shoe', N'umbrella', 'D', 10);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'The weather is very ___. (Q2)?', N'happy', N'loud', N'hot', N'silent', 'C', 10);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Which season is cold (Q3)?', N'spring', N'winter', N'summer', N'autumn', 'B', 10);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Today it is ___. (Q4)?', N'sunny', N'noisy', N'cheap', N'fast', 'A', 10);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'There are many clouds. It is ___. (Q5)?', N'delicious', N'easy', N'slow', N'cloudy', 'D', 10);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'It is raining. Take an ___. (Q6)?', N'pencil', N'shoe', N'umbrella', N'apple', 'C', 10);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'The weather is very ___. (Q7)?', N'loud', N'hot', N'silent', N'happy', 'B', 10);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Which season is cold (Q8)?', N'winter', N'summer', N'autumn', N'spring', 'A', 10);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Today it is ___. (Q9)?', N'noisy', N'cheap', N'fast', N'sunny', 'D', 10);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'There are many clouds. It is ___. (Q10)?', N'easy', N'slow', N'cloudy', N'delicious', 'C', 10);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'It is raining. Take an ___. (Q11)?', N'shoe', N'umbrella', N'apple', N'pencil', 'B', 10);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'The weather is very ___. (Q12)?', N'hot', N'silent', N'happy', N'loud', 'A', 10);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Which season is cold (Q13)?', N'summer', N'autumn', N'spring', N'winter', 'D', 10);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Today it is ___. (Q14)?', N'cheap', N'fast', N'sunny', N'noisy', 'C', 10);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'There are many clouds. It is ___. (Q15)?', N'slow', N'cloudy', N'delicious', N'easy', 'B', 10);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'It is raining. Take an ___. (Q16)?', N'umbrella', N'apple', N'pencil', N'shoe', 'A', 10);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'The weather is very ___. (Q17)?', N'silent', N'happy', N'loud', N'hot', 'D', 10);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Which season is cold (Q18)?', N'autumn', N'spring', N'winter', N'summer', 'C', 10);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Today it is ___. (Q19)?', N'fast', N'sunny', N'noisy', N'cheap', 'B', 10);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'There are many clouds. It is ___. (Q20)?', N'cloudy', N'delicious', N'easy', N'slow', 'A', 10);

-- Test 11: Places in a City
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'You can borrow books at the ___. (Q1)?', N'restaurant', N'market', N'hotel', N'library', 'D', 11);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Where do you buy food? ___. (Q2)?', N'school', N'park', N'market', N'bank', 'C', 11);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'The hospital is for ___. (Q3)?', N'movies', N'sick people', N'cars', N'books', 'B', 11);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'We catch a train at the ___. (Q4)?', N'station', N'cinema', N'garden', N'office', 'A', 11);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Where do students study? ___. (Q5)?', N'factory', N'airport', N'bank', N'school', 'D', 11);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'You can borrow books at the ___. (Q6)?', N'market', N'hotel', N'library', N'restaurant', 'C', 11);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Where do you buy food? ___. (Q7)?', N'park', N'market', N'bank', N'school', 'B', 11);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'The hospital is for ___. (Q8)?', N'sick people', N'cars', N'books', N'movies', 'A', 11);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'We catch a train at the ___. (Q9)?', N'cinema', N'garden', N'office', N'station', 'D', 11);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Where do students study? ___. (Q10)?', N'airport', N'bank', N'school', N'factory', 'C', 11);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'You can borrow books at the ___. (Q11)?', N'hotel', N'library', N'restaurant', N'market', 'B', 11);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Where do you buy food? ___. (Q12)?', N'market', N'bank', N'school', N'park', 'A', 11);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'The hospital is for ___. (Q13)?', N'cars', N'books', N'movies', N'sick people', 'D', 11);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'We catch a train at the ___. (Q14)?', N'garden', N'office', N'station', N'cinema', 'C', 11);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Where do students study? ___. (Q15)?', N'bank', N'school', N'factory', N'airport', 'B', 11);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'You can borrow books at the ___. (Q16)?', N'library', N'restaurant', N'market', N'hotel', 'A', 11);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Where do you buy food? ___. (Q17)?', N'bank', N'school', N'park', N'market', 'D', 11);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'The hospital is for ___. (Q18)?', N'books', N'movies', N'sick people', N'cars', 'C', 11);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'We catch a train at the ___. (Q19)?', N'office', N'station', N'cinema', N'garden', 'B', 11);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Where do students study? ___. (Q20)?', N'school', N'factory', N'airport', N'bank', 'A', 11);

-- Test 12: Travel & Holidays
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'I need a passport to ___. (Q1)?', N'cook dinner', N'read books', N'paint walls', N'travel abroad', 'D', 12);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Where do you stay on holiday? ___. (Q2)?', N'factory', N'bank', N'hotel', N'office', 'C', 12);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'She bought a ticket for the ___. (Q3)?', N'market', N'flight', N'library', N'school', 'B', 12);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'We go on holiday in ___. (Q4)?', N'summer', N'midnight', N'alarm', N'class', 'A', 12);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'They visited a famous ___. (Q5)?', N'printer', N'computer', N'television', N'museum', 'D', 12);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'I need a passport to ___. (Q6)?', N'read books', N'paint walls', N'travel abroad', N'cook dinner', 'C', 12);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Where do you stay on holiday? ___. (Q7)?', N'bank', N'hotel', N'office', N'factory', 'B', 12);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'She bought a ticket for the ___. (Q8)?', N'flight', N'library', N'school', N'market', 'A', 12);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'We go on holiday in ___. (Q9)?', N'midnight', N'alarm', N'class', N'summer', 'D', 12);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'They visited a famous ___. (Q10)?', N'computer', N'television', N'museum', N'printer', 'C', 12);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'I need a passport to ___. (Q11)?', N'paint walls', N'travel abroad', N'cook dinner', N'read books', 'B', 12);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Where do you stay on holiday? ___. (Q12)?', N'hotel', N'office', N'factory', N'bank', 'A', 12);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'She bought a ticket for the ___. (Q13)?', N'library', N'school', N'market', N'flight', 'D', 12);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'We go on holiday in ___. (Q14)?', N'alarm', N'class', N'summer', N'midnight', 'C', 12);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'They visited a famous ___. (Q15)?', N'television', N'museum', N'printer', N'computer', 'B', 12);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'I need a passport to ___. (Q16)?', N'travel abroad', N'cook dinner', N'read books', N'paint walls', 'A', 12);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Where do you stay on holiday? ___. (Q17)?', N'office', N'factory', N'bank', N'hotel', 'D', 12);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'She bought a ticket for the ___. (Q18)?', N'school', N'market', N'flight', N'library', 'C', 12);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'We go on holiday in ___. (Q19)?', N'class', N'summer', N'midnight', N'alarm', 'B', 12);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'They visited a famous ___. (Q20)?', N'museum', N'printer', N'computer', N'television', 'A', 12);

-- Test 13: Health & Lifestyle
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'To stay healthy, we should ___. (Q1)?', N'smoke', N'eat junk', N'sleep late', N'exercise', 'D', 13);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'He goes to the doctor because he is ___. (Q2)?', N'young', N'happy', N'sick', N'rich', 'C', 13);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Eating vegetables is ___. (Q3)?', N'fast', N'good for you', N'dangerous', N'expensive', 'B', 13);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'She runs to keep ___. (Q4)?', N'fit', N'bored', N'dirty', N'late', 'A', 13);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'You should drink plenty of ___. (Q5)?', N'plastic', N'metal', N'paper', N'water', 'D', 13);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'To stay healthy, we should ___. (Q6)?', N'eat junk', N'sleep late', N'exercise', N'smoke', 'C', 13);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'He goes to the doctor because he is ___. (Q7)?', N'happy', N'sick', N'rich', N'young', 'B', 13);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Eating vegetables is ___. (Q8)?', N'good for you', N'dangerous', N'expensive', N'fast', 'A', 13);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'She runs to keep ___. (Q9)?', N'bored', N'dirty', N'late', N'fit', 'D', 13);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'You should drink plenty of ___. (Q10)?', N'metal', N'paper', N'water', N'plastic', 'C', 13);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'To stay healthy, we should ___. (Q11)?', N'sleep late', N'exercise', N'smoke', N'eat junk', 'B', 13);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'He goes to the doctor because he is ___. (Q12)?', N'sick', N'rich', N'young', N'happy', 'A', 13);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Eating vegetables is ___. (Q13)?', N'dangerous', N'expensive', N'fast', N'good for you', 'D', 13);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'She runs to keep ___. (Q14)?', N'dirty', N'late', N'fit', N'bored', 'C', 13);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'You should drink plenty of ___. (Q15)?', N'paper', N'water', N'plastic', N'metal', 'B', 13);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'To stay healthy, we should ___. (Q16)?', N'exercise', N'smoke', N'eat junk', N'sleep late', 'A', 13);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'He goes to the doctor because he is ___. (Q17)?', N'rich', N'young', N'happy', N'sick', 'D', 13);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Eating vegetables is ___. (Q18)?', N'expensive', N'fast', N'good for you', N'dangerous', 'C', 13);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'She runs to keep ___. (Q19)?', N'late', N'fit', N'bored', N'dirty', 'B', 13);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'You should drink plenty of ___. (Q20)?', N'water', N'plastic', N'metal', N'paper', 'A', 13);

-- Test 14: Education & Learning
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Where do children learn? ___. (Q1)?', N'factory', N'shop', N'station', N'school', 'D', 14);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'A person who teaches is called a ___. (Q2)?', N'chef', N'farmer', N'teacher', N'driver', 'C', 14);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'He studies to get good ___. (Q3)?', N'cars', N'grades', N'shoes', N'money', 'B', 14);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'What do you do at the library? ___. (Q4)?', N'read books', N'cook', N'sleep', N'drive', 'A', 14);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'She takes notes during ___. (Q5)?', N'party', N'game', N'trip', N'class', 'D', 14);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Where do children learn? ___. (Q6)?', N'shop', N'station', N'school', N'factory', 'C', 14);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'A person who teaches is called a ___. (Q7)?', N'farmer', N'teacher', N'driver', N'chef', 'B', 14);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'He studies to get good ___. (Q8)?', N'grades', N'shoes', N'money', N'cars', 'A', 14);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'What do you do at the library? ___. (Q9)?', N'cook', N'sleep', N'drive', N'read books', 'D', 14);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'She takes notes during ___. (Q10)?', N'game', N'trip', N'class', N'party', 'C', 14);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Where do children learn? ___. (Q11)?', N'station', N'school', N'factory', N'shop', 'B', 14);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'A person who teaches is called a ___. (Q12)?', N'teacher', N'driver', N'chef', N'farmer', 'A', 14);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'He studies to get good ___. (Q13)?', N'shoes', N'money', N'cars', N'grades', 'D', 14);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'What do you do at the library? ___. (Q14)?', N'sleep', N'drive', N'read books', N'cook', 'C', 14);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'She takes notes during ___. (Q15)?', N'trip', N'class', N'party', N'game', 'B', 14);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Where do children learn? ___. (Q16)?', N'school', N'factory', N'shop', N'station', 'A', 14);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'A person who teaches is called a ___. (Q17)?', N'driver', N'chef', N'farmer', N'teacher', 'D', 14);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'He studies to get good ___. (Q18)?', N'money', N'cars', N'grades', N'shoes', 'C', 14);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'What do you do at the library? ___. (Q19)?', N'drive', N'read books', N'cook', N'sleep', 'B', 14);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'She takes notes during ___. (Q20)?', N'class', N'party', N'game', N'trip', 'A', 14);

-- Test 15: Technology & Internet
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'I use the internet to ___. (Q1)?', N'cook', N'sleep', N'drive', N'search information', 'D', 15);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'An email is sent using ___. (Q2)?', N'air', N'bread', N'internet', N'water', 'C', 15);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'He types on a ___. (Q3)?', N'door', N'keyboard', N'shoe', N'plate', 'B', 15);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'We download files from the ___. (Q4)?', N'website', N'garden', N'garage', N'market', 'A', 15);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'A phone that connects to the web is a ___. (Q5)?', N'chair', N'hat', N'pencil', N'smartphone', 'D', 15);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'I use the internet to ___. (Q6)?', N'sleep', N'drive', N'search information', N'cook', 'C', 15);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'An email is sent using ___. (Q7)?', N'bread', N'internet', N'water', N'air', 'B', 15);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'He types on a ___. (Q8)?', N'keyboard', N'shoe', N'plate', N'door', 'A', 15);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'We download files from the ___. (Q9)?', N'garden', N'garage', N'market', N'website', 'D', 15);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'A phone that connects to the web is a ___. (Q10)?', N'hat', N'pencil', N'smartphone', N'chair', 'C', 15);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'I use the internet to ___. (Q11)?', N'drive', N'search information', N'cook', N'sleep', 'B', 15);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'An email is sent using ___. (Q12)?', N'internet', N'water', N'air', N'bread', 'A', 15);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'He types on a ___. (Q13)?', N'shoe', N'plate', N'door', N'keyboard', 'D', 15);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'We download files from the ___. (Q14)?', N'garage', N'market', N'website', N'garden', 'C', 15);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'A phone that connects to the web is a ___. (Q15)?', N'pencil', N'smartphone', N'chair', N'hat', 'B', 15);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'I use the internet to ___. (Q16)?', N'search information', N'cook', N'sleep', N'drive', 'A', 15);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'An email is sent using ___. (Q17)?', N'water', N'air', N'bread', N'internet', 'D', 15);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'He types on a ___. (Q18)?', N'plate', N'door', N'keyboard', N'shoe', 'C', 15);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'We download files from the ___. (Q19)?', N'market', N'website', N'garden', N'garage', 'B', 15);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'A phone that connects to the web is a ___. (Q20)?', N'smartphone', N'chair', N'hat', N'pencil', 'A', 15);

-- Test 16: Environment
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'We should plant more ___. (Q1)?', N'cars', N'laptops', N'books', N'trees', 'D', 16);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Pollution harms the ___. (Q2)?', N'television', N'shoe', N'environment', N'wallet', 'C', 16);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Recycle paper to ___. (Q3)?', N'sell', N'save resources', N'throw away', N'eat', 'B', 16);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Protecting nature is ___. (Q4)?', N'important', N'impossible', N'cheap', N'slow', 'A', 16);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Clean water is ___. (Q5)?', N'noisy', N'fast', N'small', N'valuable', 'D', 16);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'We should plant more ___. (Q6)?', N'laptops', N'books', N'trees', N'cars', 'C', 16);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Pollution harms the ___. (Q7)?', N'shoe', N'environment', N'wallet', N'television', 'B', 16);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Recycle paper to ___. (Q8)?', N'save resources', N'throw away', N'eat', N'sell', 'A', 16);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Protecting nature is ___. (Q9)?', N'impossible', N'cheap', N'slow', N'important', 'D', 16);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Clean water is ___. (Q10)?', N'fast', N'small', N'valuable', N'noisy', 'C', 16);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'We should plant more ___. (Q11)?', N'books', N'trees', N'cars', N'laptops', 'B', 16);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Pollution harms the ___. (Q12)?', N'environment', N'wallet', N'television', N'shoe', 'A', 16);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Recycle paper to ___. (Q13)?', N'throw away', N'eat', N'sell', N'save resources', 'D', 16);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Protecting nature is ___. (Q14)?', N'cheap', N'slow', N'important', N'impossible', 'C', 16);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Clean water is ___. (Q15)?', N'small', N'valuable', N'noisy', N'fast', 'B', 16);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'We should plant more ___. (Q16)?', N'trees', N'cars', N'laptops', N'books', 'A', 16);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Pollution harms the ___. (Q17)?', N'wallet', N'television', N'shoe', N'environment', 'D', 16);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Recycle paper to ___. (Q18)?', N'eat', N'sell', N'save resources', N'throw away', 'C', 16);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Protecting nature is ___. (Q19)?', N'slow', N'important', N'impossible', N'cheap', 'B', 16);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Clean water is ___. (Q20)?', N'valuable', N'noisy', N'fast', N'small', 'A', 16);

-- Test 17: Shopping & Consumerism
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'How much is this? — It is ___. (Q1)?', N'yesterday', N'blue', N'loud', N'ten dollars', 'D', 17);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'I want to buy ___. (Q2)?', N'read', N'fly', N'a new phone', N'run', 'C', 17);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'You pay at the ___. (Q3)?', N'park', N'cashier', N'library', N'school', 'B', 17);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'This shirt is on ___. (Q4)?', N'sale', N'sleep', N'run', N'study', 'A', 17);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Do you accept ___. (Q5)?', N'music', N'books', N'flowers', N'credit cards', 'D', 17);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'How much is this? — It is ___. (Q6)?', N'blue', N'loud', N'ten dollars', N'yesterday', 'C', 17);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'I want to buy ___. (Q7)?', N'fly', N'a new phone', N'run', N'read', 'B', 17);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'You pay at the ___. (Q8)?', N'cashier', N'library', N'school', N'park', 'A', 17);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'This shirt is on ___. (Q9)?', N'sleep', N'run', N'study', N'sale', 'D', 17);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Do you accept ___. (Q10)?', N'books', N'flowers', N'credit cards', N'music', 'C', 17);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'How much is this? — It is ___. (Q11)?', N'loud', N'ten dollars', N'yesterday', N'blue', 'B', 17);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'I want to buy ___. (Q12)?', N'a new phone', N'run', N'read', N'fly', 'A', 17);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'You pay at the ___. (Q13)?', N'library', N'school', N'park', N'cashier', 'D', 17);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'This shirt is on ___. (Q14)?', N'run', N'study', N'sale', N'sleep', 'C', 17);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Do you accept ___. (Q15)?', N'flowers', N'credit cards', N'music', N'books', 'B', 17);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'How much is this? — It is ___. (Q16)?', N'ten dollars', N'yesterday', N'blue', N'loud', 'A', 17);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'I want to buy ___. (Q17)?', N'run', N'read', N'fly', N'a new phone', 'D', 17);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'You pay at the ___. (Q18)?', N'school', N'park', N'cashier', N'library', 'C', 17);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'This shirt is on ___. (Q19)?', N'study', N'sale', N'sleep', N'run', 'B', 17);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Do you accept ___. (Q20)?', N'credit cards', N'music', N'books', N'flowers', 'A', 17);

-- Test 18: Movies & Music
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'I like to watch ___. (Q1)?', N'books', N'cars', N'money', N'movies', 'D', 18);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'She listens to ___. (Q2)?', N'clothes', N'water', N'music', N'furniture', 'C', 18);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Who is the ___. (Q3)?', N'baker', N'director', N'teacher', N'driver', 'B', 18);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'This song is very ___. (Q4)?', N'popular', N'heavy', N'sharp', N'round', 'A', 18);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'They went to the ___. (Q5)?', N'bank', N'hospital', N'school', N'cinema', 'D', 18);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'I like to watch ___. (Q6)?', N'cars', N'money', N'movies', N'books', 'C', 18);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'She listens to ___. (Q7)?', N'water', N'music', N'furniture', N'clothes', 'B', 18);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Who is the ___. (Q8)?', N'director', N'teacher', N'driver', N'baker', 'A', 18);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'This song is very ___. (Q9)?', N'heavy', N'sharp', N'round', N'popular', 'D', 18);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'They went to the ___. (Q10)?', N'hospital', N'school', N'cinema', N'bank', 'C', 18);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'I like to watch ___. (Q11)?', N'money', N'movies', N'books', N'cars', 'B', 18);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'She listens to ___. (Q12)?', N'music', N'furniture', N'clothes', N'water', 'A', 18);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Who is the ___. (Q13)?', N'teacher', N'driver', N'baker', N'director', 'D', 18);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'This song is very ___. (Q14)?', N'sharp', N'round', N'popular', N'heavy', 'C', 18);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'They went to the ___. (Q15)?', N'school', N'cinema', N'bank', N'hospital', 'B', 18);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'I like to watch ___. (Q16)?', N'movies', N'books', N'cars', N'money', 'A', 18);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'She listens to ___. (Q17)?', N'furniture', N'clothes', N'water', N'music', 'D', 18);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Who is the ___. (Q18)?', N'driver', N'baker', N'director', N'teacher', 'C', 18);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'This song is very ___. (Q19)?', N'round', N'popular', N'heavy', N'sharp', 'B', 18);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'They went to the ___. (Q20)?', N'cinema', N'bank', N'hospital', N'school', 'A', 18);

-- Test 19: Personality & Feelings
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'I feel ___. (Q1)?', N'wooden', N'noisy', N'slow', N'happy', 'D', 19);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'She is very ___. (Q2)?', N'yellow', N'square', N'kind', N'metal', 'C', 19);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'He gets ___. (Q3)?', N'fast', N'angry', N'paper', N'early', 'B', 19);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'They are ___. (Q4)?', N'excited', N'quiet', N'thin', N'cold', 'A', 19);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'You seem ___. (Q5)?', N'green', N'round', N'loud', N'tired', 'D', 19);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'I feel ___. (Q6)?', N'noisy', N'slow', N'happy', N'wooden', 'C', 19);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'She is very ___. (Q7)?', N'square', N'kind', N'metal', N'yellow', 'B', 19);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'He gets ___. (Q8)?', N'angry', N'paper', N'early', N'fast', 'A', 19);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'They are ___. (Q9)?', N'quiet', N'thin', N'cold', N'excited', 'D', 19);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'You seem ___. (Q10)?', N'round', N'loud', N'tired', N'green', 'C', 19);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'I feel ___. (Q11)?', N'slow', N'happy', N'wooden', N'noisy', 'B', 19);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'She is very ___. (Q12)?', N'kind', N'metal', N'yellow', N'square', 'A', 19);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'He gets ___. (Q13)?', N'paper', N'early', N'fast', N'angry', 'D', 19);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'They are ___. (Q14)?', N'thin', N'cold', N'excited', N'quiet', 'C', 19);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'You seem ___. (Q15)?', N'loud', N'tired', N'green', N'round', 'B', 19);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'I feel ___. (Q16)?', N'happy', N'wooden', N'noisy', N'slow', 'A', 19);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'She is very ___. (Q17)?', N'metal', N'yellow', N'square', N'kind', 'D', 19);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'He gets ___. (Q18)?', N'early', N'fast', N'angry', N'paper', 'C', 19);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'They are ___. (Q19)?', N'cold', N'excited', N'quiet', N'thin', 'B', 19);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'You seem ___. (Q20)?', N'tired', N'green', N'round', N'loud', 'A', 19);

-- Test 20: News & Events
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Where did the event ___. (Q1)?', N'sleep', N'run', N'eat', N'take place', 'D', 20);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'The news is about ___. (Q2)?', N'a shoe', N'a cup', N'a new school', N'a table', 'C', 20);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Reporters write ___. (Q3)?', N'recipes', N'articles', N'songs', N'dances', 'B', 20);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'They announced the ___. (Q4)?', N'results', N'chairs', N'pens', N'apples', 'A', 20);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'What happened yesterday? ___. (Q5)?', N'a book', N'a pencil', N'a plate', N'an event', 'D', 20);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Where did the event ___. (Q6)?', N'run', N'eat', N'take place', N'sleep', 'C', 20);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'The news is about ___. (Q7)?', N'a cup', N'a new school', N'a table', N'a shoe', 'B', 20);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Reporters write ___. (Q8)?', N'articles', N'songs', N'dances', N'recipes', 'A', 20);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'They announced the ___. (Q9)?', N'chairs', N'pens', N'apples', N'results', 'D', 20);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'What happened yesterday? ___. (Q10)?', N'a pencil', N'a plate', N'an event', N'a book', 'C', 20);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Where did the event ___. (Q11)?', N'eat', N'take place', N'sleep', N'run', 'B', 20);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'The news is about ___. (Q12)?', N'a new school', N'a table', N'a shoe', N'a cup', 'A', 20);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Reporters write ___. (Q13)?', N'songs', N'dances', N'recipes', N'articles', 'D', 20);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'They announced the ___. (Q14)?', N'pens', N'apples', N'results', N'chairs', 'C', 20);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'What happened yesterday? ___. (Q15)?', N'a plate', N'an event', N'a book', N'a pencil', 'B', 20);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Where did the event ___. (Q16)?', N'take place', N'sleep', N'run', N'eat', 'A', 20);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'The news is about ___. (Q17)?', N'a table', N'a shoe', N'a cup', N'a new school', 'D', 20);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Reporters write ___. (Q18)?', N'dances', N'recipes', N'articles', N'songs', 'C', 20);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'They announced the ___. (Q19)?', N'apples', N'results', N'chairs', N'pens', 'B', 20);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'What happened yesterday? ___. (Q20)?', N'an event', N'a book', N'a pencil', N'a plate', 'A', 20);

-- Test 21: Work & Career
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'He wants to ___. (Q1)?', N'cook dinner', N'sleep', N'play', N'find a job', 'D', 21);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'She works as a ___. (Q2)?', N'child', N'robot', N'engineer', N'student', 'C', 21);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'A resume shows your ___. (Q3)?', N'weather', N'experience', N'breakfast', N'shoes', 'B', 21);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'He applies for a ___. (Q4)?', N'position', N'ticket', N'book', N'chair', 'A', 21);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'They have an interview ___. (Q5)?', N'yesterday', N'last year', N'never', N'tomorrow', 'D', 21);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'He wants to ___. (Q6)?', N'sleep', N'play', N'find a job', N'cook dinner', 'C', 21);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'She works as a ___. (Q7)?', N'robot', N'engineer', N'student', N'child', 'B', 21);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'A resume shows your ___. (Q8)?', N'experience', N'breakfast', N'shoes', N'weather', 'A', 21);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'He applies for a ___. (Q9)?', N'ticket', N'book', N'chair', N'position', 'D', 21);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'They have an interview ___. (Q10)?', N'last year', N'never', N'tomorrow', N'yesterday', 'C', 21);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'He wants to ___. (Q11)?', N'play', N'find a job', N'cook dinner', N'sleep', 'B', 21);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'She works as a ___. (Q12)?', N'engineer', N'student', N'child', N'robot', 'A', 21);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'A resume shows your ___. (Q13)?', N'breakfast', N'shoes', N'weather', N'experience', 'D', 21);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'He applies for a ___. (Q14)?', N'book', N'chair', N'position', N'ticket', 'C', 21);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'They have an interview ___. (Q15)?', N'never', N'tomorrow', N'yesterday', N'last year', 'B', 21);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'He wants to ___. (Q16)?', N'find a job', N'cook dinner', N'sleep', N'play', 'A', 21);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'She works as a ___. (Q17)?', N'student', N'child', N'robot', N'engineer', 'D', 21);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'A resume shows your ___. (Q18)?', N'shoes', N'weather', N'experience', N'breakfast', 'C', 21);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'He applies for a ___. (Q19)?', N'chair', N'position', N'ticket', N'book', 'B', 21);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'They have an interview ___. (Q20)?', N'tomorrow', N'yesterday', N'last year', N'never', 'A', 21);

-- Test 22: Science & Research
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Scientists study ___. (Q1)?', N'television', N'wallets', N'shoes', N'nature', 'D', 22);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Research helps us ___. (Q2)?', N'eat faster', N'run slower', N'learn new things', N'sleep more', 'C', 22);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'A lab is a place for ___. (Q3)?', N'cooking', N'experiments', N'shopping', N'sleeping', 'B', 22);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Which is a scientist? ___. (Q4)?', N'a researcher', N'a driver', N'a singer', N'a chef', 'A', 22);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'They collect data for ___. (Q5)?', N'fun', N'sport', N'music', N'analysis', 'D', 22);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Scientists study ___. (Q6)?', N'wallets', N'shoes', N'nature', N'television', 'C', 22);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Research helps us ___. (Q7)?', N'run slower', N'learn new things', N'sleep more', N'eat faster', 'B', 22);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'A lab is a place for ___. (Q8)?', N'experiments', N'shopping', N'sleeping', N'cooking', 'A', 22);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Which is a scientist? ___. (Q9)?', N'a driver', N'a singer', N'a chef', N'a researcher', 'D', 22);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'They collect data for ___. (Q10)?', N'sport', N'music', N'analysis', N'fun', 'C', 22);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Scientists study ___. (Q11)?', N'shoes', N'nature', N'television', N'wallets', 'B', 22);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Research helps us ___. (Q12)?', N'learn new things', N'sleep more', N'eat faster', N'run slower', 'A', 22);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'A lab is a place for ___. (Q13)?', N'shopping', N'sleeping', N'cooking', N'experiments', 'D', 22);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Which is a scientist? ___. (Q14)?', N'a singer', N'a chef', N'a researcher', N'a driver', 'C', 22);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'They collect data for ___. (Q15)?', N'music', N'analysis', N'fun', N'sport', 'B', 22);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Scientists study ___. (Q16)?', N'nature', N'television', N'wallets', N'shoes', 'A', 22);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Research helps us ___. (Q17)?', N'sleep more', N'eat faster', N'run slower', N'learn new things', 'D', 22);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'A lab is a place for ___. (Q18)?', N'sleeping', N'cooking', N'experiments', N'shopping', 'C', 22);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Which is a scientist? ___. (Q19)?', N'a chef', N'a researcher', N'a driver', N'a singer', 'B', 22);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'They collect data for ___. (Q20)?', N'analysis', N'fun', N'sport', N'music', 'A', 22);

-- Test 23: Politics & Society
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Voting is part of ___. (Q1)?', N'cooking', N'sleeping', N'reading', N'democracy', 'D', 23);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'A leader governs a ___. (Q2)?', N'garden', N'room', N'country', N'kitchen', 'C', 23);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Citizens have ___. (Q3)?', N'shoes', N'rights', N'tables', N'flowers', 'B', 23);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'The law applies to ___. (Q4)?', N'everyone', N'only cats', N'only trees', N'only cars', 'A', 23);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'They discussed public ___. (Q5)?', N'color', N'size', N'shape', N'policy', 'D', 23);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Voting is part of ___. (Q6)?', N'sleeping', N'reading', N'democracy', N'cooking', 'C', 23);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'A leader governs a ___. (Q7)?', N'room', N'country', N'kitchen', N'garden', 'B', 23);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Citizens have ___. (Q8)?', N'rights', N'tables', N'flowers', N'shoes', 'A', 23);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'The law applies to ___. (Q9)?', N'only cats', N'only trees', N'only cars', N'everyone', 'D', 23);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'They discussed public ___. (Q10)?', N'size', N'shape', N'policy', N'color', 'C', 23);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Voting is part of ___. (Q11)?', N'reading', N'democracy', N'cooking', N'sleeping', 'B', 23);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'A leader governs a ___. (Q12)?', N'country', N'kitchen', N'garden', N'room', 'A', 23);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Citizens have ___. (Q13)?', N'tables', N'flowers', N'shoes', N'rights', 'D', 23);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'The law applies to ___. (Q14)?', N'only trees', N'only cars', N'everyone', N'only cats', 'C', 23);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'They discussed public ___. (Q15)?', N'shape', N'policy', N'color', N'size', 'B', 23);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Voting is part of ___. (Q16)?', N'democracy', N'cooking', N'sleeping', N'reading', 'A', 23);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'A leader governs a ___. (Q17)?', N'kitchen', N'garden', N'room', N'country', 'D', 23);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Citizens have ___. (Q18)?', N'flowers', N'shoes', N'rights', N'tables', 'C', 23);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'The law applies to ___. (Q19)?', N'only cars', N'everyone', N'only cats', N'only trees', 'B', 23);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'They discussed public ___. (Q20)?', N'policy', N'color', N'size', N'shape', 'A', 23);

-- Test 24: Economics & Finance
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Money is used to ___. (Q1)?', N'sing songs', N'sleep', N'walk', N'buy things', 'D', 24);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'A budget helps ___. (Q2)?', N'play music', N'paint', N'plan spending', N'run faster', 'C', 24);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Banks keep ___. (Q3)?', N'chairs', N'money', N'trees', N'books', 'B', 24);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Which is a currency? ___. (Q4)?', N'dollar', N'chair', N'car', N'shirt', 'A', 24);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Prices show the ___. (Q5)?', N'sound', N'smell', N'color', N'cost', 'D', 24);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Money is used to ___. (Q6)?', N'sleep', N'walk', N'buy things', N'sing songs', 'C', 24);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'A budget helps ___. (Q7)?', N'paint', N'plan spending', N'run faster', N'play music', 'B', 24);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Banks keep ___. (Q8)?', N'money', N'trees', N'books', N'chairs', 'A', 24);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Which is a currency? ___. (Q9)?', N'chair', N'car', N'shirt', N'dollar', 'D', 24);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Prices show the ___. (Q10)?', N'smell', N'color', N'cost', N'sound', 'C', 24);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Money is used to ___. (Q11)?', N'walk', N'buy things', N'sing songs', N'sleep', 'B', 24);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'A budget helps ___. (Q12)?', N'plan spending', N'run faster', N'play music', N'paint', 'A', 24);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Banks keep ___. (Q13)?', N'trees', N'books', N'chairs', N'money', 'D', 24);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Which is a currency? ___. (Q14)?', N'car', N'shirt', N'dollar', N'chair', 'C', 24);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Prices show the ___. (Q15)?', N'color', N'cost', N'sound', N'smell', 'B', 24);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Money is used to ___. (Q16)?', N'buy things', N'sing songs', N'sleep', N'walk', 'A', 24);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'A budget helps ___. (Q17)?', N'run faster', N'play music', N'paint', N'plan spending', 'D', 24);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Banks keep ___. (Q18)?', N'books', N'chairs', N'money', N'trees', 'C', 24);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Which is a currency? ___. (Q19)?', N'shirt', N'dollar', N'chair', N'car', 'B', 24);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Prices show the ___. (Q20)?', N'cost', N'sound', N'smell', N'color', 'A', 24);

-- Test 25: Art & Literature
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'An author writes a ___. (Q1)?', N'table', N'shoe', N'car', N'book', 'D', 25);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Which is a painting? ___. (Q2)?', N'food', N'weather', N'art', N'money', 'C', 25);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'She reads ___. (Q3)?', N'a stone', N'a novel', N'a bottle', N'a spoon', 'B', 25);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'A museum shows ___. (Q4)?', N'artworks', N'cars', N'computers', N'shoes', 'A', 25);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'He is a famous ___. (Q5)?', N'driver', N'chef', N'pilot', N'poet', 'D', 25);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'An author writes a ___. (Q6)?', N'shoe', N'car', N'book', N'table', 'C', 25);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Which is a painting? ___. (Q7)?', N'weather', N'art', N'money', N'food', 'B', 25);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'She reads ___. (Q8)?', N'a novel', N'a bottle', N'a spoon', N'a stone', 'A', 25);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'A museum shows ___. (Q9)?', N'cars', N'computers', N'shoes', N'artworks', 'D', 25);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'He is a famous ___. (Q10)?', N'chef', N'pilot', N'poet', N'driver', 'C', 25);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'An author writes a ___. (Q11)?', N'car', N'book', N'table', N'shoe', 'B', 25);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Which is a painting? ___. (Q12)?', N'art', N'money', N'food', N'weather', 'A', 25);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'She reads ___. (Q13)?', N'a bottle', N'a spoon', N'a stone', N'a novel', 'D', 25);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'A museum shows ___. (Q14)?', N'computers', N'shoes', N'artworks', N'cars', 'C', 25);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'He is a famous ___. (Q15)?', N'pilot', N'poet', N'driver', N'chef', 'B', 25);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'An author writes a ___. (Q16)?', N'book', N'table', N'shoe', N'car', 'A', 25);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Which is a painting? ___. (Q17)?', N'money', N'food', N'weather', N'art', 'D', 25);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'She reads ___. (Q18)?', N'a spoon', N'a stone', N'a novel', N'a bottle', 'C', 25);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'A museum shows ___. (Q19)?', N'shoes', N'artworks', N'cars', N'computers', 'B', 25);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'He is a famous ___. (Q20)?', N'poet', N'driver', N'chef', N'pilot', 'A', 25);

-- Test 26: Law & Crime
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Who enforces the law? ___. (Q1)?', N'chefs', N'teachers', N'singers', N'police', 'D', 26);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'A court decides ___. (Q2)?', N'colors', N'smells', N'guilt', N'tastes', 'C', 26);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Robbery is a ___. (Q3)?', N'book', N'crime', N'song', N'sport', 'B', 26);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'You should follow the ___. (Q4)?', N'rules', N'fruits', N'games', N'weather', 'A', 26);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'They arrested the ___. (Q5)?', N'market', N'ticket', N'window', N'suspect', 'D', 26);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Who enforces the law? ___. (Q6)?', N'teachers', N'singers', N'police', N'chefs', 'C', 26);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'A court decides ___. (Q7)?', N'smells', N'guilt', N'tastes', N'colors', 'B', 26);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Robbery is a ___. (Q8)?', N'crime', N'song', N'sport', N'book', 'A', 26);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'You should follow the ___. (Q9)?', N'fruits', N'games', N'weather', N'rules', 'D', 26);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'They arrested the ___. (Q10)?', N'ticket', N'window', N'suspect', N'market', 'C', 26);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Who enforces the law? ___. (Q11)?', N'singers', N'police', N'chefs', N'teachers', 'B', 26);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'A court decides ___. (Q12)?', N'guilt', N'tastes', N'colors', N'smells', 'A', 26);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Robbery is a ___. (Q13)?', N'song', N'sport', N'book', N'crime', 'D', 26);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'You should follow the ___. (Q14)?', N'games', N'weather', N'rules', N'fruits', 'C', 26);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'They arrested the ___. (Q15)?', N'window', N'suspect', N'market', N'ticket', 'B', 26);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Who enforces the law? ___. (Q16)?', N'police', N'chefs', N'teachers', N'singers', 'A', 26);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'A court decides ___. (Q17)?', N'tastes', N'colors', N'smells', N'guilt', 'D', 26);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Robbery is a ___. (Q18)?', N'sport', N'book', N'crime', N'song', 'C', 26);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'You should follow the ___. (Q19)?', N'weather', N'rules', N'fruits', N'games', 'B', 26);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'They arrested the ___. (Q20)?', N'suspect', N'market', N'ticket', N'window', 'A', 26);

-- Test 27: Psychology
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Psychology studies the ___. (Q1)?', N'cars', N'cakes', N'houses', N'mind', 'D', 27);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'He feels anxious or ___. (Q2)?', N'loud', N'flat', N'nervous', N'wooden', 'C', 27);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Therapy can help with ___. (Q3)?', N'keys', N'emotions', N'breakfast', N'pets', 'B', 27);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Memory helps us ___. (Q4)?', N'remember', N'forget', N'eat', N'sleep', 'A', 27);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Behavior is how people ___. (Q5)?', N'sit', N'stand', N'paint', N'act', 'D', 27);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Psychology studies the ___. (Q6)?', N'cakes', N'houses', N'mind', N'cars', 'C', 27);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'He feels anxious or ___. (Q7)?', N'flat', N'nervous', N'wooden', N'loud', 'B', 27);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Therapy can help with ___. (Q8)?', N'emotions', N'breakfast', N'pets', N'keys', 'A', 27);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Memory helps us ___. (Q9)?', N'forget', N'eat', N'sleep', N'remember', 'D', 27);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Behavior is how people ___. (Q10)?', N'stand', N'paint', N'act', N'sit', 'C', 27);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Psychology studies the ___. (Q11)?', N'houses', N'mind', N'cars', N'cakes', 'B', 27);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'He feels anxious or ___. (Q12)?', N'nervous', N'wooden', N'loud', N'flat', 'A', 27);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Therapy can help with ___. (Q13)?', N'breakfast', N'pets', N'keys', N'emotions', 'D', 27);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Memory helps us ___. (Q14)?', N'eat', N'sleep', N'remember', N'forget', 'C', 27);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Behavior is how people ___. (Q15)?', N'paint', N'act', N'sit', N'stand', 'B', 27);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Psychology studies the ___. (Q16)?', N'mind', N'cars', N'cakes', N'houses', 'A', 27);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'He feels anxious or ___. (Q17)?', N'wooden', N'loud', N'flat', N'nervous', 'D', 27);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Therapy can help with ___. (Q18)?', N'pets', N'keys', N'emotions', N'breakfast', 'C', 27);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Memory helps us ___. (Q19)?', N'sleep', N'remember', N'forget', N'eat', 'B', 27);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Behavior is how people ___. (Q20)?', N'act', N'sit', N'stand', N'paint', 'A', 27);

-- Test 28: Global Issues
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Climate change affects ___. (Q1)?', N'the toaster', N'the pencil', N'the shoe', N'the planet', 'D', 28);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Hunger is a world ___. (Q2)?', N'song', N'pen', N'problem', N'color', 'C', 28);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'We should reduce ___. (Q3)?', N'chairs', N'waste', N'music', N'books', 'B', 28);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'International aid helps ___. (Q4)?', N'countries', N'tables', N'cups', N'stones', 'A', 28);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Global issues need ___. (Q5)?', N'silence', N'noise', N'sleep', N'cooperation', 'D', 28);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Climate change affects ___. (Q6)?', N'the pencil', N'the shoe', N'the planet', N'the toaster', 'C', 28);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Hunger is a world ___. (Q7)?', N'pen', N'problem', N'color', N'song', 'B', 28);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'We should reduce ___. (Q8)?', N'waste', N'music', N'books', N'chairs', 'A', 28);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'International aid helps ___. (Q9)?', N'tables', N'cups', N'stones', N'countries', 'D', 28);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Global issues need ___. (Q10)?', N'noise', N'sleep', N'cooperation', N'silence', 'C', 28);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Climate change affects ___. (Q11)?', N'the shoe', N'the planet', N'the toaster', N'the pencil', 'B', 28);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Hunger is a world ___. (Q12)?', N'problem', N'color', N'song', N'pen', 'A', 28);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'We should reduce ___. (Q13)?', N'music', N'books', N'chairs', N'waste', 'D', 28);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'International aid helps ___. (Q14)?', N'cups', N'stones', N'countries', N'tables', 'C', 28);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Global issues need ___. (Q15)?', N'sleep', N'cooperation', N'silence', N'noise', 'B', 28);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Climate change affects ___. (Q16)?', N'the planet', N'the toaster', N'the pencil', N'the shoe', 'A', 28);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Hunger is a world ___. (Q17)?', N'color', N'song', N'pen', N'problem', 'D', 28);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'We should reduce ___. (Q18)?', N'books', N'chairs', N'waste', N'music', 'C', 28);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'International aid helps ___. (Q19)?', N'stones', N'countries', N'tables', N'cups', 'B', 28);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Global issues need ___. (Q20)?', N'cooperation', N'silence', N'noise', N'sleep', 'A', 28);

-- Test 29: Business & Entrepreneurship
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'A startup is a new ___. (Q1)?', N'book', N'song', N'shoe', N'business', 'D', 29);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Entrepreneurs take ___. (Q2)?', N'naps', N'breakfasts', N'risks', N'photos', 'C', 29);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'They pitch an ___. (Q3)?', N'apple', N'idea', N'umbrella', N'chair', 'B', 29);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Profit is revenue minus ___. (Q4)?', N'costs', N'colors', N'sounds', N'sizes', 'A', 29);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'He founded a ___. (Q5)?', N'library', N'market', N'park', N'company', 'D', 29);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'A startup is a new ___. (Q6)?', N'song', N'shoe', N'business', N'book', 'C', 29);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Entrepreneurs take ___. (Q7)?', N'breakfasts', N'risks', N'photos', N'naps', 'B', 29);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'They pitch an ___. (Q8)?', N'idea', N'umbrella', N'chair', N'apple', 'A', 29);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Profit is revenue minus ___. (Q9)?', N'colors', N'sounds', N'sizes', N'costs', 'D', 29);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'He founded a ___. (Q10)?', N'market', N'park', N'company', N'library', 'C', 29);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'A startup is a new ___. (Q11)?', N'shoe', N'business', N'book', N'song', 'B', 29);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Entrepreneurs take ___. (Q12)?', N'risks', N'photos', N'naps', N'breakfasts', 'A', 29);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'They pitch an ___. (Q13)?', N'umbrella', N'chair', N'apple', N'idea', 'D', 29);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Profit is revenue minus ___. (Q14)?', N'sounds', N'sizes', N'costs', N'colors', 'C', 29);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'He founded a ___. (Q15)?', N'park', N'company', N'library', N'market', 'B', 29);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'A startup is a new ___. (Q16)?', N'business', N'book', N'song', N'shoe', 'A', 29);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Entrepreneurs take ___. (Q17)?', N'photos', N'naps', N'breakfasts', N'risks', 'D', 29);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'They pitch an ___. (Q18)?', N'chair', N'apple', N'idea', N'umbrella', 'C', 29);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Profit is revenue minus ___. (Q19)?', N'sizes', N'costs', N'colors', N'sounds', 'B', 29);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'He founded a ___. (Q20)?', N'company', N'library', N'market', N'park', 'A', 29);

-- Test 30: History
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Who discovered America? ___. (Q1)?', N'Newton', N'Einstein', N'Beethoven', N'Columbus', 'D', 30);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'History studies past ___. (Q2)?', N'numbers', N'socks', N'events', N'vegetables', 'C', 30);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'They visited a historic ___. (Q3)?', N'plate', N'site', N'phone', N'bottle', 'B', 30);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'The war ended many ___. (Q4)?', N'years ago', N'minutes ago', N'seconds ago', N'hours ago', 'A', 30);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Ancient people used to ___. (Q5)?', N'tweet', N'email', N'drive', N'farm', 'D', 30);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Who discovered America? ___. (Q6)?', N'Einstein', N'Beethoven', N'Columbus', N'Newton', 'C', 30);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'History studies past ___. (Q7)?', N'socks', N'events', N'vegetables', N'numbers', 'B', 30);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'They visited a historic ___. (Q8)?', N'site', N'phone', N'bottle', N'plate', 'A', 30);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'The war ended many ___. (Q9)?', N'minutes ago', N'seconds ago', N'hours ago', N'years ago', 'D', 30);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Ancient people used to ___. (Q10)?', N'email', N'drive', N'farm', N'tweet', 'C', 30);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Who discovered America? ___. (Q11)?', N'Beethoven', N'Columbus', N'Newton', N'Einstein', 'B', 30);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'History studies past ___. (Q12)?', N'events', N'vegetables', N'numbers', N'socks', 'A', 30);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'They visited a historic ___. (Q13)?', N'phone', N'bottle', N'plate', N'site', 'D', 30);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'The war ended many ___. (Q14)?', N'seconds ago', N'hours ago', N'years ago', N'minutes ago', 'C', 30);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Ancient people used to ___. (Q15)?', N'drive', N'farm', N'tweet', N'email', 'B', 30);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Who discovered America? ___. (Q16)?', N'Columbus', N'Newton', N'Einstein', N'Beethoven', 'A', 30);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'History studies past ___. (Q17)?', N'vegetables', N'numbers', N'socks', N'events', 'D', 30);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'They visited a historic ___. (Q18)?', N'bottle', N'plate', N'site', N'phone', 'C', 30);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'The war ended many ___. (Q19)?', N'hours ago', N'years ago', N'minutes ago', N'seconds ago', 'B', 30);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Ancient people used to ___. (Q20)?', N'farm', N'tweet', N'email', N'drive', 'A', 30);

-- Test 31: Philosophy
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Philosophy asks about ___. (Q1)?', N'furniture', N'dessert', N'socks', N'life', 'D', 31);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Who thinks about ethics and ___. (Q2)?', N'singers', N'chefs', N'philosophers', N'drivers', 'C', 31);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'What is the study of knowledge? ___. (Q3)?', N'engineering', N'epistemology', N'biology', N'mathematics', 'B', 31);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Philosophy often uses ___. (Q4)?', N'reasoning', N'cooking', N'painting', N'singing', 'A', 31);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'A famous philosopher is ___. (Q5)?', N'Tesla', N'Mozart', N'Picasso', N'Plato', 'D', 31);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Philosophy asks about ___. (Q6)?', N'dessert', N'socks', N'life', N'furniture', 'C', 31);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Who thinks about ethics and ___. (Q7)?', N'chefs', N'philosophers', N'drivers', N'singers', 'B', 31);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'What is the study of knowledge? ___. (Q8)?', N'epistemology', N'biology', N'mathematics', N'engineering', 'A', 31);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Philosophy often uses ___. (Q9)?', N'cooking', N'painting', N'singing', N'reasoning', 'D', 31);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'A famous philosopher is ___. (Q10)?', N'Mozart', N'Picasso', N'Plato', N'Tesla', 'C', 31);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Philosophy asks about ___. (Q11)?', N'socks', N'life', N'furniture', N'dessert', 'B', 31);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Who thinks about ethics and ___. (Q12)?', N'philosophers', N'drivers', N'singers', N'chefs', 'A', 31);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'What is the study of knowledge? ___. (Q13)?', N'biology', N'mathematics', N'engineering', N'epistemology', 'D', 31);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Philosophy often uses ___. (Q14)?', N'painting', N'singing', N'reasoning', N'cooking', 'C', 31);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'A famous philosopher is ___. (Q15)?', N'Picasso', N'Plato', N'Tesla', N'Mozart', 'B', 31);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Philosophy asks about ___. (Q16)?', N'life', N'furniture', N'dessert', N'socks', 'A', 31);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Who thinks about ethics and ___. (Q17)?', N'drivers', N'singers', N'chefs', N'philosophers', 'D', 31);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'What is the study of knowledge? ___. (Q18)?', N'mathematics', N'engineering', N'epistemology', N'biology', 'C', 31);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Philosophy often uses ___. (Q19)?', N'singing', N'reasoning', N'cooking', N'painting', 'B', 31);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'A famous philosopher is ___. (Q20)?', N'Plato', N'Tesla', N'Mozart', N'Picasso', 'A', 31);
select * from Question;




SET NOCOUNT ON;

-- 50 câu hỏi được chọn từ các Test 2, 3, 4, 5, 6 và gán vào IDTest = 32
-- Đáp án đã được chuyển sang ký tự đơn ('A', 'B', 'C', 'D')

-- Test 2: Greetings & Introductions (10 câu)
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'What is your name (Q1)?', N'I am fine', N'It is blue', N'Yes, it is', N'My name is John', 'D', 32);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'How are you (Q2)?', N'I am a teacher', N'I am from Japan', N'I am fine', N'I am ten', 'C', 32);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Where are you from (Q3)?', N'I have two brothers', N'I am from Japan', N'I am busy', N'I like pizza', 'B', 32);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Nice to meet you. — ___ (Q4)?', N'Nice to meet you too', N'I am fine', N'No thanks', N'See you later', 'A', 32);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Good morning — used at ___. (Q5)?', N'the end of the day', N'night time', N'midnight', N'the start of the day', 'D', 32);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'What is your name (Q6)?', N'It is blue', N'Yes, it is', N'My name is John', N'I am fine', 'C', 32);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'How are you (Q7)?', N'I am from Japan', N'I am fine', N'I am ten', N'I am a teacher', 'B', 32);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Where are you from (Q8)?', N'I am from Japan', N'I am busy', N'I like pizza', N'I have two brothers', 'A', 32);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Nice to meet you. — ___ (Q9)?', N'I am fine', N'No thanks', N'See you later', N'Nice to meet you too', 'D', 32);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Good morning — used at ___. (Q10)?', N'night time', N'midnight', N'the start of the day', N'the end of the day', 'C', 32);

-- Test 3: Family & Friends (10 câu)
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Who is your mother (Q1)?', N'My father is tall', N'I have a cat', N'We live in Hanoi', N'My mother is a teacher', 'D', 32);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'He is my brother. He is my ___. (Q2)?', N'friend', N'uncle', N'brother', N'sister', 'C', 32);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'How many siblings do you have (Q3)?', N'I work', N'I have two siblings', N'I like football', N'I am a student', 'B', 32);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'My best friend likes to ___. (Q4)?', N'play guitar', N'be a doctor', N'study math', N'drive a bus', 'A', 32);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'They are a family. They live ___. (Q5)?', N'alone', N'yesterday', N'quickly', N'together', 'D', 32);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Who is your mother (Q6)?', N'I have a cat', N'We live in Hanoi', N'My mother is a teacher', N'My father is tall', 'C', 32);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'He is my brother. He is my ___. (Q7)?', N'uncle', N'brother', N'sister', N'friend', 'B', 32);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'How many siblings do you have (Q8)?', N'I have two siblings', N'I like football', N'I am a student', N'I work', 'A', 32);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'My best friend likes to ___. (Q9)?', N'be a doctor', N'study math', N'drive a bus', N'play guitar', 'D', 32);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'They are a family. They live ___. (Q10)?', N'yesterday', N'quickly', N'together', N'alone', 'C', 32);

-- Test 4: Numbers & Alphabet (10 câu)
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'What comes after two (Q1)?', N'one', N'zero', N'five', N'three', 'D', 32);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'How many letters are in the English alphabet (Q2)?', N'20', N'30', N'26', N'24', 'C', 32);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'What number is 10 + 5 (Q3)?', N'20', N'15', N'10', N'5', 'B', 32);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Which is an even number (Q4)?', N'four', N'three', N'five', N'seven', 'A', 32);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'What is the first letter of ''Apple'' (Q5)?', N'B', N'C', N'D', N'A', 'D', 32);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'What comes after two (Q6)?', N'zero', N'five', N'three', N'one', 'C', 32);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'How many letters are in the English alphabet (Q7)?', N'30', N'26', N'24', N'20', 'B', 32);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'What number is 10 + 5 (Q8)?', N'15', N'10', N'5', N'20', 'A', 32);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Which is an even number (Q9)?', N'three', N'five', N'seven', N'four', 'D', 32);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'What is the first letter of ''Apple'' (Q10)?', N'C', N'D', N'A', N'B', 'C', 32);

-- Test 5: Jobs & Occupations (10 câu)
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'He works in a hospital. He is a ___. (Q1)?', N'teacher', N'farmer', N'chef', N'doctor', 'D', 32);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Who teaches students (Q2)?', N'a nurse', N'a banker', N'a teacher', N'a driver', 'C', 32);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'A person who fixes cars is a ___. (Q3)?', N'chef', N'mechanic', N'artist', N'pilot', 'B', 32);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'A chef works in a ___. (Q4)?', N'kitchen', N'classroom', N'office', N'factory', 'A', 32);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Which job works with money (Q5)?', N'farmer', N'actor', N'singer', N'banker', 'D', 32);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'He works in a hospital. He is a ___. (Q6)?', N'farmer', N'chef', N'doctor', N'teacher', 'C', 32);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Who teaches students (Q7)?', N'a banker', N'a teacher', N'a driver', N'a nurse', 'B', 32);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'A person who fixes cars is a ___. (Q8)?', N'mechanic', N'artist', N'pilot', N'chef', 'A', 32);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'A chef works in a ___. (Q9)?', N'classroom', N'office', N'factory', N'kitchen', 'D', 32);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Which job works with money (Q10)?', N'actor', N'singer', N'banker', N'farmer', 'C', 32);

-- Test 6: Daily Routines (10 câu)
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'What do you do in the morning (Q1)?', N'sleep', N'eat dinner', N'watch TV at night', N'get up', 'D', 32);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'I brush my teeth ___. (Q2)?', N'never', N'yesterday', N'every morning', N'at midnight', 'C', 32);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'She goes to school ___. (Q3)?', N'yesterday', N'by bus', N'tomorrow', N'last year', 'B', 32);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'What time do you go to bed (Q4)?', N'at 10 pm', N'in 2050', N'in summer', N'next week', 'A', 32);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'He usually ___ coffee in the morning. (Q5)?', N'drank', N'drink', N'drinking', N'drinks', 'D', 32);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'What do you do in the morning (Q6)?', N'eat dinner', N'watch TV at night', N'get up', N'sleep', 'C', 32);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'I brush my teeth ___. (Q7)?', N'yesterday', N'every morning', N'at midnight', N'never', 'B', 32);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'She goes to school ___. (Q8)?', N'by bus', N'tomorrow', N'last year', N'yesterday', 'A', 32);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'What time do you go to bed (Q9)?', N'in 2050', N'in summer', N'next week', N'at 10 pm', 'D', 32);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'He usually ___ coffee in the morning. (Q10)?', N'drink', N'drinking', N'drinks', N'drank', 'C', 32);


select * from question q
	where q.IDTest = 38; 


SET NOCOUNT ON;

-- =======================================================================
-- BATCH 1: IDTest = 33 (Tổng hợp từ Tests 7, 8, 9, 10, 11) - 50 CÂU
-- =======================================================================

-- Test 7: Food & Drink (10 câu)
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'I like to eat ___. (Q1)?', N'computers', N'books', N'chairs', N'noodles', 'D', 33);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'What do you drink with breakfast (Q2)?', N'a phone', N'a shirt', N'tea', N'a car', 'C', 33);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'This fruit is yellow and sour: ___. (Q3)?', N'grape', N'lemon', N'apple', N'banana', 'B', 33);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Do you want some ___ (Q4)?', N'water', N'paper', N'glass', N'money', 'A', 33);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'I am hungry. I want to ___. (Q5)?', N'sleep', N'run', N'read', N'eat', 'D', 33);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'I like to eat ___. (Q6)?', N'books', N'chairs', N'noodles', N'computers', 'C', 33);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'What do you drink with breakfast (Q7)?', N'a shirt', N'tea', N'a car', N'a phone', 'B', 33);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'This fruit is yellow and sour: ___. (Q8)?', N'lemon', N'apple', N'banana', N'grape', 'A', 33);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Do you want some ___ (Q9)?', N'paper', N'glass', N'money', N'water', 'D', 33);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'I am hungry. I want to ___. (Q10)?', N'run', N'read', N'eat', N'sleep', 'C', 33);

-- Test 8: Clothes (10 câu)
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'What do you wear on your feet (Q1)?', N'hat', N'shirt', N'belt', N'shoes', 'D', 33);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'He is wearing a ___ on his head. (Q2)?', N'glove', N'sock', N'hat', N'shoe', 'C', 33);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'These are warm for winter: ___. (Q3)?', N't-shirt', N'coats', N'shorts', N'sandals', 'B', 33);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'She puts on a ___ before going out. (Q4)?', N'jacket', N'fork', N'pencil', N'map', 'A', 33);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'People wear ___ to bed. (Q5)?', N'boots', N'suit', N'tie', N'pyjamas', 'D', 33);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'What do you wear on your feet (Q6)?', N'shirt', N'belt', N'shoes', N'hat', 'C', 33);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'He is wearing a ___ on his head. (Q7)?', N'sock', N'hat', N'shoe', N'glove', 'B', 33);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'These are warm for winter: ___. (Q8)?', N'coats', N'shorts', N'sandals', N't-shirt', 'A', 33);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'She puts on a ___ before going out. (Q9)?', N'fork', N'pencil', N'map', N'jacket', 'D', 33);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'People wear ___ to bed. (Q10)?', N'suit', N'tie', N'pyjamas', N'boots', 'C', 33);

-- Test 9: Hobbies & Sports (10 câu)
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'My hobby is ___. (Q1)?', N'driving', N'cooking professionally', N'accounting', N'reading', 'D', 33);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'He plays ___ on weekends. (Q2)?', N'television', N'book', N'football', N'computer', 'C', 33);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Which is a sport (Q3)?', N'sleeping', N'tennis', N'painting', N'cooking', 'B', 33);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'She practices ___ every day. (Q4)?', N'yoga', N'shopping', N'cleaning', N'sleeping', 'A', 33);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'They went to the park to ___. (Q5)?', N'study', N'shop', N'cook', N'jog', 'D', 33);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'My hobby is ___. (Q6)?', N'cooking professionally', N'accounting', N'reading', N'driving', 'C', 33);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'He plays ___ on weekends. (Q7)?', N'book', N'football', N'computer', N'television', 'B', 33);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Which is a sport (Q8)?', N'tennis', N'painting', N'cooking', N'sleeping', 'A', 33);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'She practices ___ every day. (Q9)?', N'shopping', N'cleaning', N'sleeping', N'yoga', 'D', 33);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'They went to the park to ___. (Q10)?', N'shop', N'cook', N'jog', N'study', 'C', 33);

-- Test 10: Weather (10 câu)
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'It is raining. Take an ___. (Q1)?', N'apple', N'pencil', N'shoe', N'umbrella', 'D', 33);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'The weather is very ___. (Q2)?', N'happy', N'loud', N'hot', N'silent', 'C', 33);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Which season is cold (Q3)?', N'spring', N'winter', N'summer', N'autumn', 'B', 33);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Today it is ___. (Q4)?', N'sunny', N'noisy', N'cheap', N'fast', 'A', 33);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'There are many clouds. It is ___. (Q5)?', N'delicious', N'easy', N'slow', N'cloudy', 'D', 33);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'It is raining. Take an ___. (Q6)?', N'pencil', N'shoe', N'umbrella', N'apple', 'C', 33);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'The weather is very ___. (Q7)?', N'loud', N'hot', N'silent', N'happy', 'B', 33);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Which season is cold (Q8)?', N'winter', N'summer', N'autumn', N'spring', 'A', 33);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Today it is ___. (Q9)?', N'noisy', N'cheap', N'fast', N'sunny', 'D', 33);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'There are many clouds. It is ___. (Q10)?', N'easy', N'slow', N'cloudy', N'delicious', 'C', 33);

-- Test 11: Places in a City (10 câu)
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'You can borrow books at the ___. (Q1)?', N'restaurant', N'market', N'hotel', N'library', 'D', 33);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Where do you buy food? ___. (Q2)?', N'school', N'park', N'market', N'bank', 'C', 33);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'The hospital is for ___. (Q3)?', N'movies', N'sick people', N'cars', N'books', 'B', 33);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'We catch a train at the ___. (Q4)?', N'station', N'cinema', N'garden', N'office', 'A', 33);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Where do students study? ___. (Q5)?', N'factory', N'airport', N'bank', N'school', 'D', 33);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'You can borrow books at the ___. (Q6)?', N'market', N'hotel', N'library', N'restaurant', 'C', 33);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Where do you buy food? ___. (Q7)?', N'park', N'market', N'bank', N'school', 'B', 33);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'The hospital is for ___. (Q8)?', N'sick people', N'cars', N'books', N'movies', 'A', 33);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'We catch a train at the ___. (Q9)?', N'cinema', N'garden', N'office', N'station', 'D', 33);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Where do students study? ___. (Q10)?', N'airport', N'bank', N'school', N'factory', 'C', 33);

-- =======================================================================
-- BATCH 2: IDTest = 34 (Tổng hợp từ Tests 12, 13, 14, 15, 16) - 50 CÂU
-- =======================================================================

-- Test 12: Travel & Holidays (10 câu)
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'I need a passport to ___. (Q1)?', N'cook dinner', N'read books', N'paint walls', N'travel abroad', 'D', 34);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Where do you stay on holiday? ___. (Q2)?', N'factory', N'bank', N'hotel', N'office', 'C', 34);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'She bought a ticket for the ___. (Q3)?', N'market', N'flight', N'library', N'school', 'B', 34);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'We go on holiday in ___. (Q4)?', N'summer', N'midnight', N'alarm', N'class', 'A', 34);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'They visited a famous ___. (Q5)?', N'printer', N'computer', N'television', N'museum', 'D', 34);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'I need a passport to ___. (Q6)?', N'read books', N'paint walls', N'travel abroad', N'cook dinner', 'C', 34);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Where do you stay on holiday? ___. (Q7)?', N'bank', N'hotel', N'office', N'factory', 'B', 34);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'She bought a ticket for the ___. (Q8)?', N'flight', N'library', N'school', N'market', 'A', 34);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'We go on holiday in ___. (Q9)?', N'midnight', N'alarm', N'class', N'summer', 'D', 34);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'They visited a famous ___. (Q10)?', N'computer', N'television', N'museum', N'printer', 'C', 34);

-- Test 13: Health & Lifestyle (10 câu)
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'To stay healthy, we should ___. (Q1)?', N'smoke', N'eat junk', N'sleep late', N'exercise', 'D', 34);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'He goes to the doctor because he is ___. (Q2)?', N'young', N'happy', N'sick', N'rich', 'C', 34);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Eating vegetables is ___. (Q3)?', N'fast', N'good for you', N'dangerous', N'expensive', 'B', 34);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'She runs to keep ___. (Q4)?', N'fit', N'bored', N'dirty', N'late', 'A', 34);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'You should drink plenty of ___. (Q5)?', N'plastic', N'metal', N'paper', N'water', 'D', 34);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'To stay healthy, we should ___. (Q6)?', N'eat junk', N'sleep late', N'exercise', N'smoke', 'C', 34);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'He goes to the doctor because he is ___. (Q7)?', N'happy', N'sick', N'rich', N'young', 'B', 34);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Eating vegetables is ___. (Q8)?', N'good for you', N'dangerous', N'expensive', N'fast', 'A', 34);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'She runs to keep ___. (Q9)?', N'bored', N'dirty', N'late', N'fit', 'D', 34);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'You should drink plenty of ___. (Q10)?', N'metal', N'paper', N'water', N'plastic', 'C', 34);

-- Test 14: Education & Learning (10 câu)
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Where do children learn? ___. (Q1)?', N'factory', N'shop', N'station', N'school', 'D', 34);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'A person who teaches is called a ___. (Q2)?', N'chef', N'farmer', N'teacher', N'driver', 'C', 34);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'He studies to get good ___. (Q3)?', N'cars', N'grades', N'shoes', N'money', 'B', 34);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'What do you do at the library? ___. (Q4)?', N'read books', N'cook', N'sleep', N'drive', 'A', 34);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'She takes notes during ___. (Q5)?', N'party', N'game', N'trip', N'class', 'D', 34);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Where do children learn? ___. (Q6)?', N'shop', N'station', N'school', N'factory', 'C', 34);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'A person who teaches is called a ___. (Q7)?', N'farmer', N'teacher', N'driver', N'chef', 'B', 34);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'He studies to get good ___. (Q8)?', N'grades', N'shoes', N'money', N'cars', 'A', 34);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'What do you do at the library? ___. (Q9)?', N'cook', N'sleep', N'drive', N'read books', 'D', 34);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'She takes notes during ___. (Q10)?', N'game', N'trip', N'class', N'party', 'C', 34);

-- Test 15: Technology & Internet (10 câu)
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'I use the internet to ___. (Q1)?', N'cook', N'sleep', N'drive', N'search information', 'D', 34);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'An email is sent using ___. (Q2)?', N'air', N'bread', N'internet', N'water', 'C', 34);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'He types on a ___. (Q3)?', N'door', N'keyboard', N'shoe', N'plate', 'B', 34);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'We download files from the ___. (Q4)?', N'website', N'garden', N'garage', N'market', 'A', 34);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'A phone that connects to the web is a ___. (Q5)?', N'chair', N'hat', N'pencil', N'smartphone', 'D', 34);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'I use the internet to ___. (Q6)?', N'sleep', N'drive', N'search information', N'cook', 'C', 34);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'An email is sent using ___. (Q7)?', N'bread', N'internet', N'water', N'air', 'B', 34);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'He types on a ___. (Q8)?', N'keyboard', N'shoe', N'plate', N'door', 'A', 34);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'We download files from the ___. (Q9)?', N'garden', N'garage', N'market', N'website', 'D', 34);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'A phone that connects to the web is a ___. (Q10)?', N'hat', N'pencil', N'smartphone', N'chair', 'C', 34);

-- Test 16: Environment (10 câu)
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'We should plant more ___. (Q1)?', N'cars', N'laptops', N'books', N'trees', 'D', 34);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Pollution harms the ___. (Q2)?', N'television', N'shoe', N'environment', N'wallet', 'C', 34);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Recycle paper to ___. (Q3)?', N'sell', N'save resources', N'throw away', N'eat', 'B', 34);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Protecting nature is ___. (Q4)?', N'important', N'impossible', N'cheap', N'slow', 'A', 34);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Clean water is ___. (Q5)?', N'noisy', N'fast', N'small', N'valuable', 'D', 34);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'We should plant more ___. (Q6)?', N'laptops', N'books', N'trees', N'cars', 'C', 34);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Pollution harms the ___. (Q7)?', N'shoe', N'environment', N'wallet', N'television', 'B', 34);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Recycle paper to ___. (Q8)?', N'save resources', N'throw away', N'eat', N'sell', 'A', 34);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Protecting nature is ___. (Q9)?', N'impossible', N'cheap', N'slow', N'important', 'D', 34);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Clean water is ___. (Q10)?', N'fast', N'small', N'valuable', N'noisy', 'C', 34);

-- =======================================================================
-- BATCH 3: IDTest = 35 (Tổng hợp từ Tests 17, 18, 19, 20, 21) - 50 CÂU
-- =======================================================================

-- Test 17: Shopping & Consumerism (10 câu)
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'How much is this? — It is ___. (Q1)?', N'yesterday', N'blue', N'loud', N'ten dollars', 'D', 35);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'I want to buy ___. (Q2)?', N'read', N'fly', N'a new phone', N'run', 'C', 35);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'You pay at the ___. (Q3)?', N'park', N'cashier', N'library', N'school', 'B', 35);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'This shirt is on ___. (Q4)?', N'sale', N'sleep', N'run', N'study', 'A', 35);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Do you accept ___. (Q5)?', N'music', N'books', N'flowers', N'credit cards', 'D', 35);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'How much is this? — It is ___. (Q6)?', N'blue', N'loud', N'ten dollars', N'yesterday', 'C', 35);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'I want to buy ___. (Q7)?', N'fly', N'a new phone', N'run', N'read', 'B', 35);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'You pay at the ___. (Q8)?', N'cashier', N'library', N'school', N'park', 'A', 35);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'This shirt is on ___. (Q9)?', N'sleep', N'run', N'study', N'sale', 'D', 35);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Do you accept ___. (Q10)?', N'books', N'flowers', N'credit cards', N'music', 'C', 35);

-- Test 18: Movies & Music (10 câu)
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'I like to watch ___. (Q1)?', N'books', N'cars', N'money', N'movies', 'D', 35);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'She listens to ___. (Q2)?', N'clothes', N'water', N'music', N'furniture', 'C', 35);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Who is the ___. (Q3)?', N'baker', N'director', N'teacher', N'driver', 'B', 35);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'This song is very ___. (Q4)?', N'popular', N'heavy', N'sharp', N'round', 'A', 35);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'They went to the ___. (Q5)?', N'bank', N'hospital', N'school', N'cinema', 'D', 35);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'I like to watch ___. (Q6)?', N'cars', N'money', N'movies', N'books', 'C', 35);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'She listens to ___. (Q7)?', N'water', N'music', N'furniture', N'clothes', 'B', 35);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Who is the ___. (Q8)?', N'director', N'teacher', N'driver', N'baker', 'A', 35);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'This song is very ___. (Q9)?', N'heavy', N'sharp', N'round', N'popular', 'D', 35);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'They went to the ___. (Q10)?', N'hospital', N'school', N'cinema', N'bank', 'C', 35);

-- Test 19: Personality & Feelings (10 câu)
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'I feel ___. (Q1)?', N'wooden', N'noisy', N'slow', N'happy', 'D', 35);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'She is very ___. (Q2)?', N'yellow', N'square', N'kind', N'metal', 'C', 35);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'He gets ___. (Q3)?', N'fast', N'angry', N'paper', N'early', 'B', 35);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'They are ___. (Q4)?', N'excited', N'quiet', N'thin', N'cold', 'A', 35);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'You seem ___. (Q5)?', N'green', N'round', N'loud', N'tired', 'D', 35);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'I feel ___. (Q6)?', N'noisy', N'slow', N'happy', N'wooden', 'C', 35);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'She is very ___. (Q7)?', N'square', N'kind', N'metal', N'yellow', 'B', 35);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'He gets ___. (Q8)?', N'angry', N'paper', N'early', N'fast', 'A', 35);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'They are ___. (Q9)?', N'quiet', N'thin', N'cold', N'excited', 'D', 35);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'You seem ___. (Q10)?', N'round', N'loud', N'tired', N'green', 'C', 35);

-- Test 20: News & Events (10 câu)
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Where did the event ___. (Q1)?', N'sleep', N'run', N'eat', N'take place', 'D', 35);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'The news is about ___. (Q2)?', N'a shoe', N'a cup', N'a new school', N'a table', 'C', 35);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Reporters write ___. (Q3)?', N'recipes', N'articles', N'songs', N'dances', 'B', 35);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'They announced the ___. (Q4)?', N'results', N'chairs', N'pens', N'apples', 'A', 35);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'What happened yesterday? ___. (Q5)?', N'a book', N'a pencil', N'a plate', N'an event', 'D', 35);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Where did the event ___. (Q6)?', N'run', N'eat', N'take place', N'sleep', 'C', 35);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'The news is about ___. (Q7)?', N'a cup', N'a new school', N'a table', N'a shoe', 'B', 35);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Reporters write ___. (Q8)?', N'articles', N'songs', N'dances', N'recipes', 'A', 35);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'They announced the ___. (Q9)?', N'chairs', N'pens', N'apples', N'results', 'D', 35);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'What happened yesterday? ___. (Q10)?', N'a pencil', N'a plate', N'an event', N'a book', 'C', 35);

-- Test 21: Work & Career (10 câu)
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'He wants to ___. (Q1)?', N'cook dinner', N'sleep', N'play', N'find a job', 'D', 35);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'She works as a ___. (Q2)?', N'child', N'robot', N'engineer', N'student', 'C', 35);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'A resume shows your ___. (Q3)?', N'weather', N'experience', N'breakfast', N'shoes', 'B', 35);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'He applies for a ___. (Q4)?', N'position', N'ticket', N'book', N'chair', 'A', 35);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'They have an interview ___. (Q5)?', N'yesterday', N'last year', N'never', N'tomorrow', 'D', 35);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'He wants to ___. (Q6)?', N'sleep', N'play', N'find a job', N'cook dinner', 'C', 35);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'She works as a ___. (Q7)?', N'robot', N'engineer', N'student', N'child', 'B', 35);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'A resume shows your ___. (Q8)?', N'experience', N'breakfast', N'shoes', N'weather', 'A', 35);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'He applies for a ___. (Q9)?', N'ticket', N'book', N'chair', N'position', 'D', 35);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'They have an interview ___. (Q10)?', N'last year', N'never', N'tomorrow', N'yesterday', 'C', 35);

-- =======================================================================
-- BATCH 4: IDTest = 36 (Tổng hợp từ Tests 22, 23, 24, 25, 26) - 50 CÂU
-- =======================================================================

-- Test 22: Science & Research (10 câu)
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Scientists study ___. (Q1)?', N'television', N'wallets', N'shoes', N'nature', 'D', 36);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Research helps us ___. (Q2)?', N'eat faster', N'run slower', N'learn new things', N'sleep more', 'C', 36);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'A lab is a place for ___. (Q3)?', N'cooking', N'experiments', N'shopping', N'sleeping', 'B', 36);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Which is a scientist? ___. (Q4)?', N'a researcher', N'a driver', N'a singer', N'a chef', 'A', 36);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'They collect data for ___. (Q5)?', N'fun', N'sport', N'music', N'analysis', 'D', 36);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Scientists study ___. (Q6)?', N'wallets', N'shoes', N'nature', N'television', 'C', 36);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Research helps us ___. (Q7)?', N'run slower', N'learn new things', N'sleep more', N'eat faster', 'B', 36);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'A lab is a place for ___. (Q8)?', N'experiments', N'shopping', N'sleeping', N'cooking', 'A', 36);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Which is a scientist? ___. (Q9)?', N'a driver', N'a singer', N'a chef', N'a researcher', 'D', 36);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'They collect data for ___. (Q10)?', N'sport', N'music', N'analysis', N'fun', 'C', 36);

-- Test 23: Politics & Society (10 câu)
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Voting is part of ___. (Q1)?', N'cooking', N'sleeping', N'reading', N'democracy', 'D', 36);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'A leader governs a ___. (Q2)?', N'garden', N'room', N'country', N'kitchen', 'C', 36);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Citizens have ___. (Q3)?', N'shoes', N'rights', N'tables', N'flowers', 'B', 36);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'The law applies to ___. (Q4)?', N'everyone', N'only cats', N'only trees', N'only cars', 'A', 36);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'They discussed public ___. (Q5)?', N'color', N'size', N'shape', N'policy', 'D', 36);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Voting is part of ___. (Q6)?', N'sleeping', N'reading', N'democracy', N'cooking', 'C', 36);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'A leader governs a ___. (Q7)?', N'room', N'country', N'kitchen', N'garden', 'B', 36);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Citizens have ___. (Q8)?', N'rights', N'tables', N'flowers', N'shoes', 'A', 36);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'The law applies to ___. (Q9)?', N'only cats', N'only trees', N'only cars', N'everyone', 'D', 36);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'They discussed public ___. (Q10)?', N'size', N'shape', N'policy', N'color', 'C', 36);

-- Test 24: Economics & Finance (10 câu)
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Money is used to ___. (Q1)?', N'sing songs', N'sleep', N'walk', N'buy things', 'D', 36);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'A budget helps ___. (Q2)?', N'play music', N'paint', N'plan spending', N'run faster', 'C', 36);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Banks keep ___. (Q3)?', N'chairs', N'money', N'trees', N'books', 'B', 36);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Which is a currency? ___. (Q4)?', N'dollar', N'chair', N'car', N'shirt', 'A', 36);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Prices show the ___. (Q5)?', N'sound', N'smell', N'color', N'cost', 'D', 36);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Money is used to ___. (Q6)?', N'sleep', N'walk', N'buy things', N'sing songs', 'C', 36);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'A budget helps ___. (Q7)?', N'paint', N'plan spending', N'run faster', N'play music', 'B', 36);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Banks keep ___. (Q8)?', N'money', N'trees', N'books', N'chairs', 'A', 36);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Which is a currency? ___. (Q9)?', N'chair', N'car', N'shirt', N'dollar', 'D', 36);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Prices show the ___. (Q10)?', N'smell', N'color', N'cost', N'sound', 'C', 36);

-- Test 25: Art & Literature (10 câu)
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'An author writes a ___. (Q1)?', N'table', N'shoe', N'car', N'book', 'D', 36);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Which is a painting? ___. (Q2)?', N'food', N'weather', N'art', N'money', 'C', 36);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'She reads ___. (Q3)?', N'a stone', N'a novel', N'a bottle', N'a spoon', 'B', 36);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'A museum shows ___. (Q4)?', N'artworks', N'cars', N'computers', N'shoes', 'A', 36);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'He is a famous ___. (Q5)?', N'driver', N'chef', N'pilot', N'poet', 'D', 36);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'An author writes a ___. (Q6)?', N'shoe', N'car', N'book', N'table', 'C', 36);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Which is a painting? ___. (Q7)?', N'weather', N'art', N'money', N'food', 'B', 36);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'She reads ___. (Q8)?', N'a novel', N'a bottle', N'a spoon', N'a stone', 'A', 36);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'A museum shows ___. (Q9)?', N'cars', N'computers', N'shoes', N'artworks', 'D', 36);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'He is a famous ___. (Q10)?', N'chef', N'pilot', N'poet', N'driver', 'C', 36);

-- Test 26: Law & Crime (10 câu)
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Who enforces the law? ___. (Q1)?', N'chefs', N'teachers', N'singers', N'police', 'D', 36);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'A court decides ___. (Q2)?', N'colors', N'smells', N'guilt', N'tastes', 'C', 36);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Robbery is a ___. (Q3)?', N'book', N'crime', N'song', N'sport', 'B', 36);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'You should follow the ___. (Q4)?', N'rules', N'fruits', N'games', N'weather', 'A', 36);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'They arrested the ___. (Q5)?', N'market', N'ticket', N'window', N'suspect', 'D', 36);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Who enforces the law? ___. (Q6)?', N'teachers', N'singers', N'police', N'chefs', 'C', 36);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'A court decides ___. (Q7)?', N'smells', N'guilt', N'tastes', N'colors', 'B', 36);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Robbery is a ___. (Q8)?', N'crime', N'song', N'sport', N'book', 'A', 36);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'You should follow the ___. (Q9)?', N'fruits', N'games', N'weather', N'rules', 'D', 36);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'They arrested the ___. (Q10)?', N'ticket', N'window', N'suspect', N'market', 'C', 36);

-- =======================================================================
-- BATCH 5: IDTest = 37 (Tổng hợp từ Tests 27, 28, 29, 30, 31) - 50 CÂU
-- =======================================================================

-- Test 27: Psychology (10 câu)
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Psychology studies the ___. (Q1)?', N'cars', N'cakes', N'houses', N'mind', 'D', 37);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'He feels anxious or ___. (Q2)?', N'loud', N'flat', N'nervous', N'wooden', 'C', 37);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Therapy can help with ___. (Q3)?', N'keys', N'emotions', N'breakfast', N'pets', 'B', 37);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Memory helps us ___. (Q4)?', N'remember', N'forget', N'eat', N'sleep', 'A', 37);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Behavior is how people ___. (Q5)?', N'sit', N'stand', N'paint', N'act', 'D', 37);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Psychology studies the ___. (Q6)?', N'cakes', N'houses', N'mind', N'cars', 'C', 37);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'He feels anxious or ___. (Q7)?', N'flat', N'nervous', N'wooden', N'loud', 'B', 37);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Therapy can help with ___. (Q8)?', N'emotions', N'breakfast', N'pets', N'keys', 'A', 37);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Memory helps us ___. (Q9)?', N'forget', N'eat', N'sleep', N'remember', 'D', 37);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Behavior is how people ___. (Q10)?', N'stand', N'paint', N'act', N'sit', 'C', 37);

-- Test 28: Global Issues (10 câu)
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Climate change affects ___. (Q1)?', N'the toaster', N'the pencil', N'the shoe', N'the planet', 'D', 37);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Hunger is a world ___. (Q2)?', N'song', N'pen', N'problem', N'color', 'C', 37);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'We should reduce ___. (Q3)?', N'chairs', N'waste', N'music', N'books', 'B', 37);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'International aid helps ___. (Q4)?', N'countries', N'tables', N'cups', N'stones', 'A', 37);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Global issues need ___. (Q5)?', N'silence', N'noise', N'sleep', N'cooperation', 'D', 37);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Climate change affects ___. (Q6)?', N'the pencil', N'the shoe', N'the planet', N'the toaster', 'C', 37);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Hunger is a world ___. (Q7)?', N'pen', N'problem', N'color', N'song', 'B', 37);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'We should reduce ___. (Q8)?', N'waste', N'music', N'books', N'chairs', 'A', 37);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'International aid helps ___. (Q9)?', N'tables', N'cups', N'stones', N'countries', 'D', 37);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Global issues need ___. (Q10)?', N'noise', N'sleep', N'cooperation', N'silence', 'C', 37);

-- Test 29: Business & Entrepreneurship (10 câu)
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'A startup is a new ___. (Q1)?', N'book', N'song', N'shoe', N'business', 'D', 37);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Entrepreneurs take ___. (Q2)?', N'naps', N'breakfasts', N'risks', N'photos', 'C', 37);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'They pitch an ___. (Q3)?', N'apple', N'idea', N'umbrella', N'chair', 'B', 37);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Profit is revenue minus ___. (Q4)?', N'costs', N'colors', N'sounds', N'sizes', 'A', 37);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'He founded a ___. (Q5)?', N'library', N'market', N'park', N'company', 'D', 37);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'A startup is a new ___. (Q6)?', N'song', N'shoe', N'business', N'book', 'C', 37);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Entrepreneurs take ___. (Q7)?', N'breakfasts', N'risks', N'photos', N'naps', 'B', 37);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'They pitch an ___. (Q8)?', N'idea', N'umbrella', N'chair', N'apple', 'A', 37);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Profit is revenue minus ___. (Q9)?', N'colors', N'sounds', N'sizes', N'costs', 'D', 37);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'He founded a ___. (Q10)?', N'market', N'park', N'company', N'library', 'C', 37);

-- Test 30: History (10 câu)
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Who discovered America? ___. (Q1)?', N'Newton', N'Einstein', N'Beethoven', N'Columbus', 'D', 37);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'History studies past ___. (Q2)?', N'numbers', N'socks', N'events', N'vegetables', 'C', 37);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'They visited a historic ___. (Q3)?', N'plate', N'site', N'phone', N'bottle', 'B', 37);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'The war ended many ___. (Q4)?', N'years ago', N'minutes ago', N'seconds ago', N'hours ago', 'A', 37);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Ancient people used to ___. (Q5)?', N'tweet', N'email', N'drive', N'farm', 'D', 37);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Who discovered America? ___. (Q6)?', N'Einstein', N'Beethoven', N'Columbus', N'Newton', 'C', 37);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'History studies past ___. (Q7)?', N'socks', N'events', N'vegetables', N'numbers', 'B', 37);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'They visited a historic ___. (Q8)?', N'site', N'phone', N'bottle', N'plate', 'A', 37);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'The war ended many ___. (Q9)?', N'minutes ago', N'seconds ago', N'hours ago', N'years ago', 'D', 37);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Ancient people used to ___. (Q10)?', N'email', N'drive', N'farm', N'tweet', 'C', 37);

-- Test 31: Philosophy (10 câu)
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Philosophy asks about ___. (Q1)?', N'furniture', N'dessert', N'socks', N'life', 'D', 37);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Who thinks about ethics and ___. (Q2)?', N'singers', N'chefs', N'philosophers', N'drivers', 'C', 37);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'What is the study of knowledge? ___. (Q3)?', N'engineering', N'epistemology', N'biology', N'mathematics', 'B', 37);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Philosophy often uses ___. (Q4)?', N'reasoning', N'cooking', N'painting', N'singing', 'A', 37);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'A famous philosopher is ___. (Q5)?', N'Tesla', N'Mozart', N'Picasso', N'Plato', 'D', 37);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Philosophy asks about ___. (Q6)?', N'dessert', N'socks', N'life', N'furniture', 'C', 37);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Who thinks about ethics and ___. (Q7)?', N'chefs', N'philosophers', N'drivers', N'singers', 'B', 37);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'What is the study of knowledge? ___. (Q8)?', N'epistemology', N'biology', N'mathematics', N'engineering', 'A', 37);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'Philosophy often uses ___. (Q9)?', N'cooking', N'painting', N'singing', N'reasoning', 'D', 37);
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES (N'A famous philosopher is ___. (Q10)?', N'Mozart', N'Picasso', N'Plato', N'Tesla', 'C', 37);