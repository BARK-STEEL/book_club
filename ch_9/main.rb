require_relative 'encrypter'
require_relative 'string_io_adapter'

encrypter = Encrypter.new('XYZZY')
reader = StringIOAdapter.new('Hello World!')
writer = File.open('out.txt', 'w')
encrypter.encrypt(reader, writer)
