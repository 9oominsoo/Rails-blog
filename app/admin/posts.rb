ActiveAdmin.register Post do

  index do
    selectable_column
    id_column
    column :title
    column :body
    column :author
    column :user
    column :likes_user do |obj|
      obj.likes.count
    end
    column :created_at
    column :updated_at
    actions
  end

  #filters
  filter :user
  filter :title
  filter :body

  #information that we can create or change
  form do |f|
    f.inputs do
      f.input :title
      f.input :body
      f.input :password_confirmation
    end
    f.actions #new post button
  end

end
