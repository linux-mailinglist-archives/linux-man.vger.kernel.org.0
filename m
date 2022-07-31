Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D92AD585ED6
	for <lists+linux-man@lfdr.de>; Sun, 31 Jul 2022 14:20:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236886AbiGaMUd (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 31 Jul 2022 08:20:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38258 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236893AbiGaMUa (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 31 Jul 2022 08:20:30 -0400
Received: from scc-mailout-kit-01.scc.kit.edu (scc-mailout-kit-01.scc.kit.edu [IPv6:2a00:1398:9:f712::810d:e751])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 82BCC26CB
        for <linux-man@vger.kernel.org>; Sun, 31 Jul 2022 05:20:26 -0700 (PDT)
Received: from hekate.asta.kit.edu ([2a00:1398:5:f401::77])
        by scc-mailout-kit-01.scc.kit.edu with esmtps (TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
        (envelope-from <schwarze@usta.de>)
        id 1oI7vj-00C52N-Sj; Sun, 31 Jul 2022 14:20:24 +0200
Received: from login-1.asta.kit.edu ([2a00:1398:5:f400::72])
        by hekate.asta.kit.edu with esmtp (Exim 4.94.2)
        (envelope-from <schwarze@usta.de>)
        id 1oI7vj-006xgc-Cx; Sun, 31 Jul 2022 14:20:23 +0200
Received: from schwarze by login-1.asta.kit.edu with local (Exim 4.92)
        (envelope-from <schwarze@usta.de>)
        id 1oI7vj-0001if-CE; Sun, 31 Jul 2022 14:20:23 +0200
Date:   Sun, 31 Jul 2022 14:20:23 +0200
From:   Ingo Schwarze <schwarze@usta.de>
To:     alx.manpages@gmail.com
Cc:     g.branden.robinson@gmail.com, groff@gnu.org,
        linux-man@vger.kernel.org
Subject: Re: .so colophon.man
Message-ID: <YuZzh7w4d5y9b/Jf@asta-kit.de>
References: <f179ea51-9b03-3e18-2377-0a39a7647267@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <f179ea51-9b03-3e18-2377-0a39a7647267@gmail.com>
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_NONE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alejandro,

Alejandro Colomar wrote on Sat, Jul 30, 2022 at 10:45:42PM +0200:

> I'm wondering if it wouldn't be easier to have a constant '.so 
> man-pages-colophon.man' line at the end of all of the Linux man-pages, 
> instead of appending a COLOPHON at every release.  The 
> man-pages-colophon.man file would be shiped together with the pages,
> and it would be created by `make dist`.

I seem to very dimly recall that once in the past, i encountered a
tool that assumed each manual page either consists of a single .so
line, or does not contain .so at all.

I do not remeber which tool that was, and when, and what happened
if a manual page contained one or more .so links and other roff(7)
code in addition to that.

For example, that tool would not work with the zshall(1) manual page,
the only manual page i recall off the top of my head doing something
like that:

 $ cat /usr/local/man/man1/zshall.1
.TH "ZSHALL" "1" "May 14, 2022" "zsh 5\&.9"
.SH "NAME"
zshall \- the Z shell meta\-man page
.\" Yodl file: Zsh/intro.yo
.SH "OVERVIEW"
Because zsh contains many features, the zsh manual has been split into
[ ... yadayada ... ]
.SH "DESCRIPTION"
Zsh is a UNIX command interpreter (shell) usable as an interactive
[ ... yadayada ... ]
.so man1/zshroadmap.1
.so man1/zshmisc.1
.so man1/zshexpn.1
.so man1/zshparam.1
.so man1/zshoptions.1
.so man1/zshbuiltins.1
.so man1/zshzle.1
.so man1/zshcompwid.1
.so man1/zshcompsys.1
.so man1/zshcompctl.1
.so man1/zshmodules.1
.so man1/zshcalsys.1
.so man1/zshtcpsys.1
.so man1/zshzftpsys.1
.so man1/zshcontrib.1
.TH "ZSHALL" "1" "May 14, 2022" "zsh 5\&.9"
.\" Yodl file: Zsh/filelist.yo
.SH "FILES"
.PD 0
.TP
\fB$ZDOTDIR/\&.zshenv\fP
[ ... yadayada ... ]
.\" Yodl file: Zsh/seealso.yo
.SH "SEE ALSO"
\fIsh\fP(1),
\fIcsh\fP(1),
[ ... yadayada ... ]

As i said repeatedly in the past, using .so in manual pages is
fragile in general.  The most robust way is to use hard ln(1)
links on the file system level, the next best using soft "ln -s"
symlinks(7), and files containing only a single .so line is
only the third-best option.  If a file contains anything in
addition to a single .so line (for example, another .so line
or other roff(7) code), that is even more fragile.

That said, i just checked, and both groff(1) and madoc(1) handle
the zshall(1) manual page correctly, with only unimportant
differences in output.  In particular, groff(1) prints

-zsh 5.9                    May 14, 2022                ZSHPARAM(1)
--------------------------------------------------------------------
-ZSHOPTIONS(1)         General Commands Manual        ZSHOPTIONS(1)
-

between .so-included files whereas mandoc(1) does not print
those four lines at those places, but that is related to groff(1)
supporting multiple manual pages in a single input file, whereas
mandoc(1) only supports one single manual page / .TH macro per
input file.  So, that difference has little to do with .so.


I also did the following test:

 $ mkdir Tmp
 $ mkdir Tmp/man1
 $ cp man1/getent.1 man1/time.1 Tmp/man1/
 $ vi Tmp/man-pages-colophon.man
 $ cat Tmp/man-pages-colophon.man
.SH COLOPHON
This page is part of release yadayada
of the Linux
.I man-pages
project.
A description of the project,
information about reporting bugs,
and the latest version of this page,
can be found at
.UR https://www.kernel.org/doc/man-pages/
.UE .
 $ echo '.so man-pages-colophon.man' >> Tmp/man1/getent.1
 $ echo '.so man-pages-colophon.man' >> Tmp/man1/time.1
 $ makewhatis -DDp Tmp 
/co/man-pages/Tmp//man-pages-colophon.man: Extraneous file
/co/man-pages/Tmp//man1/getent.1: No one-line description,
     using filename "getent"
/co/man-pages/Tmp//man1/getent.1: Adding name getent, bits=0x10
/co/man-pages/Tmp//man1/getent.1: Name missing in NAME section
/co/man-pages/Tmp//man1/getent.1: Adding to database
/co/man-pages/Tmp//man1/time.1: No one-line description, using filename "time"
/co/man-pages/Tmp//man1/time.1: Adding name time, bits=0x10
/co/man-pages/Tmp//man1/time.1: Name missing in NAME section
/co/man-pages/Tmp//man1/time.1: Adding to database

The warning message "man-pages-colophon.man: Extraneous file" is
actually good.  It shows that the mandoc implementation of makewhatis(8)
has no idea what that file might be and decides to ignore it.

The message
  man1/getent.1: No one-line description, using filename "getent"
on the other hand indicates a bug in the mandoc implementation of
makewhatis(8).  The program parses the input file and finds this
meta-information about the file:

  (gdb) p *meta
  $8 = {first = 0x4e3d7df0900, msec = 0x4e3d7dc6920 "1", 
    vol = 0x4e3d7dc6550 "User Commands", os = 0x4e3d7dee460 "Linux",
    arch = 0x0, title = 0x4e3d7deea60 "GETENT", name = 0x0, 
    date = 0x4e3d7dc9840 "2021-03-22", 
    sodest = 0x4e41b55e2e0 "man-pages-colophon.man", hasbody = 1,
    rcsids = 0, os_e = MANDOC_OS_OTHER, macroset = MACROSET_MAN}
  (gdb) p meta->sodest
  $9 = 0x4e41b55e2e0 "man-pages-colophon.man"

In particular, notice the "macroset = MACROSET_MAN" which indicates
that the file was recognized as a man(7) file, and the "hasbody = 1"
which means that some manual page content was found in the file,
which are both good.

But also notice the "meta->sodest" field.  Not being NULL, this
indicates that a .so link was found inside the file.

Now the bug is that when finding a .so link, this version treats
the .so link with priority, assuming getent(1) is just a
symbolic link for "man-pages-colophon.man".  So it looks up
its own entry for man-pages-colophon.man in its own database,
intending to add the information found in getent.1 to that
entry.  When a file contains nothing but .so, that of course
makes sense because you don't want two database entries for the
same manual page, even if that page documents more than of
function or utility.  But in this case, it realizes there is
no database entry for "man-pages-colophon.man" - no wonder because
it already decided earlier that's not a manual page.

And here is the bug: not finding "man-pages-colophon.man"
in the manual page database, it ends up setting

  meta->macroset = MACROSET_NONE;

because it wrongly thinks this probably is merely a dead link.
That results in completely ignoring the content of the manual
page (even though there was no problem parsing it whatsoever)
and instead only using the information from the file name
as indicated by these three messages:

  No one-line description, using filename "getent"
  Name missing in NAME section
  Adding to database

(The reason for adding the file to the database anyway is that
even if it is a dead link, adding it to the database makes sense
such that the user realizes the system *intends* to supply a
manual page for the name but only provides a dead link, such
that the user can report the dead link to the package maintainer
rather than thinking the software author failed to write any
manual page at all and never intended to write one.

Of course i need to fix this bug in makewhatis(8).

But the presence of the bug tells you just how unusual it is
nowadays to use .so in a manual page file that also contains the
manual page body.  Granted, it was more common in AT&T UNIX days,
but nowadays, you hardly ever find this feature used in real-world
manual pages.

All that said, the database built is useful anyway:

 $ /usr/src/regress/usr.bin/mandoc/db/dbm_dump/obj/dbm_dump Tmp/mandoc.db
initial magic 0x3a7d0cdb
version       0x00000001
macros offset 0x0000007c
end offset    0x000001a0
page count    2
=== PAGES ===
page name # [f]getent 
page sect # 1 
page desc # getent 
page file src # man1/getent.1 
page name # [f]time 
page sect # 1 
page desc # time 
page file src # man1/time.1 
=== END OF PAGES ===
macros count  36
=== MACROS ===
macro 00 entry count 0
[...]
macro 35 entry count 0
=== END OF MACROS ===
final magic   0x3a7d0cdb

 $ man -M Tmp -k .
getent(1) - getent
time(1) - time

Consequently, commands like "man -M Tmp getent" work just fine
and show the manual page including the COLOPHON.

I also tried moving man-pages-colophon.man
to man0/man-pages-colophon.man and repeating the tests.
That changes nothing, the results remain the same,
except that one warning message changes:

  /co/man-pages/Tmp//man0/man-pages-colophon.man: Wrong filename suffix

> I think it's unnecessary to provide a dummy file in the repo, right?  I 
> mean, .so is not like #include that would fail hard if the file doesn't 
> exist.  It will instead just continue, right?

If i delete the colophon file completely from Tmp/ but lease the .so
links in place, nothing changes except that

 * the warning about the unexpected file goes away
 * man(1) no longer displays the COLOPHON
 * mandoc -T lint output increases from one to two lines:

    $ mandoc -T lint Tmp/man1/getent.1                             
   mandoc: Tmp/man1/getent.1:383:2: WARNING: .so is fragile,
      better use ln(1): so man0/man-pages-colophon.man
   mandoc: Tmp/man1/getent.1:383:5: ERROR: .so request failed:
      .so man0/man-pages-colophon.man: No such file or directory

But apart from that, makewhatis(8), apropos(1), and man(1) work
just as well as before.

Of couse, your mileage may vary with other tools, but in general,
roff(7) is expected to ignore .so if the target file does not
exist.

> Do you think it would be a good idea?

Not really.

First, putting this information into every single manual page
IMHO is a bad idea.  Such information ought to be part of
packaging information and not displayed with each and every
page.  If users want to find the version of some package,
they should use commands like

  # Debian
   $ dpkg-query -S bunzip2.1
  bzip2: /usr/share/man/man1/bunzip2.1.gz
   $ dpkg-query -s bzip2
  [...]
  Version: 1.0.6-9.2~deb10u1

or

  # OpenBSD
   $ pkg_locate bunzip2.1
  bzip2-1.0.8p0:archivers/bzip2:/usr/local/man/man1/bunzip2.1
   $ grep HOMEPAGE /usr/ports/archivers/bzip2/Makefile            
  HOMEPAGE=       https://sourceware.org/bzip2/

Repeating that informtion in every manual page is embarassingly
verbose; users normally don't want to see that.

If you do want the COLOPHON nonetheless, using .so is clearly
more fragile than including it outright.

If you do want to use .so nonetheless, putting the included file
into the root of the manpath is ugly; imagine the mess if more
projects did that, in particular if you also start creating more
section suffixes.  If the file man-pages-colophon.man belongs
anywhere, then it belongs into man0/ - that's just what AT&T
originally used that directory for: front matter, support files,
scripts, and snippets.

You might perhaps argue that you want to COLOPHON included with every
page such that if anybony tears out a single manual page from the
package and reuses it somewhere else, that information is retained.
But *if* that is your argument, using .so defeats that particular
purpose, too.

> I was making the COLOPHON be part of the `make dist` command (to avoid 
> having to generate it separately), and this would simplify things a lot.
> Not having to append to files controlled by make(1) would avoid having 
> to rerun many recipes.

Your choice what matters more: convenience for upstream package
maintainers or robustness for users.

For downstream package maintainers, having to handle files
included by manual pages is also an unusual task that might
confuse some.  Besides, a few may have get used to how some
POSIX manual page packages are abusing man0/ for the wrong
purpose and may consequently feel even more confused.

Yours,
  Ingo
