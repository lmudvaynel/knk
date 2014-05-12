module PlaylistsHelper
	def insert_video(url)
		if url.scan(/list=([^&]+)/)[0][0] 
			"//www.youtube.com/embed/videoseries?list=" + url.scan(/list=([^&]+)/)[0][0]
		else
			"//www.youtube.com/embed/" + url.scan(/v=([^&]+)/)[0][0]
		end
	end
end