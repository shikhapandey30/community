class PagesController < ApplicationController


    def index
      @inspiration_posts = Post.by_branch('inspiration').limit(8)
      @recipes_posts = Post.by_branch('recipes').limit(8)
      @tiugirls_posts = Post.by_branch('tiugirls').limit(8)
      @contacts = user_signed_in? ? current_user.all_active_contacts : ''
    end

  end
