# frozen_string_literal: true

module ImageEditor
  module Commands
    # colours point on x/y axis
    module LCommand
      def self.execute(x_axis:, y_axis:, colour:, image:)
        image.set(x_axis: x_axis.to_i, y_axis: y_axis.to_i, colour: colour)
        image
      end
    end
  end
end
