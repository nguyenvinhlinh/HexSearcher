defmodule StringBeautify do
  def beautify(paragraph, max_width_length) do
    words = String.split paragraph
    #the accumulator looks like acc = ["line1". "line2"]
    append_line = fn
      (word, [""]) ->
        ["#{word}"]
      (word, [line | prev_lines]) ->
      if(String.length(word) + String.length(line) + 1 <= max_width_length) do
        ["#{line} #{word}"|  prev_lines]
      else
        ["#{word}", line| prev_lines]
      end
    end
    
    lines = Enum.reduce(words, [""], append_line)
    lines = Enum.reverse(lines)
  end
end
