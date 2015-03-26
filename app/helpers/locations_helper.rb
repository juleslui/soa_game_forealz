module LocationsHelper
	def set_location
      @location = Location.find(params[:id])
    end
end
