# OmniAuth Litmus

This is the official OmniAuth strategy for authenticating against Litmus. To
use it, you'll need an OAuth2 Application ID and Secret, until this is available
from with Litmus, please ask us resellers@litmus.com

## Usage

    use OmniAuth::Builder do
      provider :litmus, ENV['LITMUS_APP_ID'], ENV['LITMUS_SECRET']
    end

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

