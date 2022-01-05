module Api 
    module V1 
        class DormitoriesController < ApplicationController
            def index
                dormitories = Dormitory.all

                render json: DormitorySerializer.new(dormitories, options).serialized_json
            end

            def show
                dormitory = Dormitory.find_by(slug: params[:slug])

                render json: DormitorySerializer.new(dormitory, options).serialized_json
            end
            
            def create
                dormitory = Dormitory.new(dormitory_params)

                if dormitory.save
                    render json: DormitorySerializer.new(dormitory).serialized_json
                else
                    render json: { error: dormitory.errors.messages}, status 422
                end
            end

            def update 
                dormitory = Dormitory.find_by(slug: params[:slug])

                if dormitory.update(dormitory_params)
                    render json: DormitorySerializer.new(dormitory, options).serialized_json
                else
                    render json: {error: dormitory.errors.messages}, status: 422
                end
            end

            def destroy
                dormitory = Dormitory.find_by(slug: params[:slug])

                if dormitory.destroy
                    head :no_content
                else
                    render json: {error: airline.errors.messages}, status: 422
                end
            end

            private

            def dormitory_params
                params.require(:dormitory).permit(:name, :image_url)
            end

            def options
                @options ||= { include: %i[reviews] }
            end
        end
    end
end