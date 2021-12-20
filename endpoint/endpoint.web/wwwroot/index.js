const addEndPoint = "/addmetrics"

const postMetric = async (name, value) => {
    const data = {name, value}
    const req = {
        method: "POST",
        headers: {
            "Content-Type": "application/json"
        },
        body: JSON.stringify(data)
    }
    
    const res = await fetch(addEndPoint, req).catch(er => {
        console.error(er)
        throw er
    })
    return res

}

const btnAdd = document.querySelector("#btnAdd")
const inputName = document.querySelector("#inputName")
inputName.value = "hello_test_value"
const inputValue = document.querySelector("#inputValue")
inputValue.value = 2.2

const messagesDiv = document.querySelector("#messages")

const addValue = async (e) => {
    const name = inputName.value
    const value = inputValue.value
    try {
        btnAdd.disabled = true
        await postMetric(name, value)
        addMsg(`Successfully added ${name}=${value}`)
    } catch (er) {
        console.log(er)
    }
    finally {
        btnAdd.disabled = false
    }
}

const addMsg = (msg) => {
    const p = document.createElement("p")
    p.innerText = msg
    messagesDiv.appendChild(p)
}

btnAdd.addEventListener("click", addValue)