class GenresController < ApplicationController
  def show
    @genre = genre
  end

  def new
  end

  def create
    @genre = Genre.create(genre_params(:name))
    redirect_to @genre
  end

  def edit
    @genre = genre
  end

  def update
    @genre = genre
    @genre.update(genre_params(:name))
    redirect_to @genre
  end

  private

  def genre
    Genre.find(params[:id])
  end

  def genre_params(*args)
    params.require(:genre).permit(args)
  end
end
