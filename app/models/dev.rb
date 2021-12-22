class Dev < ActiveRecord::Base
    has_many :freebies
    has_many :companies, through: :freebies

    def received_one?(item_name)
        freebies.any? {|f| f.item_name == item_name} 
    end

    def give_away(dev, freebie)
      # update the dev of the freebie that is being given away
      # Freebie.update(id, :dev_id => dev.id) if freebie.includes(:freebie)
      # Dev.all.includes(:).where('freebie.item_name = ?', freebie.item_name)
      binding.pry
    end
end
