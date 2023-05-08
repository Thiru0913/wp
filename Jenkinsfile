To copy the folder from local source to remote destination with SCP

scp -i /home/tvaddepudi/Downloads/devops.pem -r /var/lib/jenkins/workspace/wp_newjob/* ubuntu@13.232.158.212:/var/www/html/wordpress/

To copy the folder from local source to remote destination with rsync

rsync -e "ssh -i /home/tvaddepudi/Downloads/devops.pem" -r /var/lib/jenkins/workspace/wp_newjob/ ubuntu@13.232.158.212:/var/www/html/wordpress/

Here are the steps to create git personal access token:
In github, goto profile > settings > developer settings > personal access token > tokens classic > generate new token
Here are the steps to add git credentials in Jenkins global credentials
In Jenkins, go to "Credentials" > "System" > "Global credentials (unrestricted)" > "Add Credentials".
Choose the appropriate credential type (e.g., "Username with password"), and enter the details (e.g., github username, in password field enter personal access token) and give name for credentials

Here are the steps to add keypair in global credentials
In Jenkins, go to "Credentials" > "System" > "Global credentials (unrestricted)" > "Add Credentials".
Choose the appropriate credential type (e.g., "SSH Username with private key"), and enter the details for your keypair (e.g., username, private key, passphrase).
Give the credential a meaningful ID (e.g., "my-ssh-credential").
In your Jenkinsfile, use the withCredentials block to securely access the credential.










Jenkins file:

pipeline {
    agent any
    environment {
        KEYPAIR_PATH = ''
    }
	
	stages {
		stage ("checkout") {
            steps {
                git branch: 'main', credentialsId: 'gitcred', url: 'https://github.com/Thiru0913/wp.git'

            }
        }
        stage('Deploy WP') {
            steps {
                withCredentials([sshUserPrivateKey(credentialsId: 'lampservercred', keyFileVariable: 'KEYPAIR_PATH', passphraseVariable: '')]) {
				sh 'rsync -e "ssh -i $KEYPAIR_PATH" -r /var/lib/jenkins/workspace/$JOB_NAME/ ubuntu@13.232.158.212:/var/www/html/wordpress/'
                    
                }
            }
        }
    }
}


Create wordpress website and create https site.

https://www.youtube.com/watch?v=8Uofkq718n8


AWS eks with terrraform:
https://www.youtube.com/watch?v=KsvfV5iuWqM


Aws eks with management console and terrafrom: imp
https://www.youtube.com/watch?v=KsvfV5iuWqM 
