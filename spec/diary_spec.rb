#Collaborating with Valeria Serci (GitHub @ValeSer)

require "diary"


RSpec.describe DiaryEntry do
    it "Returns title as a string" do
        result = DiaryEntry.new("My_title","")
        expect(result.title).to eq "My_title"
    end

    it "Returns contents as a string" do 
        result = DiaryEntry.new("My_title","eye remember seeing the oblong")
        expect(result.contents).to eq "eye remember seeing the oblong"
    end


    describe "#count_words" do
        it "returns 0 if no words" do
            result = DiaryEntry.new("My_title","")
            expect(result.count_words).to eq 0
        end

        it "returns 1 if 1 word" do
            result = DiaryEntry.new("My_title", "One")
            expect(result.count_words).to eq 1
        end

        it "returns 5 when given a 5 word sentence" do
            result = DiaryEntry.new("My_title", "eye remember seeing the oblong")
            expect(result.count_words).to eq 5
        end
    end

    describe "#reading_time method in DiaryEntry Class" do
        it "returns a reading time after recieving a word per minute value" do
            result = DiaryEntry.new("My_title", "eye remember seeing the oblong")
            expect(result.reading_time(5)).to eq 1
        end

        it "returns a reading time after recieving a wpm with larger value" do
            result = DiaryEntry.new("My_title", "eye " * 550)
            expect(result.reading_time(200)).to eq 3
        end

        it "Fails when given a wpm of 0" do
            result = DiaryEntry.new("My_title", "eye " * 550)
            expect{result.reading_time(0)}.to raise_error "Reading speed must be above zero"
        end
    end

    describe '#reading_chunk method' do
        it 'returns all the words if enough time' do
            result = DiaryEntry.new("My_title", "eye remember seeing the oblong")
            expect(result.reading_chunk(5, 1)). to eq "eye remember seeing the oblong"
        end

         it 'returns a section of content if not enough time' do
            result = DiaryEntry.new("My_title", "one two three four five")
            expect(result.reading_chunk(2,1)).to eq "one two"
         end

         it 'returns the second section of content' do
            diary_entry = DiaryEntry.new("My_title", "one two three")
            diary_entry.reading_chunk(2,1)
            result = diary_entry.reading_chunk(2,1)
            expect(result).to eq "three"
         end
         it 'restarts from first part if no more contents' do
            diary_entry = DiaryEntry.new("My_title", "one two three")
            diary_entry.reading_chunk(2,1)
            diary_entry.reading_chunk(2,1)
            result = diary_entry.reading_chunk(2,1)
            expect(result).to eq "one two"
         end
    end
end
