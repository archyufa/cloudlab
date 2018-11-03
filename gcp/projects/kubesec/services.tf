resource "google_project_services" "apis" {
  services = [
    "bigquery-json.googleapis.com",
    "clouddebugger.googleapis.com",
    "cloudresourcemanager.googleapis.com",
    "cloudprofiler.googleapis.com",
    "cloudshell.googleapis.com",
    "cloudtrace.googleapis.com",
    "compute.googleapis.com",
    "containerregistry.googleapis.com",
    "container.googleapis.com",
    "deploymentmanager.googleapis.com",
    "dns.googleapis.com",
    "iam.googleapis.com",
    "logging.googleapis.com",
    "monitoring.googleapis.com",
    "oslogin.googleapis.com",
    "pubsub.googleapis.com",
    "replicapool.googleapis.com",
    "replicapoolupdater.googleapis.com",
    "resourceviews.googleapis.com",
    "servicemanagement.googleapis.com",
    "serviceusage.googleapis.com",
    "sourcerepo.googleapis.com",
    "stackdriver.googleapis.com",
    "storage-api.googleapis.com",
    "storage-component.googleapis.com",
    "websecurityscanner.googleapis.com",
  ]
}
