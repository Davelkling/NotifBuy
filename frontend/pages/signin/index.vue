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
      this.$router.push("/");
    },
  },
};

</script>

<template>
  <div
    class="min-h-[100dvh] bg-white py-12 px-4 sm:px-6 lg:px-8 flex items-center justify-center">
    <div
      class="container mx-auto sm:w-[30rem] flex items-center justify-center">
      <div class="max-w-md w-full space-y-8">
        <div class="flex flex-col items-center mt-[-6rem]">
            <img src="NotifBuy_LogoFinal.svg" alt="NotifBuy Logo" class="h-36 w-36"/>
          <h1 class="text-center text-6xl font-extrabold text-[#433479] tracking-wider">
            NotifBuy
          </h1>
          <h2 class="text-center text-5xl font-extrabold text-gray-800">
            Peddler
          </h2>
        </div>
        <form class="mt-8 space-y-6" @submit.prevent="login">
          <input type="hidden" name="remember" />
          <div class="rounded-md shadow-sm space-y-2 ml-2 mr-2">
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
                class="appearance-none relative block w-full p-3 bg-[#E0E7FF] bg-opacity-30 border border-[#8667f2] placeholder-gray-500 text-gray-900 rounded-md focus:outline-none focus:ring-[#433479] focus:border-[#433479] focus:z-10 sm:text-sm"
                placeholder="Email address" />
            </div>
            <div>
              <label htmlFor="email-address" class="sr-only">
                Email address
              </label>
              <input
                id="password"
                name="password"
                type="password"
                autoComplete="password"
                required
                v-model="password"
                class="appearance-none relative block w-full p-3 bg-[#E0E7FF] bg-opacity-30 border border-[#8667f2] placeholder-gray-500 text-gray-900 rounded-md focus:outline-none focus:ring-[#433479] focus:border-[#433479] focus:z-10 sm:text-sm"
                placeholder="Password" />
            </div>
          </div>
          <div>
            <div class="ml-2 mr-2 ">
              <button
                type="submit"
                class=" group relative w-full flex justify-center p-3 border border-transparent text-md font-medium rounded-lg text-white bg-[#433479] hover:bg-[#8667f2] focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-[#433479]"
              >
                Sign in
              </button>
            </div>
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
