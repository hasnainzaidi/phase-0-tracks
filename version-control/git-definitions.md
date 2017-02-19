# Git Definitions

**Instructions: ** Define each of the following Git concepts.

* What is version control?  Why is it useful?
Version control is a methodology to ensure consistency across multiple versions of a piece of working software. It is a set of norms to ensure the integrity and consistency of the code base. It is helpful when multiple authors are collaborating on a project or when you want to track the evolution / development of a piece of code (and potentially role it back)

* What is a branch and why would you use one?
A branch is like a "parallel dimension" where an alternate version of a piece of code exists. At a particular node, the code will deviate from the master branch. In this alternate branch, the code can differ from the original. This allows for specific tracking of changes and testing in a close environment before updating the core piece of software.

* What is a commit? What makes a good commit message?
A commit is a "save point" on a branch that you can return to if needed. Programmers should set up commitments early and often. These changes get logged in Git and, as needed, you can return the software to the state logged there. A good commit message describes clearly and succinctly the change that occurred in the file leading to that commit.

* What is a merge conflict?
A merge conflict emerges when you're trying to merge two different branches of the same file and git is unable to resolve the changes independently. This is usually because someone else has edited (or deleted) the file in a different context and the "official" version is not immediately obvious. In this case git will flag a merge conflict for the programmer to resolve.
