require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    result = self.split(".").reject { |s| s.empty? }
    no_empty = result.reject { |s| s.empty? }
    return no_empty.length
  end
end