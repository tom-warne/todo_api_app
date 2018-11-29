require 'simplecov'

SimpleCov.start do
  add_group  'API/V1',      'app/controllers/api/v1'
  add_group  'Channels',    'app/channels'
  add_group  'Controllers', 'app/controllers'
  add_group  'Jobs',        'app/jobs'
  add_group  'Mailers',     'app/mailers'
  add_group  'Models',      'app/models'
  add_group  'Serializers', 'app/serializers'

  add_filter 'config'
  add_filter 'spec'
end
