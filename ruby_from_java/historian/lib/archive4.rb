require 'git'

def history
  git = Git.open('.')
  git.diff($revisions.start, $revisions.finish)
end
