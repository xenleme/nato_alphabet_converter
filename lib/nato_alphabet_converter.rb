module NatoAlphabetConverter
  def self.nato_alphaber
    nato = {
      a: 'Alpha', b: 'Bravo', c: 'Charlie', d: 'Delta',
      e: 'Echo', f: 'Foxtrot', g: 'Golf', h: 'Hotel',
      i: 'India', j: 'Juliet', k: 'Kilo', l: 'Lima',
      m: 'Mike', n: 'November', o: 'Oscar', p: 'Papa',
      q: 'Quebec', r: 'Romeo', s: 'Sierra', t: 'Tango',
      u: 'Uniform', v: 'Victor', w: 'Whiskey', x: 'X-ray',
      y: 'Yankee', z: 'Zulu'
    }
  end

  def self.convert_to_nato(str)
    result = []

    str.each_char do |char|
      if char != ' '
        result << "#{char.upcase} as #{self.nato_alphaber[char.to_sym]}"
      else
        result << ' '
      end
    end
    
    return result
  end
end
