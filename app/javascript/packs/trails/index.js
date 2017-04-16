import React from 'react'
import ReactDOM from 'react-dom'
import { createStore } from 'redux'

import TrailList from './components/trail-list.js.jsx'

const trailData = document.getElementById('trail-list')

document.addEventListener('DOMContentLoaded', () => {
  ReactDOM.render(
    <TrailList trails={JSON.parse(trailData.dataset.trails)}/>,
    document.getElementById('trail-list')
  )
});
