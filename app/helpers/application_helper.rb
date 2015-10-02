module ApplicationHelper

  class CodeRayify < Redcarpet::Render::HTML
    def block_code(code, language)
      CodeRay.scan(code, language).div(:line_numbers => :table)
    end
  end

  def markdown(text)
    @coderayified ||= CodeRayify.new(:filter_html => true,
                               :hard_wrap => true)

    options = {
      :fenced_code_blocks => true,
      :no_intra_emphasis => true,
      :autolink => true,
      :strikethrough => true,
      :lax_html_blocks => true,
      :superscript => true
    }

    @markdown_to_html = Redcarpet::Markdown.new(@coderayified, options)
    @markdown_to_html.render(text).html_safe
  end

  def logged_in?
    !!current_user #double negation to convert to boolean
  end

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id] #memoized
  end
end
