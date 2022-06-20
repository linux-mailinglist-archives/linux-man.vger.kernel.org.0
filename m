Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7A8EE551EE6
	for <lists+linux-man@lfdr.de>; Mon, 20 Jun 2022 16:35:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241607AbiFTOfQ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 20 Jun 2022 10:35:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34624 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S244974AbiFTOeL (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 20 Jun 2022 10:34:11 -0400
Received: from scc-mailout-kit-02.scc.kit.edu (scc-mailout-kit-02.scc.kit.edu [IPv6:2a00:1398:9:f712::810d:e752])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B85141038
        for <linux-man@vger.kernel.org>; Mon, 20 Jun 2022 06:49:32 -0700 (PDT)
Received: from hekate.asta.kit.edu ([2a00:1398:5:f401::77])
        by scc-mailout-kit-02.scc.kit.edu with esmtps (TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
        (envelope-from <schwarze@usta.de>)
        id 1o3HmU-0063q2-Jc; Mon, 20 Jun 2022 15:49:30 +0200
Received: from login-1.asta.kit.edu ([2a00:1398:5:f400::72])
        by hekate.asta.kit.edu with esmtp (Exim 4.94.2)
        (envelope-from <schwarze@usta.de>)
        id 1o3HmT-0060SF-Ry; Mon, 20 Jun 2022 15:49:30 +0200
Received: from schwarze by login-1.asta.kit.edu with local (Exim 4.92)
        (envelope-from <schwarze@usta.de>)
        id 1o3HmU-0006Wk-8D; Mon, 20 Jun 2022 15:49:30 +0200
Date:   Mon, 20 Jun 2022 15:49:30 +0200
From:   Ingo Schwarze <schwarze@usta.de>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: Re: Linux man-pages Makefile portability
Message-ID: <YrB66rgFZqryrmpt@asta-kit.de>
References: <d8646de0-e4f0-3d4b-e763-92355162a405@gmail.com>
 <Yq+P39bpy2QEeaSd@asta-kit.de>
 <8b9daa0e-6f08-dd55-5772-51f5052ed8bb@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <8b9daa0e-6f08-dd55-5772-51f5052ed8bb@gmail.com>
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alejandro,

Alejandro Colomar wrote on Mon, Jun 20, 2022 at 12:23:45AM +0200:
> On 6/19/22 23:06, Ingo Schwarze wrote:

>> The html target could potentially be interesting, but
>>    https://savannah.nongnu.org/projects/man2html/
>> and the repo linked to from there,
>>    https://cvs.savannah.nongnu.org/viewvc/man2html/
>> gives me the impression this is abandonware that did not receive
>> any maintenance in 19 years.

> I used that because the archaic Makefile present in the tree when I 
> joined was using it (and I didn't know any other tools):
> 
> <https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/tree/Makefile?id=b32a6935592118ce4acfddf95e52fca8fbd3aded>

I see, now it makes sense to me.

I'm relieved i won't have to dig into man2html.  :-)

> But that Makefile was clearly unused since no-one knows.

I'm not saying "noone knows"; some packaging tools on some Linux
distributions might very well rely on the Makefile - i don't know.
All i'm saying is i don't readily see a reason why people *not*
running Linux might need the Makefile...

> If you know a better tool, I could start using it.  Maybe I could use 
> groff(1) directly, with grohtml(1).

I don't think using groff to generate HTML output from manual pages
is a good idea.  It generates low-quality HTML code, and it is
impossible to fix because of the basic concept how groff works.

You see, both mdoc(7) and modern HTML are semantic markup languages.
Groff, however, does the transformation in a two-step process.
In the first step, it throws away *all* the semantic information,
retaining only *physical* formatting cues.  And then in the
second step, it tries to generate HTML from those physical formatting
instructions.  That cannot possibly work.  At best it might generate
early-1990ies-style HTML 1 or HTML 2 code with no support for CSS
whatsoever.
That's an unavoidable consequence of the basic design of grohtml(1).

For man(7), the problem is not quite as bad as for mdoc(7) because
the man(7) language is a 1970ies-style, purely presentational
markup language that conveys no semantic information in the first
place, so there isn't really much that could get lost during the
intermediate step.  Then again, i think nowadays, it makes more
sense to use a converter that can handle *both* languages well
instead of one that is kind of nearly good enough for man(7) but
really inadequate for mdoc(7).

[...]
> I guess it's due to the use of $(foreach ).  I guess it's a GNU 
> extension and make(1POSIX) ignores that creating an empty string.  Since 
> the Makefile uses a lot of functions[1], I guess it's not easy to make 
> it portable.
[...]
> [1]:  addsuffix, wildcard, foreach, filter, patsubst, sort, shell, 
> basename, notdir, info.  Not sure how many of those are supported by 
> your make(1); maybe none?

The OpenBSD implementation of make(1) is much more powerful than
POSIX make, but according to the manual page, you are right that
none of these keywords are supported by OpenBSD make, let alone by
POSIX make.

>>  (It's a completely
>> different story for a project like GNU troff that is about the
>> opposite of Linux only and that basically all UNIX systems want
>> to be able to use in production.)

> Yes, although they could definitely simplify the build system a little 
> bit.  It's one of the most complex builds I've ever seen.

I wouldn't go that far; i guess then you never looked at build systems
of large software like X11 or firefox or boost...  Even the OpenBSD
ports build framework is more complicated than the groff build system.
Then again, the groff build system *does* have a lot of abstraction,
indirection, and complexity *for such a small piece of software*.  :-/
But we're disgressing.

[ ... regarding installation instructions ...]
> No, you didn't.  I expected autocomplete to help,

I almost never use autocomplete except for the names of commands that are
installed system-wide and for the names of files in the local file system.
I didn't even know it is possible to use autocompletion for make targets,
and i dislike the idea.  But don't worry!  Your build system *is*
complicated for a package that actually doesn't need to build anything,
but not so bad that i didn't find what i looked for.  :)

>> I did not do measurements, but are you sure this is sane advice?
>> For an installation procedure, i would have expected execution
>> speed to be limited by disk I/O and i would have expected CPU
>> consumption to be negligible.  Did you do measurements to confirm
>> the relevance of this advice?

> Yes, I did:
> 
> [
> $ sudo make uninstall >/dev/null
> $ time sudo make install >/dev/null
> 
> real	0m7.722s
> user	0m0.004s
> sys	0m0.004s
> $ sudo make uninstall >/dev/null
> $ time sudo make -j2 install >/dev/null
> 
> real	0m4.634s
> user	0m0.005s
> sys	0m0.004s
> $ sudo make uninstall >/dev/null
> $ time sudo make -j install >/dev/null
> 
> real	0m3.170s
> user	0m0.000s
> sys	0m0.009s
> $ touch man2/membarrier.2
> $ time sudo make install >/dev/null
> 
> real	0m1.766s
> user	0m0.005s
> sys	0m0.004s
> $ touch man2/membarrier.2
> $ time sudo make -j2 install >/dev/null
> 
> real	0m1.735s
> user	0m0.004s
> sys	0m0.004s
> $ touch man2/membarrier.2
> $ time sudo make -j install >/dev/null
> 
> real	0m1.737s
> user	0m0.001s
> sys	0m0.008s
> ]
> 
> You can see that just for the $(shell ...) and all the text functions 
> that process the filenames to be installed it is taking almost 1.7 s, 
> even if it only needs to update a single page.

As a side remark, i consider it bad style to use dependencies during
installation: dependencies are for the build stage, not for the
installation stage.  When i say "make install", i just want *all*
the files installed unconditionally for two reasons: On the one hand,
dependency handling is error-prone and it would be bad if some file
does not get installed due to the notorious problem of oversights in
dependency handling (and dependency handling in parallel Makefiles
is even more fragile than in serial ones).  On the other hand, "make
install" also has the purpose of repairing an installation that got
broken in some way or other, and skipping some files because the
build system *thinks* they are probably still installed properly
defeats the purpose IMHO.

> That's a lot, but it has 
> it's advantages (generating the file list on-the-fly; no ./configure).
> 
> Then, the actual installation of the ~2.5k pages (most of them are link 
> pages),

As another aside, i consider using .so bad style.  It is unnecessarily
fragile.  Using hard links on the file system level (see ln(1))
is significantly more robust.  With mandoc(1), you don't need links
at all, but i admit traditional man(1) implementations including
man-db still require them for manual pages having more than one name.

> takes another 1.4 s in multi-process mode, and 6 s in 
> single-process mode (so at least 4.6 s that are not I/O).  Maybe it's 
> make(1) that has a hard time traversing the tree... I don't know where 
> the bottleneck is, but it's clearly there.

I see.  So you need multiple processors purely for dealing with make(1)
overhead...  Gee!  :-/

[...]
> BTW, did you check the changes to queue.3?  I guess you could improve 
> yours in a similar manner.
> 
> <https://linux-man-pages.blogspot.com/2020/11/man-pages-509-is-released.html>

I think in OpenBSD, these changes would get vetoed by large numbers
of developers because they violate the way OpenBSD manual pages are
organized in several ways:

 1. Your queue(7) manual page is placed in the wrong section.
    It is purely about an API provided by a library for the C language.
    Such information unambiguously belongs in section 3 and certainly
    not in section 7.  It is not even an edge case; it is perfectly
    clear what the correct section is.

 2. Your file names and .TH names violate the OpenBSD convention
    that section 2 and 3 manual pages must be named after functions
    or macros.  For example, the page name "slist" is not acceptable
    because no sname() function or macro exists.

 3. Splitting the page up into multiple pages is a bad idea for
    two reasons: it results in significant duplication of information
    and it splits information about interfaces so closely related
    to each other that most of their features are identical across
    multiple pages.

You would have no chance of getting anything like that committed to
OpenBSD.

> Also, if you have been following the addition of pages about types, and 
> would like to comment, you'll be welcome!
> 
> <https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/commit/?id=178eaf37e2e971cae88bd4d3f124ede0afbb1015>

BSD doesn't have manual pages about types, and i don't think there is a
significant benefit from having them.  Most standard types are trivial
and can easily be looked up in the header files with no need for separate
documentation.  In the unusual case that a type has non-trivial syntax
and/or semantics, it can be documented in the manual page of the most
closely related API function; for example, "struct pollfd" is documented
in our poll(2) page.  That makes it easy to find with the usual
"man -k Vt=typename" search command.

Documenting a non-trivial type separately from the functions using it
is counter-productive and makes the documentation hard to read because
programmers *never* need to use a type defined by a library unless they
also want to use related API functions.  Actually, i find it better
to *not* add type names as names of manual pages because that way,
the classical syntax "man functname" can be used to search for
function and macro names and the advanced syntax "man -k Vt=typename"
to search for types, with less potential for confusion.

So in OpenBSD, your pages about types would get vetoed on the grounds
of "pages not named after functions or macros" as well as on the
grounds of "these pages do not document any function or macro;
instead of creating a new page, put the information where it belongs."

That said, other projects are of course free to have such pages if
they want to.  The mandoc(1) program is also able to handle paths like
"man3/id_t.3type".  It will consider that page to be *both* in section
"3" (as specified by the directory name) and in section "3type" (as
specified by the file name and by the .TH macro).  I would consider
it better style to keep section names consistent, i.e. to use either
"man3/id_t.3" .TH id_t 3 or "man3type/id_t.3type" .TH id_t 3type,
but it's not a big deal: since many systems (in particular various
Linux distros) suffer from such inconsistencies, handling such
inconsistencies gracefully is an important feature that certainly
won't get removed.

>>  Commands like
>> 
>>     $ man -M /co/man-pages open
>> 
>> work perfectly fine on my system to view the Linux open(2) manual,
>> nicely formatted, with no need for installation or a Makefile.
>> Even when i put up a copy at
>> 
>>    https://man.bsd.lv/Linux-5.13/open

> How do you generate your HTML pages?  mandoc(1)?  They are nice.

https://man.openbsd.org/mandoc.1#HTML_Output
https://man.openbsd.org/man.cgi.8

I think that's the usual way to generate HTML from manual pages
nowadays.  The following sites also use mandoc for HTML output:

 * https://www.freebsd.org/cgi/man.cgi
 * https://manpages.debian.org/
 * https://man.archlinux.org/
 * https://man.voidlinux.org/

Some of these have their own CGI handling and/or database code,
but they all use the mandoc parser and HTML generator.

Yours,
  Ingo
