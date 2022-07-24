Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 891EE57F593
	for <lists+linux-man@lfdr.de>; Sun, 24 Jul 2022 16:57:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229618AbiGXO5Y (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 24 Jul 2022 10:57:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51170 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229494AbiGXO5Y (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 24 Jul 2022 10:57:24 -0400
Received: from scc-mailout-kit-01.scc.kit.edu (scc-mailout-kit-01.scc.kit.edu [IPv6:2a00:1398:9:f712::810d:e751])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 25A0A2190
        for <linux-man@vger.kernel.org>; Sun, 24 Jul 2022 07:57:22 -0700 (PDT)
Received: from hekate.asta.kit.edu ([2a00:1398:5:f401::77])
        by scc-mailout-kit-01.scc.kit.edu with esmtps (TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
        (envelope-from <schwarze@usta.de>)
        id 1oFd2m-003xAA-3w; Sun, 24 Jul 2022 16:57:20 +0200
Received: from login-1.asta.kit.edu ([2a00:1398:5:f400::72])
        by hekate.asta.kit.edu with esmtp (Exim 4.94.2)
        (envelope-from <schwarze@usta.de>)
        id 1oFd2l-006mC0-7l; Sun, 24 Jul 2022 16:57:19 +0200
Received: from schwarze by login-1.asta.kit.edu with local (Exim 4.92)
        (envelope-from <schwarze@usta.de>)
        id 1oFd2l-00087w-72; Sun, 24 Jul 2022 16:57:19 +0200
Date:   Sun, 24 Jul 2022 16:57:19 +0200
From:   Ingo Schwarze <schwarze@usta.de>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     g.branden.robinson@gmail.com, linux-man@vger.kernel.org,
        groff@gnu.org
Subject: Re: All caps .TH page title
Message-ID: <Yt1dz0+xfRuyCcXo@asta-kit.de>
References: <66c19a09-ef0f-0d85-0380-37a67ac483dd@gmail.com>
 <20220721183620.hdvgwwef66hmrgln@illithid>
 <1e1f9197-a013-0d6b-6bfa-853fe28102cf@gmail.com>
 <20220722021452.5k43or5uwj2eiouh@illithid>
 <7a94b352-9ae5-a823-72c4-c526a0cc0e66@gmail.com>
 <e4603be0-47f4-bc2b-b31e-52039ca63721@gmail.com>
 <YtxMD7ovz1Xy/cfq@asta-kit.de>
 <62937033-a3a7-05d0-fc68-a227e2b67bde@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <62937033-a3a7-05d0-fc68-a227e2b67bde@gmail.com>
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_NONE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alejandro,

Alejandro Colomar wrote on Sun, Jul 24, 2022 at 01:20:46PM +0200:
> On 7/23/22 21:29, Ingo Schwarze wrote:
>> On 7/22/22 12:35, Alejandro Colomar (man-pages) wrote:

>>> BTW, I think I didn't reply (or if I did was very short) to your comment
>>> that other languages may find it difficult to mirror our use of
>>> subsections, since their main section is already a subsection (e.g.,
>>> 3pl).

>> Other languages are usually better off to live *outside* the $MANPATH
>> and tell users to use "man -M" to access their documentation.
>> For example, on OpenBSD, the TCL manuals live
>> in /usr/local/lib/tcl/tcl8.5/man/ .
>> Putting them into /usr/local/man/ would be quite disruptive because
>> that would cause lots of clashes, including "apply", "break", "cd",
>> "close", "eval", "exec", "exit", "expr", "glob", "info", "join", "open",
>> "puts", "pwd", "read", "socket", "time", and so on.  I expect most
>> other language will cause similar noise.
>> Perl is better because the clashing names are mostly part of perlfunc(1),
>> and the majority of other Perl manual page names contain colons.
>> FORTRAN (traditionally in man3f) is also better because in this
>> instance, the cryptic FORTAN six-letter identifiers become a virtue
>> in so far as they prevent clashes.

> I'm not happy with this approach.  I don't want to be typing paths for 
> system stuff (your /usr/local is /usr in GNU/Linux systems;

Then use an alias like

  alias tclman='man -M /usr/local/lib/tcl/tcl8.5/man/'

It's not like users are normally using dozens of different languages
at the same time, nor is the number of languages that provide a
collection of manual pages very significant.  So there isn't any
real-world problem that needs solving.

I even considered supporting aliases for manpath directories
in man.conf(5), something like being able to say

  alias tcl /usr/local/lib/tcl/tcl8.5/man/

in /etc/man.conf and then being able to say

  man -M tcl open

Disclaimer: the above is not a finished design, just a preliminary
idea.  But i'm very certain that -M or something derived from -M
is the tool for the job and -s or something derived from -s is not.
Because when you want a python manual page, you most definitely want
"Python only" and it serves no purpose whatsoever to search through
various trees and various sections, and least of all to badly design
a string-based composite data type like "number_language": that causes
all the ambiguity and confusion you are already discussing, and
it is error-prone and fragile in the parser on top of that.

Also, the concept of "for which language" and the concept of sections
are orthognal.  A programming langauge system usually provides
utility programs (1), library functions (3), file formats(5),
administration tools (8), and so on.

The reason i didn't pursue the man.conf(5) alias idea so far is that
the practical need for it is very limited.  No one ever asked me for
it as far as i recall, shell aliases do the job just fine.


> If you want to search pages in section 3type, `man -s3type regex`. 
> However, having some pages in subsections of 3, and others in the main 3 
> section, is good for pages in subsections, but bad for pages in the main 
> section (`man -s3 regex` would show all of the subsections' pages). 
> That has a simple solution: move libc pages to man3c (and libm to man3m, 
> ...).  Since `man 3 printf` will continue working if this change is 
> done, it doesn't seem to have backwards compatibility issues.

While the effect on the end user is indeed limited, you are proposing
a massive file system reshuffle here that seems somewhat in search of
a problem it wants to solve.  Yes, systems do exist that traditionally
use lots of section suffixes, so it *is* vital that man(1) implementations
support such suffixes.  But i claim that even in Solaris, those suffixes
serve little practical purpose and users are best off simply ignoring
them.

> Also, you can put unimportant subsections at the end of the search
> list, to not hide other more important pages.

In *BSD, support for changing the search list was deleted years ago.
That feature was an example of overengineering and useless complication.
I don't recall even one single complaint from a user who wanted the
feature back or explained what they were using it for.  Not one
person needing it in over half a decade since it was deleted...

Yours,
  Ingo


P.S.
I moved this to the bottom because it is off-topic:

> BTW, that's a thing I don't like at all from BSDs; IMO (and FHS's),

Years ago, i tried to engage with the FHS maintainers, arguing that
FHS is for Unux-like systems in general, and trying to contribute
aspects relevant for *BSD.  It was an uphill battle because the
FHS community was very firmly entrenched as "Linux only"; some
didn't even see a need to consider my comments at all, many
comments were rejected saying something like "this particular point
may be unusual on *BSD systems, but it is so important on Linux that
we cannot possibly allow the established *BSD convention for this
point in the FHS" even by those who were in principle willing to
view the FHS as a guideline for Unix-like systems in general.

On top of that, the group was almost dead, much less active than
for example the groff community, and even that is a very small group.
So ultimately, i gave up and left.  Other OpenBSD developers laughed
at me for even trying, essentially saying "Why do you even care
about that Linux-only crap?"  I still disagree and believe a
file system hierarchy standard for Unix-like systems could potentially
be useful.  Just consider that "Where are the URW fonts?"-saga
currently under way on this list as an example.

But dismissing decade-old *BSD standards like the use of /usr/
for the base system and /usr/local/ for packages as a standard
violation, and promoting /opt/ which is firmly a Linux-only
invention, is not going to help.

> /usr/local is for sysadmins to build from source;

Doing that is *very* strongly discouraged on OpenBSD.  If you only want
to try out some unported software, do not install it at all or install
it in your home directory.  If you are serious about providing something
system-wide, you are strongly expected to create a port, even if you do
not publish the port, so it can be properly installed, kept track of
by the package tools, controlled for collisions by the package
tools, and cleanly uninstalled when its time comes.

Creating a package is really simple.  Just a few days ago, senior
ports developers provided help to a user on our lists to do it
properly for company-internal software that will never be published,
and the thread was short because there wasn't that much to explain.

I did build RPMs for SLES at one point in the past when working
for a company, and i dimly remember looking at debian package build
documentation occasionally, and both seemed significantly harder
to both get started with and to master than BSD ports, so Linux
users may have a stronger motivation to just "make install".
Then again, there may also be a slight bias at work, what you are
used to always feels simpler than what you are less familiar with.

In any case, it is very intentional that OpenBSD does *not* provide
a directory to users that they can "make install" to.

> optional _packages_ should go to /opt).

Not even Debian adheres to that.  When i install an additional,
optional package, i.e. one that Debian did not install by default when
the system was originally installed, most of the time, that optional
package goes to /usr/, not to /opt/.
