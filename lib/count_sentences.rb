require 'pry'

class String

  def sentence?
    self.end_with?('.') #checks if string ends with a period
  end

  def question?
    self.end_with?("?") #checks if string ends with a question mark
  end

  def exclamation?
    self.end_with?("!") #checks if string ends with an exclamation
  end

  def count_sentences
    (self.split(/[.?!]/)).delete_if { |e| e == ""}.count
    #splits string at period, quest, em, then DELETES blank strings because this split would make "Hey!!" => ["Hey", ""]
  end
end