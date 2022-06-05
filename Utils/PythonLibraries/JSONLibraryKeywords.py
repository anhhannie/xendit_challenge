# -*- coding: utf-8 -*-
from robot.api import logger
from robot.api.deco import keyword
import os.path
import json
import collections
from jsonpath_rw import Index, Fields
from jsonpath_rw_ext import parse
from operator import  itemgetter
from robot.utils.asserts import assert_equal


class JSONLibraryKeywords(object):
    ROBOT_EXIT_ON_FAILURE = True
    @keyword('Load JSON From File')
    def load_json_from_file(self, file_name):
        """Load JSON from file.

        Return json as a dictionary object.

        Arguments:
            - file_name: absolute json file name

        Return json object (list or dictionary)

        Examples:
        | ${result}=  |  Load Json From File  | /path/to/file.json |
        """
        logger.debug("Check if file exists")
        if os.path.isfile(file_name) is False:
            logger.error("JSON file: " + file_name + " not found")
            raise IOError
        with open(file_name) as json_file:
            data = json.load(json_file)
        return data

    @keyword('Delete Object From Json')
    def delete_object_from_json(self, json_object, json_path):
        """Delete Object From JSON using json_path

        Arguments:
            - json_object: json as a dictionary object.
            - json_path: jsonpath expression

        Return new json_object

        Examples:
        | ${json_object}=  |  Delete Object From Json | ${json} |  $..address.streetAddress  |
        """
        json_path_expr = parse(json_path)
        for match in json_path_expr.find(json_object):
            path = match.path
            if isinstance(path, Index):
                del(match.context.value[match.path.index])
            elif isinstance(path, Fields):
                del(match.context.value[match.path.fields[0]])
        return json_object


    @keyword('Add Object To Json')
    def add_object_to_json(self, json_object, json_path, object_to_add):
        """Add an dictionary or list object to json object using json_path

            Arguments:
                - json_object: json as a dictionary object.
                - json_path: jsonpath expression
                - object_to_add: dictionary or list object to add to json_object which is matched by json_path

            Return new json object.

            Examples:
            | ${dict}=  | Create Dictionary    | latitude=13.1234 | longitude=130.1234 |
            | ${json}=  |  Add Object To Json  | ${json}          | $..address         |  ${dict} |
            """
        json_path_expr = parse(json_path)
        for match in json_path_expr.find(json_object):
            if type(match.value) is dict:
                match.value.update(object_to_add)
            if type(match.value) is list:
                match.value.append(object_to_add)

        return json_object
