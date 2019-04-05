import os
import databaseQueryTechnique
import cherrypy

PATH = os.path.abspath(os.path.dirname(__file__))

sOrQ = "statement"
feeling = "nothing"
subject = "normal"
questionNum = 1

class Root(object):
    @cherrypy.expose
    def index(self):
        return open('static/index.html')

    # Method that is invoked on a post request. The .ajax in index.html points to this method
    @cherrypy.expose
    def therapistJenResponce(self):
        global sOrQ
        global feeling
        global subject
        global questionNum

        if questionNum != 1:
            databaseQueryTechnique.getResponse(sOrQ, self, subject, questionNum)
        response = databaseQueryTechnique.getResponse(sOrQ, self, subject, questionNum)
        return response



if __name__ == '__main__':
    config={
        '/': {
                'tools.staticdir.on': True,
                'tools.staticdir.dir': PATH,
                'tools.staticdir.index': 'index.html',
            },
    }
    cherrypy.quickstart(Root(), '/', config)
