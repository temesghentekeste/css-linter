# spec/space_scan_spec.rb

require './lib/space_scan'

describe SpaceScanner do
  subject { SpaceScanner.new() }
  let(:lines_without_error) { [".primary-color:hover {\n", "  color: #1da1f2;\n", "}\n"]}
  let(:lines_with_end_line_error) { [".primary-color:hover {\n", "  color: #1da1f2; \n", "}\n\n"]}
  let(:last_line_missing) { [".primary-color:hover {\n", "  color: #1da1f2; \n", "}"]}
  let(:lines_with_trailing_space) { [".primary-color:hover {\n", "  color: #1da1f2; \n", "}\n"]}
  let(:errors) { []}

  describe 'last_line_scan' do

    it 'should return nil if the last line is blank' do
      expect(subject.last_line_scan(lines_without_error)).to eql(nil)
    end

    it 'should return error message if the last line has more than one trailing blank line' do
      expect(subject.last_line_scan(lines_with_end_line_error)).to eql(":Line 4: \e[0;33;49mFormat error\e[0m: trailing blank lines detected.")
    end


    it 'should return error message if the last line is missing' do
      expect(subject.last_line_scan(last_line_missing)).to eql(":Line 4: \e[0;33;49mFormat error\e[0m: final newline messing.")
    end

  end

  describe 'trailing_space_scan' do

    it 'should return nil if there is no trailing space' do
      lines_without_error.each_with_index do |line, index|
        errors << subject.trailing_space_scan(line, index)
      end
      errors.delete(nil)
      expect(errors).to eql([])
    end

    it 'should return error message if there is a trailing space' do
      lines_with_trailing_space.each_with_index do |line, index|
        errors << subject.trailing_space_scan(line, index)
      end
      errors.delete(nil)
      expect(errors.first.include?("trailing space found")).to eql(true)
    end
  end
end




