module BackendGallery
  class ApplicationController < ActionController::Base
    helper_method :_
    def _(str, args = {})
      return t(str, args.merge(:default => str))
    end
    
    before_filter :set_sub_resources
    def set_sub_resources
      @group = Group.find(params[:group_id]) if params[:group_id].to_i > 0
    end
  end
end
