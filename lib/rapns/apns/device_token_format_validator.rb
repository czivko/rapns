module Rapns
  module Apns
    class DeviceTokenFormatValidator < ActiveModel::Validator

      def validate(record)
        if record.device_token !~ /^[a-zA-Z0-9]{64}$/
          record.errors[:device_token] << "is invalid"
        end
      end
    end
  end
end