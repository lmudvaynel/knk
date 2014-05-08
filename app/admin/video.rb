ActiveAdmin.register Video do
	config.batch_actions = false
  config.sort_order = 'position_asc'

  sortable

  controller do
    def new
      @video = Video.new
    end

    def edit
      @video = Video.find(params[:id])
    end
  end


  index do
    sortable_handle_column
    column :position, :sortable => :position
        
    default_actions
  end
  
   form do |f|
    ft = f.template # just a helper variable
    f.inputs do
      f.input :position
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
