import { render, Component } from 'nervjs'

import Hello from './Hello'

const styles = {
  fontFamily: 'sans-serif',
  textAlign: 'center'
}

class App extends Component {
  render () {
    return (
      <div style={styles}>
        <Hello name='Nerv' />
        <h2>Start editing to see some magic happen {'\u2728'}</h2>
      </div>
    )
  }
}

render(<App />, document.getElementById('root'))
