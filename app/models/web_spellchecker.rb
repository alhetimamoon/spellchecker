class WebSpellchecker < Spellchecker
	def initialize
	end 

	def known(words)
		DictionaryWords.where(word: words).map{ |x| x[:word] }
	end 
end