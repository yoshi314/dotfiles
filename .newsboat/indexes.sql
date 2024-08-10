CREATE INDEX idx_feedurl_deleted ON rss_item(feedurl, deleted);
CREATE INDEX idx_unread ON rss_item(unread);
