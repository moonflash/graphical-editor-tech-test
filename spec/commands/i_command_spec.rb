# frozen_string_literal: true

require 'spec_helper'

RSpec.describe ImageEditor::Commands::ICommand do
  let(:image) { subject.execute(width: '2', height: '2') }
  let(:expected) { { 1 => { 1 => '0', 2 => '0' }, 2 => { 1 => '0', 2 => '0' } } }
  it "creates image with '0'" do
    expect(image.data).to eq expected
  end
end
