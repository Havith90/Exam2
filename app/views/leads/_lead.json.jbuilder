json.extract! lead, :id, :nombre, :teléfono, :email, :fecha_ingreso, :statuses_id, :users_id, :created_at, :updated_at
json.url lead_url(lead, format: :json)
