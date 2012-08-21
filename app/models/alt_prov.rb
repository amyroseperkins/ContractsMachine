class AltProv < ActiveRecord::Base
  acts_as_tree
  belongs_to :contract

  def parenthash
    @p_alt_prov = AltProv.find(self.parent_id)
    @omited = ["updated_at", "created_at", "parent_id", "contract_id", "id"]
    @dowork = {}
    @p_alt_prov.attribute_names.each do |elt|
      if !@omited.member?(elt)
        @dowork[elt] = @p_alt_prov.attributes[elt]
      end
    end
    return @dowork 
  end
  
  def hashforchild
    @alt_prov = AltProv.find(self)
    @omited = ["updated_at", "created_at", "parent_id", "contract_id", "id"]
    @dowork = {}
    @alt_prov.attribute_names.each do |elt|
      if !@omited.member?(elt)
        @dowork[elt] = @alt_prov.attributes[elt]
      end
    end
    return @dowork 
  end
  
end
