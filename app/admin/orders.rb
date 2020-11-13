ActiveAdmin.register Order do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :order_date, :ship_name, :ship_address, :ship_date, :ship_postal, :ship_country, :customer_id, order_details_attributes: [:id, :product_id, :order_details_id, :product, :unit_price, :quantity, :discount, :_destroy], products_attributes: [:id, :name, :quantity_per_unit, :unit_price, :unit_stock, :category_id, :_destroy]

  index do
    selectable_column
    column :id
    column :ship_name
    column :ship_address
    column :ship_date
    column :ship_postal
    column :ship_country
    column :customer
    column :order_details do |order_detail|
      order_detail.products.map { |o| o.name }.join(", ").html_safe
    end
    actions
  end

  show do |order_detail|
    attributes_table do
      row :order_date
      row :ship_name
      row :ship_address
      row :ship_date
      row :ship_postal
      row :ship_country
      row :customer
      row :order_details do |order_detail|
        order_detail.products.map { |o| o.name }.join(", ").html_safe
      end
      row :products do |prod|
        prod.orders.map {|pp| number_to_currency(pp.unit_price * 0.12 )}.join(", ").html_safe
      end
      row :products do |prod|
        prod.products.map {|pp| number_to_currency(pp.unit_price)}.join(", ").html_safe
      end
      row "taxes" do |order_detail|
        order_detail.products.map { |o| number_to_currency(o.unit_price * 0.12) }.join(", ").html_safe
      end
      row "Totals" do |order_detail|
        order_detail.products.map { |o| number_to_currency(o.unit_price) }.join(", ").html_safe
      end
    end
  end


  form do |f|
    f.semantic_errors *f.object.errors.keys
    f.inputs "Orders" do
      f.input :order_date
      f.input :ship_name
      f.input :ship_address
      f.input :ship_date
      f.input :ship_postal
      f.input :ship_country
      f.input :customer
      # f.has_many :products, allow_destroy: true do |ff|
      #   ff.input :unit_price
      # end
      f.has_many :order_details, allow_destroy: true do |n_f|
        n_f.input :product
        n_f.input :unit_price
        n_f.input :quantity
        n_f.input :discount
      end
    end
    f.actions
  end

  #
  # or
  #
  # permit_params do
  #   permitted = [:order_date, :ship_name, :ship_address, :ship_date, :ship_postal, :ship_country, :customer_id]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

end
