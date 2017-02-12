class Category < ApplicationRecord
	 has_one:category, dependent: :destroy
end
