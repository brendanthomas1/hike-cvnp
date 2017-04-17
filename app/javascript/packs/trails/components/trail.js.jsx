import React, { Component } from 'react'

class Trail extends React.Component {
  constructor(props) {
    super(props)
  }

  render() {
    return(
      <div className='trail'>
        <h3>{this.props.trail.name}</h3>
        <span className='distance'>{this.props.trail.distance} mi</span>
        <i className='fa fa-check'></i>
        <a className='map-link' href="#"><i className='fa fa-map'></i></a>
      </div>
    )
  }
}

export default Trail