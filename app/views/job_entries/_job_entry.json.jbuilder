json.extract! job_entry, :id, :user_id, :job_id, :from, :until, :created_at, :updated_at
json.url job_entry_url(job_entry, format: :json)
