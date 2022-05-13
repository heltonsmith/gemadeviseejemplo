class MatriculasController < ApplicationController

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
end
