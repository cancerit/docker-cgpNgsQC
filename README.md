# **NOTE**: Inactive project

There will be no further development of this repo. Information of cgpNgsQC docker can be found in [its own repository](https://github.com/cancerit/cgpNgsQc).

The latest version (*0.0.3*) container as defined in this repository can be pulled from Quay.IO with `docker pull quay.io/wtsicgp/docker-cgp-ngs-qc:latest`.

docker-cgpNgsQC
======
`docker-cgpNgsQC` provides cgpNgsQC in a docker image.

[![Docker Repository on Quay](https://quay.io/repository/wtsicgp/docker-cgp-ngs-qc/status "Docker Repository on Quay")](https://quay.io/repository/wtsicgp/docker-cgp-ngs-qc)

Release process
===============
This project is not yet maintained using HubFlow.

1. Make appropriate changes
2. Bump version in `Dockerfile`
3. Push changes
4. Check state on Travis
5. Generate the release (add notes to GitHub)
6. Confirm that image has been built on [quay.io](https://quay.io/repository/wtsicgp/docker-cgp-ngs-qc?tab=builds)

LICENCE
=======

Copyright (c) 2016 Genome Research Ltd.

Author: Cancer Genome Project <cgpit@sanger.ac.uk>

This file is part of docker-cgpNgsQC.

docker-cgpNgsQC is free software: you can redistribute it and/or modify it under
the terms of the GNU Affero General Public License as published by the Free
Software Foundation; either version 3 of the License, or (at your option) any
later version.

This program is distributed in the hope that it will be useful, but WITHOUT
ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
FOR A PARTICULAR PURPOSE. See the GNU Affero General Public License for more
details.

You should have received a copy of the GNU Affero General Public License
along with this program. If not, see <http://www.gnu.org/licenses/>.

1. The usage of a range of years within a copyright statement contained within
this distribution should be interpreted as being equivalent to a list of years
including the first and last year specified and all consecutive years between
them. For example, a copyright statement that reads ‘Copyright (c) 2005, 2007-
2009, 2011-2012’ should be interpreted as being identical to a statement that
reads ‘Copyright (c) 2005, 2007, 2008, 2009, 2011, 2012’ and a copyright
statement that reads ‘Copyright (c) 2005-2012’ should be interpreted as being
identical to a statement that reads ‘Copyright (c) 2005, 2006, 2007, 2008,
2009, 2010, 2011, 2012’."
