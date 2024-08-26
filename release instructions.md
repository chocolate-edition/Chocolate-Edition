# Steps to build and publish new released

## compiling changes from github

1. ensure all intended changes have been merged to develop
2. pull the develop branch, then checkout to a new branch for the release

  ```git
  git checkout -b release/<version number>
  ```

3. open the root folder of your git repo.
4. select all files, and send to a zip archive.

## client pack

5. open curseforge and "import" the .zip as a profile.
6. start the game an verify everything works in a single player world.
7. in curseforge, export the profile.
  when exporting, name it "The Chocolate Edition - [FORGE]" and set the package version. ensure `config`, `defaultconfigs`, `mods`, `resourcepacks`, `resources`, `scripts`, `shaderpacks`, and `servers.dat` are checked. all others should remain unchecked.
8. once complete, you can safely delete the profile made from the git repo. create a new profile import using the zip you just exported.
9. start the game and verify everything works in a single player world.

## server pack

10. open server pack creator and load up the configuration included in this repo.
11. ensure that the profile you just created is selected.
12. click "Generate."
13. once the server pack has completed, run the server and connect to it via local host to verify everything works.
14. open your server pack folder and find the server pack zip that was jsut created. rename it to `The_Chocolate_Edition_<version>_server_pack.zip`.
15. copy the `how to start the server` instructions into the zip.

## verifying changes

16. in your local git repo, delete the `overrides` folder, then copy the contents (overrides, modlist, manifest) of the profile export into your git repo, replacing/overriding the existing modlist and manifest.
17. using vscode source control tab or github desktop, review the changes made by copying in the profile export. use https://diffsort.com/ to compare changes in the modlist and manifest.
  ensure no unintended changes have been made. if not, correct the changes then start over from step 1.
18. edit the manifest in the profile export zip to ensure the title, version, and author are correct.

## uploading

19. go [here](https://authors.curseforge.com/#/projects/888414/files) and click "upload file."
20. choose the profile export zip with the corrected manifest, set the modloader to forge and set the minecraft version to 1.19.2
21. while it is uploading, use the items in the "done for this update" column of the [todo list](https://github.com/orgs/chocolate-edition/projects/1) to write the changelog.
  the changelog can be split up into `features`, `changes`, and `bug fixes`. use your discretion as to what is what. be descriptive yet succinct about the changes. see past changelogs for examples.
22. once the file upload is complete, click "upload file" at the bottom of the page.
23. the page will not refresh or indicate that the upload was successful, so in a new tab, check the [project files page](https://authors.curseforge.com/#/projects/888414/files) and see that the new release is `processing` or `under review`. periodically refresh this page to monitor the status.
  if the status is changed to denied, check your curseforge notifications for the reason. resolve the issues, then start over from step 1.
24. once you see that the client pack has been changed to approved, open the dropdown for the file, and click "add additional files"
25. choose your server pack zip with the instructions included.
26. under "additional info" choose "server pack"
27. copy the changelog from the client pack.
28. once the uplaod is ready, press "upload file" at the bottom of the page.
29. the page will not refresh or indicate that the upload was successful, so in a new tab, check the [project files page](https://authors.curseforge.com/#/projects/888414/files) and see that the new release is `processing` or `under review`. periodically refresh this page to monitor the status.
  if the status is changed to denied, check your curseforge notifications for the reason. resolve the issues, then start over from step 10.

## finalizing

30. once you see that both uploads have been approved, commit your changes in git and push your branch. open a pull request from your branch to develop and paste the changelog in the pull request description.
31. request review from Jonah-Hansen, and GildedToxin. once approved, merge to develop and delete your branch, then open a pull request from develop to main. title it with the version number and link to the previous pull request in the description. request review again from Jonah-Hansen, and GildedToxin.
32. once approved, merge. on the [todo list](https://github.com/orgs/chocolate-edition/projects/1), click the 3 dots for the column "done for this update" and choose "archive all"
33. make an announcement in the discord Announcements channel. link to the client pack file and server pack file on curseforge and provide an explanation for the update and screenshots if relevant. paste the changelog and ping @everyone.

### you did it!! good job

its a long and tedious process, but following these steps closely ensures that new updates are received well and that we maintain a consistent level of quality.
