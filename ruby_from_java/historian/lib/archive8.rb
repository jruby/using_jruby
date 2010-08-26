require 'git'

class Git::Diff::DiffFile
  include Java::book.embed.GitDiff
end

class Archive
  def history(revisions)
    git = Git.open '.'
    git.diff(revisions.start, revisions.finish).to_a
  end
end
