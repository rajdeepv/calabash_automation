require 'calabash-android/cucumber'
require 'pry'
require 'rspec/matchers'
require "nakal/cucumber"

$PROJECT_ROOT = File.expand_path(File.join(File.dirname(__FILE__), '../..'))

Nakal.platform = :android
Nakal.directory= "./baseline_images/droid"
Nakal.timeout = 2
Nakal.embed_screenshot = true







require 'cucumber/formatter/html'
module Cucumber
  module Formatter
    class Html
      def embed(src, mime_type, label)
        embed_image(src, label)
      end

      def embed_image(src, label)
        id = "img_#{@img_id}"
        @img_id += 1
        @builder.label(:class => 'embed') do |pre|
          pre << %{<img id="#{id}" src="#{src}" style="height:426px;width:240px"/>}
        end
      end
    end
  end
end



def move_nakal_files_to_result_dir (platform)
  Dir["./baseline_images/#{platform}/#{Nakal.device_name}/**/*_diff.png"].each do |file|
    `mv #{file} #{$PROJECT_ROOT}/reports`
    `mv #{file.gsub('diff','current')} #{$PROJECT_ROOT}/reports`
    `cp #{file.gsub('_diff','')} #{$PROJECT_ROOT}/reports`
  end
end

at_exit do
  move_nakal_files_to_result_dir "droid"
end