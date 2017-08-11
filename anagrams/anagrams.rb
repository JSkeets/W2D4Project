require 'byebug'
def first_anagram(string1)
  return [string1, string1.reverse] if string1.length == 2
    anagrams = []
    string1.chars.each_with_index do |c,i|
      first_anagram(string1[0...i] + string1[i+1..-1]).each do |word|
        puts c + word
        anagrams << c + word
      end
    end
    anagrams
end

def checkanagram(string1,string2)
  first_anagram(string1).include?(string2)
end

def second_anagram(string1,string2)
  s1 = string1.chars
  s2 = string2.chars
  s1.each_with_index do |c1,i|
    id = s2.index(c1)
    return false if id.nil?
    s2.delete_at(id)
  end
  return true if s2.empty?
  false
end

def third_anagram(string1,string2)
  string1.chars.sort == string2.chars.sort
end

def fourth_anagram(string1,string2)
  s1_hash = Hash.new(0)
  s2_hash = Hash.new(0)

  string1.chars.each do |c|
    s1_hash[c] += 1
  end

  string2.chars.each do |c|
    s2_hash[c] += 1
  end

  s1_hash == s2_hash

end

def fourth_v2(string1,string2)

end
