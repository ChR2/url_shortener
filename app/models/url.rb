class Url < ActiveRecord::Base
  belongs_to :user
  before_save :shortener
  validates_presence_of :origin_url
  validates_format_of :origin_url, :with => URI::regexp(%w(http https))

  private
  def shortener
    random_letters = Faker::Lorem.word.split('').sample(4)
    random_numbers = rand(100..900).to_s.split(//).sample(3)
    random_chars =random_letters.zip(random_numbers)
    self.short_url = random_chars.flatten!.shuffle.join('')
  end

end
