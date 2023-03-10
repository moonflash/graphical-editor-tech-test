# frozen_string_literal: true

module ImageEditor
  # main image object
  class Image
    attr_accessor :data

    def initialize(width:, height:)
      @width = width
      @height = height
      init_data
    end

    def set(x_axis:, y_axis:, colour:)
      data[x_axis.to_i][y_axis.to_i] = colour
    end

    private

    def init_data
      @data = {}
      (1..@width).each do |x|
        @data[x] = {}
        (1..@height).each do |y|
          @data[x][y] = '0'
        end
      end
    end
  end
end
