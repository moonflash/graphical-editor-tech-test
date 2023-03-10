# frozen_string_literal: true

require 'spec_helper'

RSpec.describe ImageEditor::Commands::LCommand do
  let(:image) { ImageEditor::Commands::ICommand.execute(width: 2, height: 2) }
  let(:result) { subject.execute(x_axis: '2', y_axis: '2', colour: 'c', image: image) }
  let(:expected) { { 1 => { 1 => '0', 2 => '0' }, 2 => { 1 => '0', 2 => 'c' } } }
  it "creates image with '0'" do
    expect(result.data).to eq expected
  end
end
