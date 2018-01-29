# Copyright (c) 2018 Vente-Privée
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

FROM vpgrp/debian

ENV DEBIAN_FRONTEND="noninteractive" \
    TZ="Europe/Amsterdam"

RUN apt-get update  -qq && \
    apt-get upgrade -qq -y && \
    apt-get install -qq -y \
      inotify-tools git ssh

RUN mkdir -p ~/.ssh
RUN echo 'Host *' > ~/.ssh/config
RUN echo '    StrictHostKeyChecking no' >> ~/.ssh/config
RUN chmod 700 ~/.ssh

COPY gitwatch.sh /usr/bin/gitwatch
COPY /entrypoint.sh /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]
# EOF