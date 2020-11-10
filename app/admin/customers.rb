ActiveAdmin.register Customer do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :name, :address, :city, :postal_code, :country, :phone, :province, :image, order_details_attributes: [:id, :product_id, :order_details_id, :product, :unit_price, :quantity, :discount, :_destroy]

  index do
    selectable_column
    column :id
    column :name
    column :address
    column :city
    column :province
    column :postal_code
    column :country
    column :phone
    column :order_ids do |order_detail|
      order_detail.orders.map { |o| o.products.ids }.join(", ").html_safe
    end
    actions
  end

  show do |order|
    attributes_table do
      row :name
      row :address
      row :city
      row :province
      row :postal_code
      row :country
      row :phone
      row :orders do |order|
        order.orders.map { |o| o.order_details.order(:order_date)}.join(", ").html_safe
      end
      row "Image" do |img|
        image_tag img.image
      end
    end
  end

  form do |f|
    f.semantic_errors *f.object.errors.keys
    f.inputs "Customer" do
      f.input :name
      f.input :address
      f.input :city
      f.input :province
      f.input :postal_code
      f.input :country
      f.input :phone
      f.input :image, as: :file, :hint => f.object.image.present? ? image_tag(f.object.image) : ""
    end
    f.actions
  end
  #
  # or
  #
  # permit_params do
  #   permitted = [:name, :address, :city, :postal_code, :country, :phone, :province]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

end
