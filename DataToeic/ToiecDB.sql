-- 1. Tạo database (Giữ nguyên)
IF NOT EXISTS (SELECT * FROM sys.databases WHERE name = 'TiengAnhDB')
BEGIN
    CREATE DATABASE TiengAnhDB;
END
GO

-- 2. Sử dụng database (Giữ nguyên)
USE TiengAnhDB;
GO

-- 3. Các bảng không thay đổi: Level, User, Password, Topic, Grammar, Vocabulary, PartToeic
CREATE TABLE Level (
    IDLevel INT PRIMARY KEY IDENTITY(1,1),
    NameLevel NVARCHAR(50) NOT NULL
);
GO
CREATE TABLE [User] (
    IDUser INT PRIMARY KEY IDENTITY(1,1),
    UserName NVARCHAR(50) NOT NULL UNIQUE,
    FullName NVARCHAR(100),
    Age INT,
    PassWord NVARCHAR(100) NOT NULL,
    Email NVARCHAR(100) UNIQUE,
    NumPhone NVARCHAR(15),
    IDLevel INT FOREIGN KEY REFERENCES Level(IDLevel)
);
GO
CREATE TABLE Password (
    IDPassword INT PRIMARY KEY IDENTITY(1,1),
    IDUser INT FOREIGN KEY REFERENCES [User](IDUser),
    PassWord NVARCHAR(100) NOT NULL
);
GO
CREATE TABLE Topic (
    IDTopic INT PRIMARY KEY IDENTITY(1,1),
    Name NVARCHAR(100) NOT NULL
);
GO
CREATE TABLE Grammar (
    IDGrammar INT PRIMARY KEY IDENTITY(1,1),
    Title NVARCHAR(200) NOT NULL,
    Lesson NVARCHAR(MAX),
    Exercise NVARCHAR(MAX),
    IDLevel INT FOREIGN KEY REFERENCES Level(IDLevel),
    IDTopic INT FOREIGN KEY REFERENCES Topic(IDTopic)
);
GO
CREATE TABLE Vocabulary (
    IDWord INT PRIMARY KEY IDENTITY(1,1),
    Word NVARCHAR(100) NOT NULL,
    Meaning NVARCHAR(200),
    Example NVARCHAR(MAX),
    IDLevel INT FOREIGN KEY REFERENCES Level(IDLevel),
    IDTopic INT FOREIGN KEY REFERENCES Topic(IDTopic)
);
GO
CREATE TABLE PartToeic (
    IDPart INT PRIMARY KEY IDENTITY(1,1),
    Title NVARCHAR(100),
    Description NVARCHAR(MAX)
);
GO

-- 10. Bảng Test (CẬP NHẬT)
-- Chỉ dùng để định nghĩa bài test, không chứa thông tin người dùng.
-- IDLevel và IDTopic có thể là NOT NULL để phân loại bài test.
CREATE TABLE Test (
    IDTest INT PRIMARY KEY IDENTITY(1,1),
    Title NVARCHAR(200) NOT NULL,
    Description NVARCHAR(MAX),
    TotalQuestion INT,
    IDLevel INT NOT NULL FOREIGN KEY REFERENCES Level(IDLevel),
    IDTopic INT NOT NULL FOREIGN KEY REFERENCES Topic(IDTopic)
);
GO
ALTER TABLE Test
ADD TimeLimit INT NOT NULL DEFAULT 60;

-- 11. Bảng Question (Giữ nguyên)
-- Chứa câu hỏi và đáp án đúng, liên kết với một bài test cụ thể.
CREATE TABLE Question (
    IDQuestion INT PRIMARY KEY IDENTITY(1,1),
    Question NVARCHAR(MAX) NOT NULL,
    OptionA NVARCHAR(200),
    OptionB NVARCHAR(200),
    OptionC NVARCHAR(200),
    OptionD NVARCHAR(200),
    Answer NVARCHAR(200) NOT NULL, -- Đáp án đúng
	TimeLimit INT NOT NULL DEFAULT 60,
    IDTest INT NOT NULL FOREIGN KEY REFERENCES Test(IDTest)
);
GO

-- 12. Bảng TestAttempt (Bảng MỚI - Thay thế cho Result)
-- Ghi lại một lần làm bài cụ thể của người dùng. KHÔNG CÓ NULL ở các khóa chính.
CREATE TABLE TestAttempt (
    IDTestAttempt INT PRIMARY KEY IDENTITY(1,1),
    Score FLOAT,
    DateTaken DATETIME DEFAULT GETDATE(),
    -- Khóa ngoại bắt buộc, không chấp nhận NULL
    IDUser INT NOT NULL FOREIGN KEY REFERENCES [User](IDUser),
    IDTest INT NOT NULL FOREIGN KEY REFERENCES Test(IDTest),
    -- Cấp độ được gán sau khi có kết quả, có thể NULL ban đầu
    AssignedLevelID INT NULL FOREIGN KEY REFERENCES Level(IDLevel)
);
GO

-- 13. Bảng UserAnswer (CẬP NHẬT)
-- Lưu câu trả lời của người dùng cho một câu hỏi trong một lần làm bài cụ thể.
CREATE TABLE UserAnswer (
    IDUserAnswer INT PRIMARY KEY IDENTITY(1,1),
    ChosenAnswer NVARCHAR(200), -- Đáp án người dùng chọn
    IsCorrect BIT,
    -- Liên kết đến một LẦN LÀM BÀI cụ thể, không phải chỉ User
    IDTestAttempt INT NOT NULL FOREIGN KEY REFERENCES TestAttempt(IDTestAttempt),
    IDQuestion INT NOT NULL FOREIGN KEY REFERENCES Question(IDQuestion)
);
GO

use TiengAnhDB
go;
ALTER TABLE TestAttempt
ALTER COLUMN AssignedLevelID INT NULL;