import { Controller } from "stimulus"

export default class extends Controller {
    static targets = []

    connect() {
        debugger
        console.log('ok')
        console.log(this.data.get('ok'))
        this.data.set('non', 5)
    }
}
