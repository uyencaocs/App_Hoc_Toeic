-- Bước 1: Xóa tất cả dữ liệu từ bảng con (bảng Question)
DELETE FROM Question;
GO

-- (Nếu bạn có các bảng khác cũng tham chiếu đến IDTest, ví dụ: Result, bạn cũng phải DELETE FROM Result;)

-- Bước 2: Bây giờ bảng Test đã an toàn, bạn có thể TRUNCATE nó
-- Lệnh này sẽ xóa hết dữ liệu Test VÀ reset IDTest về 1
TRUNCATE TABLE Test;
GO
delete from Test;
DBCC CHECKIDENT ('Test', RESEED, 0);
GO
UPDATE Topic SET IDLevel = 1  WHERE IDTopic BETWEEN 1 AND 5;
GO
-- Gán Level A2 (IDLevel = 3) cho Topic 6-10
UPDATE Topic SET IDLevel = 2  WHERE IDTopic BETWEEN 6 AND 10;
GO
-- Gán Level B1 (IDLevel = 4) cho Topic 11-15
UPDATE Topic SET IDLevel = 3  WHERE IDTopic BETWEEN 11 AND 15;
GO
-- Gán Level B2 (IDLevel = 5) cho Topic 16-20
UPDATE Topic SET IDLevel = 4  WHERE IDTopic BETWEEN 16 AND 20;
GO
-- Gán Level C1 (IDLevel = 6) cho Topic 21-25
UPDATE Topic SET IDLevel = 5  WHERE IDTopic BETWEEN 21 AND 25;
GO
-- Gán Level C2 (IDLevel = 7) cho Topic 26-30
-- (Tôi giả định C2 là 26-30 để không trùng với C1)
UPDATE Topic SET IDLevel = 6 WHERE IDTopic BETWEEN 26 AND 30;
GO

-- == BƯỚC 3: CHÈN 38 BÀI TEST THEO 4 NHÓM ==

-- Nhóm 1: 1 Bài test đầu vào
-- (IDLevel và IDTopic không xác định, ta dùng ID=1 làm giá trị "Chung")
-- Đảm bảo xóa dữ liệu Test cũ trước khi chèn lại

-- 1. Nhóm 1: Bài test Đầu vào
-- (Sử dụng IDLevel=7 và IDTopic=6 cho 'Chung/Đầu vào' theo dữ liệu mẫu gần nhất)
use TiengAnhDB;
Go
INSERT INTO Test(Title, Description, TotalQuestion, DurationInMinutes, IDLevel, IDTopic)
VALUES (
    N'Bài Kiểm Tra Trình Độ Đầu Vào',
    N'Bài kiểm tra này giúp đánh giá năng lực tiếng Anh hiện tại của bạn.',
    60,
    60,
    7, -- IDLevel = 7 (Chung / Đầu vào)
    6  -- IDTopic = 6 (Chung/Tổng hợp)
);
GO

SELECT * FROM Test;

-- 2. Nhóm 2: Chèn bài test cho mỗi Topic
-- Chỉnh sửa Name -> NameTopic và thêm logic phân loại IDLevel tương ứng
INSERT INTO Test (
    Title,
    Description,
    TotalQuestion,
    DurationInMinutes,
    IDLevel, -- Cần gán Level dựa trên IDTopic (giả định phân nhóm 5 topic/level)
    IDTopic
)
SELECT
    N'Bài test chủ đề: ' + T.NameTopic AS Title, -- CHỈNH SỬA: Name -> NameTopic
    N'Kiểm tra kiến thức về chủ đề ' + T.NameTopic AS Description,
    20 AS TotalQuestion,
    30 AS DurationInMinutes,
    -- LOGIC PHÂN LOẠI IDLevel:
    CASE
        WHEN T.IDTopic BETWEEN 1 AND 5 THEN 1 -- A1
        WHEN T.IDTopic BETWEEN 6 AND 10 THEN 2 -- A2
        WHEN T.IDTopic BETWEEN 11 AND 15 THEN 3 -- B1
        WHEN T.IDTopic BETWEEN 16 AND 20 THEN 4 -- B2
        WHEN T.IDTopic BETWEEN 21 AND 25 THEN 5 -- C1
        WHEN T.IDTopic BETWEEN 26 AND 30 THEN 6 -- C2
        ELSE 7 -- Mặc định là chung nếu IDTopic > 30
    END AS IDLevel,
    T.IDTopic
FROM
    Topic T
WHERE
    T.IDTopic BETWEEN 1 AND 30; -- Chỉ chèn 30 Topic chính
GO

-- 3. Nhóm 3: 6 bài test tổng hợp cho 6 cấp độ (A1, A2, B1, B2, C1, C2)
-- Lưu ý: IDTopic ở đây dùng Topic đầu tiên của nhóm làm đại diện.
INSERT INTO Test (Title, Description, TotalQuestion, DurationInMinutes, IDLevel, IDTopic)
VALUES
(N'Bài Test Tổng Hợp A1', N'Kiểm tra tổng hợp các chủ đề 1-5', 50, 60, 1 , 1),
(N'Bài Test Tổng Hợp A2', N'Kiểm tra tổng hợp các chủ đề 6-10', 50, 60, 2, 6),
(N'Bài Test Tổng Hợp B1', N'Kiểm tra tổng hợp các chủ đề 11-15', 50, 60, 3, 11),
(N'Bài Test Tổng Hợp B2', N'Kiểm tra tổng hợp các chủ đề 16-20', 50, 60, 4, 16),
(N'Bài Test Tổng Hợp C1', N'Kiểm tra tổng hợp các chủ đề 21-25', 50, 60, 5, 21),
(N'Bài Test Tổng Hợp C2', N'Kiểm tra tổng hợp các chủ đề 26-30', 50, 60, 6, 26);
GO

-- 4. Nhóm 4: 1 Bài test cuối cùng (Final Exam)
-- (Sử dụng IDLevel=7 và IDTopic=6 cho 'Chung/Tổng hợp' theo dữ liệu mẫu gần nhất)
INSERT INTO Test (Title, Description, TotalQuestion, DurationInMinutes, IDLevel, IDTopic)
VALUES (
    N'Bài Kiểm Tra Cuối Kỳ',
    N'Bài kiểm tra tổng hợp toàn bộ kiến thức khóa học.',
    100,
    90,
    7, -- IDLevel = 7 (Chung / Toàn khóa)
    6  -- IDTopic = 6 (Chung/Tổng hợp)
);
GO

SELECT * FROM Test;

-- == BƯỚC 4: KIỂM TRA KẾT QUẢ ==
SELECT 'Bảng Topic sau khi cập nhật Level:' AS Bang;
SELECT * FROM Topic;

SELECT 'Bảng Test sau khi chèn 38 bài:' AS Bang;
SELECT * FROM Test;
GO
select * from Test; 