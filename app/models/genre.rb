class Genre < ApplicationRecord
	has_many :contents
	has_many :edit_contents
end
