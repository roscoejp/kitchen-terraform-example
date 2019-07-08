yaml = YAML.load(inspec.profile.file('attributes.yml'))
project = yaml['project_id']
bucket = yaml['bucket_name']

title 'test'
control 'bucket_create' do
   impact 1.0
   title 'Check for requried bucket'
   desc 'An optional description...'
   describe google_storage_bucket(name: name) do
     it { should exist }
   end
 end
