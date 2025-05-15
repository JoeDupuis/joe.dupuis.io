# Layouts
# https://middlemanapp.com/basics/layouts/

# Per-page layout changes
page '/*.xml', layout: false
page '/*.json', layout: false
page '/*.txt', layout: false

ignore '**/.keep'
activate :asset_hash

# With alternative layout
# page '/path/to/file.html', layout: 'other_layout'

# Proxy pages
# https://middlemanapp.com/advanced/dynamic-pages/

# proxy(
#   '/this-page-has-no-template.html',
#   '/template-file.html',
#   locals: {
#     which_fake_page: 'Rendering a fake page with a local variable'
#   },
# )

# Helpers
# Methods defined in the helpers block are available in templates
# https://middlemanapp.com/basics/helper-methods/

helpers do
  def twitter_url
    "https://twitter.com/_joedupuis"
  end

  def github_url
    "https://github.com/JoeDupuis"
  end

  def gitlab_url
    "https://gitlab.com/JoeDupuis"
  end

  def linkedin_url
    "https://www.linkedin.com/in/joe-dupuis-85345b21/"
  end

  def stylesheet_link_all
    css_files = Dir.glob("source/stylesheets/*.css").map { |path| File.basename(path, ".css") }
    css_files.map { |file| stylesheet_link_tag(file) }.join("\n    ")
  end
end

# Build-specific configuration
# https://middlemanapp.com/advanced/configuration/#environment-specific-settings

# configure :build do
#   activate :minify_css
# end
