# frozen_string_literal: true

module ImageEditor
  module Commands
    # draw vertical line
    module VCommand
      def self.execute(x_axis:, y1_axis:, y2_axis:, colour:, image:)
        dots = [*y1_axis..y2_axis]
        dots.each do |y|
          image.set(x_axis: x_axis, y_axis: y, colour: colour)
        end
        image
      end
    end
  end
end
