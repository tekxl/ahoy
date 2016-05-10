module Ahoy
  class VisitsController < BaseController
    def create
      ahoy.track_visit
      render json: {visit_id: ahoy.visit_id, visitor_id: ahoy.visitor_id, visit_number: ahoy.visit_number}
    end
  end
end
