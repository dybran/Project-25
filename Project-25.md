## __Deploying and Packaging Applications into Kubernetes with Helm__


In [Project-24](https://github.com/dybran/Project-24/blob/main/Project-24.md), we gained hands-on experience with Helm, utilizing it to deploy applications on Kubernetes.

In this new project, our aim is to deploy a range of DevOps tools, gaining familiarity with common real-world challenges encountered during such deployments and learning how to troubleshoot them effectively. We will delve into modifying Helm values files to automate application configurations. As we progressively deploy various DevOps tools, we will engage with them, understanding their role within the DevOps cycle and their integration into the broader ecosystem.

Our primary focus will be on:

- Artifactory
- Ingress Controllers
- Cert-Manager

Artifactory is part of a suit of products from a company called [Jfrog](https://jfrog.com/). __Jfrog__ started out as an artifact repository where software binaries in different formats are stored. Today, Jfrog has transitioned from an artifact repository to a DevOps Platform that includes CI and CD capabilities. This has been achieved by offering more products in which Jfrog Artifactory is part of. Other offerings include

- __JFrog Pipelines__ -  a CI-CD product that works well with its Artifactory repository. Think of this product as an alternative to Jenkins.
- __JFrog Xray__ - a security product that can be built-into various steps within a JFrog pipeline. Its job is to scan for security vulnerabilities in the stored artifacts. It is able to scan all dependent code.

In this project, the requirement is to use Jfrog Artifactory as a private registry for the organisation's Docker images and Helm charts. This requirement will satisfy part of the company's corporate security policies to never download artifacts directly from the public into production systems. We will eventually have a CI pipeline that initially pulls public docker images and helm charts from the internet, store in artifactory and scan the artifacts for security vulnerabilities before deploying into the corporate infrastructure. Any found vulnerabilities will immediately trigger an action to quarantine such artifacts.

__Deploy Jfrog Artifactory into Kubernetes__

The best approach to easily get Artifactory into kubernetes is to use helm.

Search for an official helm chart for Artifactory on [Artifact Hub](https://artifacthub.io/).

![](./images/arti.PNG)

Click on __install__ to display the commands for  installation.

![](./images/arti2.PNG)
![](./images/arti3.PNG)


