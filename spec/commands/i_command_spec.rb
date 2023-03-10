# frozen_string_literal: true

require 'spec_helper'

RSpec.describe ImageEditor::Commands::ICommand do
  let(:image) { subject.execute(width: '2', height: '2') }
  let(:expected) { { 1 => { 1 => 'O', 2 => 'O' }, 2 => { 1 => 'O', 2 => 'O' } } }
  it "creates image with '0'" do
    expect(image.data).to eq expected
  end
end
