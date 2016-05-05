# encoding: utf-8
class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :init_example_map
  before_filter :init_current_example_map


  layout :layout_by_resource

  protected

  def layout_by_resource
    if devise_controller?
      "login"
    else
      "application"
    end
  end

  def init_current_example_map
    @controller_file_to_show = 'app/controllers/' + controller_name + '_controller.rb'
    @controller_file = File.join(Rails.root, @controller_file_to_show)

    @view_files_dir = {}
    view_files_dir = File.join(Rails.root, 'app/views/' + controller_name)
    Dir.glob("#{view_files_dir}/*").each do |fullpath|
      fullpath =~ /^.+(app\/views\/.+)$/
      @view_files_dir[Regexp.last_match(1)] = fullpath
    end
  end

  def init_example_map
    @example_map = [
      ['REPORTES',
       [
         [:tickets, 'Reportes'],
         [:activities, 'Atenciones'],


       ]
      ],

      ['CATALOGOS',
       [
         [:customers, 'Clientes'],
         [:appliances, 'Dispositivos'],
         [:employees, 'Empleados'],
         [:situations, 'Estatus'],
         [:categories, 'Categorias'],
         [:priorities, 'Prioridades'],
       ]
      ]
    ]
  end


end
