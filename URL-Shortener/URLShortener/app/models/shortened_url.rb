# == Schema Information
#
# Table name: shortened_urls
#
#  id         :bigint           not null, primary key
#  long_url   :string           not null
#  short_url  :string
#  user_id    :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Shortened_Url < ApplicationRecord
  
  validates :long_url, presence: true, uniqueness: true
  validates :short_url, uniqueness: true
  validates :user_id, presence: true

end
