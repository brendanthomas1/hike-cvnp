import React, { Component } from 'react'

class Trail extends React.Component {
  constructor(props) {
    super(props)
  }

  render() {
    return(
      <div className='trail row'>
        <div className='twelve columns'>
          <span className='six columns trail-name'>
            {this.props.trail.name}
          </span>
          <div className='six columns trail-links'>
            <span className='distance'>{this.props.trail.distance} mi</span>
            <a className='map-link' href="#"><i className='fa fa-map'></i></a>
            <i className='fa fa-check'></i>
          </div>
        </div>
      </div>
    )
  }
}

export default Trail
