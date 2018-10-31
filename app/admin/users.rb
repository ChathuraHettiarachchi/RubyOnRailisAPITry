# frozen_string_literal: true

# ActiveAdmin user
ActiveAdmin.register User do
  permit_params :first_name, :last_name, :address, :email, :description, :phone

  index do
    selectable_column
    id_column
    column :first_name, sortable: :first_name
    column :last_name, sortable: :last_name
    column :address, sortable: :address
    column :email, sortable: :email
    column :phone, sortable: :phone
    actions
  end

  form do |f|
    f.inputs do
      f.input :first_name
      f.input :last_name
      f.input :address
      f.input :email
      f.input :password
      f.input :password_confirmation
      f.input :description
      f.input :phone
    end
    f.actions
  end
end
