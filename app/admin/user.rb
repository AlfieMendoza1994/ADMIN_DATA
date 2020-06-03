ActiveAdmin.register User do
  permit_params :employee_number, :password, :password_confirmation

  index do
    selectable_column
    id_column
    column :employee_number
    column :created_at
    actions
  end

  filter :employee_number
  filter :created_at

  form do |f|
    f.inputs do
      f.input :employee_number
      f.input :password
      f.input :password_confirmation
    end
    f.actions
  end

  show do
    attributes_table do
      row :employee_number
      row :created_at
      row :updated_at
    end
  end
end
