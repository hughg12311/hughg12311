class WelcomeController < ApplicationController
    def getsales
        @allsales = Sale.all
    end

end
