# Kitchen Terraform Example

# Description 
Simple module to show how to configure / run basic unit tests on a GCP Terraform deployment.

## Prerequisites

### Requirements
- [ruby](https://www.ruby-lang.org/en/documentation/installation/)
- [bundler](https://github.com/bundler/bundler)
- [gcloud](https://cloud.google.com/sdk/install)
- [terraform-docs](https://github.com/segmentio/terraform-docs/releases) 0.3.0

### Setup
1. Install the  [Google Cloud SDK](https://cloud.google.com/sdk/docs/)
2. Create a Google Cloud [service account JSON key](https://cloud.google.com/iam/docs/creating-managing-service-account-keys)
3. Set the env variable `GOOGLE_APPLICATION_CREDENTIALS` to point to the service account key file
```bash
$ export GOOGLE_APPLICATION_CREDENTIALS='/path/to/key/file/terraform-test-project-feb7993e8660.json'
```
4. Install Ruby
5. Install necessary gems and dependencies from included `GEMFILE`
```sh
bundle install
```

## Inputs
| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| credentials\_file\_path | Path to GCP service account credentials file | string | | yes |
| project\_id | Project to create resources in | string |  | yes |
| bucket\_name | Name for the Google Cloud Storage Bucket to create | string |  | yes |

## Testing

### Integration test
Integration tests are run though [test-kitchen](https://github.com/test-kitchen/test-kitchen), [kitchen-terraform](https://github.com/newcontext-oss/kitchen-terraform), and [InSpec](https://github.com/inspec/inspec).

### Using kitchen
The following commands may be used for tests:
> Run Terraform module directly without tests
```sh
bundle exec kitchen converge
```

> Create Resources and run tests:
```sh
bundle exec kitchen verify
```

> Destroy Terraform resources:
```sh
bundle exec kitchen destroy
```
