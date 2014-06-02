atom_feed do |feed|
	feed.title "MSCoast Developers Hack Night Blog"
	feed.updated @posts.first.updated_at

	@posts.each do |post|
		feed.entry(post) do |entry|
			entry.title post.title
			entry.content post.body, :type => 'html'

			entry.author do |author|
				author.name '1337 H4x012'
			end
		end
	end
end