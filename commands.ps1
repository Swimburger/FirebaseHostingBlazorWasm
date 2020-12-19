dotnet new blazorwasm -n BlazorWasmSample -o src;
dotnet new gitignore -o src;
firebase init
# output with prompts below:
<# 
     ######## #### ########  ######## ########     ###     ######  ########
     ##        ##  ##     ## ##       ##     ##  ##   ##  ##       ##
     ######    ##  ########  ######   ########  #########  ######  ######
     ##        ##  ##    ##  ##       ##     ## ##     ##       ## ##
     ##       #### ##     ## ######## ########  ##     ##  ######  ########

You're about to initialize a Firebase project in this directory:

  C:\Users\niels\source\repos\FirebaseHostingBlazorWasm

? Are you ready to proceed? Yes
? Which Firebase CLI features do you want to set up for this folder? Press Space to select features, then Enter to confirm your choices. Hosting: Configure and deploy Firebase Hosting sites

=== Project Setup

First, let's associate this project directory with a Firebase project.
You can create multiple project aliases by running firebase use --add,
but for now we'll just set up a default project.

? Please select an option: Create a new project
i  If you want to create a project in a Google Cloud organization or folder, please use "firebase projects:create" instead, and return to this command when you've created the project.
? Please specify a unique project id (warning: cannot be modified afterward) [6-30 characters]: blazor-wasm-sample2
? What would you like to call your project? (defaults to your project ID)
√ Creating Google Cloud Platform project
√ Adding Firebase resources to Google Cloud Platform project

=== Your Firebase project is ready! ===

Project information:
   - Project ID: blazor-wasm-sample2
   - Project Name: blazor-wasm-sample2

Firebase console is available at
https://console.firebase.google.com/project/blazor-wasm-sample2/overview
i  Using project blazor-wasm-sample2 (blazor-wasm-sample2)

=== Hosting Setup

Your public directory is the folder (relative to your project directory) that
will contain Hosting assets to be uploaded with firebase deploy. If you
have a build process for your assets, use your build's output directory.

? What do you want to use as your public directory? release/wwwroot
? Configure as a single-page app (rewrite all urls to /index.html)? Yes
? Set up automatic builds and deploys with GitHub? Yes
+  Wrote release/wwwroot/index.html

i  Authorizing with GitHub to upload your service account to a GitHub repository's secrets store.

Visit this URL on this device to log in:
[REDACTED]

Waiting for authentication...

+  Success! Logged into GitHub as Swimburger

? For which GitHub repository would you like to set up a GitHub workflow? (format: user/repository) Swimburger/FirebaseHostingBlazorWasm

+  Created service account github-action-322735214 with Firebase Hosting admin permissions.
+  Uploaded service account JSON to GitHub as secret FIREBASE_SERVICE_ACCOUNT_BLAZOR_WASM_SAMPLE2.
i  You can manage your secrets at https://github.com/Swimburger/FirebaseHostingBlazorWasm/settings/secrets.

? Set up the workflow to run a build script before every deploy? Yes
? What script should be run before every deploy? dotnet publish -c Release -o release src/BlazorWasmSample.csproj

+  Created workflow file C:\Users\niels\source\repos\FirebaseHostingBlazorWasm\.github/workflows/firebase-hosting-pull-request.yml
? Set up automatic deployment to your site's live channel when a PR is merged? Yes
? What is the name of the GitHub branch associated with your site's live channel? main

+  Created workflow file C:\Users\niels\source\repos\FirebaseHostingBlazorWasm\.github/workflows/firebase-hosting-merge.yml

i  Action required: Visit this URL to revoke authorization for the Firebase CLI GitHub OAuth App:
https://github.com/settings/connections/applications/89cf50f02ac6aaed3484
i  Action required: Push any new workflow file(s) to your repo

i  Writing configuration info to firebase.json...
i  Writing project information to .firebaserc...
i  Writing gitignore file to .gitignore...

+  Firebase initialization complete! 
#>

# add "release" to .gitignore so the publish output to the release folder isn't tracked by git
Add-Content -Path ./.gitignore -NoNewline -Value "$([Environment]::NewLine)release";