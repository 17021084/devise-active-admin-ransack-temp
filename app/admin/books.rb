ActiveAdmin.register Book do
  menu label: "Books" , priority: 1
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :title, :price, :author
  #
  # or
  #
  # permit_params do
  #   permitted = [:title, :price, :author]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  

end
