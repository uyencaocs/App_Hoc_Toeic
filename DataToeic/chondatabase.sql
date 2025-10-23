IF OBJECT_ID('dbo.sp_GetPlacementTestQuestions', 'P') IS NOT NULL
    DROP PROCEDURE dbo.sp_GetPlacementTestQuestions;
GO

CREATE PROCEDURE dbo.sp_GetPlacementTestQuestions
AS
BEGIN
    -- Ngăn chặn hiển thị số lượng dòng bị ảnh hưởng
    SET NOCOUNT ON;
    
    -- Chọn 30 câu hỏi ngẫu nhiên từ IDTest = 1 (Test Đầu vào)
    SELECT TOP 30
        IDQuestion,
        Questiontext,
        OptionA,
        OptionB,
        OptionC,
        OptionD,
        Answer,
        IDTest
    FROM
        Question
    WHERE
        IDTest = 1
    ORDER BY
        NEWID(); -- Sử dụng NEWID() để xáo trộn và lấy ngẫu nhiên
END
GO

EXEC dbo.sp_GetPlacementTestQuestions;

--------------------------------------------------------------------------------
-- 2. STORED PROCEDURE: Lấy tất cả câu hỏi cho một IDTest bất kỳ (2 - 38)
--------------------------------------------------------------------------------
-- Nếu Procedure đã tồn tại, xóa nó đi để tạo mới
IF OBJECT_ID('dbo.sp_GetStandardTestQuestions', 'P') IS NOT NULL
    DROP PROCEDURE dbo.sp_GetStandardTestQuestions;
GO

CREATE PROCEDURE dbo.sp_GetStandardTestQuestions
    @IDTest INT -- Tham số đầu vào để xác định Test
AS
BEGIN
    SET NOCOUNT ON;
    
    -- Lấy tất cả các câu hỏi thuộc IDTest được chỉ định
    SELECT
        IDQuestion,
        Questiontext,
        OptionA,
        OptionB,
        OptionC,
        OptionD,
        Answer,
        IDTest
    FROM
        Question
    WHERE
        IDTest = @IDTest;
END
GO

EXEC dbo.sp_GetStandardTestQuestions @IDTest = 38;