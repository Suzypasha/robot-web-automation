import json
import jsonpath


def read_locator_from_json(locatorname):
    #response = json.loads("../Json/files/Elements.json")
    f = open('C:/python/robot-scripts/amazon/JsonFiles/Elements.json','r')
    response = json.loads(f.read())
    value = jsonpath.jsonpath(response,locatorname)
    return value[0]

