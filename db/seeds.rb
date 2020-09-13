# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Sanpham.delete_all
Sanpham.create(:tieude => 'Những năm tháng rực rỡ',
    :tacgia => 'Ae-ran Kim',
    :theloai => 'Truyện',
    :namsanxuat => '2005',
    :noidung => 
    %{
        Bố mẹ có tôi khi mới mười bảy tuổi. 
        Năm nay tôi vừa tròn mười bảy. 
        Cũng chẳng có cách nào để biết chắc tôi có thể lớn lên thành mười tám hay mười chín tuổi hay không.
        Điều đó không do chúng tôi định đoạt.
        Điều duy nhất chúng tôi biết, là thời gian không còn nhiều.
        Bố nhìn vào tôi để thấy được khuôn mặt lúc ông tám mươi tuổi.
        Còn tôi nhìn vào bố để bắt gặp hình ảnh khi tôi ba mươi tư.
    },
    :anh => 'nntrr.jpg',
    :soluong => 20,
    :gia => 139000)
  
Sanpham.create(:tieude => 'Nếu như yêu',
    :tacgia => 'Thanh Lam Lạc Thác',
    :theloai => 'Văn Học',
    :namsanxuat => '2000',
    :noidung => 
    %{
        “Vì yêu nên lo, Vì yêu nên sợ Nếu không có yêu thương Thì không còn lo sợ.”
        Nếu như yêu giống như một lát cắt ngang qua cuộc đời hiện thực, 
        biểu hiện đầy đủ những sắc thái của yêu thương. 
        Vì yêu nên hy sinh, vì yêu nên khoan dung, 
        vì yêu nên tha thứ, vì yêu nên mạnh mẽ, 
        vì yêu nên điên cuồng… Nếu như yêu là một câu chuyện xúc động, 
        đầy tính nhân văn và tình người về quá trình đi tìm nguồn gốc xuất thân của hai cô gái, 
        xoay quanh họ là những mối quan hệ gia đình, bạn bè, 
        công việc có mâu thuẫn, có hiểu lầm, có xung đột, giận hờn, 
        nhưng trên hết lòng bao dung, tình yêu thương, 
        nhân ái giữa con người với con người luôn tràn đầy. 
        Nếu như yêu hãy biết hi sinh, cảm thông, chia sẻ và yêu thương lẫn nhau, 
        đừng để lại những niềm hối tiếc… 
    },
    :anh => 'nn.jpg',
    :soluong => 15,
    :gia => 79000)

Sanpham.create(:tieude => 'Giận',
    :tacgia => 'Thích Nhất Hạnh',
    :theloai => 'Tâm Lý',
    :namsanxuat => '2008',
    :noidung => 
    %{
        Khi ta giận, khi một ai đó làm cho ta giận, 
        ta phải trở về với thân tâm và chăm sóc cơn giận của mình. 
        Không nên nói gì hết. Không nên làm gì hết. 
        Khi đang giận mà nói năng hay hành động thì chỉ gây thêm đổ vỡ mà thôi… 
        Như thế là không khôn ngoan. Phải trở về dập tắt lửa trước đã… 
        Giận là một cuốn sách hay của Thiền sư Thích Nhất Hạnh, 
        nó mở ra cho ta những khả năng kỳ diệu, 
        nhưng lại rất dễ thực hành để ta tự mình từng bước... 
        thoát khỏi cơn giận và sống đẹp với xã hội quanh mình.
    },
    :anh => 'gian.jpg',
    :soluong => 30,
    :gia => 138000)

Sanpham.create(:tieude => 'Yêu trên từng ngón tay',
    :tacgia => 'Gari',
    :theloai => 'Tiểu Thuyết',
    :namsanxuat => '1998',
    :noidung => 
    %{
        Những truyện ngắn viết về cái nhìn của một cô gái luôn lạc quan với cuộc sống, 
        dù cuộc sống không ưu ái cho cô nhiều như những người khác. 
        Người ta không thấy tình yêu đôi lứa vẫn thường được lặp đi lặp lại qua hàng trăm, 
        hàng nghìn truyện ngắn người ta vẫn truyền tay nhau đọc, 
        mà đó là một thế giới tình yêu rộng lớn hơn, 
        gợi mở nhiều ước mơ và khao khát hơn.
    },
    :anh => 'yttnt.jpg',
    :soluong => 35,
    :gia => 99000)