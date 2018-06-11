require 'httparty'
require 'json'

class Postcodesio
  include HTTParty

  base_uri 'https://api.postcodes.io'

  def get_single_postcode(postcode)
    JSON.parse(self.class.get("/postcodes/#{postcode}").body)
  end

  def get_multiple_postcodes(postcodes_array)
    JSON.parse(self.class.post('/postcodes', body: { "postcodes" => postcodes_array}).body)
  end

  def get_single_status_response(postcode)
    postcode["status"]
  end

  def get_postcode_length(postcode)
    postcode["result"]["postcode"].gsub(' ', '').length
  end

  def get_quality_key(postcode)
    postcode["result"]["quality"]
  end

  def get_eastings(postcode)
    postcode["result"]["eastings"]
  end

  def get_country(postcode)
    postcode["result"]["country"]
  end

  def get_NHS(postcode)
    postcode["result"]["nhs_ha"]
  end

  def get_longitude(postcode)
    postcode["result"]["longitude"]
  end

  def get_latitude(postcode)
    postcode["result"]["latitude"]
  end

  def get_constituency(postcode)
    postcode["result"]["parliamentary_constituency"]
  end

  def get_european_electoral_region(postcode)
    postcode["result"]["european_electoral_region"]
  end

  def get_primary_care_trust(postcode)
    postcode["result"]["primary_care_trust"]
  end

  def get_region(postcode)
    postcode["result"]["region"]
  end

  def get_parish(postcode)
    postcode["result"]["parish"]
  end

  def get_lsoa(postcode)
    postcode["result"]["lsoa"]
  end

  def get_msoa(postcode)
    postcode["result"]["msoa"]
  end

  def get_admin_district(postcode)
    postcode["result"]["codes"]["admin_district"]
  end

  def get_incode_length(postcode)
    postcode["result"]["incode"].length
  end

  def get_outcode_length(postcode)
    postcode["result"]["outcode"].length
  end

pc = Postcodesio.new

pc.get_single_postcode("OX495NU")

pc.get_multiple_postcodes(["OX495NU","RG189EY","KT66HY"])

end
