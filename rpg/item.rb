class Item
    attr_reader :name, :offense, :heal
    def initialize(params)
        @name    = params[:name]
        @offense = params[:offense]
        @heal    = params[:heal]
    end
end