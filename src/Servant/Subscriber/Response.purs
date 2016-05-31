-- File auto generated by purescript-bridge! --
module Servant.Subscriber.Response where

import Data.Tuple (Tuple)
import Prim (Array, Int, String)
import Servant.Subscriber.Request (HttpRequest)
import Servant.Subscriber.Types (Path)

import Data.Generic (class Generic)


data Response =
    Modified Path HttpResponse
  | Deleted Path
  | Unsubscribed Path
  | ParseError 
  | RequestError RequestError

derive instance genericResponse :: Generic Response

data HttpResponse =
    HttpResponse {
      httpStatus :: Status
    , httpHeaders :: Array (Tuple String String)
    , httpBody :: String
    }

derive instance genericHttpResponse :: Generic HttpResponse

data Status =
    Status {
      statusCode :: Int
    , statusMessage :: String
    }

derive instance genericStatus :: Generic Status

data RequestError =
    HttpRequestFailed HttpRequest HttpResponse
  | NoSuchSubscription Path
  | AlreadySubscribed Path

derive instance genericRequestError :: Generic RequestError

