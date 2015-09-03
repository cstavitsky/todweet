$twitter = Twitter::REST::Client.new do |config|
  config.consumer_key = 'Vw9bPHQW7gjKJcYFqhWVPXAnD'
  config.consumer_secret = 'jRIZpf3PLSRxgdX1UY5KiN7EUR6nv3WfR3VNZ7f5UgokKoVfXC'
  config.access_token = '769707451-ZKu1pxMulBfyKMVwDPbKYF3IkRNa3dVs5QeUlC57'
  config.access_token_secret = 'MbFhdn51bKP2ljj1RmDnl87kJ6EdDmaFZuW504a1aQgjP'
end

$twitter.update("testing twitter api!")
