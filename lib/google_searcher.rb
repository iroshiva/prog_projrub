require 'launchy'



def get_user_search
	user_search = ARGV
	search = user_search.join("+")
end


def if_no_search
	abort("You need to type your search!!!") if ARGV.empty?
end

def search_url(search)

	Launchy.open("https://www.google.com/search?q=#{search}")
end


def perform
	user_search = get_user_search
	if_no_search
	search_url(get_user_search)
end

perform 


