module Nokogiri
  module LibXML
    class XmlTextReader < FFI::ManagedStruct

      layout :dummy, :int # to avoid @layout warnings

      def self.release ptr
        LibXML.xmlFreeTextReader(ptr)
      end
    end
  end
end    
