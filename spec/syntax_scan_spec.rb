# spec/space_scan_spec.rb

require './lib/syntax_scan'

describe SyntaxScanner do
  subject { SyntaxScanner.new }
  let(:lines_without_error) { [".primary-color:hover {\n", "  color: #1da1f2;\n", "}\n"] }
  let(:lines_with_missing_semicolon) { [".primary-color:hover {\n", "  color: #1da1f2 \n", "}\n\n"] }
  let(:errors) { [] }

  describe '#missing_semicolon_scan' do
    it 'should return empty array if there is no missed simicolon' do
      lines_without_error.each_with_index do |line, index|
        next if line.include?('{') || line.include?('}') || line == "\n" || line.end_with?(",\n")

        errors << subject.missing_semicolon_scan(line, index)
      end
      errors.delete(nil)
      expect(errors).to eql([])
    end
  end
end
