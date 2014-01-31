require 'spec_helper'
require 'ostruct'

# Monkey Patch it in
class Object
  include Pipeable
end

describe 'Pipeable' do
  context 'When used with an Integer' do
    it 'returns 100 when piped multiple times' do
      value = 1.pipe { |v| v * 10 }.pipe { |v| v * 10 }

      expect(value).to eq(100)
    end
  end

  context 'When used with a Person' do
    let(:person) { OpenStruct.new(name: 'brandon', foo: true, bar: true, baz: true)}

    it 'returns true with conditionals' do
      value = person.pipe { |me| me.foo && me.bar && me.baz }

      expect(value).to be_true
    end
  end
end