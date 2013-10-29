class Category < ActiveRecord::Base
  attr_accessible :name

  has_many :short_names

  after_save :generate_short_names

  protected
    def generate_short_names
      short_name = PinYin.of_string(name)
      short_name_pinyin = short_name.join('')
      self.short_names << ShortName.create(name: short_name_pinyin)

      short_name_first_char = short_name.map do |string|
        string[0]
      end.join('')
      self.short_names << ShortName.create(name: short_name_first_char)
    end
end
