class RanksController < ApplicationController
    def rank
  # 投稿のいいね数ランキング
    @book_like_ranks = Post.find(Favorite.group(:book_id).order('count(book_id) desc').pluck(:book_id))
    end
end
