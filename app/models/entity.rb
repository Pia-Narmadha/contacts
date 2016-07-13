class Entity < ActiveRecord::Base
	scope:sorted ,lambda{order('entities.FirstName asc')}
	scope:search , lambda { |name| where('entities.FirstName like ?',"#{name}%")}
end
