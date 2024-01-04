ActiveAdmin.register Feed do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :title, :content, :author, :img_url
  #
  # or
  #
  # permit_params do
  #   permitted = [:title, :content, :author, :img_url]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  index as: :blog do
    title do |feed|
      h4 feed.title, class: "title"
      div feed.created_at, class: "created_at"
    end
    body do |feed|
      div feed.content ,class: "content"
      img src: feed.img_url , class: "image_tag"
    end

  end


end
