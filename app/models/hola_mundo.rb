class HolaMundo
  include Mongoid::Document
  field :nombre, type: String
  field :endad, type: Integer
end
