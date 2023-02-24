import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
    
static targets = ['timer']

  start(){
    this.runTimer()
  }

  runTimer(){
    let seconds = 1
    let minutes = 0
    const timer = setInterval(() =>{
      this.stop(seconds, minutes, timer)
      if(minutes > 25){
        this.timerTarget.textContent = "00.00"
      }
      if(seconds > 59){
        seconds = 0
        minutes++
      }

      if(minutes < 10){
        if(seconds < 10){
          this.timerTarget.textContent = `0${minutes}` + "." + `${0}` + seconds++
        } else {
          this.timerTarget.textContent = `0${minutes}` + "." + seconds++
        }
      } else {
        this.timerTarget.textContent = `${minutes}` + "." + seconds++
      }

      if(seconds >= 59 && minutes >= 25){
        this.reset()
      }
    }, 100)
  }
  
  stop(seconds, minutes, timer){
    if(seconds == 59 && minutes == 25){
      clearInterval(timer)
      alert("STOP!")
    }
  }

  reset(){
    this.timerTarget.textContent = "0.0"
  }


}
