class EmailsController < ApplicationController
    def index
        @emails = Email.all
    end

    def create
        @email = Email.create(email_params)
        @email.read = false
        if @email.save
            respond_to do |format|
                format.html { redirect_to "/" }
                format.js
            end
        end
    end

    def show
        @email = Email.find(params[:id])
        @email.read = true
        @email.save
        respond_to do |format|
            format.html { redirect_to "/" }
            format.js
        end
    end

    def destroy
        @email = Email.find(params[:id])
        @email.destroy
        respond_to do |format|
           format.html { redirect_to "/" }
           format.js
        end
     end

    private

    def email_params
        params.permit(:object, :body, :read)
    end
end