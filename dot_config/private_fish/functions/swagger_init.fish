function swagger_init --description 'Initializes Uvicorn for Swagger access. Mainly used for Billing-API'
uvicorn app.main:app --host 0.0.0.0 --port 8080 --reload
end
