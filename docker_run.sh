#!/bin/bash

rails db:migrate

exec foreman start