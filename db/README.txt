Revisions.comment must be TEXT, not VARCHAR(255).
Add 'pg' and 'taps2' gems to gemfile. Run this: 
    https://stackoverflow.com/questions/6710654/change-from-sqlite-to-postgresql-in-a-fresh-rails-project
Truncate pull target to "postgres:///DEV_HIT".
    taps2 server sqlite://db/snapshot_file.db user password
In a separate window:
    taps2 pull postgres:///scp_development http://user:password@localhost:5000



