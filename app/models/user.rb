class User < ApplicationRecord
    has_many :reviews
    has_many :bars, through: :reviews

    has_many :bar_crawls
    
    has_many :bar_crawl_reviews
    has_many :bar_crawls, through: :bar_crawl_reviews

    has_many :users_at_crawl_event
    has_many :crawl_events, through: :users_at_crawl_event

    has_many :pending_invites
    has_many :crawl_events, through: :pending_invites

    has_many :crawl_event_comments
    has_many :crawl_events, through: :crawl_event_comments

    has_many :friendship_tables_as_user_1,
    foreign_key: :user_1,
    class_name: :FriendshipTable

    has_many :friendship_tables_as_user_2,
    foreign_key: :user_2,
    class_name: :FriendshipTable

end
