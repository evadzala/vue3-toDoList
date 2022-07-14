const { defineConfig } = require('@vue/cli-service')
module.exports = defineConfig({
  transpileDependencies: true,
  publicPath: process.env.NODE_ENV === 'production'
    ? '/API2/'
    : '/'
})
module.exports = {
  publicPath: process.env.NODE_ENV === 'production'
    ? '/API2/'
    : '/'
}