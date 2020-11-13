ActiveAdmin.register Product do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :name, :quantity_per_unit, :unit_price, :unit_stock, :category_id, order_details_attributes: [:id, :order_id, :order_details_id, :order, :unit_price, :quantity, :discount, :_destroy], orders_attributes: [:id, :order_date, :ship_name, :ship_address, :ship_date, :ship_postal, :ship_country, :_destroy]

  index do
    selectable_column
    column :id
    column :name
    column :quantity_per_unit
    column :unit_price
    column :unit_stock
    column :ordered_by do |order_detail|
      order_detail.orders.map { |o| o.ship_name }.join(", ").html_safe
    end
    actions
  end

  show do |order_detail|
    attributes_table do
      row :name
      row :quantity_per_unit
      row :unit_price
      row :unit_stock
      row "Ordered by" do |order_detail|
        order_detail.orders.map { |o| o.ship_name }.join(", ").html_safe
      end
      row "Ordered On" do |order_detail|
        order_detail.orders.map { |o| o.order_date }.join(", ").html_safe
      end
      row :order_details do |order_detail|
        order_detail.orders
      end
    end
  end

  form do |f|
    f.semantic_errors *f.object.errors.keys
    f.inputs "Products" do
      f.input :name
      f.input :quantity_per_unit
      f.input :unit_price
      f.input :unit_stock
      f.has_many :orders, allow_destroy: true do |n_f|
        n_f.input :ship_name
        n_f.input :order_date
        n_f.input :ship_name
        n_f.input :ship_address
        n_f.input :ship_date
        n_f.input :ship_postal
        n_f.input :ship_country
        #n_f.input :unit_price
        #n_f.input :quantity
        #n_f.input :discount
      end
      f.input :category
    end

    f.actions
  end
  #
  # or
  #
  # permit_params do
  #   permitted = [:name, :quantity_per_unit, :unit_price, :unit_stock, :category_id]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

end
