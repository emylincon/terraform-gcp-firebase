# GCP Terraform
* first install gcloud cli. (Installation link)[https://cloud.google.com/sdk/docs/install]
    * for ubuntu
```
sudo apt-get install apt-transport-https ca-certificates gnupg -y
echo "deb [signed-by=/usr/share/keyrings/cloud.google.gpg] https://packages.cloud.google.com/apt cloud-sdk main" | sudo tee -a /etc/apt/sources.list.d/google-cloud-sdk.list
curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key --keyring /usr/share/keyrings/cloud.google.gpg add -
sudo apt-get update -y && sudo apt-get install google-cloud-sdk -y
```

* after installation, configure the gcloud credentials using the following command
```
gcloud init
```

* view login details
```
gcloud config configurations list
```
* revoke login
```
gcloud auth revoke
```
* create project from the google console
* navigate to service accounts using search bar and create a service account
* add a key to the service account and download the json credentials
* export credentials
```
export GOOGLE_APPLICATION_CREDENTIALS="/home/user/Downloads/service-account-file.json"
```
* example of exporting google credentials
```
export GOOGLE_APPLICATION_CREDENTIALS="emeka-experiment-bec12c71d2fd.json"
```
* describe project
```
gcloud compute project-info describe --project <project_name>
```

## Google services to enable
* enable `Cloud Resource Manager API` in the google console

* enable `App Engine Admin API ` for project in google console
https://console.cloud.google.com/apis/api/appengine.googleapis.com/overview?project={project-name}

* enable `firestore api`
https://console.developers.google.com/apis/api/firestore.googleapis.com/overview?project={project-name}

* enable `cloud firestore api`
https://console.developers.google.com/apis/api/firestore.googleapis.com/overview?project=22436404842


## Try creating firestore using this blog
https://binx.io/blog/2020/07/06/enabling-firestore-from-terraform/# terraform-gcp-firebase
