-- Cấp độ Cơ bản (Beginner)
delete from Question;
go
DBCC CHECKIDENT ('Question', RESEED, 0); -- Đặt lại IDTest về 1
GO
use TiengAnhDB; 
Go

INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES
(N'What ___ your name?', N'is', N'are', N'am', N'be', N'is', 1),
(N'I ___ a student.', N'is', N'are', N'am', N'be', N'am', 1),
(N'She ___ from Japan.', N'is', N'are', N'am', N'be', N'is', 1),
(N'They ___ my friends.', N'is', N'are', N'am', N'be', N'are', 1),
(N'___ you like ice cream?', N'Do', N'Does', N'Is', N'Are', N'Do', 1),
(N'He ___ have a car.', N'don''t', N'isn''t', N'doesn''t', N'aren''t', N'doesn''t', 1),
(N'I have ___ apple.', N'a', N'an', N'the', N'any', N'an', 1),
(N'There are many ___ on the table.', N'book', N'books', N'a book', N'the book', N'books', 1),
(N'Can you ___ English?', N'speak', N'speaks', N'speaking', N'spoke', N'speak', 1),
(N'She is ___ than her sister.', N'tall', N'taller', N'the tallest', N'more tall', N'taller', 1),
(N'I ___ to school yesterday.', N'go', N'goes', N'went', N'gone', N'went', 1),
(N'What are you ___?', N'do', N'does', N'did', N'doing', N'doing', 1),
(N'My birthday is ___ June.', N'on', N'at', N'in', N'by', N'in', 1),
(N'Look! The cat ___.', N'sleep', N'sleeps', N'is sleeping', N'slept', N'is sleeping', 1),
(N'How ___ sugar do you want?', N'many', N'much', N'a lot', N'any', N'much', 1),
(N'He is a ___ driver.', N'careful', N'carefully', N'care', N'caring', N'careful', 1),
(N'Let''s meet ___ 7 PM.', N'on', N'at', N'in', N'by', N'at', 1),
(N'This is the ___ book I have ever read.', N'good', N'better', N'best', N'well', N'best', 1),
(N'I want to buy a ___ of shoes.', N'pair', N'piece', N'slice', N'bar', N'pair', 1),
(N'The opposite of "hot" is ___.', N'cold', N'warm', N'cool', N'chilly', N'cold', 1);
GO

-- Cấp độ Trung bình (Intermediate)
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES
(N'If I ___ you, I would study harder.', N'am', N'was', N'were', N'be', N'were', 1),
(N'I haven''t seen him ___ last year.', N'for', N'since', N'ago', N'from', N'since', 1),
(N'This book ___ by a famous author.', N'wrote', N'has written', N'was written', N'writes', N'was written', 1),
(N'She asked me where ___.', N'I was going', N'was I going', N'I am going', N'am I going', N'I was going', 1),
(N'You ___ finish your homework before you go out.', N'must', N'can', N'may', N'would', N'must', 1),
(N'He is interested ___ learning new languages.', N'on', N'at', N'with', N'in', N'in', 1),
(N'I''ve lived here ___ ten years.', N'for', N'since', N'ago', N'from', N'for', 1),
(N'By the time I arrived, the train ___.', N'already left', N'had already left', N'has already left', N'left', N'had already left', 1),
(N'Despite ___ tired, he continued working.', N'he was', N'of being', N'being', N'to be', N'being', 1),
(N'This is the man ___ son is a doctor.', N'who', N'which', N'whose', N'whom', N'whose', 1),
(N'I wish I ___ play the piano.', N'can', N'could', N'can to', N'able to', N'could', 1),
(N'You should avoid ___ junk food.', N'eat', N'to eat', N'eating', N'eaten', N'eating', 1),
(N'The problem is not as difficult as it ___.', N'seems', N'is seeming', N'seemed', N'was seeming', N'seems', 1),
(N'I am looking forward ___ you soon.', N'to see', N'seeing', N'to seeing', N'see', N'to seeing', 1),
(N'Neither my brother ___ my sister can come.', N'or', N'nor', N'and', N'but', N'nor', 1),
(N'She has a very ___ personality.', N'pleased', N'pleasant', N'pleasing', N'pleasure', N'pleasant', 1),
(N'The concert was canceled ___ the bad weather.', N'because', N'due to', N'although', N'in spite of', N'due to', 1),
(N'If you ___ water to 100 degrees Celsius, it boils.', N'will heat', N'heat', N'heated', N'are heating', N'heat', 1),
(N'He is used to ___ up early.', N'get', N'getting', N'got', N'be getting', N'getting', 1),
(N'My phone needs ___.', N'to charge', N'charging', N'be charged', N'charge', N'charging', 1);
GO

-- Cấp độ Nâng cao (Advanced)
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES
(N'___ had I left the house than it started to rain.', N'No sooner', N'Hardly', N'Scarcely', N'Barely', N'No sooner', 1),
(N'The committee is comprised ___ several experts.', N'of', N'with', N'by', N'in', N'of', 1),
(N'I would rather you ___ that to him.', N'don''t say', N'not say', N'didn''t say', N'haven''t said', N'didn''t say', 1),
(N'The company''s profits have ___ increased this year.', N'significantly', N'significant', N'signify', N'significance', N'significantly', 1),
(N'He has a ___ for spotting talent.', N'sense', N'knack', N'feeling', N'touch', N'knack', 1),
(N'The new regulations will be ___ next month.', N'implemented', N'implanted', N'implied', N'imparted', N'implemented', 1),
(N'It is imperative that he ___ the meeting.', N'attends', N'attend', N'will attend', N'attended', N'attend', 1),
(N'Were I to win the lottery, I ___ travel the world.', N'will', N'can', N'would', N'shall', N'would', 1),
(N'The art exhibition features works by ___ artists.', N'contemporary', N'contemporize', N'contemporaneous', N'contemptuous', N'contemporary', 1),
(N'Not only ___ the exam, but she also got the highest score.', N'she passed', N'did she pass', N'she has passed', N'passing', N'did she pass', 1),
(N'The journalist refused to ___ her sources.', N'devolve', N'divulge', N'divert', N'digest', N'divulge', 1),
(N'His ___ remarks made everyone in the room uncomfortable.', N'flippant', N'fluent', N'affluent', N'flagrant', N'flippant', 1),
(N'We must find a way to ___ the damage to the environment.', N'mitigate', N'militate', N'migrate', N'mediate', N'mitigate', 1),
(N'The old building was ___ and eventually demolished.', N'derelict', N'delicious', N'delirious', N'delicate', N'derelict', 1),
(N'His arguments, ___ convincing, did not change my mind.', N'however', N'although', N'despite', N'therefore', N'although', 1),
(N'She showed great ___ in the face of adversity.', N'resolution', N'resilience', N'resonance', N'restitution', N'resilience', 1),
(N'The manager''s ___ praise boosted the team''s morale.', N'effusive', N'elusive', N'evasive', N'effective', N'effusive', 1),
(N'The politician''s speech was nothing more than empty ___.', N'rhetoric', N'relic', N'replica', N'retort', N'r rhetoric', 1),
(N'The company is on the ___ of a major breakthrough.', N'verge', N'edge', N'brink', N'side', N'verge', 1),
(N'His explanation was so ___ that I couldn''t understand it.', N'convoluted', N'consolidated', N'conspicuous', N'contaminated', N'convoluted', 1);
GO

select * from Question; 
