class SongsController < ApplicationController

def main
end

def songs
	@artist = params[:key]
end

def search
	@country = params[:key]
	end 
	
def serach2
	@artist = params[:key]
end

def about
end

def contact
end

def other
	@country = params[:key]
end 

def index
  end
end
