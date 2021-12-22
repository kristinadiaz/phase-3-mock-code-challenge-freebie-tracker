class Dev < ActiveRecord::Base
    has_many :freebies
    has_many :companies, through: :freebies

    def received_one?(item_name)
        freebies.any? {|f| f.item_name == item_name} 
    end

    def give_away(dev, freebie)
      if self == freebie.dev
        freebie.dev = dev
        freebie.save
    #  freebie.update(dev: dev) unless 
    #  freebie.dev != self
      end
    end
    
end
