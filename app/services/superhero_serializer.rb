class SuperheroSerializer

  def initialize(superhero_object)
    @superhero = superhero_object
  end

  def to_serialized_json
    @superhero.to_json({
      except: [:created_at, :updated_at]
    })
  end
  
end
