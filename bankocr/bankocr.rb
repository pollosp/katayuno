require 'colorize'

class Ocr
  Number_map = {
  '     |  |' => 1,
  ' _  _||_ ' => 2,
  ' _  _| _|' => 3,
  '   |_|  |' => 4

  }

  def parse_digit(digit)
   Number_map["#{digit}"]
  end
  def read_digit(account,position)
   width = 27/9
   pos_o = position * width
   pos_e = pos_o + width
   line1 = account[pos_o..pos_e-1]
   line2 = account[pos_o+27..pos_e+26]
   line3 = account[pos_o+54..pos_e+53]
   line1<<line2<<line3
  end
end
