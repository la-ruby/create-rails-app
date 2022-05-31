{
  'DEVELOPER_EMAIL' => 'testing@example.com',
  'DEVELOPER_PASSWORD' => 'testing'
}.each do |k,v|
  # If a value is provideed in ENV, use that,
  # fall back to whatever the hash value provides
  Object.const_set(
    k,
    ENV[k] || v)
end
