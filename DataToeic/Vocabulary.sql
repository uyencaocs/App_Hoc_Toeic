-- Đảm bảo xóa dữ liệu cũ và reset IDENTITY để chèn lại từ đầu
DELETE FROM Vocabulary;
GO
DBCC CHECKIDENT ('Vocabulary', RESEED, 0);
GO

-- CHÈN DỮ LIỆU VÀO CÁC CỘT: Word, Meaning, Example, IDLevel, IDTopic
INSERT INTO Vocabulary(Word, Meaning, Example, IDLevel, IDTopic)
VALUES

-- Chủ đề 1 (Topic 1): Chào hỏi & Giới thiệu (Level 1-3)
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

-- Chủ đề 2 (Topic 2): Gia đình & Bạn bè (Level 1-3)
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

-- Chủ đề 3 (Topic 3): Số đếm & Bảng chữ cái (Level 1-2)
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

-- Chủ đề 4 (Topic 4): Công việc & Nghề nghiệp (Level 1-6)
(N'teacher', N'giáo viên', N'The teacher explained the lesson.', 4, 4),
(N'doctor', N'bác sĩ', N'She became a doctor last year.', 2, 4),
(N'engineer', N'kỹ sư', N'An engineer designed the bridge.', 4, 4),
(N'nurse', N'y tá', N'The nurse checked his temperature.', 5, 4),
(N'farmer', N'nông dân', N'The farmer grows rice.', 3, 4),
(N'chef', N'đầu bếp', N'The chef cooked a delicious meal.', 1, 4),
(N'driver', N'tài xế', N'The driver stopped the bus.', 2, 4),
(N'manager', N'quản lý', N'The manager called a meeting.', 6, 4),
(N'waiter', N'phục vụ', N'The waiter served our food.', 4, 4),
(N'artist', N'nghệ sĩ', N'The artist painted a portrait.', 3, 4);

INSERT INTO Vocabulary(Word, Meaning, Example, IDLevel, IDTopic)
VALUES

-- Chủ đề 5 (Topic 5): Hoạt động hàng ngày (Level 1-4)
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


-- Chủ đề 6 (Topic 6): Đồ ăn & Thức uống (Level 1-6)
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


-- Chủ đề 7 (Topic 7): Quần áo (Level 1-6)
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


-- Chủ đề 8 (Topic 8): Sở thích & Thể thao (Level 1-6)
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


-- Chủ đề 9 (Topic 9): Thời tiết (Level 1-6)
(N'sunny', N'nắng', N'It is sunny today.', 2, 9),
(N'rainy', N'mưa', N'The rainy season starts in May.', 3, 9),
(N'cloudy', N'nhiều mây', N'It''s cloudy this afternoon.', 3, 9),
(N'windy', N'gió', N'It is very windy near the coast.', 2, 9),
(N'snow', N'tuyết', N'It rarely snows here.', 6, 9),
(N'storm', N'bão', N'The storm caused damage.', 3, 9),
(N'temperature', N'nhiệt độ', N'The temperature is 30°C.', 6, 9),
(N'forecast', N'dự báo thời tiết', N'The forecast predicts rain.', 6, 9),
(N'humidity', N'độ ẩm', N'High humidity makes it feel warmer.', 6, 9),
(N'fog', N'sương mù', N'Drive carefully in the fog.', 1, 9);
INSERT INTO Vocabulary(Word, Meaning, Example, IDLevel, IDTopic)
VALUES

-- Chủ đề 10 (Topic 10): Địa điểm trong thành phố (Level 2-6)
(N'school', N'trường học', N'The school is next to the park.', 5, 10),
(N'hospital', N'bệnh viện', N'She went to the hospital.', 6, 10),
(N'bank', N'ngân hàng', N'I need to go to the bank.', 2, 10),
(N'market', N'chợ', N'Buy vegetables at the market.', 5, 10),
(N'restaurant', N'nhà hàng', N'We had dinner at a new restaurant.', 6, 10),
(N'library', N'thư viện', N'I borrowed a book from the library.', 2, 10),
(N'park', N'công viên', N'Children play in the park.', 2, 10),
(N'station', N'ga/trạm', N'The bus station is nearby.', 4, 10),
(N'museum', N'bảo tàng', N'They visited the museum.', 4, 10),
(N'post office', N'bưu điện', N'Send the package at the post office.', 3, 10),


-- Chủ đề 11 (Topic 11): Du lịch & Kỳ nghỉ (Level 1-6)
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

-- Chủ đề 12 (Topic 12): Sức khỏe & Lối sống (Level 1-6)
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


-- Chủ đề 13 (Topic 13): Giáo dục & Học tập (Level 2-6)
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


-- Chủ đề 14 (Topic 14): Công nghệ & Internet (Level 2-6)
(N'computer', N'máy tính', N'I use a computer at work.', 3, 14),
(N'internet', N'mạng internet', N'The internet connection is fast.', 6, 14),
(N'software', N'phần mềm', N'Install the software update.', 5, 14),
(N'website', N'trang web', N'Visit the website for details.', 4, 14),
(N'email', N'thư điện tử', N'Please send the email today.', 5, 14),
(N'app', N'ứng dụng', N'Download the app on your phone.', 4, 14),
(N'password', N'mật khẩu', N'Change your password regularly.', 3, 14),
(N'device', N'thiết bị', N'Charge your device tonight.', 2, 14),
(N'network', N'mạng lưới', N'The network is down.', 2, 14),
(N'blog', N'blog', N'She writes a travel blog.', 5, 14);

INSERT INTO Vocabulary(Word, Meaning, Example, IDLevel, IDTopic)
VALUES

-- Chủ đề 15 (Topic 15): Môi trường (Level 1-6)
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


-- Chủ đề 16 (Topic 16): Mua sắm & Tiêu dùng (Level 1-6)
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


-- Chủ đề 17 (Topic 17): Phim ảnh & Âm nhạc (Level 1-6)
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


-- Chủ đề 18 (Topic 18): Tính cách & Cảm xúc (Level 1-6)
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


-- Chủ đề 19 (Topic 19): Tin tức & Sự kiện (Level 2-6)
(N'report', N'báo cáo', N'The report was published yesterday.', 6, 19),
(N'headline', N'tiêu đề', N'The headline caught everyone''s attention.', 3, 19),
(N'press', N'báo chí', N'The press covered the event.', 6, 19),
(N'coverage', N'phủ sóng', N'Live coverage began at noon.', 5, 19),
(N'event', N'sự kiện', N'The event attracted many visitors.', 5, 19),
(N'announcement', N'thông báo', N'There was an announcement this morning.', 2, 19),
(N'interview', N'phỏng vấn', N'The interview aired on TV.', 2, 19),
(N'breaking news', N'tin nóng', N'Breaking news interrupted the program.', 3, 19),
(N'journalist', N'nhà báo', N'The journalist asked tough questions.', 2, 19),
(N'media', N'truyền thông', N'The media reported the facts.', 5, 19);

INSERT INTO Vocabulary(Word, Meaning, Example, IDLevel, IDTopic)
VALUES


-- Chủ đề 20 (Topic 20): Làm việc & Sự nghiệp (Level 1-5)
(N'resume', N'sơ yếu lý lịch', N'Update your resume before applying.', 5, 20),
(N'apply', N'nộp đơn', N'Apply online for the position.', 1, 20),
(N'interview', N'phỏng vấn', N'He has an interview tomorrow.', 5, 20),
(N'promotion', N'thăng tiến', N'She got a promotion last month.', 3, 20),
(N'salary', N'lương', N'The salary is competitive.', 4, 20),
(N'skills', N'kỹ năng', N'Develop new skills regularly.', 1, 20),
(N'experience', N'kinh nghiệm', N'Experience matters in this field.', 1, 20),
(N'colleague', N'đồng nghiệp', N'My colleague helped me a lot.', 3, 20),
(N'contract', N'hợp đồng', N'Sign the contract carefully.', 3, 20),
(N'freelance', N'làm việc tự do', N'He works freelance as a designer.', 2, 20),


-- Chủ đề 21 (Topic 21): Khoa học & Nghiên cứu (Level 1-6)
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


-- Chủ đề 22 (Topic 22): Chính trị & Xã hội (Level 2-6)
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


-- Chủ đề 23 (Topic 23): Kinh tế & Tài chính (Level 2-6)
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


-- Chủ đề 24 (Topic 24): Nghệ thuật & Văn học (Level 1-5)
(N'painting', N'bức tranh', N'The painting is in the gallery.', 4, 24),
(N'poem', N'bài thơ', N'She wrote a moving poem.', 5, 24),
(N'novel', N'tiểu thuyết', N'The novel became a bestseller.', 4, 24),
(N'gallery', N'phòng trưng bày', N'Visit the gallery this weekend.', 1, 24),
(N'sculpture', N'tượng', N'The sculpture is made of stone.', 2, 24),
(N'author', N'tác giả', N'The author signed copies.', 2, 24),
(N'literature', N'văn học', N'He studies modern literature.', 1, 24),
(N'creative', N'sáng tạo', N'Creative ideas inspire projects.', 3, 24),
(N'exhibit', N'triển lãm', N'The museum opened a new exhibit.', 1, 24),
(N'critic', N'nhà phê bình', N'The critic praised the artist.', 5, 24);

INSERT INTO Vocabulary(Word, Meaning, Example, IDLevel, IDTopic)
VALUES


-- Chủ đề 25 (Topic 25): Luật pháp & Tội phạm (Level 1-6)
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


-- Chủ đề 26 (Topic 26): Tâm lý học (Level 1-6)
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


-- Chủ đề 27 (Topic 27): Các vấn đề toàn cầu (Level 2-6)
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


-- Chủ đề 28 (Topic 28): Kinh doanh & Khởi nghiệp (Level 1-6)
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


-- Chủ đề 29 (Topic 29): Lịch sử (Level 1-6)
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


-- Chủ đề 30 (Topic 30): Triết học (Level 2-5)
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
GO


USE TiengAnhDB;
GO

SELECT
    t.name AS TableName,
    s.name AS SchemaName
FROM
    sys.tables t
INNER JOIN
    sys.schemas s ON t.schema_id = s.schema_id
ORDER BY
    TableName;
GO