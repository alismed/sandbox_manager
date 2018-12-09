json.extract! sandbox, :id, :name, :sandbox_type, :description, :start_date, :expected_end_date, :end_date, :owner, :owner_team, :created_at, :updated_at
json.url sandbox_url(sandbox, format: :json)
