ActiveAdmin.register User do

  index do
    #table
    selectable_column #check box
    id_column
    column :email
    column :current_sign_in_at
    column :sign_in_count
    column :created_at
    actions
  end

  #filters
  filter :email
  filter :current_sign_in_at
  filter :sign_in_count
  filter :created_at

  #information that we can create or change
  form do |f|
    f.inputs do
      f.input :email
      f.input :password
      f.input :password_confirmation
    end
    f.actions #new user button 
  end

end
