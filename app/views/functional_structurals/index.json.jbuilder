json.array!(@functional_structurals) do |functional_structural|
  json.extract! functional_structural, :id, :name, :jabatan, :nip, :nidn
  json.url functional_structural_url(functional_structural, format: :json)
end
