require 'securerandom'

Class Box
  def intialize &proc
    @uuid = SecureRandom.uuid
    instance_eval &proc
    finalize
  end

  def file(arg1, arg2)
    if arg1.is_a?(String)
      @items << Dir.new(filename)
    else 
      send(arg1)
  end

  def dir 
end

