class Item

    attr_reader :name

    ITEMS = []

    def initialize(params)
        @name= params[:item]
        ITEMS << self
    end    

    def self.all
        ITEMS 
    end    
end    