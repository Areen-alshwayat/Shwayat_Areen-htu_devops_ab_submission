---


---

<h2 id="upskilling-capstone-project">Upskilling CAPSTONE PROJECT</h2>
<p>This repository holds the Project and Dockerfile for the Konsul group website.</p>
<h3 id="develop-and-deploy-a-container-based-architecture">Develop and Deploy a Container-Based Architecture</h3>
<p>Use the rancher:stable Docker image to deploy Rancher and Use the <strong>orchestrator</strong> to manage your architecture for this assignment. Deploy an <strong>AKS</strong> cluster with three worker nodes, and connect it for management using the orchestrator.</p>
<h3 id="prerequisites">Prerequisites</h3>
<ul>
<li>Build a Docker image based on the current code, settings,  and environment</li>
<li>Deploy the image to <strong>Docker Hub</strong></li>
<li>Pull the image from <strong>Docker Hub</strong></li>
<li><strong>Create a Dockerfile</strong> to run  Application</li>
</ul>
<h3 id="requirements-used-in-project">Requirements used in project</h3>
<h5 id="install-dependencies-for-the-application.-to-do-so-we-need-to-issue----the-npm-install-command.">Install dependencies for the application. To do so, we need to issue    the <strong>npm install</strong> command.</h5>
<pre><code>$sudo apt install npm
</code></pre>
<h3 id="install-gridsome-cli-globally">Install Gridsome CLI globally</h3>
<pre><code>$sudo npm install --global @gridsome/cli
</code></pre>
<h3 id="used--gridsome-develop">Used  gridsome develop</h3>
<pre><code>$gridsome develop 
</code></pre>
<p>Run this command inside the project directory to start a local development server. The server will start at <code>http://localhost:8080/</code> with hot-reloading etc.</p>
<h5 id="you-should-see-the-following-output">You should see the following output:</h5>
<p><img src="https://github.com/Areen-alshwayat/Shwayat_Areen-htu_devops_ab_submission/blob/master/gridsome.png" alt="enter image description here"></p>
<h3 id="write-dokerfile">Write Dokerfile</h3>
<h5 id="to-use-a-container-youll-need-to-give-instructions-to-docker-via-a-file-called-dockerfile-in-the-root-of-project">To use a container, you’ll need to give instructions to Docker via a file called <code>Dockerfile</code> in the root of project</h5>
<p><img src="https://github.com/Areen-alshwayat/Shwayat_Areen-htu_devops_ab_submission/blob/master/Dockerfile.png" alt="enter image description here"></p>
<h3 id="building-image">Building Image</h3>
<p>build the image, with a name, and optionally a tag</p>
<pre><code># Build an image
 $docker build -t arshwayat/node:14-alpine  .
</code></pre>
<p><img src="https://github.com/Areen-alshwayat/Shwayat_Areen-htu_devops_ab_submission/blob/master/build%20-arshwayat-node.png" alt="enter image description here"></p>
<p><img src="https://github.com/Areen-alshwayat/Shwayat_Areen-htu_devops_ab_submission/blob/master/build-arshwayat-node%20-2.png" alt="enter image description here"></p>
<p><img src="https://github.com/Areen-alshwayat/Shwayat_Areen-htu_devops_ab_submission/blob/master/build%20finished.png" alt="enter image description here"></p>
<h3 id="run-the-container">Run the container</h3>
<p>create a container with this image using</p>
<pre><code>docker run -p 80:80 -p 443:443 -d arshwayat/node:14-alpine 
</code></pre>
<p><img src="https://github.com/Areen-alshwayat/Shwayat_Areen-htu_devops_ab_submission/blob/master/run%20image.png" alt="enter image description here"></p>
<h3 id="push-image-into-docker-hub">Push image into docker hub</h3>
<h6 id="push-your-image-to-the-repository-you-created">Push your image to the repository you created</h6>
<p><img src="https://github.com/Areen-alshwayat/Shwayat_Areen-htu_devops_ab_submission/blob/master/push%20image.png" alt="enter image description here"></p>
<h6 id="created--repository.-you-should-see">created  repository. You should see:</h6>
<p><img src="https://github.com/Areen-alshwayat/Shwayat_Areen-htu_devops_ab_submission/blob/master/DockerHub-image.png" alt="enter image description here"></p>
<h2 id="automated-builds-with-dockerhub_continuous-integration">Automated Builds With DockerHub_Continuous Integration</h2>
<p>Docker Hub can automatically build images ,that can trigger a build on DockerHub as soon as you commit a code  GitHub repository,image build is currently in queue,which will be scheduled eventually, and  image would be created. After that, anybody would be able to download the image.</p>
<p><img src="https://github.com/Areen-alshwayat/Shwayat_Areen-htu_devops_ab_submission/blob/master/Automated%20Build.png" alt="enter image description here"></p>
<p>Now to download this image, use:</p>
<pre><code>docker pull arshwayat/konsulweb-node:latest
</code></pre>
<h2 id="continuous-delivery-with-rancher">Continuous delivery with Rancher</h2>
<p>Rancher is a container management platform built for organizations that deploy containers in production. Rancher makes it easy to run  <code>kubernetes</code></p>
<h6 id="section"></h6>
<ol>
<li>Launch the following command to fetch the docker image <code>rancher/rancher</code> to run in a container with automatic restarting enabled in case the container fails:</li>
</ol>
<blockquote>
<p>docker run -d --restart=unless-stopped <br>
-p 80:80 -p 443:443 <br>
rancher/rancher:latest</p>
</blockquote>
<ol start="2">
<li>Once Rancher is installed, open a web browser and point it to rancher domain <a href="https://51.116.179.221/">https://51.116.179.221/</a>  The following page displays:<br>
user-name:admin<br>
pass:HTUDevOps1234</li>
</ol>
<p><img src="https://github.com/Areen-alshwayat/Shwayat_Areen-htu_devops_ab_submission/blob/master/Rancherpage.png" alt="enter image description here"></p>
<ol start="3">
<li><strong>Add Cluster</strong> to configure a new Kubernetes cluster.</li>
</ol>
<h5 id="deploying-a-cluster-workload-">Deploying a Cluster Workload :</h5>
<p>The cluster is ready now and the deployment of a first pod can take place.</p>
<ol start="4">
<li>The Rancher Dashboard displays:<br>
<img src="https://github.com/Areen-alshwayat/Shwayat_Areen-htu_devops_ab_submission/blob/master/Deploy.png" alt="enter image description here"></li>
</ol>
<p>The clusters dashboard displays. Click on <strong>Deploy</strong>:<br>
<img src="https://github.com/Areen-alshwayat/Shwayat_Areen-htu_devops_ab_submission/blob/master/Deploy2-.png" alt="enter image description here"></p>
<p><img src="https://github.com/Areen-alshwayat/Shwayat_Areen-htu_devops_ab_submission/blob/master/Deploy%20workload%20%202.png" alt="enter image description here"></p>
<blockquote>
<p>Enter a the details of the workload:<br>
<strong>Name</strong>: konsul app<br>
<strong>Docker Image</strong>: Enter  <a href="https://hub.docker.com"><code>arshwayat/konsulweb-node</code></a><br>
<strong>Add Port</strong>  to configure the port mapping<br>
-   <strong>Publish the container port</strong>: Set the value to port  <code>80</code><br>
-   <strong>Protocol</strong>: Set the value to  <code>TCP</code><br>
-   <strong>As a</strong>: Set the Value to  <code>layer-4 load Balancer</code><br>
-   <strong>Listening Port</strong>: Set the value to port  <code>80</code></p>
</blockquote>
<p><strong>Launch</strong> to create the workload.</p>
<p><img src="https://github.com/Areen-alshwayat/Shwayat_Areen-htu_devops_ab_submission/blob/master/Ransher-project-konsul.png" alt="enter image description here"></p>
<ol start="5">
<li>
<p>Once deployed, open a web browser and point it to <a href="http://52.170.2.101/">http://52.170.2.101/</a>  The KONSUL website display :<br>
<img src="https://github.com/Areen-alshwayat/Shwayat_Areen-htu_devops_ab_submission/blob/master/Konsul%20page%201.png" alt="enter image description here"></p>
<h2 id="nextcloud-_-deployment-with-rancher">Nextcloud _ Deployment with Rancher</h2>
<p><img src="https://github.com/Areen-alshwayat/Shwayat_Areen-htu_devops_ab_submission/blob/master/nextcloud_logo.png" alt="enter image description here"></p>
</li>
</ol>
<p><strong>Nextcloud</strong> is a suite of client-server software for creating and using file hosting services. <strong>Nextcloud</strong> is free and <code>open-source</code>, which means that anyone is allowed to install and operate it on their own private server devices.</p>
<blockquote>
<h2 id="architecture_nextcloud">Architecture_Nextcloud</h2>
</blockquote>
<p><strong>Nextcloud</strong> is designed to work with several database management systems, including <code>SQLite, MariaDB, MySQL, Oracle Database, and PostgreSQL</code></p>
<blockquote>
<h2 id="nextcloud-setup">Nextcloud setup</h2>
</blockquote>
<p><strong>Nextcloud</strong>  is designed to work with several database management systems, including <code>SQLite, MariaDB, MySQL, Oracle Database, and PostgreSQL</code></p>
<blockquote>
<h2 id="auto-configuration-via-environment-variables">Auto configuration via environment variables</h2>
</blockquote>
<p>-To enable auto configuration, set database connection via the<br>
following environment variable,I used <strong>PostgreSQL</strong>:</p>
<ul>
<li><code>POSTGRES_DB</code>  Name of the database using postgres.</li>
<li><code>POSTGRES_USER</code>  Username for the database using postgres.</li>
<li><code>POSTGRES_PASSWORD</code>  Password for the database user using postgres.</li>
</ul>
<p>-<strong>Click</strong>  Deploy button from Dashboard <strong>Rancher</strong> screen  to open workload for postgres_database and named by:<br>
<strong>postgresql-db</strong>  and fill the blank to setup the database information like this :<br>
<img src="https://github.com/Areen-alshwayat/Shwayat_Areen-htu_devops_ab_submission/blob/master/postgreworkload.png" alt="enter image description here"></p>
<p><img src="https://github.com/Areen-alshwayat/Shwayat_Areen-htu_devops_ab_submission/blob/master/envpostgre.png" alt="enter image description here"></p>
<p>-Then create the nextcloud workload  to setup container <strong>Nextcloud</strong> with <strong>port mapping</strong>  <code>which enables access to the service inside and outside of the cluster</code>  and  by set these varibales showing here:</p>
<p><img src="https://github.com/Areen-alshwayat/Shwayat_Areen-htu_devops_ab_submission/blob/master/next_cloud_image.png" alt="enter image description here"></p>
<p>-can additionally configure <strong>Nextcloud</strong> instance by setting <strong>admin user</strong> and <strong>password</strong> <code>only works if you set both</code>:</p>
<p><img src="https://github.com/Areen-alshwayat/Shwayat_Areen-htu_devops_ab_submission/blob/master/env_next_cloud.png" alt="enter image description here"></p>
<p>-After that set the data directory so used: <code>NEXTCLOUD_DATA_DIR</code> to configures the data directory where  <strong>Nextcloud</strong> stores all files from the users.</p>
<p>-<strong>Volumes</strong> are the preferred mechanism for persisting data generated by and used by <strong>Docker containers</strong>. Some use cases for volumes include:</p>
<ul>
<li>When that container stops or is removed, the volume still exists.</li>
<li>When you want to store your container’s data on a remote host or a cloud provider, rather than locally.</li>
<li>When you need to back up, restore, or migrate data from one Docker host to another, volumes are a better choice.</li>
</ul>
<blockquote>
<p>so in this container used volumes in this container, look at this :</p>
</blockquote>
<p><img src="https://github.com/Areen-alshwayat/Shwayat_Areen-htu_devops_ab_submission/blob/master/vol_next_cloud.png" alt="enter image description here"></p>
<p>Finally, the workload is deployed You can view the workload’s status from the project’s <strong>Workloads</strong> view:</p>
<p><img src="https://github.com/Areen-alshwayat/Shwayat_Areen-htu_devops_ab_submission/blob/master/activ_next_cloud.png" alt="enter image description here"></p>
<blockquote>
<p>open a web browser and point it to :<a href="http://40.76.212.96/">http://40.76.212.96/</a>:<br>
user-name: areen<br>
password: areenpasscloud<br>
<img src="https://github.com/Areen-alshwayat/Shwayat_Areen-htu_devops_ab_submission/blob/master/login_next_cloud.png" alt="enter image description here"></p>
</blockquote>
<p>After enter these inforamtion,you will I’ll get <strong>Nextcloud Web UI</strong> look at this:</p>
<p><img src="https://github.com/Areen-alshwayat/Shwayat_Areen-htu_devops_ab_submission/blob/master/page_next_cloud.png" alt="enter image description here"></p>
<blockquote>
<p>On the <strong>User management page</strong> of your Nextcloud Web UI you can:</p>
</blockquote>
<h4 id="create-new-user">Create new user</h4>
<p>To create a user account:</p>
<ul>
<li>Enter the new user’s  <strong>Login Name</strong>  and their initial  <strong>Password</strong></li>
<li>Optionally, assign  <strong>Groups</strong>  memberships</li>
<li>Click the <strong>button</strong></li>
</ul>
<p><img src="https://github.com/Areen-alshwayat/Shwayat_Areen-htu_devops_ab_submission/blob/master/user_next_cloud.png" alt="enter image description here"></p>
<p><img src="https://github.com/Areen-alshwayat/Shwayat_Areen-htu_devops_ab_submission/blob/master/add%20user-nextcloud.png" alt="enter image description here"></p>
<p><strong>you can access  this by using user-name and password I’ll give you as a user</strong>  :<br>
open a web browser and point it to :<a href="http://40.76.212.96/">http://40.76.212.96/</a>:</p>
<blockquote>
<p>user-name: <strong>user-DevOps</strong><br>
password: <strong>HTUDEVOPS1234</strong></p>
</blockquote>
<p><img src="https://github.com/Areen-alshwayat/Shwayat_Areen-htu_devops_ab_submission/blob/master/statping.png" alt="enter image description here"></p>

