# frozen_string_literal: true

require 'spec_helper'

RSpec.describe ImageEditor::Image do
  subject { described_class.new(width: 2, height: 2) }
  let(:first_image) { { 1 => { 1 => 'O', 2 => 'O' }, 2 => { 1 => 'O', 2 => 'O' } } }
  it 'creates image' do
    expect(subject.data).to eq first_image
  end

  xit 'limits image size' do
    expect(subject.data[3, 3]).to raise_error
  end
end
