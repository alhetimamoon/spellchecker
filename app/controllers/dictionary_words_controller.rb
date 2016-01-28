require "#{Rails.root}/app/models/web_spellchecker.rb"

class DictionaryWordsController < ApplicationController
  def spellcheck
  	@term = params[:term]
    spellChecker = WebSpellchecker.new
    known = spellChecker.known(@term).any?
    container = spellChecker.correct(@term) 

    hash = {
    	"term" => params[:term],
    	"known" => known,
    	"suggestions" => container 
    }
    render json: hash
  end
end
