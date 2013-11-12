json.array!(@proses) do |prose|
  json.extract! prose, :title, :text
  json.url prose_url(prose, format: :json)
end
