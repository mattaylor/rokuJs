import { render } from 'nervjs'

import Hello from './comps/helloworld'

/*

const styles = {
  fontFamily: 'sans-serif',
  textAlign: 'center'
}

class App extends ReactComp {
  render () {
    return (
      <div style={styles}>
        <Hello/>
      </div>
    )
  }
}
*/

render(<Hello />, document.getElementById('root'))
