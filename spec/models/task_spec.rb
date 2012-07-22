require 'spec_helper'

describe Task do
  describe '#state' do
    context 'when task is done' do
      before do 
        subject.done = true
      end

      it 'return "done"' do
        subject.state.should == 'done'
      end
    end

    context 'when task is not done yet' do
      it 'return "yet"' do
        subject.state.should == 'yet'
      end
    end
  end
end
