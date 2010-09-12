require 'java'
require 'jruby/core_ext'
require 'git'

Git::Diff::DiffFile.add_method_signature 'path',  [java.lang.String]
Git::Diff::DiffFile.add_method_signature 'patch', [java.lang.String]
Git::Diff::DiffFile.become_java!

class Archive
  def history(revisions)
    git = Git.open '.'
    git.diff(revisions.start, revisions.finish).to_a
  end
end
