module HomeHelper
  
  def generate_embed(type, code, width, height)
    if type == "newrelic"
      "<iframe src=\"https://rpm.newrelic.com/public/charts/#{code}\" width=\"#{width}\" height=\"#{height}\" scrolling=\"no\" frameborder=\"no\"></iframe>"
    elsif type == "generic"
      "<iframe src=\"#{code}\" width=\"#{width}\" height=\"#{height}\" scrolling=\"no\" frameborder=\"no\"></iframe>"
    end
  end
  
end
