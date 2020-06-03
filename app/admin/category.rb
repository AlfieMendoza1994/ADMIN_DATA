ActiveAdmin.register Category do
  menu parent: 'Categories',
    label: 'Manage Categories', priority: 1

  permit_params :name

  index do
    selectable_column
    id_column
    column :name
    actions
  end

  filter :name

  form do |f|
    f.inputs do
      f.input :name
    end
    f.actions
  end
end
