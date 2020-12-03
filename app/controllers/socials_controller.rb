class SocialsController < ApplicationController

    def index
        socials = Social.all 
        render json: socials
    end
end

# fetch("http://localhost:3000/dogs", {
#     method: "POST",
#     headers: {
#       "Content-Type": "application/json",
#       "Accept": "application/json"
#     },
#     body: JSON.stringify({
#       dogName: "Byron",
#       dogBreed: "Poodle"
#     })
#   });