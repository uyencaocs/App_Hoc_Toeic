SET NOCOUNT ON;

-- Insert 60 English grammar questions for 30 topics
-- All assigned to IDTest = 38 (Bài Kiểm Tra Cuối Kỳ)

INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest)
VALUES
-- Topic 1: Greetings & Introductions
(N'How do you usually greet someone in a formal meeting?', N'Hi there!', N'Good morning, nice to meet you.', N'What’s up?', N'Yo!', 'B', 38),
(N'Choose the correct sentence.', N'He is doctor.', N'He is a doctor.', N'He doctor.', N'He are doctor.', 'B', 38),

-- Topic 2: Family & Friends
(N'Which sentence is correct?', N'She have two brothers.', N'She has two brothers.', N'She having two brothers.', N'She are have two brothers.', 'B', 38),
(N'Complete the sentence: My best friend _____ very kind.', N'are', N'am', N'is', N'be', 'C', 38),

-- Topic 3: Numbers & Alphabet
(N'How many letters are there in the English alphabet?', N'24', N'25', N'26', N'27', 'C', 38),
(N'Choose the correct spelling.', N'Ninty', N'Nineteen', N'Nintyteen', N'Ninetyn', 'B', 38),

-- Topic 4: Jobs & Occupations
(N'He works as _____ engineer.', N'a', N'an', N'the', N'no article', 'B', 38),
(N'Which sentence is grammatically correct?', N'She is teacher.', N'She is the teacher.', N'She teacher.', N'She a teacher.', 'B', 38),

-- Topic 5: Daily Routines
(N'She _____ up at 6 a.m. every day.', N'get', N'gets', N'got', N'getting', 'B', 38),
(N'Which is correct?', N'He usually watch TV.', N'He usually watches TV.', N'He usually watching TV.', N'He usually watched TV.', 'B', 38),

-- Topic 6: Food & Drink
(N'I would like _____ coffee, please.', N'a', N'some', N'any', N'many', 'B', 38),
(N'Choose the correct plural form.', N'Potatos', N'Potatoes', N'Potatoes', N'Potato', 'B', 38),

-- Topic 7: Clothes
(N'He is wearing _____ blue shirt.', N'a', N'an', N'the', N'some', 'A', 38),
(N'Which is correct?', N'This trousers are new.', N'These trousers are new.', N'This trouser are new.', N'Those trouser is new.', 'B', 38),

-- Topic 8: Hobbies & Sports
(N'My brother _____ playing football.', N'likes', N'like', N'is like', N'liking', 'A', 38),
(N'Choose the correct form: She _____ to music now.', N'listen', N'listens', N'is listening', N'listening', 'C', 38),

-- Topic 9: Weather
(N'It _____ cold today.', N'is', N'are', N'be', N'am', 'A', 38),
(N'Choose the correct question: _____ it raining?', N'Are', N'Is', N'Be', N'Do', 'B', 38),

-- Topic 10: Places in a City
(N'The museum is _____ the park.', N'next', N'next to', N'beside of', N'nearby', 'B', 38),
(N'Where _____ the post office?', N'is', N'are', N'be', N'am', 'A', 38),

-- Topic 11: Travel & Holidays
(N'They _____ to Japan last summer.', N'go', N'went', N'gone', N'going', 'B', 38),
(N'Which sentence is correct?', N'I have been in Paris.', N'I have been to Paris.', N'I have gone Paris.', N'I been to Paris.', 'B', 38),

-- Topic 12: Health & Lifestyle
(N'You _____ eat more vegetables.', N'should', N'must to', N'have', N'can to', 'A', 38),
(N'He _____ smoke when he was young.', N'used to', N'use to', N'using to', N'uses to', 'A', 38),

-- Topic 13: Education & Learning
(N'She is good _____ math.', N'at', N'in', N'on', N'for', 'A', 38),
(N'They _____ English every day.', N'study', N'studies', N'studying', N'studied', 'A', 38),

-- Topic 14: Technology & Internet
(N'I can’t log _____ my account.', N'in', N'on', N'to', N'into', 'D', 38),
(N'The Internet has _____ the way we communicate.', N'changed', N'change', N'changing', N'changes', 'A', 38),

-- Topic 15: Environment
(N'We must protect the environment _____ pollution.', N'from', N'for', N'to', N'by', 'A', 38),
(N'The Earth _____ around the Sun.', N'go', N'goes', N'going', N'gone', 'B', 38),

-- Topic 16: Shopping & Consumerism
(N'How much _____ this cost?', N'is', N'does', N'do', N'are', 'B', 38),
(N'I bought a new phone _____ sale.', N'in', N'on', N'at', N'by', 'B', 38),

-- Topic 17: Movies & Music
(N'I love listening _____ music.', N'in', N'to', N'on', N'for', 'B', 38),
(N'She has watched that movie _____ times.', N'many', N'much', N'lot', N'some', 'A', 38),

-- Topic 18: Personality & Feelings
(N'He is very _____ person.', N'patience', N'patient', N'patien', N'patients', 'B', 38),
(N'I feel _____ than yesterday.', N'good', N'well', N'better', N'best', 'C', 38),

-- Topic 19: News & Events
(N'The news _____ interesting.', N'is', N'are', N'be', N'were', 'A', 38),
(N'There _____ a big event last night.', N'was', N'were', N'is', N'be', 'A', 38),

-- Topic 20: Work & Career
(N'She has worked here _____ 2019.', N'for', N'since', N'from', N'in', 'B', 38),
(N'He was promoted _____ his hard work.', N'because', N'because of', N'due', N'by', 'B', 38),

-- Topic 21: Science & Research
(N'Water _____ at 100°C.', N'boils', N'boil', N'boiling', N'boiled', 'A', 38),
(N'Scientists _____ a new species.', N'discover', N'discovered', N'discovering', N'discovers', 'B', 38),

-- Topic 22: Politics & Society
(N'The president _____ a speech yesterday.', N'gives', N'give', N'gave', N'given', 'C', 38),
(N'Citizens should _____ the law.', N'obey', N'obeys', N'obeying', N'obeyed', 'A', 38),

-- Topic 23: Economics & Finance
(N'Inflation _____ the cost of living.', N'increase', N'increases', N'increasing', N'increased', 'B', 38),
(N'They invested _____ real estate.', N'in', N'on', N'at', N'to', 'A', 38),

-- Topic 24: Art & Literature
(N'She enjoys _____ poetry.', N'read', N'reads', N'reading', N'to read', 'C', 38),
(N'The painting was created _____ Picasso.', N'by', N'of', N'from', N'for', 'A', 38),

-- Topic 25: Law & Crime
(N'He was accused _____ stealing.', N'for', N'of', N'to', N'by', 'B', 38),
(N'The judge _____ the final decision.', N'makes', N'made', N'make', N'making', 'B', 38),

-- Topic 26: Psychology
(N'Human behavior _____ complex.', N'is', N'are', N'be', N'being', 'A', 38),
(N'He studies how people _____ under stress.', N'react', N'reacts', N'reacting', N'reacted', 'A', 38),

-- Topic 27: Global Issues
(N'Climate change _____ a global problem.', N'is', N'are', N'be', N'been', 'A', 38),
(N'Many countries are trying _____ poverty.', N'reduce', N'reducing', N'to reduce', N'reduced', 'C', 38),

-- Topic 28: Business & Entrepreneurship
(N'He started his own _____ last year.', N'company', N'companies', N'the company', N'a companies', 'A', 38),
(N'Entrepreneurs must be ready _____ risks.', N'take', N'taking', N'to take', N'took', 'C', 38),

-- Topic 29: History
(N'World War II _____ in 1945.', N'end', N'ended', N'ending', N'ends', 'B', 38),
(N'The ancient Egyptians _____ the pyramids.', N'build', N'built', N'building', N'builds', 'B', 38),

-- Topic 30: Philosophy
(N'Philosophy helps us understand the meaning of _____.', N'life', N'a life', N'lives', N'living', 'A', 38),
(N'Socrates _____ one of the greatest philosophers.', N'was', N'is', N'were', N'be', 'A', 38);

