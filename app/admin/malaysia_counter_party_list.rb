ActiveAdmin.register MalaysiaCounterPartyList do
  menu parent: 'Categories', priority: 2

  permit_params :security_type, :eight_bic, :eleven_bic, :name,
    :former_name, :former_cp_code, :former_bic, :category_id

  index do
    selectable_column
    column :name
    column :security_type
    column :eight_bic
    column :eleven_bic
    column :former_name
    column :former_cp_code
    column :former_bic
    column :category
    actions
  end

  filter :name

  form do |f|
    f.inputs do
      f.input :name
      f.input :security_type
      f.input :eight_bic
      f.input :eleven_bic
      f.input :former_name
      f.input :former_cp_code
      f.input :former_bic
      f.input :category
    end
    f.actions
  end
end
