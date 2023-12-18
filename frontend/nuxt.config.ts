// https://nuxt.com/docs/api/configuration/nuxt-config
export default defineNuxtConfig({
  devtools: { enabled: true },
  app: {
    head: {
      title: 'NotifBuy Peddler',
      link: [
        {rel: 'stylesheet', href:'https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined'}
      ],
    }
  },
  
  modules: [
    '@nuxtjs/tailwindcss',
    '@nuxtjs/device'
  ]
})
