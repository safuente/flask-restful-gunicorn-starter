from flask_restful import Resource, Api
from flask import Flask


# Create flask restful app
app = Flask(__name__)
api = Api(app)


class HelloWorld(Resource):
    def get(self):
        """Return hello world msg"""
        return {'hello': 'world'}


# Add url to API
api.add_resource(HelloWorld, '/')
