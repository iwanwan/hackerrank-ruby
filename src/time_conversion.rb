class TimeConversion
  def self.convert(time)
    times = time.split(':')
    return '' unless times.size == 3

    am_pm = parse_am_pm(times[2])
    return '' unless am_pm

    hh = valid_hour(times[0])
    mm = valid_min_or_sec(times[1])
    ss = valid_min_or_sec(am_pm[1])

    return '' if hh.empty? || mm.empty? || ss.empty?

    if am_pm[2].downcase == 'pm' && hh.to_i < 12
      hh = (hh.to_i + 12).to_s
    elsif am_pm[2].downcase == 'am' && hh.to_i > 11
      hh = ('00').to_s
    end

    return [hh, mm, ss].join(':')
  end

  def self.valid_hour(hour)
    if hour.to_i >= 0 and hour.to_i <= 12
      hh = hour
    else
      hh = ''
    end

    hh
  end

  def self.valid_min_or_sec(value)
    if value.to_i >= 0 and value.to_i <= 59
      ret = value
    else
      ret = ''
    end

    ret
  end

  def self.parse_am_pm(value)
    value.match(/(\d{2})(AM|PM)$/i).to_a
  end
end
