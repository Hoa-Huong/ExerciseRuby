class ExRuby
  def self.caculate a, b
    sum = a + b
    mul = a * b
    puts "Tong 2 so la #{sum}"
    puts "tich 2 so la #{mul}"
    if a > b
      puts "a lon hon b"
    else
      puts "a nho hon b"
    end
    if a%b == 0
      puts "a la boi cua a"
    elsif b%a == 0
      puts "b la boi cua a"
    else
      puts "a va b ko la boi cua nhau"
    end
  end

  def self.three_cornered a, b, c
    if a + b > c || a + c > b || b + c > a
      puts "3 so da nhap co the la 3 canh cua 1 tam giac"
      cv = a + b + c
      ncv = cv / 2
      s = Math.sqrt(ncv * (ncv - a) * (ncv - b) * (ncv - c))
      puts "Chu vi tam giac la: #{cv}"
      puts "Dien tich tam giac la: #{s}"
    else
      puts " 3 so da nhap ko the laf 3 canh tam giac"
    end
  end

  def self.temperaturef f
    c = (f - 32) / 1.8
    puts "#{f} °F = #{c} °C"
  end

  def self.temperaturec c
    f = c * 1.8 + 32
    puts "#{c} °C = #{f} °F"
  end

  def self.alphabe a
    regexp = [*('a'..'z')]
    if regexp.include? a
      puts "Ki tu nhap vao thuoc bang alphabet"
    else
      puts "Ki tu nhap ko thuoc bang alphabet"
    end
  end

  def self.songuyento n
    if n < 2
      return false
    else
      for i in 2..(n - 1) do
        if n % i == 0
          return false
        end
      end
      return true
    end
  end

  def self.ptichsnt n
    for i in 2..n do
        while n % i == 0 do
            puts "#{i}"
            n /= i;
        end
    end
  end

  def self.diemtb l, h, s, t, kh
    tb = (l + h + s + t + kh)/5
    if tb > 9
      puts "Loai A"
    elsif tb > 8
      puts "Loai B"
    elsif tb > 7
      puts "Loai C"
    elsif tb > 6
      puts "Loai D"
    else
      puts "Loai E"
    end
  end

  def self.inNso n
    a = Array.new()
    for i in 1..n do
      a << i
    end
    a.reverse!
    for i in 0..(n-1) do
      puts "#{a[i]}"
    end
  end

  def self.arrayduplicate1 (arr, n)
    for i in 0..(n-1) do
      for j in (i+1)..(n-1) do
        if arr[i] == arr[j]
          arr.delete_at(i)
        end
      end
    end
    return arr
  end

  def self.arrayduplicate2 (arr, n, arr1)
    for i in 0..(n-1) do
      if arr1.include?(arr[i]) == false
        arr1 << arr[i]
      end
    end
    return arr1
  end
  def self.tamgiac n
    for i in 1..n do
      for j in 1..i do
        print "#{j}"
      end
      print "\n"
    end
  end

  def self.tgnguoc n
    a = 2 * n - 1
    for i in 1..n do
      for j in 1..a do
        if i == 1
          printf "#{a}"
        elsif j < i || j > a + 1 - i
          printf " "
        else
          b = a - 2 *i + 2
          printf "#{b}"
        end
      end
      printf "\n"
    end
  end

  def self.UCLN a, b
    max = 0
    if a > b
      for i in 1..b do
        if b % i == 0
          if a % i == 0
            max = i
          end
        end
      end
    puts "UCLN cua #{a} va #{b} la: #{max}"
      return max
    elsif a < b
      for i in 1..a do
        if a % i == 0
          if b % i == 0
            max = i
          end
        end
      end
      puts "UCLN cua #{a} va #{b} la: #{max}"
    else
      puts "UCLN cua #{a} va #{b} la: #{a}"
    end
  end

  def self.bangcuuchuong n
    puts "bang cuu chuong #{n}"
    for j in 1..10 do
      kq = n * j
      puts "#{n} x #{j} = #{kq}"
    end
  end

  def self.ziczac numRows, numCols
    modulusVal = (numRows - 1) * 2
    for row in 0..numRows do
      for col in 0..numCols do
        modCol = col % modulusVal
          if modCol >= numRows
            modCol -= numRows
            modCol = (numRows - 1) - (modCol + 1)
          end
          modCol = (numRows - 1) - modCol

          if modCol == row
            printf "X"
          else
            printf" "
          end
      end
      printf "\n"
    end

  end
end


puts "nhap bai tap so : "
ex = gets.chomp.to_i
case ex
  when 1
    puts "Nhap 2 so tu nhien"
    printf "a = "
    a = gets.chomp.to_i
    printf "b = "
    b = gets.chomp.to_i
    ExRuby.caculate(a, b)
  when 2
    puts "Nhap 3 so tu nhien"
    printf "a = "
    a = gets.chomp.to_i
    printf "b = "
    b = gets.chomp.to_i
    printf "c = "
    c = gets.chomp.to_i
    ExRuby.three_cornered(a, b, c)
  when 3
    puts "Nhap do F"
    f = gets.chomp.to_f
    ExRuby.temperaturef f
  when 4
    puts "Nhap do C"
    c = gets.chomp.to_f
    ExRuby.temperaturec c
  when 5
    puts "nhap 1 ky tu bat ky:"
    a = gets.chomp
    ExRuby.alphabe(a)
  when 6
    puts "Nhap 1 tu nhien so bat ky"
    n = gets.chomp.to_i
    if ExRuby.songuyento(n)
      puts "#{n} la so nguyen to"
    else
      puts "#{n} khong phai so nguyen to"
    end
  when 7
    puts "Nhap diem"
    printf "Diem toan la: "
    t = gets.chomp.to_f
    printf "Diem ly la: "
    l = gets.chomp.to_f
    printf "Diem hoa hoc la: "
    h = gets.chomp.to_f
    printf "Diem sinh la: "
    s = gets.chomp.to_f
    printf "Diem khoa hoc may tinh la: "
    kh = gets.chomp.to_f
    ExRuby.diemtb(l, h, s, t, kh)
  when 8
    puts "Nhap so tu nhien N: "
    n = gets.chomp.to_i
    puts "In ra day so tu "
    ExRuby.inNso n
  when 9
    puts "So luong phan tu trong mang ban muon: "
    n = gets.chomp.to_i
    puts "Nhap lan luot #{n} phan tu"
    arr = Array.new()
    for i in 0..(n-1) do
      arr[i] = gets.chomp
      arr << arr[i]
    end
    ExRuby.arrayduplicate1(arr, n)
    p arr
  when 10
    puts "Nhap so tu nhien: "
    n = gets.chomp.to_i
    ExRuby.ptichsnt(n)
  when 11
    puts "Nhap so luong n: "
    n = gets.chomp.to_i
    puts "Tam giac:"
    ExRuby.tamgiac n
  when 12
    puts "so hang tam giac n: "
    n = gets.chomp.to_i
    puts "Tam giac: "
    ExRuby.tgnguoc(n)
  when 13
    puts "nhap 2 so: "
    printf "a = "
    a = gets.chomp.to_i
    printf "\nb = "
    b = gets.chomp.to_i
    ExRuby.UCLN(a, b)
  when 14
    puts "Bang cuu chuong cua so: "
    n = gets.chomp.to_i
    ExRuby.bangcuuchuong(n)
  when 15
    puts "Nhap so sao: "
    numRows = gets.chomp.to_i
    puts "nhap so cot"
    rows = gets.chomp.to_i
    numCols = rows * (numRows - 1)

    ExRuby.ziczac(numRows, numCols)
  when 16
    puts "So luong phan tu trong mang ban muon: "
    n = gets.chomp.to_i
    puts "Nhap lan luot #{n} phan tu"
    arr = Array.new()
    arr1 = Array.new()
    for i in 0..(n-1) do
      arr[i] = gets.chomp
      arr << arr[i]
    end
    ExRuby.arrayduplicate2(arr, n, arr1)
    p arr1
end
