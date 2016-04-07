class Book < ActiveRecord::Base
 
def self.search(query)
	where("book like?", "%#{query}%")
end

end
