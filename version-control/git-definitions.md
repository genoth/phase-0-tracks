# Git Definitions

**Instructions: ** Define each of the following Git concepts.

* What is version control? Why is it useful?
* Version control is a system that records the history of file(s) and the revisions made over time, and details about those revisions (e.g. who made them, and when). It's useful because you can have several devs working on the same project at once, and then they can merge their work back into the master. This would be really difficult without version control.Version control is also useful because it protects the software. If new code is released and there's a bug, you can roll back to a previous version.
* What is a branch and why would you use one?
* Creating a git branch gives you a copy of your project that you can work on. It allows you to preserve the clean condition of the master while you experiment with a new feature. Also, if you don't like the work you've done a branch, you can always scrap the branch. If you do like it, you can merge it back into the master. Lastly, people can work simultaneously on different branches.
* What is a commit? What makes a good commit message?
* A commit is a save point in Git Hub. A good commit message is specific about the changes that were made (and why, if needed). Typically they are in present tense "add answers to git definitions" instead of "added answers to git definitions".
* What is a merge conflict?
* A merge conflict happens when the branch you want to merge has diverged from the branch you're trying to merge it into, in a way that the two branches disagree with each other.