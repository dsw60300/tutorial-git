#!/bin/zsh
zad1
git commit
git commit
zad2
git branch bugFix
git checkout bugFix
zad3 
git checkout -b bugFix
git commit
git checkout main
git commit
git merge bugFix
zad4
git checkout -b bugFix
git commit
git checkout main
git commit
git checkout bugFix
git rebase main
zad5
git checkout C4
zad6
git checkout bugFix^
zad7
git branch -f main C6
git checkout HEAD~1
git branch -f bugFix HEAD~1
zad8
git reset HEAD~1
git checkout pushed
git revert HEAD
zad9
git cherry-pick C3 C4 C7
zad10
git rebase -i overHere --solution-ordering C3,C5,C4
zad11
git rebase -i main --solution-ordering C4
git rebase bugFix main
zad12
git rebase -i HEAD~2 --solution-ordering C3,C2
git commit --amend
git rebase -i HEAD~2 --solution-ordering C2'',C3'
git rebase caption main
zad13
git checkout main
git cherry-pick C2
git commit --amend
git cherry-pick C3
zad14
git tag v1 side~1
git tag v0 main~2
git checkout v1
zad15
git commit
zad16
git rebase main bugFix
git rebase bugFix side
git rebase side another
git rebase another main
zad17
git branch bugWork main^^2^
zad18
git checkout one
git cherry-pick C4 C3 C2
git checkout two
git cherry-pick C5 C4 C3 C2
git branch -f three C2
