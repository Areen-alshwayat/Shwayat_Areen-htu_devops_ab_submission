<template>
  <div class="layout">
    <header id="header">
      <h1>
        <a href="/">Konsul</a>
      </h1>
      <nav id="nav">
        <ul>
          <li>
            <a href="/">Home</a>
          </li>
          <li>
            <a href="/">About Us</a>
          </li>
          <li>
            <a href="/">Services</a>
          </li>
          <li>
            <a href="/" class="button special">Log In</a>
          </li>
        </ul>
      </nav>
    </header>
    <slot />
  </div>
</template>

<static-query>
query {
  metadata {
    siteName
  }
}
</static-query>

<script>
export default {};
</script>

<style>
</style>
