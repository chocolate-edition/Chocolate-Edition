# Steps to build and publish new released

## compiling changes from github

1. ensure all intended changes have been merged to develop
2. pull the develop branch, then checkout to a new branch for the release

    ```git
    git checkout -b release/<version number>
    ```
3. update the version in `src/manifest.json`, `src/overrides/config/bcc-common.toml`, and `src/overrides/config/modpack-update-checker/config.json`
4. open the `/src/` folder of your git repo.
5. select all files, and send to a zip archive.

## client pack

5. open curseforge and "import" the .zip as a profile.
6. start the game an verify everything works in a single player world.
7. in curseforge, export the profile.
  when exporting, name it "The Chocolate Edition" and set the package version. ensure `config`, `defaultconfigs`,`kubejs`, `mods`, `resourcepacks`, `resources`, `scripts`, `shaderpacks`(**uncheck the shaderpack settings.txt files**), and `servers.dat` are checked. all others should remain unchecked.
8. once complete, you can safely delete the profile made from the git repo. create a new profile import using the zip you just exported.
9. start the game and verify everything works in a single player world.

## server pack

10. open server pack creator and load up the configuration included in this repo.\
    - click the green folder for `modpack directory` and choose your imported instance folder
    - click the green folder for `server properties` and choose the server.properties from this repo
    - click the green folder for `server icon` and choose the image found in this repo
11. click "Generate."
12. once the server pack has completed, run the server and connect to it via local host to verify everything works.
13. open your server pack folder and find the server pack zip that was just created. rename it to `The_Chocolate_Edition-<version>_server_pack.zip`.
14. copy the `how to start the server` instructions into the zip.

## verifying changes

15. in your local git repo, delete the `overrides` folder, then copy the contents (overrides, modlist, manifest) of the profile export into your git repo, replacing/overriding the existing modlist and manifest.
16. using vscode source control tab or github desktop, review the changes made by copying in the profile export. use <https://diffsort.com/> to compare changes in the modlist and manifest.
  ensure no unintended changes have been made. if not, correct the changes then start over from step 1.

  use the sorted version of the modlist from diffsort(make sure the opening <u> has no / while the closing </u> does).\
  sort the manifest files by project id using [sort json extension](https://marketplace.cursorapi.com/items?itemName=Thinker.sort-json).

17. edit the manifest in the profile export zip to ensure the title, version, and author are correct.
  add the release details to `modpackUpdateChecker/meta.json`, with the changelog in `modpackUpdateChecker/versions/<version>/changelog.txt`
  options for updateType are
    "minor"
    "minor_breaking": Will show a backup screen upon entering an older world.
    "major": Will show a backup screen upon entering an older world.
    "incompatible": Will prevent users from entering old worlds.

## uploading

18. go [here](https://authors.curseforge.com/#/projects/888414/files) and click "upload file."
19. choose the profile export zip with the corrected manifest, bcc and modpacka update checker configs, set the modloader to forge and set the minecraft version to 1.19.2
20. while it is uploading, use the items in the "done for this update" column of the [todo list](https://github.com/orgs/chocolate-edition/projects/1) to write the changelog.
  the changelog can be split up into `features`, `changes`, and `bug fixes`. use your discretion as to what is what. be descriptive yet succinct about the changes. see past changelogs for examples.
21. once the file upload is complete, click "upload file" at the bottom of the page.
22. the page will not refresh or indicate that the upload was successful, so in a new tab, check the [project files page](https://authors.curseforge.com/#/projects/888414/files) and see that the new release is `processing` or `under review`. periodically refresh this page to monitor the status.
  if the status is changed to denied, check your curseforge notifications for the reason. resolve the issues, then start over from step 1.
23. once you see that the client pack has been changed to approved, open the dropdown for the file, and click "add additional files"
24. choose your server pack zip with the instructions included.
25. under "additional info" choose "server pack"
26. copy the changelog from the client pack.
27. once the uplaod is ready, press "upload file" at the bottom of the page.
28. the page will not refresh or indicate that the upload was successful, so in a new tab, check the [project files page](https://authors.curseforge.com/#/projects/888414/files) and see that the new release is `processing` or `under review`. periodically refresh this page to monitor the status.
  if the status is changed to denied, check your curseforge notifications for the reason. resolve the issues, then start over from step 10.

## finalizing

29. once you see that both uploads have been approved, commit your changes in git and push your branch. open a pull request from your branch to develop and paste the changelog in the pull request description.
30. request review from Jonah-Hansen, and GildedToxin. once approved, merge to develop and delete your branch, then open a pull request from develop to main. title it with the version number and link to the previous pull request in the description. request review again from Jonah-Hansen, and GildedToxin.
31. once approved, merge. on the [todo list](https://github.com/orgs/chocolate-edition/projects/1), click the 3 dots for the column "done for this update" and choose "archive all"
32. make an announcement in the discord Announcements channel. link to the client pack file and server pack file on curseforge and provide an explanation for the update and screenshots if relevant. paste the changelog and ping @everyone.

### you did it!! good job

its a long and tedious process, but following these steps closely ensures that new updates are received well and that we maintain a consistent level of quality.
