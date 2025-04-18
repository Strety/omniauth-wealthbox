# OmniAuth Wealthbox

This is the OmniAuth strategy for authenticating against [Wealthbox][]. To
use it, you'll need to create an Application and copy the Client ID and Client
Secret. You can create and manage applications from the "Apps" tab of your user
settings in Wealthbox.

> Credit: Much of this gem has been based off the [OmniAuth strategy for
  Github][omniauth-github].

## Basic Usage

    use OmniAuth::Builder do
      provider :wealthbox, ENV['WEALTHBOX_CLIENT_ID'], ENV['WEALTHBOX_CLIENT_SECRET']
    end

## Further API usage

For more information about using the Wealthbox API and OAuth, please refer to the
[Wealthbox Developer Documentation][].

## MIT License

Copyright (c) 2013 Wealthbox, Inc.

MIT License

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
"Software"), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

[Wealthbox]: https://wealthbox.com/
[Wealthbox Developer Documentation]: https://www.wealthbox.com/api/
[omniauth-github]: https://github.com/intridea/omniauth-github
