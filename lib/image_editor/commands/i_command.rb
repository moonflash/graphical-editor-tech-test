# frozen_string_literal: true

module ImageEditor
  module Commands
    # creates initial image of widht/height
    module ICommand
      def self.execute(width:, height:)
        Image.new(width: width.to_i, height: height.to_i)
      end
    end
  end
end
