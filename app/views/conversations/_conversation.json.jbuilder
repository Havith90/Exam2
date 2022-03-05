json.extract! conversation, :id, :chat, :fecha_texto, :leads_id, :created_at, :updated_at
json.url conversation_url(conversation, format: :json)
