import { useState, useEffect } from 'react'
import './CookieBar.css'

const STORAGE_KEY = 'yourewardcard_cookies'

export default function CookieBar() {
  const [visible, setVisible] = useState(false)

  useEffect(() => {
    try {
      if (localStorage.getItem(STORAGE_KEY) === 'accepted') return
      setVisible(true)
    } catch (e) {}
  }, [])

  const accept = () => {
    try {
      localStorage.setItem(STORAGE_KEY, 'accepted')
      setVisible(false)
    } catch (e) {}
  }

  if (!visible) return null

  return (
    <div className="cookie-bar">
      <p>We use cookies to improve your experience and keep this site secure. By continuing, you accept our use of cookies.</p>
      <button type="button" className="btn-accept" onClick={accept}>Accept</button>
    </div>
  )
}
