## Perform the below operations on the existing pipeline 
* Create a credentials in Jenkins with ACESSKEY and Secret key, and then pass them as the credetntials throught the pipeline
* Create a way , so that users can enter there own accesskey and secretkey during the run time itself. 
* Add a approval step, so that user name `john` can only apply/destory the pipleine, And make sure the timeout is set to 10 MINUTES

## Bigger Project 
* Create a terraform script to provision 3 vm's (JenkinsMaster, JenkinsSlave, Sonar)
* The VM name should be defined by the USER.
* The VM configurations like MachineType, Zone, disk size all these information should be passed by the USER. 
* If the VM is JenkinsMaster/JenkinsSlave there should not be any action that should happen
    * If the VM is Sonar , automatically the sonar installtion should happen using user_data or any script of your choise 
* Our terraform code should be implementing using settings block, resource, variable, terraform.tfvars, outputs and if possible try to create multiple environments of the same infra using env.tfvars. 
* Different environments should have different values, that should be sent dynamically by the user. And the terraform apply command should be good enough to catch what environment it should execute. 
* Once the complete setup is done and its in the working state, migrate the same into a `module`
