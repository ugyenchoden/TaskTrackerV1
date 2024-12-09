# frozen_string_literal: true

module Renderer
  def execute(data, serializer: nil, associations: [])
    serializer ||= DocumentSerializer
    render json: serializer.new(data, { include: associations }).serializable_hash.to_json
  end
end
