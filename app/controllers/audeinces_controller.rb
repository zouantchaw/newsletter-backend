class AudeincesController < ApplicationController

    def index
        audiences = Audeince.all
        render json: audiences
    end

    def create
        audience = Audeince.create(email: params[:email])
        render json: audience
    end 
end
