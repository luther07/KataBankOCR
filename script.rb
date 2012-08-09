def read_ocr(filename)
  File.open(filename).collect do |p|
    p
  end
end

def test(filename)
  test_array = read_ocr(filename)
  for i in 0..8
    start = i*3
    finish = (i*3)+2
    puts start
    puts finish
    puts compare((test_array[0][start..finish]) +
                 (test_array[1][start..finish]) +
                 (test_array[2][start..finish]))


    puts ((test_array[0][start..finish]) +
          (test_array[1][start..finish]) +
          (test_array[2][start..finish]))

    
  end
end

def compare(string)
  case string
  when '     |  |'
    1
  when ' _  _||_ '
    2
  when ' _  _| _|'
    3
  when '   |_|  |'
    4
  when ' _ |_  _|'
    5
  when ' _ |_ |_|'
    6
  when ' _   |  |'
    7
  when ' _ |_||_|'
    8
  when ' _ |_| _|'
    9
  when ' _ | ||_|'
    0
  else
    '?'
  end
end
