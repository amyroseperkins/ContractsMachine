authorization do
  role :admin do
    has_permission_on [:contracts, :alt_provs], :to => [:index, :show, :new, :create, :edit, :update, :destroy]
  end
  
  role :author do
    has_permission_on [:contracts], :to => [:index, :show]
  end
  
  
  role :guest do  
    has_permission_on :contracts, :to => [:index, :show]  
    has_permission_on :alt_prov, :to => [:index, :show]  
  end
  
end

	