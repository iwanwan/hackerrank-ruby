class PlusMinus
  def self.count(size, numbers)
    size_of_positive = 0
    size_of_negative = 0
    size_of_zero     = 0
    for i in 0..(size-1)
      if numbers[i] > 0
        size_of_positive += 1
      elsif numbers[i] < 0
        size_of_negative += 1
      elsif numbers[i] == 0
        size_of_zero += 1
      end
    end

    <<EOL
#{sprintf("%.6f", size_of_positive/size.to_f)}
#{sprintf("%.6f", size_of_negative/size.to_f)}
#{sprintf("%.6f", size_of_zero/size.to_f)}
EOL
  end
end
