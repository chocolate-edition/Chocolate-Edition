# The Chocolate Edition

1.19.2 - Custom Reworked Progression, 45+ Balanced Bosses, hundreds of unique areas/mobs to discover, multiple endings, multiplayer, and so much more!

Available on CurseForge at <https://www.curseforge.com/minecraft/modpacks/mc-chocolate-edition>

## Table of Contents  

- [Contribution Guide](#contribution-guide)
  - [creating issues](#creating-issues)
  - [typical workflow](#typical-workflow)
  - [getting everything set up](#getting-started)
    - [installing tools](#installing-tools)
    - [linking to GitHub](#linking-to-github)
    - [setting up VScode](#setting-up-vscode)
  - [useful git commands](#git-terminal-notes)

### for a better github notification experience without having your email spammed, try [notifier for github extension](https://github.com/sindresorhus/notifier-for-github)

update schedule working document: <https://docs.google.com/document/d/15oeWpq6uOxQ9vquVVf1IKi3XBqOKdQXLizz0_1SwWns/edit>

## Contribution guide

### Creating Issues

we use [the todo list](https://github.com/orgs/chocolate-edition/projects/1/views/1) to track our progress and act as a sort of changelog.

1. you can choose an existing issue and assign it to yourself, or create a new one by selecting "add item" at the bottom of a list and give it a title.

2. select "convert to issue" and choose the `chocolate-edition` repo.

3. provide as many details as possible regarding the bug and how to reproduce it, or about the intended feature to be added and why.

4. assign the issue to yourself and move it to the appropriate column
    - "todo" for thing you intend to complete before the next release
    - "in progress" for issues actively being worked on. if you give up on a fix, move it back to "todo" or "goals for next update"
    - "needs testing" for issues that have a open PR awaiting approval. you can add a comment to the issue and link it to the respective PR with a #
    - once a PR has been merged to develop, the issue can be closed with a comment linking the closing PR, and moved to "Done"

### Typical Workflow

**note:**
if your changes involve deleting a file from `/src/overrides/scripts/`, instead leave the file blank, then create a new issue on the todo list to delete the file as part of the next update. 

(this is due to a quirk with how ATLauncher automatic updates work and should jsut genreally help reduce the amount of people with broken scripts after an update) 

`main` represents the current latest release. It should only be merged to prior to a new version release. Do not touch it unless you just published a new version.

`develop` branch is the main development branch that represents the next release as it is developed.

1. checkout to `develop` and *pull.* this will ensure your local copy of the fiels are caught up with whats on GitHub.
    - in vscode, you can do this from the *source control* activity tab by clicking the 3 dots, the "checkout to" > develop
    - then the 3 dots again > "pull" (or press the big blue button if it says "pull)

2. Create a new branch derived from `develop`. name it "feature/my-feature-name"   (be sure to use all lowercase letters)
    in vscode you can do this from the `source control` activity tab.
    ![vscode new branch](<documentation screenshots/vscode new branch.png>)

3. open the repo in the file explorer (you can do this easily from vscode by right clicking any file and chose "reveal in file explorer")

4. select the contents of the `/src/` folder and send to archive. we reccommend using [Winrar](https://www.win-rar.com/start.html?&L=0) for all your zipping and unzipping needs. simply select the files, right click, then "add to archive"
    be sure to first delete any previous zips\
    be sure to select `ZIP` as your archive format.\
    ![add to archive](<documentation screenshots/winrar add to archive.png>)

5. open the archive using winrar, open the `manifest.json` with notepad, and change the "name", so that you can differentiate it. I would suggest naming it the same as your branch name.

6. open curseforge and *import* the zip you just created. once the import is complete, you can launch the instance and start a world, then start making your changes
    - you can enter edit mode for the questbook by clicking the pencil icon in the bottom right
    - you can edit some mod configs from the pause menu > mods > find the mod > config
    - you can add or remove mods from the cursefoge "content" tab for your instance. (be sure to close the game before changing mods)
    - any other files you need to change like `scripts` or other configs, you can click the 3 dots on your profile in curseforge and click "open folder". then find the file ins question and open with a text editor (vscode is reccomened)

7. be sure to test your changes as you make them. once you are satisfied with the changes, *export* your profile from curseforge.
    to do so, click the 3 dots on your profile, and click "export profile"\
    ensure only `config`, `defaultconfigs`, `mods`, `resourcepacks`, `resources`, `scripts`, `shaderpacks`, and `servers.dat` are checked.\
    save the exported zip somewhere temporarily, like `downloads` or `desktop`

8. extract the zip (right click, choose winrar "extract to"), then open the extracted folder and **copy** the contents.

9. open your git repo in the file explorer, delete the contents of the `/src/` folder, and paste in the ones you copied.\
once you are done copying, it is safe to delete the zip and extracted foler

10. open the repo in vscode, and go to the `source control` tab. review your changes by clicking each file and see the lines being added in green, and removed in red.
    if your vscode window is wide enough, you will see the changes side by side, and if you make the window smaller, you can see each change stack in one file.
    ![reviewing changes](<documentation screenshots/vscode review changes.png>)

11. on each file in the list on the left, there should be a set of icons.
    - the arrow icon will *revert* the file, undoing all changes.\
        if the file in question is only changing the date modified, or if you otherwise want to undo a change, press this button.
    - the + button will *add* that file to the *staged changes*.\
        when you make a *commit*, only *staged* files will be included in the commit. if you have unrelated changes in multiple files, you should make several *commits*, each one including only related files.
    - if you *add* a file to *staged changes* by mistake, you will find a - icon that will remove it from *staged changes*.

12. ensure you revert the changed "name" and "author" in the `manifest.json` file. to do so, you can click the file to view the changes, then with the changes sside by side, click the arrow in the center column to "revert block"
    ensure that the name remains as `The Chocolate Edition - [FORGE]` and the author is `richestprune`

13. verify the `modlist.html` using [diffsort](https://diffsort.com/).
    1. with the editor in side-by-side mode, click on the left side and do `ctrl + a`, `ctrl + c` to copy, then paste into the left side of diffsort.
    2. repeat for the right side, then click "sort lines" at the top of the page.
    do this to verify that the changes you intened to make to the mods have actually been applied, and nothing has been changed unintentionally. please use the sorted version of the modlist, ensuring it begins with `<u>` (no /) and ends with `</u>`
    3. using [sort json extension](https://marketplace.cursorapi.com/items?itemName=Thinker.sort-json), sort the manifest files array accending by project id.\
    ![sort](<documentation screenshots/sort-ascending.png>)\
    ![projectid](<documentation screenshots/sort-projectid.png>)

14. once you have *added* some files to *staged changes*, you can commit them by writting a short message to describe the changes, then press the blue "commit" button\
    commit messages should be 1 line sentences to briefly describe what changes are being made in the fiels included in the commit.\
    for example, "update readme with detailed isntructions", or "increase spawn rate for \<mobs\>"

15. once all files have been either reverted or commited, you can press the blue "publish" button, or click the 3 dots, then "push."

16. go to [github](https://github.com/chocolate-edition/Chocolate-Edition/pulls) and create a Pull Request. assign reviewers Strix (Jonah-Hansen), Toxin (GildedToxin)
    1. be sure to change the "base" from `main` to `develop`
    2. give a more detailed description of the changes made and link the related issues with #issueNumber (example: closes #200)
    3. carefully review the `files changed`. make sure nothing is included that is not related to the intended changes.

17. Once your Pull Request is reviewed and approved, merge your branch into `develop` and then delete your derived branch.

once complete, you can switch back to develop, pull your changes and get started on the next feature!

## Getting Started

### installing tools

download and install

- [Git](https://git-scm.com/)
- [VS Code](https://code.visualstudio.com/)
- optional but preferred [curseforge launcher](https://www.curseforge.com/download/app)

the default option are generally okay. dont be scared to ask for help if you need!

### linking to github

*instructions assume you are on windows

1. create a folder somewhere on your computer and call it something like "minecraft chocolate edition project files"

2. open the folder and right click in the empty space > `git bash here`
(if this option is not available you may not have installed git correctly)

3. in your git bash terminal, type, or right click and paste

    ```bash
    git clone https://github.com/chocolate-edition/Chocolate-Edition.git
    ```

    you will see the files being downloaded to a "chocolate-edition" folder.

4. if you have never used git before, you will need to link your local git to your github account.
    once the clone is complete, run

```bash
git config --global user.name "your github useername"
git config --global user.email johndoe@example.com
```

### setting up VScode

1. once the repo has been cloned, and your git is set up, you can open VScode and choose "open folder"

2. find the chocolate-edition folder that was created earlier and open.
in the explorer view on the left hand side, you can see all the files for this project.

    I recommend you change you color scheme to "Dark (visual studio)" from file > preferences > theme > color scheme as some color schemes do not show git changes nicely.

3. you may see a window pop up asking if you'd like to install the recommended extension. doing so is highly recommended.
you can also install them by choosing "extensions" (4 squares icon on the left column) and search for zslint.

you are almost ready to get started! switch to the `source control` tab on the left, click the 3 dots, > "checkout to" > "develop"\
then click the blue button if it says "sync changes" or click the 3 dots > "pull"

now your minecraft instance is synchronized with the develop branch from github! you can follow the steps at [Contribution guide](#contribution-guide) to get started making changes!

## Git Terminal Notes

### What is Git?

**Git** is a *CLI (command line interface) tool* used for *version control*, which is different than, but *works in conjunction* with, **GitHub**. **Git** is used for *managing the local repositories* and allows you to *push* it to the **remote repository (GitHub)** through command line.

**Version control** is useful in team settings - or in general - as it allows you to work on many aspects of your code/project, while being able to manage and have an *overview of all changes being made, when, where, and by who.*

### Git Commands

In the **Git Terminal**, running commands is how you *pull, commit, push, and so much more*

### Branches

**$ git branch** - Prints list of all local branches

**$ git branch -d "branch name"** - Deletes the chosen local branch  - you cannot be on the branch when you delete it

**$ git branch -D "branch name"** - Deletes the chosen local branch with unmerged changes. you will lose any unmerged changes.

### Checkout

**$ git checkout "name-of-branch"** - Switches the files in your local repository to the chosen branch

**$ git checkout -b "name-of-branch"** - Creates a new local branch derived from the current branch

### Commiting

**$ git add .** - stages all changed files to the next commit

**$ git add overrides/scripts/filename.zs** - stages files at the relative path to the next commit

**$ git commit -m "commit message"** - Commits all staged files to the current local branch

**$ git log** - Prints a log of all recent commits on the current branch

### Pushing/Pulling

**$ git push** - Pushes your changed to the remote repository

**$ git push -u origin head** - Pushes the current local branch when it does not yet exist on github (you will only have to do it once per new branch)

**$ git pull** - Pulls the changes for the current branch from github to your local branch

### Tips

**$ git branch -D "branch name"** - Useful if you name a branch wrong

**$ git checkout -b "name-of-branch"** - You should always **$ git pull** before doing this, so you have the most recent files
