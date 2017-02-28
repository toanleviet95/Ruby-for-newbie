=begin
  RUBY FOR NEWBIE
=end
require 'date'

# Hằng số viết hoa chữ cái đầu
puts '--- HẰNG SỐ ---'
VALUE = 'Toan'

# Gán giá trị
puts '--- GÁN GIÁ TRỊ ---'
name = 'Toan'
birthday = Date.parse('April 9, 1995')
puts "My name is #{name}"
puts "My birthday is #{birthday}"

# Khối lệnh
puts '--- KHỐI LỆNH ---'
puts [2,-1,3,4].delete_if{ |x| x < 0 }
[1,2,3].each do |x|
  print x
end
puts

# Phạm vi hoạt động của biến
puts '--- PHẠM VI HOẠT ĐỘNG CỦA BIẾN ---'
$global_var = nil # $ => Toàn cục
@instance_var = nil # @ => Instance
#@@class_var = nil # @@ => Class

# Đọc dữ liệu vào
puts '--- ĐỌC DỮ LIỆU ---'
puts 'Type your name:'
name = gets
puts 'Hello ' + name

# Phương thức và truyền tham số
puts '--- PHƯƠNG THỨC VÀ TRUYỀN THAM SỐ ---'
def rectangle a, b
  a*b
end
puts rectangle 2, 5

# Ví dụ về biến instance và biến class
puts '--- VÍ DỤ VỀ BIẾN INSTANCE VÀ BIẾN CLASS ---'
class Being
  @@is = true
  def initialize name
    @name = name
  end

  def to_s
    "This is #{@name}"
  end

  def does_exist?
    @@is
  end
end
p1 = Being.new "p1"
p2 = Being.new "p2"
puts p1, p2
puts p1.does_exist?
puts p2.does_exist?

# Các phương thức từ những đối tượng cho sẵn
puts '--- PHƯƠNG THỨC TỪ ĐỐI TƯỢNG CHO SẴN ---'
puts 6.class
puts 6.odd?
puts 6.even?
puts "Ruby".class
4.times { puts "Ruby" }
puts "Ruby".size
puts "Ruby".downcase
puts [1,2,3].class
puts [1,2,3].include? 3
puts [1,2,3].empty?
puts :name.class
puts :name.frozen?
puts (1..6).class
puts (1..6).include? 4

# Tính kế thừa
puts '--- TÍNH KẾ THỪA ---'
class Mining
  def to_s
    'This is Being'
  end
  def get_id
    9
  end
end
class Living < Mining
  def to_s
    'This is Living'
  end
end
l = Living.new
puts l
puts l.get_id
puts l.is_a? Mining

# Kiểu Symbol trong ruby tương tự như enum trong Java, C++
# Symbol không thể thay đổi giá trị và thường được dùng làm khóa trong bảng băm
puts '--- KIỂU SYMBOL ---'
domains = {:vi => 'Vietnam', :us => 'USA'}
puts domains.class
puts domains[:vi]
puts domains.keys
puts domains.values

# Ngoài ra symbol còn dùng để làm flag đánh dấu
light = :on
if light == :on
  puts 'The light is on'
else
  puts 'The light is off'
end

# Kiểu số nguyên thường là Fixnum hoặc Bignum
# Bignum cho phép có thể có dấu gạch dưới để dễ đọc
puts '--- KIỂU SỐ NGUYÊN ---'
puts 23482385629 == 23_482_385_629

# Kiểu số thực thường là Float hoặc Bigdecimal
# Định dạng lại kiểu hiển thị số chấm động
puts '--- KIỂU SỐ THỰC ---'
puts sprintf "%.4f" % (1/3.0)

# Số hữu tỉ Rational có thể biểu diễn dưới dạng phân số
puts '--- KIỂU SỐ HỮU TỈ ---'
puts 1.5.to_r

# String trong Ruby
# In kí tự đặc biệt \n: xuống dòng \r: đưa dấu nháy về đầu dòng \t: cách giống TAB \b: xóa kí tự đứng trước nó
puts '--- KIỂU STRING ---'
puts "one\ntwo\nthree\nfour"
puts "bbb\raaa"
puts "Joan\b\b\bane"
puts "Towering\tinferno"

# Lấy phần tử trong string
msg = "Ruby language"
puts msg["Ruby"] # Nếu tìm thấy thì in ra chuỗi nếu không thì in ra chuỗi rỗng
puts msg[-1] # Lấy kí tự cuối string
puts msg[0, 3] # [i, n] Lấy n kí tự từ vị trí i
puts msg[0..9] # Lấy từ vị trí 0..x

# Nối chuỗi
puts "Le" + " Viet" + " Toan"
puts "Le" << " Viet" << " Toan"
puts "Le".concat(" Viet").concat(" Toan")

# So sánh chuỗi
puts "Le" == "Le"
puts "Le".eql? "Toan"

# Dùng <=>
# Trả về 1: trái > phải -1: trái < phải 0: trái = phải
puts "b" <=> "a"

# Các phương thức trong string
word = "Methods"
puts word.include? "tho"
puts word.empty?
puts word.upcase
puts word.downcase
puts word.capitalize
puts word.swapcase
puts word.start_with? "Me"
puts word.end_with? "ds"
word = "Methods\n\n"
puts word.inspect # In thẳng kí tự \n ra

# Định dạng in chuỗi
# %d: hệ 10 %x: hệ 16 %o: hệ 8 %b: hệ nhị phân %e: hệ mũ
puts "My name is %s. I am %d years old" % ["Toan", 22]

# Câu lệnh điều kiện case
puts '--- CÂU LỆNH CASE ---'
domain = 'us'
case domain
  when 'us'
    puts "USA"
  when 'vi'
    puts "Viet Nam"
  else
    puts "Unknown"
end

# Vòng lặp for
puts '--- VÒNG LẶP FOR ---'
for i in 0..9 do
  print "#{i} "
end

# For và toán tử ... để duyệt hết
planets = ['Venus', 'Earth', 'Mars', 'Jupiter']
for i in 0...planets.length do
  print "#{planets[i]} "
end

# Câu lệnh break, next
puts '--- CÂU LỆNH BREAK, NEXT ---'
num = 0
while num < 100
  num += 1
  if num % 2 == 0
    next
  end
  print "#{num} "
end
puts

# Mảng
puts '--- MẢNG ---'
# Khởi tạo
a1 = Array.new
a2 = Array.new [1, 2, 3]
a3 = Array.new 6, 'coin'
puts [a1, a2, a3].inspect

# Lấy phần tử mảng con nhập vào mảng cha
a = [1,2,3,[3,4,5,[6,4,8,9]]]
puts a.flatten!.inspect

# Truy xuất phần tử trong mảng
alpha = %w{a b c d e f g h i j k}
puts alpha.first
puts alpha.last
puts alpha.at(3)
puts alpha[-1]
puts alpha[0, 3].inspect
puts alpha[2..6].inspect
puts alpha[2...6].inspect
puts alpha.values_at(1,2,5)
puts alpha.slice(2)
puts alpha.sample(3).inspect # Lấy n phần tử tại vị trí bất kì

# Thao tác trên mảng
# Nối mảng
arr1 = [1,2,3]
arr2 = [4,5,6]
puts arr1 + arr2
puts arr1.concat arr2

# So sánh và sao chép
puts arr1.eql? arr1.dup

# Kiểm tra rỗng
puts arr2.empty?

# Đảo ngược mảng
puts arr1.reverse!.inspect # Thêm dấu ! nếu muốn thay đổi giá trị phần tử trong mảng

# Vị trí của phần tử trong mảng
arr = [1,2,2,2,3,4,5,6,11]
puts arr.index 2
puts arr.rindex 4 # Tương tự nhưng tìm từ phải qua trái
puts arr.include? 6

# Tạo thành một string ngăn cách nhau bởi 1 kí tự
puts arr.join '-'

# Loại bỏ các giá trị trùng nhau trong mảng
puts arr.uniq!.inspect

# Thêm phần tử trong mảng
alpha = []
alpha.insert 0, 'E', 'F', 'G'

# Thêm vào cuối
alpha.push 'H'
alpha.push 'I', 'J', 'K'
alpha << 'L' << 'M'

# Thêm vào đầu
alpha.unshift 'A', 'B', 'C'

# Thêm tại 1 vị trí bất kì
alpha.insert(3, 'D')
puts alpha.inspect

# Xóa phần tử trong mảng
alpha = %w{ a b c d e f g h}

# Xóa phần tử đầu tiên
alpha.pop

# Xóa phần tử cuối cùng
alpha.shift

# Xóa tại vị trí bất kì
alpha.delete_at(0)

# Xóa phần tử có giá trị chỉ định
alpha.delete('d')
puts alpha.inspect

# Xóa toàn bộ mảng
puts alpha.clear
puts alpha.inspect

# Sắp xếp mảng
arr = %w{ Mercury Venus Earth Mars Jupiter Saturn Uranus Neptune Pluto }
puts "#{arr.sort}"
puts "#{arr.reverse}"
puts "#{arr.shuffle}" # Xáo trộn ngẫu nhiên

# Toán tử tập hợp trong mảng
A = [1, 2, 3, 4, 5]
B = [4, 5, 6, 7, 8]
union = A | B
isect = A & B
diff1  = A - B
diff2  = B - A
sdiff = (A - B) | (B - A)
puts "Union: #{union}"
puts "Intersection: #{isect}"
puts "Difference of A - B: #{diff1}"
puts "Difference of B - A: #{diff2}"
puts "Symmetric: #{sdiff}"

# Hash - Khác mảng ở chỗ là các phần tử không lưu theo chỉ số mà lưu theo khóa
puts '--- HASH ---'
# Khởi tạo
hash = Hash.new
hash[1] = "Jane"
hash.store(2, "Thomas")
puts hash

# Các thao tác trên Hash
hash = { :de => "Germany",
         :sk => "Slovakia",
         :no => "Norway",
         :us => "United States"
}

# Kiểm tra key có tồn tại
puts hash.has_key? :de
puts hash.include? :no
puts hash.key? :me
puts hash.member? :sk

# Kiểm tra value có tồn tại
puts hash.has_value? "Slovakia"
puts hash.value? "Germany"

# Duyệt hash
hash = { 1 => "Germany",
         2 => "Norway",
         3 => "United Kingdom",
         4 => "United States"
}
hash.each { |k, v| puts "Key: #{k}, Value: #{v}" }
hash.each_key { |key| puts "#{key}" }
hash.each_value { |val| puts "#{val}" }
hash.each_pair { |k, v| puts "Key: #{k}, Value: #{v}" }

# Xóa phần tử trong hash
hash = Hash.new
hash[1] = "Jane"
hash[2] = "Thomas"
hash[3] = "Robert"
hash[4] = "Julia"
hash[5] = "Rebecca"
hash.delete 4 # Xóa phần tử có khóa được chỉ định
hash.shift # Xóa phần tử đầu tiên
puts hash

# Trộn hash
hash1 = Hash.new
hash1[1] = "Jane"
hash1[2] = "Thomas"
hash2 = Hash.new
hash2[3] = "Robert"
hash2[4] = "Julia"
hash = hash1.merge hash2
puts hash
hash = hash1.update hash2
puts hash

# Hướng dối tượng
puts '--- HƯỚNG ĐỐI TƯỢNG ---'
# Quyền truy cập: private, protected, public
# Mặc định các thuộc tính là private, phương thức là public
class Some
  def initialize
    method1
    self.method2
    method2
  end
  private
  def method1
    puts 'method 1 is called'
  end
  protected
  def method2
    puts 'method 2 is called'
  end
end
s = Some.new

# Tính kế thừa
# Cả 3 loại tiếp cận đều được truyền lại cho lớp con ngay cả private
# Tính năng kế thừa trong Ruby không liên quan đến quyền truy cập
class Being
  def initialize
    puts 'Being is created'
  end
  private
  def get_name
    puts "Le Viet Toan"
  end
end

class Human < Being
  def initialize
    super
    puts 'Human is created'
  end
  def get_name
    super
  end
end
h = Human.new
h.get_name
puts Human.ancestors.inspect

# Phương thức super
# Có tác dụng gọi đến phương thức cùng tên ở lớp cha
class Base
  def show x=0, y=0
    p "Base class, x: #{x}, y: #{y}"
  end
end

class Derived < Base
  def show x, y
    super # Lấy x, y của lớp con
    super x # Lấy x của lớp con
    super x, y # Lấy x, y của lớp con
    super() # Không lấy x, y của lớp con
  end
end
d = Derived.new
d.show 3, 3

# Truy xuất thuộc tính bằng getter và setter
class Car
  attr_reader :name, :price
  attr_writer :name, :price
  # attr_accessor :name, :price # Tạo luôn getter và setter
  def to_s
    "#{@name}: #{@price}"
  end
end
c = Car.new
c.name = 'Porsche'
c.price = 23500
puts c

# Hằng số trong class
class MMath
  PI = 3.141592
end
puts MMath::PI

# Phương thức to_s trong class
class Trying
  def to_s
    "This is Trying class"
  end
end
t = Trying.new
puts t

# Overloading toán tử
class Circle
  attr_accessor :radius
  def initialize r
    @radius = r
  end
  def +(other)
    Circle.new @radius + other.radius
  end
end
c1 = Circle.new 5
c2 = Circle.new 6
c3 = c1 + c2
puts c3.radius

# Phương thức class
# Giống như biến có instance variable và class variable thì method cũng tương tự
class Circle
  def self.info
    'This is Circle class'
  end
end

# Các cách định nghĩa khác cho phương thức class
class Brick
  class << self
    def info
      'This is Brick class'
    end
  end
end

class Rock

end

def Rock.info
  'This is Rock class'
end
puts Circle.info
puts Brick.info
puts Rock.info


# Module
# Là một tập các phương thức, lớp, hằng số
# Do đó module cũng gần giống như lớp vậy
# Chỉ khác là module không thể tạo các đối tượng và không thể thừa kế
puts '--- MODULE ---'
module Forest
  class Rock ; end
  class Tree ; end
  class Animal ; end
end

module Town
  class Pool ; end
  class Cinema ; end
  class Square ; end
  class Animal ; end
end
p Forest::Tree.new
p Forest::Rock.new
p Town::Cinema.new
p Forest::Animal.new
p Town::Animal.new

# Ruby hỗ trợ đa kế thừa thông qua module
module Device
  def switch_on ; puts "on" end
  def switch_off ; puts "off" end
end

module Volume
  def volume_up ; puts "volume up" end
  def vodule_down ; puts "volume down" end
end

module Pluggable
  def plug_in ; puts "plug in" end
  def plug_out ; puts "plug out" end
end

class CellPhone
  include Device, Volume, Pluggable
  def ring
    puts "ringing"
  end
end

cph = CellPhone.new
cph.switch_on
cph.volume_up
cph.ring

# Exception
# Lỗi exception là lỗi xảy ra trong quá trình chương trình chạy
puts '--- EXCEPTION ---'
x = 35
y = 0

begin
  z = x / y
  puts z
rescue => e # Catch exception
  puts "Error: #{e}"
end

age = 17
begin
  if age < 18
    raise "Under 18 is not allowed" # Giải phóng exception, chương trình bị ngắt ngay tại đó
  end
  puts "Entry allowed"
rescue => e # Nếu không có rescue thì chương trình thoát luôn
  puts e
  p e
#ensure # Giống finally trong C#, Java .Những câu lệnh nằm sau từ khóa ensure sẽ được thực thi cho dù có xảy ra lỗi hay không
  #exit 0
end

# Biểu thức chính quy Regex
=begin
. Tìm bất kì ký tự nào
* Tìm kí tự đứng trước đó 0 hoặc nhiều lần
[ ] Tìm tất cả kí tự đứng trong cca8p5 dấu []
[^ ] TÌm tất cả kí tự không nằm trong cặp dấu
^ TÌm tại điểm bắt đầu của chuỗi
$ Tìm tại điểm kết thúc chuỗi
| Toán tử OR
=end
puts '--- REGEX ---'
# Ví dụ
re = Regexp.new 'Jane'
p 'Jane is hot'.match re # Dùng phương thức match so khớp chuỗi
p 'Jane is hot' =~ /Jane/ # Hoặc dùng toán tử trả về vị trí 0
p 'Jane is hot'.match %r{Jane}
p 'LunaJane is hot'.match /.Jane/ # Tìm bất kì kí tự nào theo sau bởi chuỗi Jane
p 'Code'.match /.?Code/ # Có thể có hoặc không có kí tự đứng trước nó

# Các biến đặc biệt
'Her name is Jane' =~ /name/
p $` # Lưu chuỗi nằm phía trước chuỗi cần tìm
p $& # Lưu chuỗi được tìm thấy
p $' # Lưu chuỗi nằm phía sau chuỗi cần tìm

# Anchor
p 'Programing Ruby'.match /^Ruby/
p 'Programing Ruby'.match /Ruby$/

text = 'The cat also known as the domestic cat is a small,
usually furry, domesticated, carnivorous mammal.'
p text.scan /cat/
p text.scan /\bcat\b/ # Tìm chuỗi con đứng một mình

# Gom nhóm kí tự trong []
p 'car'.match %r{[abc][a][rs]}
p 'car'.match /[a-r]+/
p '23af 433a 4ga'.scan /\b[a-f0-9]+\b/
p 'ABC'.match /[^a-z]{3}/

# Chỉ định số lượng kí tự
=begin
? - Có hoặc không có
* - Lặp lại 0 hoặc nhiều lần
+ - Lặp lại 1 hoặc nhiều lần
{n} - Chính xác n lần
{n,} - n lần hoặc nhiều hơn
{,n} - ít hơn hoặc bằng n lần
{n,m} - từ n đến m lần
=end
p 'Open source is the future'.scan /\b\w{2,4}\b/
p 'color colour colors colours'.scan /colou?rs/
p 'color colour colors colours'.scan /colou?rs?/
p 'color colour colors colour'.scan /\bcolor\b|\bcolors\b|\bcolour\b|\bcolours\b/

# Không phân biệt chữ hoa thường
p 'Jane'.match /jane/i

# Ví dụ email
emails = %w{admin@example.com jane@gmail.com ioah2423^as f3444@gmail.com}
pattern = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9]+\.[a-zA-Z.]{2,5}$/

emails.each do |email|
  if email.match pattern
    puts "#{email} matchs"
  else
    puts "#{email} does not match"
  end
end

# Ví dụ về URL
urls = %w{www.google.com http://stackoverflow.com}
pattern = /(www\.)?[-a-zA-Z0-9@:%._\+~#=]{2,256}\.[a-z]{2,6}\b([-a-zA-Z0-9@:%_\+.~#?&\/=]*)/

urls.each do |url|
  if url.match pattern
    puts "#{url} matchs"
  else
    puts "#{url} does not match"
  end
end

# File và Thư mục trong ruby
puts '--- FILE VÀ THƯ MỤC ---'

# Các lệnh in màn hình
print "Apple\n"
printf "There are %d apples\n", 3
putc 'K'
puts

# Ghi và đọc file
if !File.exist? 'input'
  f = File.new 'input', 'w'
  puts f.size
else
  File.open 'input', 'w' do |f|
    f.puts 'Ruby'
    f.write "Java\n"
    f << "Python\n"
  end
  File.readlines('input').each do |line|
    puts line
  end
end

# Thư mục
# Dir.mkdir "tmp"
# puts Dir.exists? "tmp"
# puts Dir.pwd # In ra đường dẫn đến thư mục
# Dir.chdir '..'
# puts Dir.pwd
# Dir.rmdir "tmp"
# puts Dir.exists? "tmp"




















