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

    private

    def init_data
      @data = {}
      (1..@width).each do |x|
        @data[x] = {}
        (1..@height).each do |y|
          @data[x][y] = 'O'
        end
      end
    end
  end
end
