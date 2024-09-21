# {{ cookiecutter.project_name }}

This is a template repository for terraform projects so you can quickly get started.

In order to use this repository, you need to have the following tools installed:

- [Terraform](https://www.terraform.io/downloads)
- [Google Cloud SDK](https://cloud.google.com/sdk/docs/install)
- [Google Cloud CLI](https://cloud.google.com/sdk/docs/install)

## Usage

### Authenticate with Google Cloud:

You need to authenticate with Google Cloud in order to use the resources. You can do this by running the following command:

```
gcloud auth login --update-adc
```

This will give you application-default credential locally on your machine.

### Initialize the project:

This connects the terraform state to a remote location - a GCS bucket in this case.
State is used to keep track of the resources that are created and to prevent duplicate resources. You can keep the state local but its best practice to keep it remote.

In order to initialize the project, you need to run the following command:

```
cd terraform/
terraform init -backend-config=env/sbx.config
```

### Plan the resources:

In order to know what changes will be made to the resources, you run "plan" command. This will show you the changes that will be made to the resources. Its best practice to always plan before applying the changes in order to avoid any surprises. 

If you want to plan the changesto the resources, you can run the following command:

```
terraform plan -var-file=env/sbx.tfvars
```

### Apply the resources:

When you are ready to apply the changes, you can run the "apply" command. This will apply the changes to the resources. You will be prompted to approve the changes, type "yes" to apply the changes.

If you want to apply the resources, you can run the following command:

```
terraform apply -var-file=env/sbx.tfvars
```

### Destroy the resources:

To remove the resources that were created, you can run the "destroy" command. This will destroy all the resources that were created. Not so often used but its good to know how to destroy the resources fully. Terraform will normally destroy the resources that are not needed anymore.

If you want to destroy the resources, you can run the following command:

```
terraform destroy -var-file=env/sbx.tfvars
```