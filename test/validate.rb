#encoding: UTF-8
require 'minitest/autorun'
require 'xml'

SCHEMA_PATH = File.join(File.dirname(File.expand_path(__FILE__)), '/../schema/doctag.xsd')
EXAMPLES_PATH = File.join(File.dirname(File.expand_path(__FILE__)), '/../test')

describe 'examples' do
  Dir["#{EXAMPLES_PATH}/**/*\.xml"].each do |file|
    it "#{File.basename file} contains valid docTag XML" do
      begin

        # parse schema as xml document
        schema_document = XML::Document.file(SCHEMA_PATH)

        # prepare schema for validation
        schema = XML::Schema.document(schema_document)

        # parse xml document to be validated
        instance = XML::Document.file(file)

        # validate
        instance.validate_schema(schema)

      rescue Exception => e
        assertion = false, e.message
      else
        assertion = true
      end

      assert *assertion
    end
  end
end