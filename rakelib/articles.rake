# frozen_string_literal: true

REMOTE = 'git@github.com:NSHipster/articles-zh-Hans.git'

namespace :articles do
  task :pull do
    sh %(git subtree pull --prefix _posts #{REMOTE} master --squash -m "Merge '$REF' into '$FOLDER'")
  end

  task :push do
    sh %(git subtree push --prefix _posts #{REMOTE} master --squash -m "Merge '$REF' into '$FOLDER'")
  end
end
