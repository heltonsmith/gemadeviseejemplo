class MatriculasController < ApplicationController

    before_action :authenticate_user!

    def index 
        @usuarios = User.all 
        @asignaturas = Asignatura.all
        @us2 = User.find(current_user.id).asignaturas
    end

    def new 
        @u_id = params[:user_id]
        @a_id = params[:asig]

        @us = User.find(@u_id)
        @as = Asignatura.find(@a_id)

        @busqueda = User.find(@u_id).asignaturas.find_by_id(@a_id)

        if @busqueda == nil 
            @us.asignaturas << @as

            respond_to do |format|
                format.html { redirect_to "/matriculas/new", notice: "Éxito! Matriculado!" }
            end
        else
            respond_to do |format|
                format.html { redirect_to "/matriculas/new", notice: "Error: Ya se encuentra matriculado!" }
            end
        end
    end

    def eliminar 
        #User.find(1).asignaturas.delete(Asignatura.find(1))
        User.find(params[:us_id]).asignaturas.delete(Asignatura.find_by(nombre: params[:nom_as]))

        respond_to do |format|
            format.html { redirect_to "/matriculas/form", notice: "Matricula eliminada correctamente" }
        end
    end
end
