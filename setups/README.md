# Organic Oval Setup Examples

Oval can be used in many variations.
There are different setups for each way you want to use organic-oval.
Here you will see info about every type of setup `organic-oval` supports. There are examples for each one, so check them out and try them!

### **NOTE:**
In order to try one of the set ups, here the steps:

1. Join the setup example folder. For example: the `vanilla` example

  ```
  $ cd vanilla
  ```

2. Install the dependencies

  ```
  $ npm install
  ```

3. Build the example

  ```
  $ npm run build
  ```

4. Open the `index.html` file

## VanillaJS

[example](./vanilla)

Vanilla setup consists of the basic things, that `organic-oval` needs in order to run. Here is an example `webpack` config:

```js
module.exports = {
  'module': {
    'loaders': [
      {
        test: /\.js$/,
        exclude: /node_modules/,
        loader: 'babel-loader',
        query: {
          presets: ['es2015']
        }
      }
    ]
  }
}
```

## JSX setup

[example](./jsx)

If you want to use `JSX` in you components here is an example `webpack` config for `organic-oval` + `JSX`:

```js
module.exports = {
  'module': {
    'loaders': [
      {
        test: /\.js$/,
        exclude: /node_modules/,
        loader: 'babel-loader',
        query: {
          plugins: [
            ['transform-react-jsx', { pragma: 'createElement' }]
          ],
          presets: ['es2015']
        }
      }
    ]
  }
}
```

## Oval Tags Syntax

[example](./tag)

We suggest using oval with `.tag` files. We have implemented a loader, that will take your tag definitions and will make valid oval components.
Here is the `webpack` configuration you will need in order to get this setup running.

```js
var webpack = require('webpack')

module.exports = {
  'resolve': {
    'extensions': ['', '.tag', '.js']
  },
  'plugins': [
    new webpack.ProvidePlugin({
      'oval': 'organic-oval'
    })
  ],
  'module': {
    'preLoaders': [
      {
        test: /\.tag$/,
        exclude: /node_modules/,
        loaders: [
          'organic-oval/webpack/oval-loader'
        ]
      }
    ],
    'loaders': [
      {
        test: /\.js|.tag$/,
        exclude: /node_modules/,
        loader: 'babel-loader',
        query: {
          plugins: [
            'transform-es2015-arrow-functions',
            ['transform-react-jsx', { pragma: 'createElement' }]
          ],
          presets: ['es2015']
        }
      }
    ]
  }
}
```
