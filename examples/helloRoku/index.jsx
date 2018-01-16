import { render, Component } from 'nervjs'

import Hello from './comps/helloworld'

const styles = {
  fontFamily: 'sans-serif',
  textAlign: 'center'
}

class App extends Component {
  render () {
    return (
      <div style={styles}>
        {Hello}
      </div>
    )
  }
}

render(<App />, document.getElementById('root'))
