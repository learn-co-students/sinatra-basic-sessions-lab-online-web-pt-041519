class Cart 
    attr_reader :item

    def initialize(params)
        @item = params[:item]
    end    
end    