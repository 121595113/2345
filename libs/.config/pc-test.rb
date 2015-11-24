require 'compass/import-once/activate'
# Require any additional compass plugins here.

# projectName
projectName = "scss/pc/test"

# Set this to the root of your project when deployed:
http_path = ""
additional_import_paths = ["scss"]
sass_dir = "#{projectName}/scss"
css_dir = "#{projectName}/css"
images_dir = "#{projectName}/images"
javascripts_dir = "#{projectName}/js"

# You can select your preferred output style here (can be overridden via the command line):
# output_style = :expanded or :nested or :compact or :compressed

# To enable relative paths to assets via compass helper functions. Uncomment:
# relative_assets = true

# To disable debugging comments that display the original location of your selectors. Uncomment:
line_comments = false


# If you prefer the indented syntax, you might want to regenerate this
# project again passing --syntax sass, or you can uncomment this:
# preferred_syntax = :sass
# and then run:
# sass-convert -R --from scss --to sass sass scss && rm -rf sass && mv scss sass

# environment
if environment == :development
  relative_assets = true
  sourcemap = true
  output_style = :expanded
end

if environment == :production
  relative_assets = false
  sourcemap = false
  output_style = :compressed
end
