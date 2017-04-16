import React, { Component } from 'react'
import Trail from './trail.js.jsx'

class TrailList extends React.Component {
  constructor(props) {
    super(props)
  }

  render() {
    return(
      <div className='trail-list'>
        {this.props.trails.map(trail =>
          <Trail trail={trail} key={trail.id}/>
        )}
      </div>
    )
  }
}

TrailList.defaultProps = { trails: [] }

export default TrailList
