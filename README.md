# The Chocolate Edition
1.19.2 - Custom Reworked Progression, 45+ Balanced Bosses, hundreds of unique areas/mobs to discover, multiple endings, multiplayer, and so much more!

Available on CurseForge at https://legacy.curseforge.com/minecraft/modpacks/mc-chocolate-edition

## Table of Contents  
- [Contribution Guide](#contribution-guide)
  - [creating issues](#creating-issues)
  - [typical workflow](#typical-workflow)
  - [Adding or removing mods](#changing-mods)
  - [getting everything set up](#getting-started)
    - [installing tools](#installing-tools)
    - [linking to GitHub]("linking-to-github)
    - [setting up VScode]("setting-up-vscode)
  - [useful git commands](#Git-Terminal-Notes)


### for a better github notification experience without having your email spammed, try [notifier for github extension](https://github.com/sindresorhus/notifier-for-github)


# Contribution guide:

## Creating Issues

we use [the todo list](https://github.com/orgs/chocolate-edition/projects/1/views/1?filterQuery=) to track our progress and act as a sort of changelog.

1. you can choose an existing issue and assign it to yourself, or create a new one by selecting "add item" at the bottom of a list and give it a title.

2. select "convert to issue" and choose the `chocolate-edition` repo.

3. provide as many details as possible regarding the bug and how to reproduce it, or about the intended feature to be added and why.

4. assign the issue to yourself and move it to the appropriate column. 
> "todo" for thing you intend to complete before the next release
> "in progress" for issues actively being worked on. if you give up on a fix, move it back to "todo" or "goals for next update"
> "needs testing" for issues that have a open PR awaiting approval. you can add a comment to the issue and link it to the respective PR with a #
> once a PR has been merged to develop, the issue can be closed with a comment linking the closing PR, and moved to "Done"


### Typical Workflow

`main` represents the current latest release. It should only be merged to prior to a new version release.

`develop` branch is the main development branch that represents the next release as it is developed.


1. Create a new branch derived from `develop`
```bash
git checkout develop
git pull
git checkout -b feature/your-branch-name
```

2. Do the changes required by editing the files in your local git repository (not the minecraft instance files directly)
  copy the changes to your minecraft instance with 
  ```bash
  bash copyToInstance.sh
  ```
  or if you have `RunItOn!` installed and enabled (ctrl + shift+ p > RunItOn: enable), simple save (ctrl + s) any file within `/overrides`.

> **note: if you delete any files that are not in either `/defaultconfigs` or `/scripts`, you will also need to manually delete them from your minecraft instance**

  after copying over the files, you can run `/reload` in game to reload crafttweaker scripts. 

3. commit changes when it is in a working state
```bash
git add .
git commit -m 'your commit message'
```

4. When your changes are committed, complete and stable, push your branch to github
```bash
git push -u origin head 
```
or if the branch has been pushed before:
```bash
git push
```

5. create a Pull Request and assign reviewers Strix (Jonah-Hansen), Toxin (GildedToxin)
  - be sure to change the "base" from `main` to `develop`
  - give a more detailed description of the changes made and link the related issue with #issuenumber (example: closes #200)
  - carefully review the `files changed`. make sure nothing is included that is not related to the intended changes.

6. Once your Pull Request is reviewed and approved, merge your branch into `develop` and then delete your derived branch.

once complete, you can switch back to develop, pull your changes and get started on the next feature!

```bash
git checkout develop
git pull
git checkout -b feature/new-feature
```



# Changing Mods

if you are adding or removing mods, there is a process you must follow in order to synchronize your git repo.

*these instructions assume you are using curseforge to manage your instances*

0. make sure you are on a new branch specific to these changes.

1. close your game if it is open, and add or remove the mod from curseforge by selecting you instance > add more content (puzzle piece icon) > search for the mod and install

2. launch your game and check that the mod has been added or removed successfully.

3. export a profile of your instance by selecting your instance in curseforge > 3dots > export profile

4. ensure `configs`, `defaultconfigs`, `mods`, `resourcepacks`, `scripts`, `shaderepacks`, and `overrides.txt` are selected, then click export.

5. extract the contents of the generated .zip

6. in your local repo, delete your `/overrides` folder, and copy over the contents from the extracted .zip, overwritting `modlist.html` and `manifest.json`

7. verify that the mod has been added or removed from the modlist, and that the respective config files/folders appear. you may need to manually delete configs for removed mods.

8. commit and push the changes, open a PR and wait for review.



# Getting Started

### installing tools

download and install 
- [Git](https://git-scm.com/)
- [VS Code](https://code.visualstudio.com/)
- optional but preferred [curseforge launcher](https://www.curseforge.com/download/app)

the default option are generally okay. dont be scared to ask for help if you need!

- you will also need to import a curseforge profile that contains content from the development branch. ask one of the UpperMoon's for help with this.



### linking to github

*instructions assume you are on windows*

1. create a folder somewhere on your computer and call it something like "minecraft chocolate edition project files"

2. open the folder and right click in the empty space > `git bash here`
(if this option is not available you may not have installed git correctly)

4. in your git bash terminal, type, or right click and paste 
```bash
git clone https://github.com/chocolate-edition/Chocolate-Edition.git
```
you will see the files being downloaded to a "chocolate-edition" folder.

5. if you have never used git before, you will need to link your local git to your github account.
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

also, open a terminal by selecting teerminal > new terminal at the top of the screen.

in the terminal, select the drop down next to thee + icon and "select default profile", then choose "git bash"

3. you may see a window pop up asking if you'd like to install the recommended extension. doing so is highly recommended.
you can also install them by choosing "extensions" (4 squares icon on the left column) and search for RunItOn! and zslint.

runItOn! allows the script that copies files from here to your minecraft instance to run automatically when any file inside `/overrides` is saved. it can be enabled and disabled by opening the command palette with ctrl + shift + p and search for runItOn: enable or disable

4. find the file called `instancePath.txt.example` and paste in the file path to your minecraft instance on the first line in the file. (replace the example path). save this file and rename it to `instancePath.txt`. you should see it become greyed out in the explorer view as this file is unique to you and not tracked by git.

the path you give it is the target for where the copy script will send files.

>note: you can manually run the copy script at any time by running 
```bash
bash copyToInstance.sh
```

you are almost ready to get started! in your terminal, run 
```bash
git pull
git checkout develop
git pull
bash copyToInstance.sh
```
now your minecraft instance is synchronized with the develop branch from github! 



# Git Terminal Notes
## What is Git?

**Git** is a *CLI (command line interface) tool* used for *version control*, which is different than, but *works in conjunction* with, **GitHub**. **Git** is used for *managing the local repositories* and allows you to *push* it to the **remote repository (GitHub)** through command line. 


**Version control** is useful in team settings - or in general - as it allows you to work on many aspects of your code/project, while being able to manage and have an *overview of all changes being made, when, where, and by who.*


## Git Commands
In the **Git Terminal**, running commands is how you *pull, commit, push, and so much more*

### Branches
**$ git branch** - Prints list of all local branches

**$ git branch -d "branch name"** - Deletes the chosen local branch  - you cannot be on the branch when you delete it

**$ git branch -D "branch name"** - Deletes the chosen local branch with unmerged changes. you will lose any unmerged c 

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
 
### Tips!
**$ git branch -D "branch name"** - Useful if you name a branch wrong

**$ git checkout -b "name-of-branch"** - You should always **$ git pull** before doing this, so you have the most recent files   
