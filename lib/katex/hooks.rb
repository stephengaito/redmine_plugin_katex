module Katex
  class Hooks < Redmine::Hook::ViewListener
    def view_layouts_base_html_head(context={ })
      headTags = Array.new()
      headTags.append(
        javascript_include_tag(
          "katex.min.js", defer: true, plugin: 'katex'
        )
      )
      headTags.append(
        javascript_include_tag(
          "auto-render.min.js",
          defer: true,
          onload: "renderMathInElement(document.body);",
          plugin: 'katex'
        )
      )
      headTags.append(
        stylesheet_link_tag(
          "katex.min.css", media: :all, plugin: 'katex'
        )
      )
			headTags.join("\n")
    end
  end
end
