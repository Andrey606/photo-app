# if Rails.env.production?
  CarrierWave.configure do |config|
    config.fog_provider = 'fog/aws'
    config.fog_credentials = {
      provider: 'AWS',
      aws_access_key_id: "AKIAYNV274XCVFJXATNK",
      aws_secret_access_key: "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",
      region: 'eu-north-1'
    }
    config.fog_directory = "andrews-photo-app-bucket"
    config.storage = :fog
  end
# end