dockstore-cgpNgsQC
======
`dockstore-cgpNgsQC` provides cgpNgsQC in a docker image.  This has been packaged specifically for use with the [Dockstore.org](https://dockstore.org/) framework.

[![Docker Repository on Quay](https://quay.io/repository/wtsicgp/dockstore-cgpmap/status "Docker Repository on Quay")](https://quay.io/repository/wtsicgp/dockstore-cgpmap)

[![Build Status](https://travis-ci.org/cancerit/dockstore-cgpmap.svg?branch=master)](https://travis-ci.org/cancerit/dockstore-cgpmap) : master  
[![Build Status](https://travis-ci.org/cancerit/dockstore-cgpmap.svg?branch=develop)](https://travis-ci.org/cancerit/dockstore-cgpmap) : develop

Release process
===============
This project is not yet maintained using HubFlow.

1. Make appropriate changes
2. Bump version in `Dockerfile` and `Dockstore.cwl`
3. Push changes
4. Check state on Travis
5. Generate the release (add notes to GitHub)
6. Confirm that image has been built on [quay.io](https://quay.io/repository/wtsicgp/dockstore-cgpmap?tab=builds)
7. Update the [dockstore](https://dockstore.org/containers/quay.io/wtsicgp/dockstore-cgpmap) entry, see [their docs](https://dockstore.org/docs/getting-started-with-dockstore).

LICENCE
=======

Copyright (c) 2016 Genome Research Ltd.

Author: Cancer Genome Project <cgpit@sanger.ac.uk>

This file is part of dockstore-cgpmap.

dockstore-cgpmap is free software: you can redistribute it and/or modify it under
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
