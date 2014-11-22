class BonusDrink
  BOURNUS_CONDITION = 3
  def self.total_count_for(amount)
	  total = add_bornus(amount)  	
    return total
  end

  private
  def self.add_bornus(amount)
  	bornus_count = 0
    BOURNUS_CONDITION.upto(amount) do |piece| 
      bornus_count += 
      	((piece + bornus_count) % BOURNUS_CONDITION == 0)? 1 : 0
    end
    return amount + bornus_count
  end
end