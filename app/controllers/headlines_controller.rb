class HeadlinesController < ApplicationController

    def index
        headline = Headline.all 
        render json: headline
    end
    
end
