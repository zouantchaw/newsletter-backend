class SocialsController < ApplicationController

    def index
        socials = Social.all 
        render json: socials
    end
end

