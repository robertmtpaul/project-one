class PagesController < ApplicationController

    # before_action :check_if_logged_in, only: [ :home ]

    def welcome
    end

    def home
        # check_if_logged_in
    end

    private

end # Pages_controller