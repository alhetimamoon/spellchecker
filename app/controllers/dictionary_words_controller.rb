class DictionaryWordsController < ApplicationController
  def spellcheck
  	@term = params[:term]
  end
end
