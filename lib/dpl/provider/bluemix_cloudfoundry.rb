module DPL
  class Provider
    class BluemixCF < CloudFoundry

      REGIONS = Hash.new {"api.ng.bluemix.net"}.update(
        "eu-gb" => "api.eu-gb.bluemix.net",
        "au-syd" => "api.au-syd.bluemix.net"
      )
      
      def set_api
        region = options[:region] || "ng"
        options[:api] = options[:api] || REGIONS[region]
      end

      def check_auth
        set_api
        super
      end

    end
  end
end
