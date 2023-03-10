# frozen_string_literal: true

require 'spec_helper'

RSpec.describe ImageEditor::Commands::VCommand do
  let(:image) { ImageEditor::Commands::ICommand.execute(width: 3, height: 5) }
  let(:result) { subject.execute(x_axis: '2', y1_axis: '2', y2_axis: '5', colour: 'c', image: image) }
  let(:expected) { { 1 => '0', 2 => 'c', 3 => 'c', 4 => 'c', 5 => 'c' } }
  it "creates image with '0'" do
    expect(result.data[2]).to eq expected
    expect(result.data[3].values.uniq).to eq ['0']
  end
end
