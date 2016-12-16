json.extract! calificacion, :id, :cal_puntuacion, :created_at, :updated_at
json.url calificacion_url(calificacion, format: :json)