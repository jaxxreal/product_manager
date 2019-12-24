class ProductsController < ApplicationController
    def index
        @products = Product.all

        @properties = ProductProperty
            .select('properties.id', 'product_properties.value', 'properties.name', 'properties.product_id')
            .joins(:property)
            .all
    end

    def show
        @product = Product.find(params[:id])
    end

    def new
        @product = Product.new
        @product.upc = 10.times.map { rand(10) }.join
    end

    def create
        @product = Product.new(product_params)

        if @product.save
            params['properties'].each do |prop|
                property = @product.Properties.create(name: prop['name'])
                @product.ProductProperties.create(property_id: property.id, value: prop['value'])
            end

            redirect_to @product
        else
            render 'new'
        end
    end

    private
        def product_params
            params.require(:product).permit(:name, :upc, :available_on, properties: [:name, :value])
        end
end
