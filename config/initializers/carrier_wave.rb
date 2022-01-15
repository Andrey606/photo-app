if Rails.env.production?
  CarrierWave.configure do |config|
    config.fog_provider = 'fog/aws',
    config.fog_credentials = {
      provider: 'AWS',
      aws_access_key_id: 'AKIAYNV274XCVI42R6FC',
      aws_secret_access_key: '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',
      region: 'eu-north-1'
    },
    config.fog_directory = 'andrews-photo-app-bucket',
    config.storage = :fog
    config.fog_public = false
  end
end