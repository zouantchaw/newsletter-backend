class LogosController < ApplicationController

    def index
        logos = Logo.all
        render json: logos
    end

    def create
        newsletter = Newsletter.find_by_id(params[:newsletter_id])
        logo = newsletter.logo.create(link: params[:link])
        render json: logo
    end
end
