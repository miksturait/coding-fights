require 'pygments'

# Codes helper
module CodesHelper
  def markdown(text)
    options = { autolink: true, no_intra_emphasis: true }
    render_options = { hard_wrap: true, filter_html: true }
    render = Redcarpet::Render::HTML.new(render_options)
    markdown = Redcarpet::Markdown.new(render, options)
    markdown.render(text).html_safe
  end
end
