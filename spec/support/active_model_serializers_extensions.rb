module ActiveModelSerializersExtensions
  def adapt_serializer!(s)
    ActiveModelSerializers::Adapter.create(s)
  end

end
