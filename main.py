from fastapi import FastAPI

app = FastAPI()

@app.get("/")
def read_root():
    return "Hello, Bangaru konda, Bujji Kanna, Chinnulu, Nanilu,Bannulu!"

if __name__ == "__main__":
    import uvicorn
    uvicorn.run(app, host="0.0.0.0", port=80)

