class PhanSo
  attr_accessor :ts, :ms
  def initialize(ts, ms)
    @ts = ts
    @ms = ms
  end

  def +(obj)
    PhanSo.new(@ts.to_i * obj.ms.to_i + obj.ts.to_i * @ms.to_i, @ms.to_i * obj.ms.to_i)
  end

  def -(obj)
    PhanSo.new(@ts.to_i * obj.ms.to_i - obj.ts.to_i * @ms.to_i, @ms.to_i * obj.ms.to_i)
  end

  def *(obj)
    PhanSo.new(@ts.to_i * obj.ts.to_i, @ms.to_i * obj.ms.to_i )
  end

  def /(obj)
    PhanSo.new(@ts.to_i * obj.ms.to_i, @ms.to_i * obj.ts.to_i)
  end

  def self.input ts, ms
    ps = PhanSo.new(ts, ms)
    puts "Phan so la: #{ts}/#{ms}"
    return ps
  end

  def self.output ps
    puts "Ket qua la: #{ps.ts}/#{ps.ms}"
  end

end

puts "Nhap phan so thu 1 co"
puts "Tu so la: "
ts1 = gets.chomp
puts "Mau so la: "
ms1 = gets.chomp
ps1 = PhanSo.input(ts1, ms1)
puts "Nhap phan so thu 1 co"
puts "Tu so la: "
ts2 = gets.chomp
puts "Mau so la: "
ms2 = gets.chomp
ps2 = PhanSo.input(ts2, ms2)

puts "Chon phep tinh: "
puts "1. Cong"
puts "2. Tru"
puts "3. Nhan"
puts "4. Chia"
choose = gets.chomp.to_i
case choose
when 1
  ps = ps1+ps2
  PhanSo.output(ps)
when 2
  ps = ps1-ps2
  PhanSo.output(ps)
when 3
  ps = ps1*ps2
  PhanSo.output(ps)
when 4
  ps = ps1/ps2
  PhanSo.output(ps)
end
