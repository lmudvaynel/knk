ActiveAdmin.register Playlist do
  config.batch_actions = false
	actions :all, except: [:new, :destroy]

  index do
    column :name
        
    default_actions
  end
  
   form do |f|
    ft = f.template # just a helper variable
    f.inputs do
      f.input :name
    end
    f.form_buffers<< ft.content_tag(:div, class: "globalize-inputs globalize-content") do
      f.globalize_inputs :translations do |lf|
        lf.inputs do 
          lf.input :url
          lf.input :locale, :as => :hidden 
        end
      end
    end
    f.actions
  end

  
end
