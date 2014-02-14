class Parse
  def self.parse_names(prefixes, suffixes, name_string)
    parsed_name = { pre: '', first: '', middle: '', last: '', suffix: '' }

    word = name_string.split
    parsed_name[:suffix] = word.pop if suffixes.include? word.last
    parsed_name[:last] = word.last
    parsed_name[:pre] = word.shift if prefixes.include? word.first
    parsed_name[:first] = word.shift if word.count > 1
    parsed_name[:middle] = word.first if word.count > 1

    parsed_name.values
  end
end
