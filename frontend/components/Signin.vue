<script>
export default {
  data() {
    return {
      email: "",
      password: "",
    };
  },
  methods: {
    login() {
      console.log("Email:", this.email);
      console.log("Password:", this.password);
    },
  },
};
</script>

<template>
  <div
    class="min-h-[100dvh] bg-purple-100 py-12 px-4 sm:px-6 lg:px-8 flex items-center justify-center">
    <div
      class="container mx-auto sm:w-[30rem] flex items-center justify-center">
      <div class="max-w-md w-full space-y-8">
        <div class="flex flex-col items-center mt-[-5rem]">
          <h1 class="mt-2 text-center text-2xl font-extrabold text-gray-900">
            Notifbuy
          </h1>
          <p class="mt-2 text-center text-sm text-gray-600">Sign in</p>
        </div>
        <form class="mt-8 space-y-6" @submit.prevent="login">
          <input type="hidden" name="remember" />
          <div class="rounded-md shadow-sm space-y-2">
            <div>
              <label htmlFor="email-address" class="sr-only">
                Email address
              </label>
              <input
                id="email-address"
                name="email"
                type="email"
                autoComplete="email"
                required
                v-model="email"
                class="appearance-none relative block w-full p-3 bg-purple-50 border border-purple-600 placeholder-gray-500 text-gray-900 rounded-md focus:outline-none focus:ring-purple-500 focus:border-purple-500 focus:z-10 sm:text-sm"
                placeholder="Email address" />
            </div>
            <div>
              <label htmlFor="password" class="sr-only"> Password </label>
              <input
                id="password"
                name="password"
                type="password"
                autoComplete="current-password"
                required
                v-model="password"
                class="appearance-none relative block w-full p-3 bg-purple-50 border border-purple-600 placeholder-gray-500 text-gray-900 rounded-md focus:outline-none focus:ring-purple-500 focus:border-purple-500 focus:z-10 sm:text-sm"
                placeholder="Password" />
            </div>
          </div>
          <div>
            <button
              type="submit"
              class="group relative w-full flex justify-center p-3 border border-transparent text-sm font-medium rounded-lg text-white bg-purple-600 hover:bg-purple-700 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-purple-500">
              Sign in
            </button>
          </div>
        </form>
      </div>
      <div class="absolute bottom-5 text-center">
        <h3 class="text-xs font-semibold">Est. 2023 - 2024</h3>
        <h3 class="text-xs text-gray-600">SquareZero</h3>
      </div>
    </div>
  </div>
</template>

<style scoped></style>
