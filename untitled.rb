describe 'LinuxFriendly' do
    describe '#fork_process' do
      before(:example) { generic_object.extend linux_friendly_role }

      it 'implements method' do
        generic_object.must_respond_to :fork_process
      end

      it 'passes control up to the ancestors chain' do
        -> { generic_object.fork_process }.must_raise NoMethodError
      end
    end
  end

  def create_singleton_struct(name, fields = {})
    if Struct.const_defined? name
      Struct.const_get name
    else
      Struct.new name, *fields
    end
  end

  1) Failure:
LinuxFriendly::#fork_process#test_0002_passes control up to the ancestors chain [/home/lena/pivorak/homework2/test/topics/test_object_model.rb:86]:
NoMethodError expected but nothing was raised.
