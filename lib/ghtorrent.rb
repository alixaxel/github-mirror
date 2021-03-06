module GHTorrent
  # Route keys used for setting up queues for events, using GHTorrent
  ROUTEKEY_CREATE = "evt.CreateEvent"
  ROUTEKEY_DELETE = "evt.DeleteEvent"
  ROUTEKEY_DOWNLOAD = "evt.DownloadEvent"
  ROUTEKEY_FOLLOW = "evt.FollowEvent"
  ROUTEKEY_FORK = "evt.ForkEvent"
  ROUTEKEY_FORK_APPLY = "evt.ForkApplyEvent"
  ROUTEKEY_GIST = "evt.GistEvent"
  ROUTEKEY_GOLLUM = "evt.GollumEvent"
  ROUTEKEY_ISSUE_COMMENT = "evt.IssueCommentEvent"
  ROUTEKEY_ISSUES = "evt.IssuesEvent"
  ROUTEKEY_MEMBER = "evt.MemberEvent"
  ROUTEKEY_PUBLIC = "evt.PublicEvent"
  ROUTEKEY_PULL_REQUEST = "evt.PullRequestEvent"
  ROUTEKEY_PULL_REQUEST_REVIEW_COMMENT = "evt.PullRequestReviewCommentEvent"
  ROUTEKEY_PUSH = "evt.PushEvent"
  ROUTEKEY_TEAM_ADD = "evt.TeamAddEvent"
  ROUTEKEY_WATCH = "evt.WatchEvent"

end

# Shared extensions to library methods
require 'ghtorrent/hash'
require 'ghtorrent/time'
require 'ghtorrent/bson_orderedhash'

# Basic utility modules
require 'version'
require 'ghtorrent/utils'
require 'ghtorrent/logging'
require 'ghtorrent/settings'
require 'ghtorrent/api_client'

# Support for command line utilities offered by this gem
require 'ghtorrent/command'

# Configuration and drivers for caching retrieved data
require 'ghtorrent/adapters/base_adapter'
require 'ghtorrent/adapters/mongo_persister'
require 'ghtorrent/adapters/noop_persister'

# Support for retrieving and saving intermediate results
require 'ghtorrent/persister'
require 'ghtorrent/retriever'

# SQL database fillup methods
require 'ghtorrent/ghtorrent'
require 'ghtorrent/transacted_gh_torrent'

# Multi-process queue clients
require 'ghtorrent/multiprocess_queue_client'

# Commands
require 'ghtorrent/commands/ght_data_retrieval'
require 'ghtorrent/commands/ght_mirror_events'
require 'ghtorrent/commands/ght_get_more_commits'
require 'ghtorrent/commands/ght_rm_dupl'
require 'ghtorrent/commands/ght_load'
require 'ghtorrent/commands/ght_retrieve_repo'
require 'ghtorrent/commands/ght_retrieve_user'
require 'ghtorrent/commands/ght_retrieve_dependents'
require 'ghtorrent/commands/ght_retrieve_repos'
require 'ghtorrent/commands/ght_retrieve_one'

# vim: set sta sts=2 shiftwidth=2 sw=2 et ai :
