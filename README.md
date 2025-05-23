# Minecraft Chocolate Edition

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
  - [Custom spawning system](#custom-spawning-system)

### for a better github notification experience without having your email spammed, try [notifier for github extension](https://github.com/sindresorhus/notifier-for-github)

update schedule working document: <https://docs.google.com/document/d/15oeWpq6uOxQ9vquVVf1IKi3XBqOKdQXLizz0_1SwWns/edit>

## Contribution guide

### Creating Issues

we use a collection of [github Projects](https://github.com/chocolate-edition/Chocolate-Edition/projects) to track work in progress and future plans.

the [Patches and Bugs Board](https://github.com/orgs/chocolate-edition/projects/1) contains bugs and small features that can be worked on and added at any time. as the list of finsihed tasks grows, we will sometimes release minor patches inbetween major feature releases

the rest of the projects are for categorizing tasks that are focused on one specific major feature update.

1. you can choose an existing issue and assign it to yourself, or create a new one by selecting "add item" at the bottom of a list and give it a title.

2. select "convert to issue" and choose the `chocolate-edition` repo.

3. provide as many details as possible regarding the bug and how to reproduce it, or about the intended feature to be added and why.

4. assign the issue to yourself and move it to the appropriate column
    - "todo" for thing you intend to complete before the next release
    - "in progress" for issues actively being worked on. if you give up on a fix, move it back to "todo"
    - "needs testing" for issues that have a open PR awaiting approval. you can add a comment to the issue and link it to the respective PR with a #
    - once a PR has been merged to develop, the issue can be closed with a comment linking the closing PR, and moved to "Done"

### Typical Workflow

**note:**
if your changes involve deleting a file, instead leave the file blank if possible then create a new issue on the todo list to delete the file as part of the next update.

(this is due to a quirk with how ATLauncher automatic updates work and should just generally help reduce the amount of people with broken scripts after an update)

**note:**
when modifying resourcepacks through paxi or otherwise, be sure to include it in the proper place in `src/overrides/config/resourcepackoverrides.json`

`main` represents the current latest release. It should only be merged to prior to a new version release. Do not touch it unless you just published a new version.

`develop` branch is the main development branch that represents the next release as it is developed. it should be branched from and merged to for tasks on the [Patches and Bugs Board](https://github.com/orgs/chocolate-edition/projects/1)
`1.x-develop` branches work similar to develop, but hold changes specific to a certain major feature update. whenever merging to develop or a 1.x branch, a pr should also be opened to merge to each branch ahead of it so they all stay up to date with their predecessors

1. checkout to your intended base branch. (for Patches and Bugs, use `develop`) and **pull.** this will ensure your local copy of the fiels are caught up with whats on GitHub. always **pull** before starting work on a feature.
    - in vscode, you can do this from the *source control* activity tab by clicking the 3 dots, the "checkout to" > develop or in a terminal, `git checkout develop`
    - then the 3 dots again > "pull" (or press the big blue button if it says "pull) or in terminal `git pull`

2. Create a new branch derived from your intended base branch. name it "feature/my-feature-name"   (be sure to use all lowercase letters)
    in vscode you can do this from the `source control` activity tab. or from terminal `git checkout -b feature/my-feature-name`
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
    ensure only `config`, `defaultconfigs`, `kubejs`, `mods`, `resourcepacks`, `resources`, `scripts`, `shaderpacks`, and `servers.dat` are checked.\
    save the exported zip somewhere temporarily, like `downloads` or `desktop` or back in your repo /src/ folder

8. extract the zip (right click, choose winrar "extract to"), then open the extracted folder and **copy** the contents.

9. open your git repo in the file explorer, delete the contents of the `/src/` folder, and paste in the ones you copied.\
once you are done copying, it is safe to delete the zip and extracted folder

10. open the repo in vscode, and go to the `source control` tab. review your changes by clicking each file and see the lines being added in green, and removed in red.
    if your vscode window is wide enough, you will see the changes side by side, and if you make the window smaller, you can see each change stack in one file.
    ![reviewing changes](<documentation screenshots/vscode review changes.png>)

11. on each file in the list on the left, there should be a set of icons.
    - the arrow icon will *revert* the file, undoing all changes.\
        if the file in question is only changing the date modified, or if you otherwise want to undo a change, press this button.
    - the + button will *add* that file to the *staged changes*.\
        when you make a *commit*, only *staged* files will be included in the commit. if you have unrelated changes in multiple files, you should make several *commits*, each one including only related files.
    - if you *add* a file to *staged changes* by mistake, you will find a - icon that will remove it from *staged changes*.
    - you can even *add* specific lines from a file by viewing the "working tree" version (click it in the source control tab) and click the + next to the specific line you want to add

12. ensure you revert the changed "name" and "author" in the `manifest.json` file. to do so, you can click the file to view the changes, then with the changes sside by side, click the arrow in the center column to "revert block"
    ensure that the name remains as `Chocolate Edition Minecraft` and the author is `richestprune`

13. sort and verify the manifest and modlist.html using [diffsort](https://diffsort.com/).
    1. copy and paste the contents of `modlist.html` into [diffsort](https://diffsort.com/)
    2. click "sort lines" then copy the contents and paste back into the modlist file, overriding the original contents. ensure it begins with `<ul>` (no /) and ends with `</ul>` (these get incorrectly rearranged due to the sort)
    3. using [sort json extension](https://marketplace.cursorapi.com/items?itemName=Thinker.sort-json), sort the manifest files array accending by project id. note: you may need to correct the indentation by pressing `TAB` with the array selected.\
    4. once sorted, you can review the changes the same as the other files
    ![sort](<documentation screenshots/sort-ascending.png>)\
    ![projectid](<documentation screenshots/sort-projectid.png>)

14. once you have *added* some files to *staged changes*, you can commit them by writting a short message to describe the changes, then press the blue "commit" button\ or in terminal `git commit -m 'my commit message'`
    commit messages should be 1 line sentences to briefly describe what changes are being made in the files included in the commit.\
    for example, "update readme with detailed isntructions", or "increase spawn rate for \<mobs\>"

15. once all files have been either reverted or commited, you can press the blue "publish" button, or click the 3 dots, then "push." or in terminal, `git push` or `git push -u origin head` for new branches

16. go to [github](https://github.com/chocolate-edition/Chocolate-Edition/pulls) and create a Pull Request. assign reviewers Strix (Jonah-Hansen), Toxin (GildedToxin), Wik(HomerDoesMoreStuff)
    1. ensure the "base" is your target development branch
    2. give a more detailed description of the changes made. include screenshots if applicable, and link the related issues with keyword "closes #issueNumber" (example: closes #200)
    3. carefully review the `files changed`. make sure nothing is included that is not related to the intended changes.

17. Once your Pull Request is reviewed and approved, merge your branch.

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

## Custom Spawning System

the 1.9 update introduced a full overhaul of the spawning system, so we can be in full control of all mob spawns across the entire pack. here is a genreal overview of how this system works:

the spawning system is comprised of 2 key mods: [Spawn Balance Utility](https://www.curseforge.com/minecraft/mc-mods/spawn-balance-utility) and [InControl](https://www.mcjty.eu/docs/mods/control-mods/control-mods-18)

InControl is primarily used to restrict spawns based on certain parameters such as time of day, y level, total amount already in the world, etc this is done through the file at `config/incontrol/spawn.json`. this file is only used for applying rules and restrictions around spawns through a combination of *deny* and *allow* rulesets.

Spawn Balance Utility is used to define Biome spawns and their spawn weights. by editting the csv file at `config/spawnbalanceutility/BiomeMobWeight.csv` we can specify the biomes in which mobs will attempt to spawn. the columns are as follows:

Line#, Biome Category, Biome, Classification, Mod:Monster, Spawnweight, MinGroup#, MaxGroup#

in chocolate edition, we only use BiomeMobWeight for monsters and water mobs.

for animals and mobs that SBU doesnt work on, we have another file as part of the InControl suiite: `config/incontrol/spawner.json`. this file runs spawner functions in game. it is more configurable but also causes more lag, and the spawns are not blocked by spawn blocking tools like warding pearl and staff of surpression so we limit the use to only whats necessary (animals, so that they spawn more frequently then they would with SBU, and other mobs that dont work with SBU for whatever reason, like some cataclysm mobs that are intended to only spawn in structures).
