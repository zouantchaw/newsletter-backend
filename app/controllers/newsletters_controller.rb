class NewslettersController < ApplicationController

    def index
        newsletters = Newsletter.all 
        render json: newsletters
    end     

    def show
        newsletter = Newsletter.find_by(id: params[:id])
        render json: newsletter
    end

    def create 
        newsletter = Newsletter.create(issue: params[:issue])
        render json: newsletter
    end
    
    # Do I need to update newsletter? bc the issue is like a timestamp
    def update
        newsletter = Newsletter.find_by_id(params[:id])
        newsletter.issue = params[:issue]
    end

    # Do I need to destroy the associated data?
    def destroy
        newsletter = bike.find_by_id(params[:id])
        newsletter.logo.destroy
        newsletter.headline.destroy
        newsletter.body.destroy
        newsletter.social.destroy
        newsletter.destroy
        render json: newsletter
    end

end
 