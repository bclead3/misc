


a = lambda{|x|
  arry = [0,1]
  if x.to_i ===1
    puts arry.shift
  elsif x.to_i === 2
    puts arry.join(',')
  elsif x.to_i > 2
    arry.push(1)
    (3..x).each do |r|
      val = arry[r-1] + arry[r-2]
      arry << val
    end
    arry.pop
    puts arry.join(',')
  else
    puts "invalid input"
  end
}


(1..20).each do |i|
  a[i]
end