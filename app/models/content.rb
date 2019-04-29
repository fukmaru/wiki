# == Schema Information
#
# Table name: contents
#
#  id           :bigint(8)        not null, primary key
#  body         :text
#  is_published :boolean
#  title        :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Content < ApplicationRecord
end
