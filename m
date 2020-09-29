Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5BB8427D1A8
	for <lists+linux-man@lfdr.de>; Tue, 29 Sep 2020 16:43:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731124AbgI2Onc (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 29 Sep 2020 10:43:32 -0400
Received: from foss.arm.com ([217.140.110.172]:46548 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1728630AbgI2On3 (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Tue, 29 Sep 2020 10:43:29 -0400
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3713131B;
        Tue, 29 Sep 2020 07:43:28 -0700 (PDT)
Received: from arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 69ACF3F6CF;
        Tue, 29 Sep 2020 07:43:27 -0700 (PDT)
Date:   Tue, 29 Sep 2020 15:43:24 +0100
From:   Dave Martin <Dave.Martin@arm.com>
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        libc-alpha@sourceware.org, g.branden.robinson@gmail.com
Subject: Re: [PATCH v2] system_data_types.7: Improve "Include" wording and
 format, and explain it in NOTES
Message-ID: <20200929144324.GM6642@arm.com>
References: <d714d0e3-e9fd-0f31-4d5c-4f9232a6b55b@gmail.com>
 <20200929142219.72683-1-colomar.6.4.3@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200929142219.72683-1-colomar.6.4.3@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Tue, Sep 29, 2020 at 04:22:19PM +0200, Alejandro Colomar wrote:
> The previous format/wording for the includes wasn't very clear.
> Improve it a bit following Branden's proposal.
> It also helps reduce lines of code.
> 
> Add a subsection in NOTES explaining the conventions used.
> 
> Remove the comment for helping maintain the page,
> as the NOTES section is now clear enough.
> 
> Reported-by: G. Branden Robinson <g.branden.robinson@gmail.com>
> Reported-by: Dave Martin <Dave.Martin@arm.com>
> Reported-by: Michael Kerrisk <mtk.manpages@gmail.com>
> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
> ---
> 
> Hi Michael,
> 
> After this patch, we're at a sync-point: no more pending patches from me.
> 
> Tomorrow I'll go to the mountain, so you can have a small break from me :p
> 
> Cheers,
> 
> Alex
> 
> 
>  man7/system_data_types.7 | 302 +++++++++++++++------------------------
>  1 file changed, 119 insertions(+), 183 deletions(-)
> 
> diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
> index af0c55c65..9cf67ee6f 100644
> --- a/man7/system_data_types.7
> +++ b/man7/system_data_types.7
> @@ -31,22 +31,7 @@ system_data_types \- overview of system data types
>  .\" Layout:
>  .\"	A list of type names (the struct/union keyword will be omitted).
>  .\"	Each entry will have the following parts:
> -.\"		* Include
> -.\"			The headers will be in the following order:
> -.\"			1) The main header that shall define the type
> -.\"			   according to the C Standard,
> -.\"			   and
> -.\"			   the main header that shall define the type
> -.\"			   according to POSIX,
> -.\"			   in alphabetical order.
> -.\"			;
> -.\"			2) All other headers that shall define the type
> -.\"			   as described in the previous header(s)
> -.\"			   according to the C Standard or POSIX,
> -.\"			   in alphabetical order.
> -.\"			*) All headers that define the type
> -.\"			   *if* the type is not defined by C nor POSIX,
> -.\"			   in alphabetical order.
> +.\"		* Include (see NOTES)
>  .\"
>  .\"		* Definition (no "Definition" header)
>  .\"			Only struct/union types will have definition;
> @@ -55,9 +40,10 @@ system_data_types \- overview of system data types
>  .\"		* Description (no "Description" header)
>  .\"			A few lines describing the type.
>  .\"
> -.\"		* Conforming to
> +.\"		* Bugs (if any)
> +.\"
> +.\"		* Conforming to (see NOTES)
>  .\"			Format: CXY and later; POSIX.1-XXXX and later.
> -.\"			Forget about pre-C99 C standards (i.e., C89/C90)
>  .\"
>  .\"		* Notes (optional)
>  .\"
> @@ -203,8 +189,8 @@ See also:
>  .RS
>  .br
>  Include:
> -.IR <stdio.h> ;
> -or
> +.IR <stdio.h> .
> +Alternatively,
>  .IR <wchar.h> .
>  .PP
>  An object type used for streams.
> @@ -269,19 +255,14 @@ type in this page.
>  .RS
>  .br
>  Include:
> -.IR <sys/types.h> ;
> -or
> -.I <grp.h>
> -or
> -.I <pwd.h>
> -or
> -.I <signal.h>
> -or
> -.I <stropts.h>
> -or
> -.I <sys/ipc.h>
> -or
> -.I <sys/stat.h>
> +.IR <sys/types.h> .
> +Alternatively,
> +.IR <grp.h> ,
> +.IR <pwd.h> ,
> +.IR <signal.h> ,
> +.IR <stropts.h> ,
> +.IR <sys/ipc.h> ,
> +.IR <sys/stat.h> ,
>  or
>  .IR <unistd.h> .
>  .PP
> @@ -306,8 +287,8 @@ See also:
>  .RS
>  .br
>  Include:
> -.IR <sys/types.h> ;
> -or
> +.IR <sys/types.h> .
> +Alternatively,
>  .IR <sys/resource.h> .
>  .PP
>  A type used to hold a general identifier.
> @@ -586,29 +567,19 @@ See also:
>  .RS
>  .br
>  Include
> -.IR <sys/types.h> ;
> -or
> -.I <fcntl.h>
> -or
> -.I <sched.h>
> -or
> -.I <signal.h>
> -or
> -.I <spawn.h>
> -or
> -.I <sys/msg.h>
> -or
> -.I <sys/sem.h>
> -or
> -.I <sys/shm.h>
> -or
> -.I <sys/wait.h>
> -or
> -.I <termios.h>
> -or
> -.I <time.h>
> -or
> -.I <unistd.h>
> +.IR <sys/types.h> .
> +Alternatively,
> +.IR <fcntl.h> ,
> +.IR <sched.h> ,
> +.IR <signal.h> ,
> +.IR <spawn.h> ,
> +.IR <sys/msg.h> ,
> +.IR <sys/sem.h> ,
> +.IR <sys/shm.h> ,
> +.IR <sys/wait.h> ,
> +.IR <termios.h> ,
> +.IR <time.h> ,
> +.IR <unistd.h> ,
>  or
>  .IR <utmpx.h> .
>  .PP
> @@ -738,11 +709,10 @@ types in this page.
>  .RS
>  .br
>  Include:
> -.IR <signal.h> ;
> -or
> -.I <aio.h>
> -or
> -.I <mqueue.h>
> +.IR <signal.h> .
> +Alternatively,
> +.IR <aio.h> ,
> +.IR <mqueue.h> ,
>  or
>  .IR <time.h> .
>  .PP
> @@ -787,8 +757,8 @@ structure in this page.
>  .RS
>  .br
>  Include:
> -.IR <signal.h> ;
> -or
> +.IR <signal.h> .
> +Alternatively,
>  .IR <sys/wait.h> .
>  .PP
>  .EX
> @@ -823,9 +793,9 @@ See also:
>  .RS
>  .br
>  Include:
> -.IR <signal.h> ;
> -or
> -.I <spawn.h>
> +.IR <signal.h> .
> +Alternatively,
> +.IR <spawn.h> ,
>  or
>  .IR <sys/select.h> .
>  .PP
> @@ -886,55 +856,32 @@ in this page.
>  Include:
>  .I <stddef.h>
>  or
> -.IR <sys/types.h> ;
> -or
> -.I <aio.h>
> -or
> -.I <glob.h>
> -or
> -.I <grp.h>
> -or
> -.I <iconv.h>
> -or
> -.I <monetary.h>
> -or
> -.I <mqueue.h>
> -or
> -.I <ndbm.h>
> -or
> -.I <pwd.h>
> -or
> -.I <regex.h>
> -or
> -.I <search.h>
> -or
> -.I <signal.h>
> -or
> -.I <stdio.h>
> -or
> -.I <stdlib.h>
> -or
> -.I <string.h>
> -or
> -.I <strings.h>
> -or
> -.I <sys/mman.h>
> -or
> -.I <sys/msg.h>
> -or
> -.I <sys/sem.h>
> -or
> -.I <sys/shm.h>
> -or
> -.I <sys/socket.h>
> -or
> -.I <sys/uio.h>
> -or
> -.I <time.h>
> -or
> -.I <unistd.h>
> -or
> -.I <wchar.h>
> +.IR <sys/types.h> .
> +Alternatively,
> +.IR <aio.h> ,
> +.IR <glob.h> ,
> +.IR <grp.h> ,
> +.IR <iconv.h> ,
> +.IR <monetary.h> ,
> +.IR <mqueue.h> ,
> +.IR <ndbm.h> ,
> +.IR <pwd.h> ,
> +.IR <regex.h> ,
> +.IR <search.h> ,
> +.IR <signal.h> ,
> +.IR <stdio.h> ,
> +.IR <stdlib.h> ,
> +.IR <string.h> ,
> +.IR <strings.h> ,
> +.IR <sys/mman.h> ,
> +.IR <sys/msg.h> ,
> +.IR <sys/sem.h> ,
> +.IR <sys/shm.h> ,
> +.IR <sys/socket.h> ,
> +.IR <sys/uio.h> ,
> +.IR <time.h> ,
> +.IR <unistd.h> ,
> +.IR <wchar.h> ,
>  or
>  .IR <wordexp.h> .
>  .PP
> @@ -1007,21 +954,15 @@ types in this page.
>  .RS
>  .br
>  Include:
> -.IR <sys/types.h> ;
> -or
> -.I <aio.h>
> -or
> -.I <monetary.h>
> -or
> -.I <mqueue.h>
> -or
> -.I <stdio.h>
> -or
> -.I <sys/msg.h>
> -or
> -.I <sys/socket.h>
> -or
> -.I <sys/uio.h>
> +.IR <sys/types.h> .
> +Alternatively,
> +.IR <aio.h> ,
> +.IR <monetary.h> ,
> +.IR <mqueue.h> ,
> +.IR <stdio.h> ,
> +.IR <sys/msg.h> ,
> +.IR <sys/socket.h> ,
> +.IR <sys/uio.h> ,
>  or
>  .IR <unistd.h> .
>  .PP
> @@ -1083,9 +1024,9 @@ types in this page.
>  .RS
>  .br
>  Include:
> -.IR <sys/types.h> ;
> -or
> -.I <sys/select.h>
> +.IR <sys/types.h> .
> +Alternatively,
> +.IR <sys/select.h> ,
>  or
>  .IR <sys/time.h> .
>  .PP
> @@ -1110,23 +1051,17 @@ structure in this page.
>  .RS
>  .br
>  Include:
> -.I <sys/types.h>
> -or
> -.IR <time.h> ;
> -or
> -.I <sched.h>
> -or
> -.I <sys/msg.h>
> -or
> -.I <sys/select.h>
> -or
> -.I <sys/sem.h>
> -or
> -.I <sys/shm.h>
> -or
> -.I <sys/stat.h>
> +.I <time.h>
>  or
> -.I <sys/time.h>
> +.IR <sys/types.h> .
> +Alternatively,
> +.IR <sched.h> ,
> +.IR <sys/msg.h> ,
> +.IR <sys/select.h> ,
> +.IR <sys/sem.h> ,
> +.IR <sys/shm.h> ,
> +.IR <sys/stat.h> ,
> +.IR <sys/time.h> ,
>  or
>  .IR <utime.h> .
>  .PP
> @@ -1153,8 +1088,8 @@ See also:
>  .RS
>  .br
>  Include:
> -.IR <sys/types.h> ;
> -or
> +.IR <sys/types.h> .
> +Alternatively,
>  .IR <time.h> .
>  .PP
>  Used for timer ID returned by
> @@ -1176,17 +1111,13 @@ See also:
>  .RS
>  .br
>  Include:
> -.IR <time.h> ;
> -or
> -.I <aio.h>
> -or
> -.I <mqueue.h>
> -or
> -.I <sched.h>
> -or
> -.I <signal.h>
> -or
> -.I <sys/select.h>
> +.IR <time.h> .
> +Alternatively,
> +.IR <aio.h> ,
> +.IR <mqueue.h> ,
> +.IR <sched.h> ,
> +.IR <signal.h> ,
> +.IR <sys/select.h> ,
>  or
>  .IR <sys/stat.h> .
>  .PP
> @@ -1214,11 +1145,10 @@ See also:
>  .RS
>  .br
>  Include:
> -.IR <sys/time.h> ;
> -or
> -.I <sys/resource.h>
> -or
> -.I <sys/select.h>
> +.IR <sys/time.h> .
> +Alternatively,
> +.IR <sys/resource.h> ,
> +.IR <sys/select.h> ,
>  or
>  .IR <utmpx.h> .
>  .PP
> @@ -1247,17 +1177,13 @@ See also:
>  .RS
>  .br
>  Include:
> -.IR <sys/types.h> ;
> -or
> -.I <pwd.h>
> -or
> -.I <signal.h>
> -or
> -.I <stropts.h>
> -or
> -.I <sys/ipc.h>
> -or
> -.I <sys/stat.h>
> +.IR <sys/types.h> .
> +Alternatively,
> +.IR <pwd.h> ,
> +.IR <signal.h> ,
> +.IR <stropts.h> ,
> +.IR <sys/ipc.h> ,
> +.IR <sys/stat.h> ,
>  or
>  .IR <unistd.h> .
>  .PP
> @@ -1418,9 +1344,9 @@ types in this page.
>  .RS
>  .br
>  Include:
> -.IR <stdarg> ;
> -or
> -.I <stdio.h>
> +.IR <stdarg> .
> +Alternatively,
> +.IR <stdio.h> ,
>  or
>  .IR <wchar.h> .
>  .PP
> @@ -1473,6 +1399,16 @@ If the type has upper and lower limits,
>  the user should check that the value is within those limits,
>  before actually copying the value.
>  The example below shows how these conversions should be done.
> +.SS Conventions used in this page
> +In "Conforming to" we only concern ourselves with
> +C99 and later and POSIX.1-2001 and later.
> +Some types may be specified in earlier versions of one of these standards,
> +but in the interests of simplicity we omit details from earlier standards.
> +.PP
> +In "Include", we first note the "primary" header(s) that
> +define the type according to either the C or POSIX.1 standards.
> +Under "Alternatively", we note additional headers that
> +the standards specify shall define the type.

While this is more informative, it still doesn't help the programmer
know which header(s) to use in a given situation.  I'd worry that people
may not read as far as the NOTES, or may not remember what's in there
when referring to the header lists.

Can we not just annotate each header listed with the originating
standard, say:

	<stddef.h>	(C)

	<sys/types.h>	(POSIX)
	...		(POSIX)
	...

while this is a bit more effort in the man page, it should make things
clear for the reader.

(the annotations can be terse, with a more complete citation of the
applicable standard in the NOTES or elsewhere).

I'm not trying to be awkard here -- actually having man pages defining
key types and the relevant headers to include is a really good idea.


Can we please alias all the actual type names to point to this page,
so that e.g., "man size_t" works?

(This might be considered overkill, so if others shoot the suggestion
down, fair enough -- in any case the alises could be added by a later
patch.)

Cheers
---Dave
