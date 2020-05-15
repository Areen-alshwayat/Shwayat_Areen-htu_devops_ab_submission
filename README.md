---

---

<h2 id="upskilling-capstone-project">Upskilling CAPSTONE PROJECT</h2>
<p>This repository holds the Project and Dockerfile for the Konsul group website.</p>
<h2 id="develop-and-deploy-a-container-based-architecture">Develop and Deploy a Container-Based Architecture</h2>
<p>Use the rancher:stable Docker image to deploy Rancher and Use the <strong>orchestrator</strong> to manage your architecture for this assignment. Deploy an <strong>AKS</strong> cluster with three worker nodes, and connect it for management using the orchestrator.</p>
<h2 id="prerequisites">Prerequisites</h2>
<ul>
<li>Build a Docker image based on the current code, settings,  and environment</li>
<li>Deploy the image to <strong>Docker Hub</strong></li>
<li>Pull the image from <strong>Docker Hub</strong></li>
<li><strong>Create a Dockerfile</strong> to run  Application</li>
</ul>
<h2 id="requirements-used-in-project">Requirements used in project</h2>
<h2 id="install-dependencies-for-the-application.-to-do-so-we-need-to-issue----the-npm-install-command.">Install dependencies for the application. To do so, we need to issue    the <strong>npm install</strong> command.</h2>
<pre><code>$sudo apt install npm
</code></pre>
<h2 id="install-gridsome-cli-globally">Install Gridsome CLI globally</h2>
<pre><code>$sudo npm install --global @gridsome/cli
</code></pre>
<h2 id="used--gridsome-develop">Used  gridsome develop</h2>
<pre><code>$gridsome develop 
</code></pre>
<p>Run this command inside the project directory to start a local development server. The server will start at <code>http://localhost:8080/</code> with hot-reloading etc.</p>
<h2 id="to-use-a-container-youll-need-to-give-instructions-to-docker-via-a-file-called-dockerfile-in-the-root-of-project">To use a container, you’ll need to give instructions to Docker via a file called <code>Dockerfile</code> in the root of project</h2>
<pre><code>$nano DockerFile
</code></pre>
<h2 id="building-the-container">Building the container</h2>
<p>build the image, with a name, and optionally a tag</p>
<pre><code># Build an image
 $docker build -t arshwayat/node:14-alpine  .
</code></pre>
<h2 id="run-the-container">Run the container</h2>
<p>The image is created, so you can run a container based on it</p>
<pre><code>$docker run -p 80:80 -p 443:443 -d node:14-alpine
</code></pre>

