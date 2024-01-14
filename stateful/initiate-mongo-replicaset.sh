#!/usr/bin/env bash

kubectl exec -it quiz-0 -c mongo -- mongosh --eval 'rs.initiate({
  _id: "quiz",
  members: [
    {_id: 0, host: "quiz-0.quiz-po.kiada.svc.cluster.local:27017"},
    {_id: 1, host: "quiz-1.quiz-po.kiada.svc.cluster.local:27017"},
    {_id: 2, host: "quiz-2.quiz-po.kiada.svc.cluster.local:27017"}]})'