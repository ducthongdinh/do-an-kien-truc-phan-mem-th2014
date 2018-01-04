# # This file should contain all the record creation needed to seed the database with its default values.
# # The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
# #
# # Examples:
# #
# #   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
# #   Character.create(name: 'Luke', movie: movies.first)
# # This file should contain all the record creation needed to seed the database with its default values.
# # The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
# #
# # Examples:
# #
# #   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
# #   Character.create(name: 'Luke', movie: movies.first)

# # # User mock data
# # auction_staff = User.create(address: "235 Nguyen Van Cu, Q.5, Tp.HCM", email: "1412169@student.hcmus.edu.vn", phone: "0121487123", sandbox_account: "hienho", score: 50, full_name: "Hien Ho", role: "admin")
# # user2 = User.create(address: "100 Hung Vuong, Q.5, Tp.HCM", email: "1412145@student.hcmus.edu.vn", phone: "0121487123", sandbox_account: "cactushai145@gmail.com", score: 50, full_name: "Hai Nguyen", role: "user")
# # user3 = User.create(address: "200 Le Lai, Q.5, Tp.HCM", email: "1412345@student.hcmus.edu.vn", phone: "0121487123", sandbox_account: "somebody", score: 50, full_name: "An Le", role: "user")
# # user4 = User.create(address: "123 Le Loi, Q.5, Tp.HCM", email: "1412445@student.hcmus.edu.vn", phone: "0121487123", sandbox_account: "somebody", score: 50, full_name: "Huy Tran", role: "user")
# # user5 = User.create(address: "478 Tran Hung Dao Q.5, Tp.HCM", email: "1412475@student.hcmus.edu.vn", phone: "0121487123", sandbox_account: "somebody", score: 50, full_name: "Bach Tran", role: "user")
# # user6 = User.create(address: "245 An Duong Vuong, Q.5, Tp.HCM", email: "1412485@student.hcmus.edu.vn", phone: "0121487123", sandbox_account: "somebody", score: 50, full_name: "Tran Nguyen", role: "user")

# # # Auction mock data
# # auction1 = Product.find(1).auctions.create(auction_price: 30000, max_price: 40000, max_price_user: user5, is_finished: false, start_time: Date.now, end_time: Date.now + 5)
# # auction2 = Product.find(2).auctions.create(auction_price: 20000, max_price: 30000, max_price_user: user4, is_finished: true, start_time: Date.now - 5, end_time: Date.now - 1)
# # auction3 = Product.find(3).auctions.create(auction_price: 20000, max_price: 40000, max_price_user: user3, is_finished: true, start_time: Date.now - 6, end_time: Date.now - 3)
# # auction4 = Product.find(4).auctions.create(auction_price: 10000, max_price: 15000, max_price_user: user2, is_finished: false, start_time: Date.now - 1, end_time: Date.now + 4)
# # auction5 = Product.find(5).auctions.create(auction_price: 20000, max_price: 25000, max_price_user: user6, is_finished: false, start_time: Date.now, end_time: Date.now + 4)

# # # Auction report mock data
# # auction_report1 = auction1.auction_reports.create(buyer: auction1.max_price_user, seller: auction1.product.seller, staff: auction_staff, reason_report: "Khong giao hang", result_report: "Nguoi ban giao hang va hoan tien lai cho nguoi mua")
# # auction_report2 = auction1.auction_reports.create(buyer: auction2.max_price_user, seller: auction2.product.seller, staff: auction_staff, reason_report: "Thay doi thong tin san pham", result_report: "Nguoi ban giao hang va hoan tien lai cho nguoi mua")
# # auction_report3 = auction1.auction_reports.create(buyer: auction3.max_price_user, seller: auction3.product.seller, staff: auction_staff, reason_report: "Khach hang khong thanh toan", result_report: "Nguoi mua bi tru diem")

# # # Auction session mock data
# # auction_session1_0 = auction1.auction_sessions.create(user: user2, price: 20000)
# # auction_session1_1 = auction1.auction_sessions.create(user: user4, price: 25000)
# # auction_session1_2 = auction1.auction_sessions.create(user: user5, price: 40000)

# # auction_session2_0 = auction2.auction_sessions.create(user: user3, price: 10000)
# # auction_session2_1 = auction2.auction_sessions.create(user: user2, price: 15000)
# # auction_session2_2 = auction2.auction_sessions.create(user: user4, price: 30000)

# # auction_session3_0 = auction3.auction_sessions.create(user: user2, price: 15000)
# # auction_session3_1 = auction3.auction_sessions.create(user: user3, price: 40000)

# # auction_session4_0 = auction4.auction_sessions.create(user: user2, price: 15000)

# # auction_session5_0 = auction5.auction_sessions.create(user: user6, price: 25000)

# # # Delete Auction Session mock data
# # delete_auction_session4 = auction_session4_0.delete_auction_sessions.create(user: auction_session4_0.user, reason: 1, reason_detail: "dat nham gia", is_verified: false, staff: auction_staff, verify_time: Date.now - 3)

# # # Service
# # service1 = Service.create(name: "Dua san pham vao nhieu danh muc", description: "Nguoi ban duoc phep dua san pham cua minh vao nhieu danh muc khac nhau", service_price: )

# # Clear all record
# Bill.delete_all
# ServiceRegister.delete_all
# Service.delete_all
# DeleteAuctionSession.delete_all
# AuctionSession.delete_all
# AuctionReport.delete_all
# Auction.delete_all
# ProductReport.delete_all
# CatalogProduct.delete_all
# Catalog.delete_all
# Product.delete_all
# Score.delete_all
# WatchList.delete_all
# Keyword.delete_all
# User.delete_all

# # User mock data
# auction_staff = User.create(address: "235 Nguyen Van Cu, Q.5, Tp.HCM", email: "1412169@student.hcmus.edu.vn", phone: "0121487123", sandbox_account: "hienho", score: 50, full_name: "Hien Ho", role: 1, password: "123456", password_confirmation: "123456")
# user1 = User.create(address: "101 Trung Vuong, Q.5, Tp.HCM", email: "1412111@student.hcmus.edu.vn", phone: "0121487123", sandbox_account: "lenguyen@gmail.com", score: 50, full_name: "Le Nguyen", role: 0, password: "123456", password_confirmation: "123456")
# user2 = User.create(address: "100 Hung Vuong, Q.5, Tp.HCM", email: "1412145@student.hcmus.edu.vn", phone: "0121487123", sandbox_account: "cactushai145@gmail.com", score: 50, full_name: "Hai Nguyen", role: 0, password: "123456", password_confirmation: "123456")
# user3 = User.create(address: "200 Le Lai, Q.5, Tp.HCM", email: "usermock3@mailinator.com", phone: "0121487123", sandbox_account: "somebody", score: 50, full_name: "An Le", role: 0, password: "123456", password_confirmation: "123456")
# user4 = User.create(address: "123 Le Loi, Q.5, Tp.HCM", email: "usermock4@mailinator.com", phone: "0121487123", sandbox_account: "somebody", score: 50, full_name: "Huy Tran", role: 0, password: "123456", password_confirmation: "123456")
# user5 = User.create(address: "478 Tran Hung Dao Q.5, Tp.HCM", email: "usermock5@mailinator.com", phone: "0121487123", sandbox_account: "somebody", score: 50, full_name: "Bach Tran", role: 0, password: "123456", password_confirmation: "123456")
# user6 = User.create(address: "245 An Duong Vuong, Q.5, Tp.HCM", email: "usermock6@mailinator.com", phone: "0121487123", sandbox_account: "somebody", score: 50, full_name: "Tran Nguyen", role: 0, password: "123456", password_confirmation: "123456")
# user7 = User.create(address: "741 Le Dai Hanh, Q.5, Tp.HCM", email: "usermock7@mailinator.com", phone: "0121487123", sandbox_account: "somebody", score: 50, full_name: "Hung Nguyen", role: 0, password: "123456", password_confirmation: "123456")

# # keywords

# keyword1 = Keyword.create(keyword: 'Đồ gia dụng', count: 2, user_id: user1.id)
# keyword2 = Keyword.create(keyword: 'Làm đẹp', count: 3, user_id: user1.id)
# keyword3 = Keyword.create(keyword: 'Thời trang', count: 4, user_id: user1.id) 

# keyword4 = Keyword.create(keyword: 'Phụ kiện', count: 5, user_id: user2.id)
# keyword5 = Keyword.create(keyword: 'Đồ gia dụng', count: 6, user_id: user2.id)
# keyword6 = Keyword.create(keyword: 'Sách', count: 7, user_id: user2.id)

# keyword7 = Keyword.create(keyword: 'Phụ kiện', count: 5, user_id: user3.id)
# keyword8 = Keyword.create(keyword: 'Làm đẹp', count: 6, user_id: user3.id)
# keyword9 = Keyword.create(keyword: 'Sách', count: 8, user_id: user3.id)

# keyword10 = Keyword.create(keyword: 'Phụ kiện', count: 9, user_id: user4.id)
# keyword11 = Keyword.create(keyword: 'Thời trang', count: 6, user_id: user4.id)
# keyword12 = Keyword.create(keyword: 'Sách', count: 7, user_id: user4.id)

# keyword13 = Keyword.create(keyword: 'Phụ kiện', count: 5, user_id: user5.id)
# keyword14 = Keyword.create(keyword: 'Đồ gia dụng', count: 2, user_id: user5.id)
# keyword15 = Keyword.create(keyword: 'Sách', count: 7, user_id: user5.id)

# keyword16 = Keyword.create(keyword: 'Phụ kiện', count: 5, user_id: user6.id)
# keyword17 = Keyword.create(keyword: 'Làm đẹp', count: 2, user_id: user6.id)
# keyword18 = Keyword.create(keyword: 'Sách', count: 7, user_id: user6.id)

# keyword19 = Keyword.create(keyword: 'Phụ kiện', count: 5, user_id: user7.id)
# keyword20 = Keyword.create(keyword: 'Thời trang', count: 2, user_id: user7.id)
# keyword21 = Keyword.create(keyword: 'Sách', count: 7, user_id: user7.id)

# # watch_lists
# ### 0: nguoi dung khac, 1 san pham, 2 danh muc
# watch_list1 = WatchList.create(id_object:user2.id , object_type:0 , user_id: user1.id)
# watch_list2 = WatchList.create(id_object:product1.id, object_type:1 , user_id:user2.id)
# watch_list3 = WatchList.create(id_object:user4.id , object_type:0 , user_id:user3.id)
# watch_list4 = WatchList.create(id_object:product3.id , object_type:1 , user_id:user4.id)
# watch_list5 = WatchList.create(id_object:user6.id , object_type:0 , user_id:user5.id)
# watch_list6 = WatchList.create(id_object:product5.id , object_type:1 , user_id:user6.id)
# watch_list7 = WatchList.create(id_object: catalog1.id, object_type:2 , user_id:user7.id)
# watch_list8 = WatchList.create(id_object:catalog2.id, object_type:2 , user_id:user7.id)
# watch_list9 = WatchList.create(id_object:catalog3.id , object_type:2 , user_id:user7.id)

# # #scores
# # ### is_newest ko cần thiết, status để làm gì, bỏ newest đi, bỏ status đi
# # score1 = Score.create(reason_change: 'Giao hàng chậm', total_score:7, status: false, users_id:user1.id)
# # # score2 = Score.create(reason_change: 'Giao hàng nhanh', total_score:8, status: false, users_id:user1.id)
# # # score3 = Score.create(reason_change: 'Giao hàng nhanh', total_score:9, status: false, users_id:user1.id)
# # score4 = Score.create(reason_change: 'Giao hàng nhanh', total_score:7, status: false, users_id:user2.id)
# # #score5 = Score.create(reason_change: 'Giao hàng nhanh', total_score:8, status: false, users_id:user2.id)
# # score6 = Score.create(reason_change: 'Giao hàng chậm', total_score:7, status: false, users_id:user3.id)
# # # score7 = Score.create(reason_change: 'Giao hàng chậm', total_score:6, status: false, users_id:user3.id)
# # # score8 = Score.create(reason_change: 'Giao hàng chậm', total_score:5, status: false, users_id:user3.id)
# # score9 = Score.create(reason_change: 'Giao hàng chậm', total_score:7, status: false, users_id:user4.id)
# # score9 = Score.create(reason_change: 'Giao hàng chậm', total_score:7, status: false, users_id:user5.id)
# # score9 = Score.create(reason_change: 'Giao hàng chậm', total_score:7, status: false, users_id:user6.id)

# # # catalogs
# # catalog1 = Catalog.create(name: 'Sách', description: 'Sach, VPP va qua tang. The gioi cua dan mot sach.')
# # catalog2 = Catalog.create(name: 'Hàng tiêu dùng', description: 'Hang tieu dung va thuc pham. Mua di mua di.')
# # catalog3 = Catalog.create(name: 'Làm đẹp', description: 'Lam dep va suc khoe, danh cho cac co nang dieu da.')
# # catalog4 = Catalog.create(name: 'Thời trang', description: 'Tin do mua sam se thich noi nay.')
# # catalog5 = Catalog.create(name: 'Điện gia dụng', description: 'Noi co du dung cu gia dung cho ca gia dinh.')
# # catalog6 = Catalog.create(name: 'Phụ kiện', description: 'Muon quan ao dep hon thi mua phu kien di.')
# # catalog7 = Catalog.create(name: 'Thể thao', description: 'Mua do di tap the duc, tot cho suc khoe.')

# # # Product
# # product1 = Product.create(name: 'Khi hơi thở hóa thinh không', description: 'Khi Hơi Thở Hóa Thinh Không là tự truyện của một bác sĩ bị mắc bệnh ung thư phổi. Trong cuốn sách này, tác giả đã chia sẻ những trải nghiệm từ khi mới bắt đầu học ngành y, tiếp xúc với bệnh nhân cho tới khi phát hiện ra mình bị ung thư và phải điều trị lâu dài.', is_valid: true, buy_now_price: 200000, starting_price: 10000, users_id: user1.id)
# # product2 = Product.create(name: 'Vũ trụ', description: 'Mười ba câu chuyện tuyệt đẹp về Vũ trụ.Qua lời kể trữ tình của Carl Sagan, người đọc sẽ có dịp du hành trong vũ trụ, khám phá thế giới từ vĩ mô của những thiên hà to lớn đến thế giới vi mô của những con vi khuẩn nhỏ bé trên Trái đất, đi từ những nền văn minh xa xưa đến tương lai của thế giới, cho ta thấy mối gắn bó hữu cơ của từng sự việc nhỏ nhặt với vũ trụ bao la và nghe những giọng điệu nhiều bè của Vũ trụ. Vũ trụ đã chỉ là vũ trụ vô tri, hỗn độn, mà còn là một thế giới có trật tự, có tri giác, đầy nhân văn và xúc cảm.Cuốn sách của Carl Sagan, một nhà thiên văn học nổi tiếng đã bán được hơn 5 triệu bản trên toàn thế giới.', is_valid: true, buy_now_price: 20000, starting_price: 5000, users_id: user7.id)
# # product3 = Product.create(name: 'Tuần làm việc 4 giờ', description: 'Nếu bạn biết cách quản lí thời gian, các mục tiêu cũng như thứ tự ưu tiên các công việc một cách hợp lí thì bạn hoàn toàn có khả năng tạo ra nguồn thu nhập đầy đủ dù chỉ làm việc 4 giờ mỗi tuần. Và thế là, tạm biệt nhé - những ngày làm việc 8 tiếng đồng hồ nặng nhọc!', is_valid: true, buy_now_price: 2000000, starting_price: 1000000, users_id: user1.id)
# # product4 = Product.create(name: 'Sữa Bột Full Cream Devondale', description: 'Sữa Bột Full Cream Devondale (Túi 1kg) với thành phần từ nguồn sữa nguyên chất chứa hàm lượng canxi cao và các dưỡng chất tối ưu cho sự phát triển trí não, thể chất của trẻ nhỏ , sức khỏe của cả gia đình. Sản phẩm ứng dụng những công nghệ tiên tiến đạt tiêu chuẩn quốc tế, đồng thời tuyệt đối tuân thủ những quy định nghiêm ngặt của nước Úc về chất lượng và an toàn thực phẩm. Sản phẩm không chất bảo quản, mùi vị thơm, ngon mang đến cho bạn 1 loại thức uống dinh dưỡng tuyệt vời', is_valid: true, buy_now_price: 200000, starting_price: 10000, users_id: user7.id)
# # product5 = Product.create(name: 'Nước Rửa Chén Sunlight Chanh Dạng Chai', description: 'Nước Rửa Chén Sunlight Chanh Dạng Chai 3.8kg mang lại sức mạnh đánh bay dầu mỡ tương đương 100 trái chanh. Sản phẩm có khả năng rửa sạch dầu mỡ cả trên đồ nhựa và dịu nhẹ dịu với da tay, an toàn cho người dùng. Với hương chanh tươi mát, đây sẽ là sự lựa chọn hoàn hảo cho các bà nội trợ.', is_valid: true, buy_now_price: 20000, starting_price: 5000, users_id: user1.id)
# # product6 = Product.create(name: 'Combo 2 Nước Súc Miệng Hương Bạc Hà Listerine Cool Mint', description: 'Combo 2 Nước Súc Miệng Hương Bạc Hà Listerine Cool Mint (750ml/Chai) giúp bảo vệ răng miệng toàn diện. Trên thực tế, có nhiều vùng trong khoang miệng mà chỉ chải răng sẽ khó làm sạch được, đồng thời việc chải răng cũng không thể diệt sạch hoàn toàn vi khuẩn gây hôi miệng. Bạn cần sử dụng nước súc miệng Listerine Cool Mint vừa giúp ngừa mảng bám, vừa giúp giảm thiểu hôi miệng. Cho bạn tự tin với hơi thở thơm mát và hàm răng trắng sáng tạng rỡ.', is_valid: true, buy_now_price: 200000, starting_price: 15000, users_id: user7.id)
# # product7 = Product.create(name: 'Đồ Chơi Gỗ Mô Hình Vietoys Xe Cũi Thả Hình VT3P-0109', description: 'Đồ Chơi Gỗ Mô Hình Vietoys Xe Cũi Thả Hình VT3P-0109 sẽ mang đến cho bé những bài học về cơ chế chuyển động và hình khối thật thú vị và hấp dẫn. Xe được thiết kế hình hộp với 4 bánh xe nhỏ, mặt trên xe được khoét 5 lỗ hình vuông, tam giác, tròn, chữ nhật và bán nguyệt. Bên trong xe chứa 10 hình khối với màu sắc đa dạng, bắt mắt tạo hứng thú cho bé khi chơi và hỗ trợ phát triển thị giác. Sản phẩm được chế tạo từ chất liệu gỗ cao cấp, độ bền cao và an toàn.', is_valid: true, buy_now_price: 2000000, starting_price: 1000000, users_id: user7.id)

# # # catalog_products
# # catalog_product1 = CatalogProduct.create( catalog_id: catalog1.id, product_id: product1.id)
# # catalog_product2 = CatalogProduct.create( catalog_id: catalog2.id, product_id: product2.id)
# # catalog_product3 = CatalogProduct.create( catalog_id: catalog3.id, product_id: product3.id)
# # catalog_product4 = CatalogProduct.create( catalog_id: catalog4.id, product_id: product4.id)
# # catalog_product5 = CatalogProduct.create( catalog_id: catalog5.id, product_id: product5.id)
# # catalog_product6 = CatalogProduct.create( catalog_id: catalog6.id, product_id: product6.id)
# # catalog_product7 = CatalogProduct.create( catalog_id: catalog7.id, product_id: product7.id)

# # # product_reports
# # ### bỏ is_newest
# # product_report1 = ProductReport.create(report_content: 'Duyệt sản phẩm', is_valid: false, users_id: user1.id, product_id: product1.id)
# # product_report2 = ProductReport.create(report_content: 'Duyệt sản phẩm', is_valid: false, users_id: user2.id, product_id: product2.id)
# # product_report3 = ProductReport.create(report_content: 'Duyệt sản phẩm', is_valid: false, users_id: user3.id, product_id: product3.id)
# # product_report4 = ProductReport.create(report_content: 'Duyệt sản phẩm', is_valid: false, users_id: user4.id, product_id: product4.id)
# # product_report5 = ProductReport.create(report_content: 'Duyệt sản phẩm', is_valid: false, users_id: user5.id, product_id: product5.id)
# # product_report6 = ProductReport.create(report_content: 'Duyệt sản phẩm', is_valid: false, users_id: user6.id, product_id: product6.id)
# # product_report7 = ProductReport.create(report_content: 'Duyệt sản phẩm', is_valid: false, users_id: user7.id, product_id: product7.id)

# # # Auction mock data
# # auction1 = Auction.create(product_id: 1, users_id: user5.id, auction_price: 30000, max_price: 40000, is_finished: false, start_time: Time.now, end_time: Time.now + 5*24*3600)
# # auction2 = Auction.create(product_id: 2, users_id: user4.id, auction_price: 20000, max_price: 30000, is_finished: true, start_time: Time.now - 5*24*3600, end_time: Time.now - 1*24*3600)
# # auction3 = Auction.create(product_id: 3, users_id: user3.id, auction_price: 20000, max_price: 40000, is_finished: true, start_time: Time.now - 6*24*3600, end_time: Time.now - 3*24*3600)
# # auction4 = Auction.create(product_id: 4, users_id: user2.id, auction_price: 10000, max_price: 15000, is_finished: false, start_time: Time.now - 1*24*3600, end_time: Time.now + 4*24*3600)
# # auction5 = Auction.create(product_id: 5, users_id: user6.id, auction_price: 20000, max_price: 25000, is_finished: false, start_time: Time.now, end_time: Time.now + 4*24*3600)

# # # Auction report mock data
# # auction_report1 = AuctionReport.create(auction_id: auction1.id, users_id: auction1.user_id, seller_id: Product.find(auction1.product_id).user_id, staff_id: auction_staff.id, reason_report: "Khong giao hang", result_report: "Nguoi ban giao hang va hoan tien lai cho nguoi mua")
# # auction_report2 = AuctionReport.create(auction_id: auction2.id, users_id: auction2.user_id, seller_id: Product.find(auction2.product_id).user_id, staff_id: auction_staff.id, reason_report: "Thay doi thong tin san pham", result_report: "Nguoi ban giao hang va hoan tien lai cho nguoi mua")
# # auction_report3 = AuctionReport.create(auction_id: auction3.id, users_id: auction3.user_id, seller_id: Product.find(auction3.product_id).user_id, staff_id: auction_staff.id, reason_report: "Khach hang khong thanh toan", result_report: "Nguoi mua bi tru diem")

# # # Auction session mock data
# # auction_session1_0 = AuctionSession.create(auction_id: auction1.id, users_id: user2.id, price: 20000)
# # auction_session1_1 = AuctionSession.create(auction_id: auction1.id, users_id: user4.id, price: 25000)
# # auction_session1_2 = AuctionSession.create(auction_id: auction1.id, users_id: user5.id, price: 40000)

# # auction_session2_0 = AuctionSession.create(auction_id: auction2.id, users_id: user3.id, price: 10000)
# # auction_session2_1 = AuctionSession.create(auction_id: auction2.id, users_id: user2.id, price: 15000)
# # auction_session2_2 = AuctionSession.create(auction_id: auction2.id, users_id: user4.id, price: 30000)

# # auction_session3_0 = AuctionSession.create(auction_id: auction3.id, users_id: user2.id, price: 15000)
# # auction_session3_1 = AuctionSession.create(auction_id: auction3.id, users_id: user3.id, price: 40000)

# # auction_session4_0 = AuctionSession.create(auction_id: auction4.id, users_id: user2.id, price: 15000)

# # auction_session5_0 = AuctionSession.create(auction_id: auction5.id, users_id: user6.id, price: 25000)

# # # Delete Auction Session mock data
# # delete_auction_session4 = DeleteAuctionSession.create(auction_session_id: auction_session4_0.id, users_id: auction_session4_0.user_id, reason: 1, reason_detail: "dat nham gia", is_verified: false, staff_id: auction_staff.id)

# # # Service
# # service1 = Service.create(name: "Dua san pham vao nhieu danh muc", description: "Nguoi ban duoc phep dua san pham cua minh vao nhieu danh muc khac nhau", service_price: 50000, duration: 90)
# # service2 = Service.create(name: "Su dung da ngon ngu cho san pham", description: "Thong tin cua san pham se duoc dich tuy vao ngon ngu lua chon cua nguoi dung", service_price: 60000, duration: 90)
# # service3 = Service.create(name: "Dang toi da 10 san pham trong thang", description: "Nguoi ban duoc phep dang toi da 10 san pham trong thang", service_price: 30000, duration: 30)
# # service4 = Service.create(name: "Dang toi da 20 san pham trong thang", description: "Nguoi ban duoc phep dang toi da 20 san pham trong thang", service_price: 40000, duration: 30)
# # service5 = Service.create(name: "Dang toi da 30 san pham trong thang", description: "Nguoi ban duoc phep dang toi da 30 san pham trong thang", service_price: 50000, duration: 30)

# # # Service register
# # service_register1 = ServiceRegister.create(users_id: Product.find(auction1.product_id).user_id, services_id: service1.id, start_time: Date.now, end_time: Date.now + service1.duration*24*3600, card_number: "1234********5678")
# # service_register2 = ServiceRegister.create(users_id: Product.find(auction1.product_id).user_id, services_id: service2.id, start_time: Date.now, end_time: Date.now + service2.duration*24*3600, card_number: "1234********5678")
# # service_register3 = ServiceRegister.create(users_id: Product.find(auction1.product_id).user_id, services_id: service3.id, start_time: Date.now, end_time: Date.now + service3.duration*24*3600, card_number: "1234********5678")
# # service_register4 = ServiceRegister.create(users_id: Product.find(auction2.product_id).user_id, services_id: service5.id, start_time: Date.now, end_time: Date.now + service5.duration*24*3600, card_number: "1234********5678")
# # service_register5 = ServiceRegister.create(users_id: user1.id, services_id: service3.id, start_time: Date.now, end_time: Date.now + service3.duration*24*3600, card_number: "1234********5678")
# # service_register6 = ServiceRegister.create(users_id: user7.id, services_id: service5.id, start_time: Date.now, end_time: Date.now + service5.duration*24*3600, card_number: "1234********5678")

# # # Bill
# # bill1 = Bill.create(product_id: Product.find(auction2.product_id).id, card_number_buyer: "1234********5678", card_number_seller: "1234********5678", price: 30000, commission: 0.1, status: true, buyer_id: auction2.user_id, seller_id: Product.find(auction2.product_id).user_id)
# # bill2 = Bill.create(product_id: Product.find(auction3.product_id).id, card_number_buyer: "1234********5678", card_number_seller: "1234********5678", price: 20000, commission: 0.1, status: true, buyer_id: auction3.user_id, seller_id: Product.find(auction3.product_id).user_id)