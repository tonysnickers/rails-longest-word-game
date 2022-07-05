class GamesController < ApplicationController
  def game

  end

  def new
    @letters = ("A".."Z").to_a.sample(10)
  end
  def score
    @word = params[:letter]
    url = `https://wagon-dictionary.herokuapp.com/autocomplete/`
    fetch('url')
      .then(response => reaponse.json)
      .then((data) => {
      if data.word == @word

      end
    })
  end
end
