require 'spec_helper'

describe Postcodesio do

  context 'requesting information on a single postcode works correctly' do

    before(:all) do
      @postcodesio = Postcodesio.new
      @response = @postcodesio.get_single_postcode('OX495NU') #input a postcode
    end

    it "should respond with a status message of 200" do
      expect(@postcodesio.get_single_status_response(@response)).to eq 200
    end

    it "should have a results hash" do
      expect(@response).to be_kind_of Hash
    end

    it "should return a postcode between 5-7 in length"  do
      expect(@postcodesio.get_postcode_length(@response)).to be_between(5, 7).inclusive
    end

    it "should return an quality key integer between 1-9" do
      expect(@postcodesio.get_quality_key(@response)).to be_between(1, 9).inclusive
    end

    it "should return an ordnance survey eastings value as integer" do
      expect(@postcodesio.get_eastings(@response)).to be_kind_of Integer
    end

    it "should return a country which is one of the four constituent countries of the UK" do
      expect(@postcodesio.get_country(@response)).to eq "England"
    end

    it "should return a string value for NHS authority " do
      expect(@postcodesio.get_NHS(@response)).to be_kind_of String
    end

    it "should return a longitude float value" do
      expect(@postcodesio.get_longitude(@response)).to be_kind_of Float
    end

    it "should return a latitude float value" do
      expect(@postcodesio.get_latitude(@response)).to be_kind_of Float
    end

    it "should return a parliamentary constituency string" do
      expect(@postcodesio.get_constituency(@response)).to be_kind_of String
    end

    it "should return a european_electoral_region string" do
      expect(@postcodesio.get_european_electoral_region (@response)).to be_kind_of String
    end

    it "should return a primary_care_trust string" do
      expect(@postcodesio.get_primary_care_trust(@response)).to be_kind_of String
    end

    it "should return a region string" do
      expect(@postcodesio.get_region(@response)).to be_kind_of String
    end

    it "should return a parish string" do
      expect(@postcodesio.get_parish(@response)).to be_kind_of String
    end

    it "should return a lsoa string" do
      expect(@postcodesio.get_lsoa(@response)).to be_kind_of String
    end

    it "should return a msoa string" do
      expect(@postcodesio.get_msoa(@response)).to be_kind_of String
    end
    # admin ward and county are not documented however tested below

    it "should return a admin_district string" do
      expect(@postcodesio.get_admin_district(@response)).to be_kind_of String
    end

    it "should return a incode string of three characters" do
      expect(@postcodesio.get_incode_length(@response)).to eq 3
    end

    it "should return a outcode string of 3-4 characters" do
      expect(@postcodesio.get_outcode_length(@response)).to be_between(3, 4).inclusive
    end
  end

  context "multiple postcodes validation" do

    before(:all) do
      @postcodesio = Postcodesio.new
      @response = @postcodesio.get_multiple_postcodes() #Add in array of postcodes
    end

    it "should respond with a status message of 200" do
      pending
    end

    it "should return the first query as the first postcode in the response" do
      pending
    end

    it "should return the second query as the first postcode in the response" do
      pending
    end

    it "should have a results hash" do
      pending
    end

    it "should return a postcode between 5-7 in length"  do
      pending
    end

    it "should return an quality key integer between 1-9" do
      pending
    end

    it "should return an ordnance survey eastings value as integer" do
    end

    it "should return a country which is one of the four constituent countries of the UK" do
      pending
    end

    it "should return a string value for NHS authority " do
      pending
    end

    it "should return a longitude float value" do
      pending
    end

    it "should return a latitude float value" do
      pending
    end

    it "should return a parliamentary constituency string" do
      pending
    end

    it "should return a european_electoral_region string" do
      pending
    end

    it "should return a primary_care_trust string" do
      pending
    end

    it "should return a region string" do
      pending
    end

    it "should return a parish string" do
      pending
    end

    it "should return a lsoa string" do
      pending
    end

    it "should return a msoa string" do
      pending
    end
    # admin ward and county are not documented however tested below

    it "should return a admin_district string" do
      pending
    end

    it "should return a incode string of three characters" do
      pending
    end

    it "should return a msoa string" do
      pending
    end

    it "should return a incode string of 3-4 characters" do
      pending
    end

    it "should have a results hash" do
      pending
    end

    it "should return a postcode between 5-7 in length"  do
      pending
    end

    it "should return an quality key integer between 1-9" do
      pending
    end

    it "should return an ordnance survey eastings value as integer" do
      pending
    end

    it "should return an ordnance survey eastings value as integer" do
      pending
    end

    it "should return a country which is one of the four constituent countries of the UK" do
      pending
    end

    it "should return a string value for NHS authority " do
      pending
    end

    it "should return a longitude float value" do
      pending
    end

    it "should return a latitude float value" do
      pending
    end

    it "should return a parliamentary constituency string" do
      pending
    end

    it "should return a european_electoral_region string" do
      pending
    end

    it "should return a primary_care_trust string" do
      pending
    end

    it "should return a region string" do
      pending
    end

    it "should return a parish string" do
      pending
    end

    it "should return a lsoa string" do
      pending
    end

    it "should return a msoa string" do
      pending
    end
    # admin ward and county are not documented however tested below

    it "should return a admin_district string" do
      pending
    end

    it "should return a incode string of three characters" do
      pending
    end

    it "should return a outcode string of 3-4 characters" do
      pending
    end

  end

end
