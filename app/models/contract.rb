class Contract < ActiveRecord::Base
	has_many :alt_provs, :dependent => :destroy
	accepts_nested_attributes_for :alt_provs, :reject_if => lambda { |a| a[:parent_id].blank? }, :allow_destroy => true
end
