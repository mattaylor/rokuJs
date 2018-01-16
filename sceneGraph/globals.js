module.export = {
  sleep: (secs) => {
    var end = new Date() + secs * 1000
    while (new Date() < end);
  },

  m: () => ({
    top: { findNode: (el) => document.getElementById(el) }
  })
}
