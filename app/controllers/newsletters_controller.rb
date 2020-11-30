class NewslettersController < ApplicationController

    def index
        newsletters = Newsletter.all 
        render json: newsletters
    end     

    def show
        newsletter = Newsletter.find_by(id: params[:id])
    end
end
 