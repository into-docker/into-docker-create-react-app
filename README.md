# into-docker-create-react-app

[![](https://images.microbadger.com/badges/version/intodocker/create-react-app.svg)](https://hub.docker.com/r/intodocker/create-react-app)
[![](https://images.microbadger.com/badges/image/intodocker/create-react-app.svg)](https://hub.docker.com/r/intodocker/create-react-app)

This is an [into-docker][into] builder image for [create-react-app][cra]
applications relying on [npm][npm].

[into]: https://github.com/into-docker/into-docker
[cra]: https://create-react-app.dev
[npm]: https://www.npmjs.com

## Usage

Run the following in the root directory of your project:

```sh
into -t <repository>:<tag> intodocker/create-react-app .
```

## License

```
MIT License

Copyright (c) 2020 Yannick Scherer

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
```
