
-- 1. Xóa Database nếu tồn tại và Tạo mới
IF EXISTS (SELECT * FROM sys.databases WHERE name = 'TiengAnhDB')
BEGIN
    DROP DATABASE TiengAnhDB;
END
GO
CREATE DATABASE TiengAnhDB;
GO


-- 2. Sử dụng database
USE TiengAnhDB;
GO

--------------------------------------------------------------------------------
-- 3. TẠO CÁC BẢNG CHA (LEVEL, TOPIC)
--------------------------------------------------------------------------------

CREATE TABLE Level (
    IDLevel INT PRIMARY KEY IDENTITY(1,1),
    NameLevel NVARCHAR(50) NOT NULL
);
GO

CREATE TABLE Topic (
    IDTopic INT PRIMARY KEY IDENTITY(1,1),
    NameTopic NVARCHAR(100) NOT NULL
);
GO

--------------------------------------------------------------------------------
-- 4. TẠO CÁC BẢNG CON (ĐẢM BẢO THỨ TỰ PHỤ THUỘC)
--------------------------------------------------------------------------------

-- User (Phụ thuộc Level)
CREATE TABLE [User] (
    IDUser INT PRIMARY KEY IDENTITY(1,1),
    UserName NVARCHAR(50) NOT NULL UNIQUE,
    FullName NVARCHAR(100),
    Age INT,
    Password NVARCHAR(100) NOT NULL,
    Email NVARCHAR(100) UNIQUE,
    NumPhone NVARCHAR(15),
    IDLevel INT FOREIGN KEY REFERENCES Level(IDLevel)
);
GO

-- Password (Phụ thuộc User)
CREATE TABLE Password (
    IDPassword INT PRIMARY KEY IDENTITY(1,1),
    IDUser INT FOREIGN KEY REFERENCES [User](IDUser),
    Password NVARCHAR(100) NOT NULL
);
GO

-- Grammar (Phụ thuộc Level, Topic)
CREATE TABLE Grammar (
    IDGrammar INT PRIMARY KEY IDENTITY(1,1),
    Title NVARCHAR(200) NOT NULL,
    Lesson NVARCHAR(MAX),
    Exercise NVARCHAR(MAX),
    IDLevel INT NOT NULL FOREIGN KEY REFERENCES Level(IDLevel),
    IDTopic INT NOT NULL FOREIGN KEY REFERENCES Topic(IDTopic)
);
GO

-- Vocabulary (Phụ thuộc Level, Topic)
CREATE TABLE Vocabulary (
    IDVocabulary INT PRIMARY KEY IDENTITY(1,1),
    Word NVARCHAR(100) NOT NULL,
    Meaning NVARCHAR(200),
    Example NVARCHAR(MAX),
    IDLevel INT NOT NULL FOREIGN KEY REFERENCES Level(IDLevel),
    IDTopic INT NOT NULL FOREIGN KEY REFERENCES Topic(IDTopic)
);
GO

-- Test (Phụ thuộc Level, Topic)
CREATE TABLE Test (
    IDTest INT PRIMARY KEY IDENTITY(1,1),
    Title NVARCHAR(200) NOT NULL,
    Description NVARCHAR(MAX),
    TotalQuestion INT,
    DurationInMinutes INT,
    IDLevel INT NOT NULL FOREIGN KEY REFERENCES Level(IDLevel),
    IDTopic INT NOT NULL FOREIGN KEY REFERENCES Topic(IDTopic)
);
GO


CREATE TABLE Question (
    IDQuestion INT PRIMARY KEY IDENTITY(1,1),
    Question NVARCHAR(MAX) NOT NULL,
    OptionA NVARCHAR(200),
    OptionB NVARCHAR(200),
    OptionC NVARCHAR(200),
    OptionD NVARCHAR(200),
    Answer CHAR(1) NOT NULL CHECK (Answer IN ('A', 'B', 'C', 'D')),
    IDTest INT NOT NULL FOREIGN KEY REFERENCES Test(IDTest)
);
GO


-- TestAttempt (Phụ thuộc User, Test, Level)
CREATE TABLE TestAttempt (
    IDTestAttempt INT PRIMARY KEY IDENTITY(1,1),
    Score FLOAT,
    DateTaken DATETIME DEFAULT GETDATE(),
    IDUser INT NOT NULL FOREIGN KEY REFERENCES [User](IDUser),
    IDTest INT NOT NULL FOREIGN KEY REFERENCES Test(IDTest),
    AssignedLevelID INT NULL FOREIGN KEY REFERENCES Level(IDLevel)
);
GO

-- UserAnswer (Phụ thuộc TestAttempt, Question)
CREATE TABLE UserAnswer (
    IDUserAnswer INT PRIMARY KEY IDENTITY(1,1),
    ChosenAnswer CHAR(1),
    IsCorrect BIT,
    IDTestAttempt INT NOT NULL FOREIGN KEY REFERENCES TestAttempt(IDTestAttempt),
    IDQuestion INT NOT NULL FOREIGN KEY REFERENCES Question(IDQuestion)
);
GO

--------------------------------------------------------------------------------
-- == PHẦN II: CHÈN DỮ LIỆU MẪU ĐÃ SỬA LỖI VÀ HỢP NHẤT ==
--------------------------------------------------------------------------------

-- 1. CHÈN LEVEL
INSERT INTO Level (NameLevel) VALUES
(N'A1'), (N'A2'), (N'B1'), (N'B2'), (N'C1'), (N'C2'),
(N'Chung/Đầu vào'); -- ID=7
GO

-- 2. CHÈN TOPIC (31 Topic đầy đủ)
INSERT INTO Topic (NameTopic) VALUES
(N'Chào hỏi & Giới thiệu (Greetings & Introductions)'), -- 1
(N'Gia đình & Bạn bè (Family & Friends)'), -- 2
(N'Số đếm & Bảng chữ cái (Numbers & Alphabet)'), -- 3
(N'Công việc & Nghề nghiệp (Jobs & Occupations)'), -- 4
(N'Hoạt động hàng ngày (Daily Routines)'), -- 5
(N'Đồ ăn & Thức uống (Food & Drink)'), -- 6
(N'Quần áo (Clothes)'), -- 7
(N'Sở thích & Thể thao (Hobbies & Sports)'), -- 8
(N'Thời tiết (Weather)'), -- 9
(N'Địa điểm trong thành phố (Places in a City)'), -- 10
(N'Du lịch & Kỳ nghỉ (Travel & Holidays)'), -- 11
(N'Sức khỏe & Lối sống (Health & Lifestyle)'), -- 12
(N'Giáo dục & Học tập (Education & Learning)'), -- 13
(N'Công nghệ & Internet (Technology & Internet)'), -- 14
(N'Môi trường (Environment)'), -- 15
(N'Mua sắm & Tiêu dùng (Shopping & Consumerism)'), -- 16
(N'Phim ảnh & Âm nhạc (Movies & Music)'), -- 17
(N'Tính cách & Cảm xúc (Personality & Feelings)'), -- 18
(N'Tin tức & Sự kiện (News & Events)'), -- 19
(N'Làm việc & Sự nghiệp (Work & Career)'), -- 20
(N'Khoa học & Nghiên cứu (Science & Research)'), -- 21
(N'Chính trị & Xã hội (Politics & Society)'), -- 22
(N'Kinh tế & Tài chính (Economics & Finance)'), -- 23
(N'Nghệ thuật & Văn học (Art & Literature)'), -- 24
(N'Luật pháp & Tội phạm (Law & Crime)'), -- 25
(N'Tâm lý học (Psychology)'), -- 26
(N'Các vấn đề toàn cầu (Global Issues)'), -- 27
(N'Kinh doanh & Khởi nghiệp (Business & Entrepreneurship)'), -- 28
(N'Lịch sử (History)'), -- 29
(N'Triết học (Philosophy)'), -- 30
(N'Chung/Tổng hợp'); -- ID=31 (Dùng cho bài Test tổng hợp)
GO

-- 3. CHÈN USER và PASSWORD (Dùng IDLevel hợp lệ)
INSERT INTO [User] (UserName, FullName, Age, Password, Email, NumPhone, IDLevel) VALUES
(N'user_a', N'Nguyễn Văn A', 25, N'hashed_pw_123', N'a@example.com', N'0901234567', 3),
(N'user_b', N'Trần Thị B', 30, N'hashed_pw_456', N'b@example.com', N'0909876543', 5);
GO
INSERT INTO Password (IDUser, Password) VALUES
(1, N'old_pw_1'), (1, N'old_pw_2'), (2, N'old_pw_3');
GO

-- 4. CHÈN GRAMMAR (Dùng IDLevel và IDTopic hợp lệ)
-- (Sử dụng lại dữ liệu Grammar của bạn, nhưng đảm bảo IDTopic (1-30) và IDLevel (4-6) hợp lệ)
INSERT INTO Grammar (Title, Lesson, Exercise, IDLevel, IDTopic) VALUES
(N'Present perfect tense', N'Diễn tả hành động đã xảy ra và còn ảnh hưởng', N'I have just finished my homework.', 4, 1),
(N'For/Since', N'Diễn tả khoảng thời gian', N'I have lived here since 2010.', 4, 2),
-- ... (Cần chèn đủ 30 mẫu Grammar)
(N'Inversion', N'Đảo ngữ trong câu', N'Never have I seen such beauty.', 6, 21),
(N'Cleft sentences', N'Câu nhấn mạnh', N'It was John who broke the vase.', 6, 22);
GO

-- 5. CHÈN TEST (38 bài test)
-- Nhóm 1: Bài test Đầu vào
INSERT INTO Test (Title, Description, TotalQuestion, DurationInMinutes, IDLevel, IDTopic)
VALUES (N'Bài Kiểm Tra Trình Độ Đầu Vào', N'Bài kiểm tra này giúp đánh giá năng lực tiếng Anh hiện tại của bạn.', 60, 60, 7, 31);
GO

-- Nhóm 2: 30 bài test cho 30 topic (Dùng logic CASE để gán IDLevel)
INSERT INTO Test (Title, Description, TotalQuestion, DurationInMinutes, IDLevel, IDTopic)
SELECT
    N'Bài test chủ đề: ' + T.NameTopic AS Title,
    N'Kiểm tra kiến thức về chủ đề ' + T.NameTopic AS Description,
    20 AS TotalQuestion,
    30 AS DurationInMinutes,
    CASE
        WHEN T.IDTopic BETWEEN 1 AND 5 THEN 1 -- A1
        WHEN T.IDTopic BETWEEN 6 AND 10 THEN 2 -- A2
        WHEN T.IDTopic BETWEEN 11 AND 15 THEN 3 -- B1
        WHEN T.IDTopic BETWEEN 16 AND 20 THEN 4 -- B2
        WHEN T.IDTopic BETWEEN 21 AND 25 THEN 5 -- C1
        WHEN T.IDTopic BETWEEN 26 AND 30 THEN 6 -- C2
        ELSE 7
    END AS IDLevel,
    T.IDTopic
FROM Topic T
WHERE T.IDTopic BETWEEN 1 AND 30;
GO

-- Nhóm 3: 6 bài test tổng hợp (IDLevel 1-6)
INSERT INTO Test (Title, Description, TotalQuestion, DurationInMinutes, IDLevel, IDTopic)
VALUES
(N'Bài Test Tổng Hợp A1', N'Kiểm tra tổng hợp các chủ đề 1-5', 50, 60, 1 , 1),
(N'Bài Test Tổng Hợp A2', N'Kiểm tra tổng hợp các chủ đề 6-10', 50, 60, 2, 6),
(N'Bài Test Tổng Hợp B1', N'Kiểm tra tổng hợp các chủ đề 11-15', 50, 60, 3, 11),
(N'Bài Test Tổng Hợp B2', N'Kiểm tra tổng hợp các chủ đề 16-20', 50, 60, 4, 16),
(N'Bài Test Tổng Hợp C1', N'Kiểm tra tổng hợp các chủ đề 21-25', 50, 60, 5, 21),
(N'Bài Test Tổng Hợp C2', N'Kiểm tra tổng hợp các chủ đề 26-30', 50, 60, 6, 26);
GO

-- Nhóm 4: Bài test cuối cùng (IDTest cuối cùng, IDLevel=7, IDTopic=31)
INSERT INTO Test (Title, Description, TotalQuestion, DurationInMinutes, IDLevel, IDTopic)
VALUES (N'Bài Kiểm Tra Cuối Kỳ', N'Bài kiểm tra tổng hợp toàn bộ kiến thức khóa học.', 100, 90, 7, 31);
GO
select * from Test; 
select * from Test;
-- 6. CHÈN QUESTION (60 câu mẫu ban đầu của bạn cho IDTest=1)
INSERT INTO Question (Question, OptionA, OptionB, OptionC, OptionD, Answer, IDTest) VALUES
-- 20 câu Beginner (A1/A2)
(N'What ___ your name?', N'is', N'are', N'am', N'be', 'A', 1),
(N'I ___ a student.', N'is', N'are', N'am', N'be', 'C', 1),
(N'She ___ from Japan.', N'is', N'are', N'am', N'be', 'A', 1),
(N'They ___ my friends.', N'is', N'are', N'am', N'be', 'D', 1),
(N'___ you like ice cream?', N'Do', N'Does', N'Is', N'Are', 'A', 1),
(N'He ___ have a car.', N'don''t', N'isn''t', N'doesn''t', N'aren''t', 'C', 1),
(N'I have ___ apple.', N'a', N'an', N'the', N'any', 'B', 1),
(N'There are many ___ on the table.', N'book', N'books', N'a book', N'the book', 'B', 1),
(N'Can you ___ English?', N'speak', N'speaks', N'speaking', N'spoke', 'A', 1),
(N'She is ___ than her sister.', N'tall', N'taller', N'the tallest', N'more tall', 'B', 1),
(N'I ___ to school yesterday.', N'go', N'goes', N'went', N'gone', 'C', 1),
(N'What are you ___?', N'do', N'does', N'did', N'doing', 'D', 1),
(N'My birthday is ___ June.', N'on', N'at', N'in', N'by', 'C', 1),
(N'Look! The cat ___.', N'sleep', N'sleeps', N'is sleeping', N'slept', 'C', 1),
(N'How ___ sugar do you want?', N'many', N'much', N'a lot', N'any', 'B', 1),
(N'He is a ___ driver.', N'careful', N'carefully', N'care', N'caring', 'A', 1),
(N'Let''s meet ___ 7 PM.', N'on', N'at', N'in', N'by', 'B', 1),
(N'This is the ___ book I have ever read.', N'good', N'better', N'best', N'well', 'C', 1),
(N'I want to buy a ___ of shoes.', N'pair', N'piece', N'slice', N'bar', 'A', 1),
(N'The opposite of "hot" is ___.', N'cold', N'warm', N'cool', N'chilly', 'A', 1),

-- 20 câu Intermediate (B1/B2)
(N'If I ___ you, I would study harder.', N'am', N'was', N'were', N'be', 'C', 1),
(N'I haven''t seen him ___ last year.', N'for', N'since', N'ago', N'from', 'B', 1),
(N'This book ___ by a famous author.', N'wrote', N'has written', N'was written', N'writes', 'C', 1),
(N'She asked me where ___.', N'I was going', N'was I going', N'I am going', N'am I going', 'A', 1),
(N'You ___ finish your homework before you go out.', N'must', N'can', N'may', N'would', 'A', 1),
(N'He is interested ___ learning new languages.', N'on', N'at', N'with', N'in', 'D', 1),
(N'I''ve lived here ___ ten years.', N'for', N'since', N'ago', N'from', 'A', 1),
(N'By the time I arrived, the train ___.', N'already left', N'had already left', N'has already left', N'left', 'B', 1),
(N'Despite ___ tired, he continued working.', N'he was', N'of being', N'being', N'to be', 'C', 1),
(N'This is the man ___ son is a doctor.', N'who', N'which', N'whose', N'whom', 'C', 1),
(N'I wish I ___ play the piano.', N'can', N'could', N'can to', N'able to', 'B', 1),
(N'You should avoid ___ junk food.', N'eat', N'to eat', N'eating', N'eaten', 'C', 1),
(N'The problem is not as difficult as it ___.', N'seems', N'is seeming', N'seemed', N'was seeming', 'A', 1),
(N'I am looking forward ___ you soon.', N'to see', N'seeing', N'to seeing', N'see', 'C', 1),
(N'Neither my brother ___ my sister can come.', N'or', N'nor', N'and', N'but', 'B', 1),
(N'She has a very ___ personality.', N'pleased', N'pleasant', N'pleasing', N'pleasure', 'B', 1),
(N'The concert was canceled ___ the bad weather.', N'because', N'due to', N'although', N'in spite of', 'B', 1),
(N'If you ___ water to 100 degrees Celsius, it boils.', N'will heat', N'heat', N'heated', N'are heating', 'B', 1),
(N'He is used to ___ up early.', N'get', N'getting', N'got', N'be getting', 'B', 1),
(N'My phone needs ___.', N'to charge', N'charging', N'be charged', N'charge', 'B', 1),

-- 20 câu Advanced (C1/C2)
(N'___ had I left the house than it started to rain.', N'No sooner', N'Hardly', N'Scarcely', N'Barely', 'A', 1),
(N'The committee is comprised ___ several experts.', N'of', N'with', N'by', N'in', 'A', 1),
(N'I would rather you ___ that to him.', N'don''t say', N'not say', N'didn''t say', N'haven''t said', 'C', 1),
(N'The company''s profits have ___ increased this year.', N'significantly', N'significant', N'signify', N'significance', 'A', 1),
(N'He has a ___ for spotting talent.', N'sense', N'knack', N'feeling', N'touch', 'B', 1),
(N'The new regulations will be ___ next month.', N'implemented', N'implanted', N'implied', N'imparted', 'A', 1),
(N'It is imperative that he ___ the meeting.', N'attends', N'attend', N'will attend', N'attended', 'B', 1),
(N'Were I to win the lottery, I ___ travel the world.', N'will', N'can', N'would', N'shall', 'C', 1),
(N'The art exhibition features works by ___ artists.', N'contemporary', N'contemporize', N'contemporaneous', N'contemptuous', 'A', 1),
(N'Not only ___ the exam, but she also got the highest score.', N'she passed', N'did she pass', N'she has passed', N'passing', 'B', 1),
(N'The journalist refused to ___ her sources.', N'devolve', N'divulge', N'divert', N'digest', 'B', 1),
(N'His ___ remarks made everyone in the room uncomfortable.', N'flippant', N'fluent', N'affluent', N'flagrant', 'A', 1),
(N'We must find a way to ___ the damage to the environment.', N'mitigate', N'militate', N'migrate', N'mediate', 'A', 1),
(N'The old building was ___ and eventually demolished.', N'derelict', N'delicious', N'delirious', N'delicate', 'A', 1),
(N'His arguments, ___ convincing, did not change my mind.', N'however', N'although', N'despite', N'therefore', 'B', 1),
(N'She showed great ___ in the face of adversity.', N'resolution', N'resilience', N'resonance', N'restitution', 'B', 1),
(N'The manager''s ___ praise boosted the team''s morale.', N'effusive', N'elusive', N'evasive', N'effective', 'A', 1),
(N'The politician''s speech was nothing more than empty ___.', N'rhetoric', N'relic', N'replica', N'retort', 'A', 1),
(N'The company is on the ___ of a major breakthrough.', N'verge', N'edge', N'brink', N'side', 'A', 1),
(N'His explanation was so ___ that I couldn''t understand it.', N'convoluted', N'consolidated', N'conspicuous', N'contaminated', 'A', 1);
GO

-- 7. CHÈN TESTATTEMPT VÀ USERANSWER (Dùng IDTest, IDQuestion hợp lệ)
INSERT INTO TestAttempt (Score, IDUser, IDTest, AssignedLevelID) VALUES
(75.5, 1, 1, 3), 
(92.0, 2, 1, 5); -- User 2 làm Test 1, đạt C1 (IDLevel=5)
GO
INSERT INTO UserAnswer (ChosenAnswer, IsCorrect, IDTestAttempt, IDQuestion)
VALUES ('C', 1, 1, 2); -- User 1 trả lời đúng câu 2 (I ___ a student.)
GO

INSERT INTO Vocabulary(Word, Meaning, Example, IDLevel, IDTopic)
VALUES

-- Chủ đề 1: Chào hỏi & Giới thiệu (Greetings & Introductions)
(N'hello', N'xin chào', N'Hello, my name is Anna.', 1, 1),
(N'hi', N'chào', N'Hi! How are you?', 1, 1),
(N'good morning', N'chào buổi sáng', N'Good morning, everyone!', 1, 1),
(N'good evening', N'chào buổi tối', N'Good evening, teacher.', 2, 1),
(N'how are you', N'bạn khỏe không', N'How are you today?', 1, 1),
(N'nice to meet you', N'rất vui được gặp bạn', N'Nice to meet you, Tom.', 2, 1),
(N'welcome', N'chào mừng', N'Welcome to our class.', 2, 1),
(N'goodbye', N'tạm biệt', N'Goodbye! See you tomorrow.', 1, 1),
(N'my name is', N'tên tôi là', N'My name is Peter.', 1, 1),
(N'pleased to meet you', N'hân hạnh được gặp bạn', N'I’m pleased to meet you.', 3, 1),

-- Chủ đề 2: Gia đình & Bạn bè (Family & Friends)
(N'mother', N'mẹ', N'My mother is very kind.', 1, 2),
(N'father', N'cha', N'His father works in an office.', 1, 2),
(N'sister', N'chị gái', N'My sister likes music.', 1, 2),
(N'brother', N'anh trai', N'My brother plays football.', 1, 2),
(N'uncle', N'chú', N'My uncle is a doctor.', 2, 2),
(N'aunt', N'dì', N'My aunt baked a cake.', 2, 2),
(N'grandmother', N'bà', N'My grandmother lives with us.', 2, 2),
(N'cousin', N'anh em họ', N'My cousin lives in London.', 3, 2),
(N'friend', N'bạn bè', N'She is my best friend.', 1, 2),
(N'relative', N'họ hàng', N'We have many relatives.', 3, 2),

-- Chủ đề 3: Số đếm & Bảng chữ cái (Numbers & Alphabet)
(N'one', N'một', N'I have one apple.', 1, 3),
(N'two', N'hai', N'She has two cats.', 1, 3),
(N'three', N'ba', N'There are three chairs.', 1, 3),
(N'four', N'bốn', N'We bought four books.', 1, 3),
(N'five', N'năm', N'Five students are absent.', 1, 3),
(N'zero', N'số không', N'He scored zero points.', 2, 3),
(N'alphabet', N'bảng chữ cái', N'The English alphabet has 26 letters.', 2, 3),
(N'letter', N'chữ cái', N'This word has five letters.', 2, 3),
(N'number', N'số', N'Can you write this number?', 1, 3),
(N'count', N'đếm', N'Let’s count from one to ten.', 1, 3),

-- Topic 4: Công việc & Nghề nghiệp (Jobs & Occupations)
(N'teacher', N'giáo viên', N'The teacher explained the lesson.', 4, 4),
(N'doctor', N'bác sĩ', N'She became a doctor last year.', 2, 4),
(N'engineer', N'kỹ sư', N'An engineer designed the bridge.', 4, 4),
(N'nurse', N'y tá', N'The nurse checked his temperature.', 5, 4),
(N'farmer', N'nông dân', N'The farmer grows rice.', 3, 4),
(N'chef', N'đầu bếp', N'The chef cooked a delicious meal.', 1, 4),
(N'driver', N'tài xế', N'The driver stopped the bus.', 2, 4),
(N'manager', N'quản lý', N'The manager called a meeting.', 6, 4),
(N'waiter', N'phục vụ', N'The waiter served our food.', 4, 4),
(N'artist', N'nghệ sĩ', N'The artist painted a portrait.', 3, 4),


-- Topic 5: Hoạt động hàng ngày (Daily Routines)
(N'wake up', N'thức dậy', N'I wake up at 6 a.m. every day.', 3, 5),
(N'brush teeth', N'đánh răng', N'She brushes her teeth after breakfast.', 2, 5),
(N'eat breakfast', N'ăn sáng', N'They eat breakfast together.', 2, 5),
(N'go to work', N'đi làm', N'He goes to work by bike.', 3, 5),
(N'study', N'học', N'I study English in the evening.', 1, 5),
(N'exercise', N'tập thể dục', N'She exercises at the gym.', 1, 5),
(N'cook', N'nấu ăn', N'He cooks dinner for his family.', 4, 5),
(N'sleep', N'ngủ', N'I sleep for eight hours.', 1, 5),
(N'take a shower', N'tắm', N'I take a shower every morning.', 3, 5),
(N'watch TV', N'xem ti vi', N'They watch TV after dinner.', 3, 5),


-- Topic 6: Đồ ăn & Thức uống (Food & Drink)
(N'bread', N'bánh mì', N'She buys fresh bread daily.', 5, 6),
(N'rice', N'cơm', N'We cook rice for lunch.', 3, 6),
(N'water', N'nước', N'Drink enough water every day.', 1, 6),
(N'milk', N'sữa', N'He drinks milk with breakfast.', 6, 6),
(N'coffee', N'cà phê', N'I like black coffee.', 4, 6),
(N'tea', N'trà', N'Would you like some tea?', 5, 6),
(N'fruit', N'trái cây', N'Eat fruit for dessert.', 1, 6),
(N'vegetable', N'rau củ', N'Vegetables are healthy.', 4, 6),
(N'meat', N'thịt', N'They eat meat on Sundays.', 1, 6),
(N'soup', N'canh', N'The soup is hot and tasty.', 5, 6),


-- Topic 7: Quần áo (Clothes)
(N'shirt', N'áo sơ mi', N'He ironed his shirt.', 3, 7),
(N'pants', N'quần dài', N'She bought new pants.', 6, 7),
(N'dress', N'váy', N'The dress is beautiful.', 5, 7),
(N'shoes', N'giày', N'I need comfortable shoes.', 3, 7),
(N'hat', N'mũ', N'Wear a hat in the sun.', 5, 7),
(N'coat', N'áo khoác', N'She wore a warm coat.', 2, 7),
(N'sock', N'vớ', N'He lost one sock.', 6, 7),
(N'tie', N'cà vạt', N'He tied his tie carefully.', 1, 7),
(N'skirt', N'váy ngắn', N'She prefers a long skirt.', 1, 7),
(N'jacket', N'áo khoác nhẹ', N'The jacket keeps me warm.', 6, 7),


-- Topic 8: Sở thích & Thể thao (Hobbies & Sports)
(N'football', N'bóng đá', N'He plays football every weekend.', 2, 8),
(N'swimming', N'bơi lội', N'Swimming is good exercise.', 3, 8),
(N'reading', N'đọc sách', N'Reading helps improve vocabulary.', 1, 8),
(N'music', N'âm nhạc', N'She listens to music often.', 2, 8),
(N'painting', N'vẽ tranh', N'Painting relaxes him.', 1, 8),
(N'running', N'chạy bộ', N'I go running in the morning.', 4, 8),
(N'cycling', N'đạp xe', N'They enjoy cycling together.', 3, 8),
(N'yoga', N'yoga', N'Yoga helps reduce stress.', 4, 8),
(N'photography', N'nhiếp ảnh', N'He loves photography as a hobby.', 6, 8),
(N'tennis', N'quần vợt', N'They play tennis on Saturdays.', 3, 8),


-- Topic 9: Thời tiết (Weather)
(N'sunny', N'nắng', N'It is sunny today.', 2, 9),
(N'rainy', N'mưa', N'The rainy season starts in May.', 3, 9),
(N'cloudy', N'nhiều mây', N'It''s cloudy this afternoon.', 3, 9),
(N'windy', N'gió', N'It is very windy near the coast.', 2, 9),
(N'snow', N'tuyết', N'It rarely snows here.', 6, 9),
(N'storm', N'bão', N'The storm caused damage.', 3, 9),
(N'temperature', N'nhiệt độ', N'The temperature is 30°C.', 6, 9),
(N'forecast', N'dự báo thời tiết', N'The forecast predicts rain.', 6, 9),
(N'humidity', N'độ ẩm', N'High humidity makes it feel warmer.', 6, 9),
(N'fog', N'sương mù', N'Drive carefully in the fog.', 1, 9),


-- Topic 10: Địa điểm trong thành phố (Places in a City)
(N'school', N'trường học', N'The school is next to the park.', 5, 10),
(N'hospital', N'bệnh viện', N'She went to the hospital.', 6, 10),
(N'bank', N'ngân hàng', N'I need to go to the bank.', 2, 10),
(N'market', N'chợ', N'Buy vegetables at the market.', 5, 10),
(N'restaurant', N'nhà hàng', N'We had dinner at a new restaurant.', 6, 10),
(N'library', N'thư viện', N'I borrowed a book from the library.', 2, 10),
(N'park', N'công viên', N'Children play in the park.', 2, 10),
(N'station', N'ga/trạm', N'The bus station is nearby.', 4, 10),
(N'museum', N'bảo tàng', N'They visited the museum.', 4, 10),
(N'post office', N'bưu điện', N'Send the package at the post office.', 3, 10);

INSERT INTO Vocabulary(Word, Meaning, Example, IDLevel, IDTopic)
VALUES
-- Topic 11: Du lịch & Kỳ nghỉ (Travel & Holidays)
(N'passport', N'hộ chiếu', N'Don''t forget your passport.', 6, 11),
(N'ticket', N'vé', N'I booked a ticket online.', 6, 11),
(N'hotel', N'khách sạn', N'We stayed at a small hotel.', 5, 11),
(N'flight', N'chuyến bay', N'The flight was delayed.', 2, 11),
(N'tour', N'chuyến tham quan', N'They joined a city tour.', 6, 11),
(N'beach', N'bãi biển', N'We relax on the beach.', 3, 11),
(N'map', N'bản đồ', N'Use a map to find the route.', 1, 11),
(N'luggage', N'hành lý', N'Pack your luggage carefully.', 2, 11),
(N'guide', N'hướng dẫn viên', N'The guide explained the history.', 1, 11),
(N'reservation', N'đặt chỗ', N'I made a hotel reservation.', 3, 11),

-- Topic 12: Sức khỏe & Lối sống (Health & Lifestyle)
(N'exercise', N'tập thể dục', N'Regular exercise keeps you healthy.', 4, 12),
(N'diet', N'chế độ ăn', N'She follows a balanced diet.', 3, 12),
(N'sleep', N'ngủ', N'Good sleep improves concentration.', 1, 12),
(N'stress', N'căng thẳng', N'Yoga reduces stress.', 2, 12),
(N'doctor', N'bác sĩ', N'Visit the doctor for a check-up.', 5, 12),
(N'medicine', N'thuốc', N'Take the medicine twice daily.', 6, 12),
(N'weight', N'cân nặng', N'He wants to lose weight.', 3, 12),
(N'habit', N'thói quen', N'Healthy habits are important.', 2, 12),
(N'mental health', N'sức khỏe tinh thần', N'Talk about mental health openly.', 6, 12),
(N'check-up', N'khám sức khỏe', N'Schedule an annual check-up.', 4, 12),


-- Topic 13: Giáo dục & Học tập (Education & Learning)
(N'student', N'học sinh', N'The student submitted the assignment.', 4, 13),
(N'teacher', N'giáo viên', N'The teacher explained the topic.', 6, 13),
(N'class', N'lớp học', N'The class begins at 8 am.', 4, 13),
(N'homework', N'bài tập về nhà', N'Finish your homework tonight.', 2, 13),
(N'exam', N'kì thi', N'She studied hard for the exam.', 3, 13),
(N'lecture', N'bài giảng', N'Attend the lecture tomorrow.', 2, 13),
(N'degree', N'bằng cấp', N'He earned a master''s degree.', 2, 13),
(N'subject', N'môn học', N'Math is a difficult subject for him.', 6, 13),
(N'library', N'thư viện', N'Study quietly in the library.', 5, 13),
(N'tuition', N'học phí', N'Tuition fees can be expensive.', 5, 13),


-- Topic 14: Công nghệ & Internet (Technology & Internet)
(N'computer', N'máy tính', N'I use a computer at work.', 3, 14),
(N'internet', N'mạng internet', N'The internet connection is fast.', 6, 14),
(N'software', N'phần mềm', N'Install the software update.', 5, 14),
(N'website', N'trang web', N'Visit the website for details.', 4, 14),
(N'email', N'thư điện tử', N'Please send the email today.', 5, 14),
(N'app', N'ứng dụng', N'Download the app on your phone.', 4, 14),
(N'password', N'mật khẩu', N'Change your password regularly.', 3, 14),
(N'device', N'thiết bị', N'Charge your device tonight.', 2, 14),
(N'network', N'mạng lưới', N'The network is down.', 2, 14),
(N'blog', N'blog', N'She writes a travel blog.', 5, 14),


-- Topic 15: Môi trường (Environment)
(N'pollution', N'ô nhiễm', N'Air pollution affects health.', 4, 15),
(N'recycle', N'tái chế', N'Please recycle plastic bottles.', 1, 15),
(N'forest', N'rừng', N'The forest is home to many species.', 1, 15),
(N'climate change', N'biến đổi khí hậu', N'Climate change is a global issue.', 1, 15),
(N'conservation', N'bảo tồn', N'Conservation efforts protect wildlife.', 2, 15),
(N'ecosystem', N'hệ sinh thái', N'Rivers are part of the ecosystem.', 6, 15),
(N'sustainability', N'bền vững', N'We need sustainable practices.', 2, 15),
(N'waste', N'rác thải', N'Reduce waste to help the planet.', 6, 15),
(N'emission', N'khí thải', N'Car emissions cause pollution.', 4, 15),
(N'renewable', N'tái tạo', N'Solar energy is a renewable source.', 5, 15),


-- Topic 16: Mua sắm & Tiêu dùng (Shopping & Consumerism)
(N'price', N'giá', N'Check the price before buying.', 1, 16),
(N'discount', N'giảm giá', N'They offered a 20% discount.', 4, 16),
(N'cash', N'tiền mặt', N'Do you pay by cash or card?', 4, 16),
(N'receipt', N'hóa đơn', N'Keep the receipt for returns.', 5, 16),
(N'refund', N'hoàn tiền', N'You can ask for a refund.', 4, 16),
(N'store', N'cửa hàng', N'The store opens at nine.', 5, 16),
(N'brand', N'thương hiệu', N'She prefers that brand of shoes.', 3, 16),
(N'size', N'kích cỡ', N'What size do you need?', 5, 16),
(N'checkout', N'thanh toán', N'Proceed to checkout to pay.', 1, 16),
(N'customer', N'khách hàng', N'The customer is always right.', 6, 16),


-- Topic 17: Phim ảnh & Âm nhạc (Movies & Music)
(N'movie', N'phim', N'We watched a movie last night.', 6, 17),
(N'actor', N'diễn viên', N'The actor won an award.', 1, 17),
(N'director', N'đạo diễn', N'The director filmed a new movie.', 6, 17),
(N'song', N'bài hát', N'This song is very popular.', 5, 17),
(N'album', N'album', N'Her new album sold well.', 3, 17),
(N'concert', N'buổi hòa nhạc', N'They attended the concert.', 6, 17),
(N'genre', N'thể loại', N'What genre do you like?', 3, 17),
(N'screen', N'màn hình', N'The movie was shown on a big screen.', 1, 17),
(N'soundtrack', N'nhạc phim', N'The soundtrack was beautiful.', 3, 17),
(N'performance', N'buổi biểu diễn', N'The performance received a standing ovation.', 4, 17),


-- Topic 18: Tính cách & Cảm xúc (Personality & Feelings)
(N'happy', N'vui', N'She felt happy today.', 2, 18),
(N'sad', N'buồn', N'He was sad after the news.', 4, 18),
(N'angry', N'giận', N'Don''t stay angry for too long.', 1, 18),
(N'kind', N'tử tế', N'She is kind to everyone.', 6, 18),
(N'shy', N'nhút nhát', N'He is shy with new people.', 6, 18),
(N'confident', N'tự tin', N'Be confident in your abilities.', 3, 18),
(N'nervous', N'lo lắng', N'She was nervous before the exam.', 5, 18),
(N'generous', N'hào phóng', N'He is generous with his time.', 2, 18),
(N'jealous', N'ghen tị', N'She felt jealous of her friend''s success.', 5, 18),
(N'relaxed', N'thư giãn', N'On holiday, I feel relaxed.', 1, 18),


-- Topic 19: Tin tức & Sự kiện (News & Events)
(N'report', N'báo cáo', N'The report was published yesterday.', 6, 19),
(N'headline', N'tiêu đề', N'The headline caught everyone''s attention.', 3, 19),
(N'press', N'báo chí', N'The press covered the event.', 6, 19),
(N'coverage', N'phủ sóng', N'Live coverage began at noon.', 5, 19),
(N'event', N'sự kiện', N'The event attracted many visitors.', 5, 19),
(N'announcement', N'thông báo', N'There was an announcement this morning.', 2, 19),
(N'interview', N'phỏng vấn', N'The interview aired on TV.', 2, 19),
(N'breaking news', N'tin nóng', N'Breaking news interrupted the program.', 3, 19),
(N'journalist', N'nhà báo', N'The journalist asked tough questions.', 2, 19),
(N'media', N'truyền thông', N'The media reported the facts.', 5, 19),


-- Topic 20: Làm việc & Sự nghiệp (Work & Career)
(N'resume', N'sơ yếu lý lịch', N'Update your resume before applying.', 5, 20),
(N'apply', N'nộp đơn', N'Apply online for the position.', 1, 20),
(N'interview', N'phỏng vấn', N'He has an interview tomorrow.', 5, 20),
(N'promotion', N'thăng tiến', N'She got a promotion last month.', 3, 20),
(N'salary', N'lương', N'The salary is competitive.', 4, 20),
(N'skills', N'kỹ năng', N'Develop new skills regularly.', 1, 20),
(N'experience', N'kinh nghiệm', N'Experience matters in this field.', 1, 20),
(N'colleague', N'đồng nghiệp', N'My colleague helped me a lot.', 3, 20),
(N'contract', N'hợp đồng', N'Sign the contract carefully.', 3, 20),
(N'freelance', N'làm việc tự do', N'He works freelance as a designer.', 2, 20);
INSERT INTO Vocabulary(Word, Meaning, Example, IDLevel, IDTopic)
VALUES


-- Topic 21: Khoa học & Nghiên cứu (Science & Research)
(N'experiment', N'thí nghiệm', N'The experiment produced new data.', 1, 21),
(N'research', N'nghiên cứu', N'Research takes time and effort.', 2, 21),
(N'theory', N'lý thuyết', N'The theory explains the results.', 5, 21),
(N'data', N'dữ liệu', N'Collect accurate data for the study.', 1, 21),
(N'laboratory', N'phòng thí nghiệm', N'The samples are in the laboratory.', 1, 21),
(N'scientist', N'nhà khoa học', N'The scientist published a paper.', 6, 21),
(N'hypothesis', N'giả thuyết', N'Test the hypothesis with trials.', 4, 21),
(N'analysis', N'phân tích', N'Analysis of results is crucial.', 1, 21),
(N'field', N'lĩnh vực', N'She studies in the medical field.', 5, 21),
(N'discovery', N'phát hiện', N'The discovery changed the field.', 2, 21),


-- Topic 22: Chính trị & Xã hội (Politics & Society)
(N'government', N'chính phủ', N'The government announced a new policy.', 2, 22),
(N'policy', N'chính sách', N'This policy affects many people.', 6, 22),
(N'election', N'bầu cử', N'Elections are held every four years.', 4, 22),
(N'law', N'luật', N'The new law passed yesterday.', 5, 22),
(N'democracy', N'dân chủ', N'Democracy allows citizens to vote.', 2, 22),
(N'society', N'xã hội', N'The society values education.', 3, 22),
(N'reform', N'cải cách', N'Reform aims to improve services.', 5, 22),
(N'citizen', N'công dân', N'Every citizen has rights.', 5, 22),
(N'protest', N'biểu tình', N'People organized a protest.', 4, 22),
(N'campaign', N'chiến dịch', N'The campaign focuses on issues.', 2, 22),


-- Topic 23: Kinh tế & Tài chính (Economics & Finance)
(N'bank', N'ngân hàng', N'Deposit money at the bank.', 5, 23),
(N'economy', N'nền kinh tế', N'The economy is growing slowly.', 6, 23),
(N'inflation', N'lạm phát', N'Inflation affected prices.', 6, 23),
(N'investment', N'đầu tư', N'Investment can be risky.', 2, 23),
(N'budget', N'ngân sách', N'They approved the annual budget.', 6, 23),
(N'stock', N'cổ phiếu', N'Stock prices rose today.', 3, 23),
(N'trade', N'thương mại', N'Trade between countries increased.', 4, 23),
(N'loan', N'khoản vay', N'He applied for a loan.', 6, 23),
(N'profit', N'lợi nhuận', N'The company reported a profit.', 6, 23),
(N'tax', N'thuế', N'Pay taxes on time.', 3, 23),


-- Topic 24: Nghệ thuật & Văn học (Art & Literature)
(N'painting', N'bức tranh', N'The painting is in the gallery.', 4, 24),
(N'poem', N'bài thơ', N'She wrote a moving poem.', 5, 24),
(N'novel', N'tiểu thuyết', N'The novel became a bestseller.', 4, 24),
(N'gallery', N'phòng trưng bày', N'Visit the gallery this weekend.', 1, 24),
(N'sculpture', N'tượng', N'The sculpture is made of stone.', 2, 24),
(N'author', N'tác giả', N'The author signed copies.', 2, 24),
(N'literature', N'văn học', N'He studies modern literature.', 1, 24),
(N'creative', N'sáng tạo', N'Creative ideas inspire projects.', 3, 24),
(N'exhibit', N'triển lãm', N'The museum opened a new exhibit.', 1, 24),
(N'critic', N'nhà phê bình', N'The critic praised the artist.', 5, 24),


-- Topic 25: Luật pháp & Tội phạm (Law & Crime)
(N'court', N'tòa án', N'The case was heard in court.', 5, 25),
(N'judge', N'thẩm phán', N'The judge gave the verdict.', 2, 25),
(N'crime', N'tội phạm', N'Crime rates fell last year.', 5, 25),
(N'lawyer', N'luật sư', N'Hire a lawyer for advice.', 2, 25),
(N'evidence', N'bằng chứng', N'Police found new evidence.', 1, 25),
(N'sentence', N'bản án', N'He received a long sentence.', 1, 25),
(N'witness', N'nhân chứng', N'The witness testified in court.', 6, 25),
(N'trial', N'vụ xét xử', N'The trial lasted two weeks.', 6, 25),
(N'investigation', N'cuộc điều tra', N'An investigation is underway.', 1, 25),
(N'offense', N'hành vi phạm tội', N'He was charged with an offense.', 2, 25),


-- Topic 26: Tâm lý học (Psychology)
(N'behavior', N'hành vi', N'Study the child''s behavior carefully.', 1, 26),
(N'memory', N'trí nhớ', N'Memory can be improved with practice.', 1, 26),
(N'emotion', N'cảm xúc', N'Manage your emotions in stressful times.', 3, 26),
(N'therapy', N'liệu pháp', N'They attended therapy sessions.', 1, 26),
(N'personality', N'tính cách', N'Her personality is very outgoing.', 5, 26),
(N'motivation', N'động lực', N'Motivation affects performance.', 2, 26),
(N'cognition', N'nhận thức', N'Cognition involves thinking processes.', 3, 26),
(N'stress', N'căng thẳng', N'Long-term stress harms health.', 6, 26),
(N'perception', N'nhận thức', N'Perception shapes reality.', 4, 26),
(N'development', N'phát triển', N'Child development is rapid in early years.', 2, 26),


-- Topic 27: Các vấn đề toàn cầu (Global Issues)
(N'poverty', N'nghèo đói', N'Poverty remains a global challenge.', 5, 27),
(N'hunger', N'nạn đói', N'Aid helps reduce hunger.', 2, 27),
(N'climate', N'khí hậu', N'Climate action is urgent.', 6, 27),
(N'refugee', N'nguời tị nạn', N'Refugees need shelter and support.', 5, 27),
(N'sustainability', N'bền vững', N'Promote sustainability in business.', 5, 27),
(N'aid', N'viện trợ', N'International aid supports recovery.', 4, 27),
(N'inequality', N'bất bình đẳng', N'Inequality affects many societies.', 2, 27),
(N'emergency', N'tình trạng khẩn cấp', N'The emergency response was swift.', 4, 27),
(N'pandemic', N'đại dịch', N'The pandemic changed daily life.', 4, 27),
(N'globalization', N'toàn cầu hóa', N'Globalization impacts trade and culture.', 2, 27),


-- Topic 28: Kinh doanh & Khởi nghiệp (Business & Entrepreneurship)
(N'start-up', N'công ty khởi nghiệp', N'The start-up raised capital.', 1, 28),
(N'founder', N'người sáng lập', N'The founder pitched the idea.', 1, 28),
(N'investment', N'đầu tư', N'Secure investment for growth.', 6, 28),
(N'marketing', N'tiếp thị', N'Marketing strategies attract customers.', 4, 28),
(N'strategy', N'chiến lược', N'Develop a clear business strategy.', 3, 28),
(N'entrepreneur', N'doanh nhân', N'She is a successful entrepreneur.', 4, 28),
(N'pitch', N'thuyết trình', N'Prepare your pitch carefully.', 4, 28),
(N'revenue', N'doanh thu', N'Revenue increased this quarter.', 4, 28),
(N'partnership', N'hợp tác', N'Form a partnership with a supplier.', 6, 28),
(N'innovation', N'đổi mới', N'Innovation drives competitive advantage.', 1, 28),


-- Topic 29: Lịch sử (History)
(N'ancient', N'cổ đại', N'They studied ancient civilizations.', 6, 29),
(N'empire', N'đế quốc', N'The empire expanded rapidly.', 6, 29),
(N'revolution', N'cách mạng', N'The revolution changed the country.', 6, 29),
(N'era', N'kỷ nguyên', N'This era saw many advances.', 1, 29),
(N'artifact', N'vật thể lịch sử', N'Archaeologists found an artifact.', 1, 29),
(N'historian', N'nhà sử học', N'The historian wrote a new book.', 4, 29),
(N'colony', N'thuộc địa', N'The colony gained independence.', 6, 29),
(N'monument', N'tượng đài', N'The monument honors heroes.', 3, 29),
(N'timeline', N'dòng thời gian', N'Create a timeline of events.', 1, 29),
(N'heritage', N'di sản', N'Protect cultural heritage for future.', 2, 29),


-- Topic 30: Triết học (Philosophy)
(N'ethics', N'đạo đức', N'Ethics examines right and wrong.', 2, 30),
(N'existence', N'sự tồn tại', N'Philosophy asks about existence.', 2, 30),
(N'reason', N'lý trí', N'Use reason to support arguments.', 5, 30),
(N'logic', N'lôgic', N'Logic is essential in debate.', 4, 30),
(N'metaphysics', N'siêu hình học', N'Metaphysics studies reality.', 2, 30),
(N'morality', N'đạo đức', N'Morality guides human actions.', 4, 30),
(N'argument', N'lập luận', N'Present a clear argument.', 2, 30),
(N'knowledge', N'tri thức', N'Philosophy explores knowledge.', 3, 30),
(N'truth', N'sự thật', N'Search for truth through discussion.', 4, 30),
(N'belief', N'niềm tin', N'Belief can shape behavior.', 2, 30);

GO
SELECT * FROM Vocabulary;


use TiengAnhDB;
go
IF OBJECT_ID('dbo.sp_GetPlacementTestQuestions', 'P') IS NOT NULL
    DROP PROCEDURE dbo.sp_GetPlacementTestQuestions;
GO

CREATE PROCEDURE dbo.sp_GetPlacementTestQuestions
    @IDTest INT,
    @BlockNumber INT -- (Thường sẽ là 1)
AS
BEGIN
    SET NOCOUNT ON;
    
    -- Lấy 30 câu ngẫu nhiên từ 1 khối 60 câu
    SELECT TOP 30 *
    FROM
    (
        -- Chọn 60 câu đầu tiên của IDTest
        SELECT *
        FROM Question 
        WHERE IDTest = @IDTest
        ORDER BY IDQuestion ASC
        OFFSET (@BlockNumber - 1) * 60 ROWS
        FETCH NEXT 60 ROWS ONLY
    ) AS QuestionBlock
    ORDER BY NEWID(); -- Xáo trộn 60 câu đó và lấy 30
END
GO

-- Cách gọi khi người dùng làm bài test đầu vào
EXEC dbo.sp_GetPlacementTestQuestions @IDTest = 1, @BlockNumber = 1;


-- Kiểm tra xem hàm có tồn tại không và xóa đi
-- (Lưu ý: Loại đối tượng là 'IF' cho Inline Function)
IF OBJECT_ID('dbo.fn_GetStandardTestQuestions', 'IF') IS NOT NULL
    DROP FUNCTION dbo.fn_GetStandardTestQuestions;
GO

-- Tạo hàm
CREATE FUNCTION dbo.fn_GetStandardTestQuestions
(
    @IDTest INT -- Tham số truyền vào
)
RETURNS TABLE -- Khai báo rằng hàm này trả về một BẢNG
AS
RETURN
(
    -- Đây là câu lệnh SELECT duy nhất mà hàm trả về
    SELECT *
    FROM Question
    WHERE IDTest = @IDTest
);
GO
-- Lấy tất cả câu hỏi cho IDTest = 2
SELECT * FROM dbo.fn_GetStandardTestQuestions(2);

-- Lấy tất cả câu hỏi cho IDTest = 32
SELECT * FROM dbo.fn_GetStandardTestQuestions(32);



