class LogLineParser
  def initialize(line)
    @line = line
  end

  def message
    @line.split(":")[1].strip
  end

  def log_level
    level = @line.split(":").first.strip
    level.slice(1..-2).downcase
  end

  def reformat
    level = @line.split(":").first.strip[1..-2].downcase
    message = @line.split(":")[1].strip
    "#{message} (#{level})"
  end
end
