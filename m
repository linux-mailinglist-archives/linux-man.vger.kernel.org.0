Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CCE8230800B
	for <lists+linux-man@lfdr.de>; Thu, 28 Jan 2021 21:59:14 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229866AbhA1U6f (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 28 Jan 2021 15:58:35 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41840 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231343AbhA1U6V (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 28 Jan 2021 15:58:21 -0500
Received: from mail-pg1-x530.google.com (mail-pg1-x530.google.com [IPv6:2607:f8b0:4864:20::530])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A3BB1C061756
        for <linux-man@vger.kernel.org>; Thu, 28 Jan 2021 12:57:41 -0800 (PST)
Received: by mail-pg1-x530.google.com with SMTP id v19so5086854pgj.12
        for <linux-man@vger.kernel.org>; Thu, 28 Jan 2021 12:57:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=KCdx/UlUBh6GL+rM8RN1k1U+xekW9Xanibod34jcmac=;
        b=UMMdrDWf2RDL12zfRrAvTraipTrkW6RNf+oZmv4YqBZSkjimCaBOd2BZfjImvE+LCy
         f54qa2QVsNANtC+/shJvPpZ8WTpnVWOOu0CkkTDr+kCajF2OlLqJdQqynnwL1LZE3o9r
         TAIyfOi7Kgvw8zeuHsZjyh954DrCWgG0qIDKG2+75bE89UCqZ4c+ZV0QT4I09YfsoIxV
         5sbLBnubHX8Lldj7zO+r6Hcvkf8u2uiSYwXgPH/O+TI+OJrbp4LAV9lWSJryKQqw0xG9
         utP9RjBGY0ck4U+m906nL3umav2YZjCdMFdBQVsELFn39mdtbnJrMmmXGY2I2ElWaPPt
         OPxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=KCdx/UlUBh6GL+rM8RN1k1U+xekW9Xanibod34jcmac=;
        b=Qhqs+UJ7WZq7gNg5kv+akCAvV8z5chdw8aebXKhBNtgNDc1Hq3W0dc7M45nPU7lbDt
         E9BlcKmiuAP7ZYZHyaNRcQ9dixLRBzjn5iQwi5hZ1Va/lkK4w5sFvGEg7r8QQ24J6N4f
         9uaSOk35EkELyrPvZ1e+XEkAqMKkPPTxfqQJut9PJsBsqYeijPuYtjfcFsbHQpPutLU2
         dbEVExU8Mmixbg/p0HzSIPjoDbfP5niaBhKAwYZapCOpfg00TBhBtM8Sijxx/bdTI94F
         fqt7nm45XeCOjg/VLEUmzfAZdF+Fe+nH/4RoO8A+ScCw1bGPwZW8Ew0D100WPIrBGjYs
         LdUw==
X-Gm-Message-State: AOAM533OyrK0YiRmK/6ZXJx7TzD+H5NVfccJuL0SauJGEZX4qOHY8nRg
        j7XjUX54G5MhGUobgG5esodmaRwl+kCodA==
X-Google-Smtp-Source: ABdhPJw1P8RrGPOxPL1PUHNT8jB30O0isdizSiHDn1kvsvjFh9cUmwlgmtKO5k65uSUoDfSP4RUZqg==
X-Received: by 2002:a63:4346:: with SMTP id q67mr1204257pga.223.1611867461017;
        Thu, 28 Jan 2021 12:57:41 -0800 (PST)
Received: from localhost.localdomain ([1.129.181.109])
        by smtp.gmail.com with ESMTPSA id y11sm7105306pfo.121.2021.01.28.12.57.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Jan 2021 12:57:40 -0800 (PST)
Date:   Fri, 29 Jan 2021 07:57:36 +1100
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>,
        Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH] man-pages.7: Formatting suggestion revisions
Message-ID: <20210128205734.nhvua6ameelaomaw@localhost.localdomain>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="ujjbydixib6a24mp"
Content-Disposition: inline
User-Agent: NeoMutt/20180716
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--ujjbydixib6a24mp
Content-Type: multipart/mixed; boundary="czvznstwrja23kq3"
Content-Disposition: inline


--czvznstwrja23kq3
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Michael and Alex!

I have some suggestions for the recent new "FORMATTING AND WORDING
CONVENTIONS" section of man-pages(7).  As I have several unrelated
miscellaneous issues to report, and none should be challenging to
integrate, I am presenting a broken-up (annotated) diff inline with the
full patch attached, along with a demonstrator sample man page for one
of the issues I raise.

diff --git a/man7/man-pages.7 b/man7/man-pages.7
index 7658ef33b..56d6f8b2b 100644
--- a/man7/man-pages.7
+++ b/man7/man-pages.7
@@ -511,7 +511,7 @@ However, blank lines (achieved using
 .IR .PP )
 may be added in the following cases:
 .IP * 3
-to separate long lists of function prototypes ino relates groups
+to separate long lists of function prototypes into related groups
 (see for example
 .BR list (3));
 .IP *

tfix (=D72)

@@ -525,7 +525,8 @@ If there is a single such prototype that needs to be co=
ntinued,
 then align the continuation line so that when the page is
 rendered on a fixed-width font device (e.g., on an xterm) the
 continuation line starts just below the start of the argument
-list in the line above.  (Exception: the indentation may be
+list in the line above.
+(Exception: the indentation may be
 adjusted if necessary to prevent a very long continuation line
 or a further continuation line where the function prototype is
 very long.)

semantic newline

@@ -537,11 +538,12 @@ As an example:
 .BI "              const struct termios *" termios_p );
 .fi
 .RE
-.IP 2. 3
+.IP 2.

It is not necessary to repeat the indentation amount when the previous
one is being reused, and this man page otherwise does not indulge such
repetition when using .IP to set paragraph tags.

 But, where multiple functions in the SYNOPSIS require
 continuation lines, and the function names have different
 lengths, then align all continuation lines to start in the
-same column.  This provides a nicer rendering in PDF output
+same column.
+This provides a nicer rendering in PDF output
 (because the SYNOPSIS uses a variable width font where
 spaces render narrower than most characters).
 As an example:

semantic newline

@@ -569,23 +571,25 @@ This wording is consistent with the wording used in b=
oth POSIX.1 and FreeBSD.
 .\" See man-pages commit c466875ecd64ed3d3cd3e578406851b7dfb397bf
 Note the following:
 .IP * 3
-Wrap the table in this section in a
-.IR ".ad\ l" / .ad
-pair to disable text filling and a
-.IR .nh / .hy
-pair to disable hyphenation.
-.IP *
 Ensure that the table occupies the full page width through the use of an
-.I lbx
-description for one of the columns
+.I x
+modifier appended to one of the table column formats

A few issues here:

(1) In the groff man pages we do _not_ encourage wrapping tables with
=2Ena/.ad pairs.  (I do notice you said ".ad l/.ad" instead--I'll return
to that.)  Quoting a commit to our tbl(1) man page from September[1]:

  Stop advising people to use adjustment-altering requests to bracket
  tables to cheaply set the alignment of text blocks ("T{", "T}") in
  table entries.  This is bad advice for man pages (it was overriding
  -dAD=3Dl to force full justification on after a table in groff_ms(7)).
  Adjustment requests can be embedded inside text blocks anyway, and you
  don't even have to remember to undo them.

The problem with .na before a table, which is the more popular approach,
and which you probably already discovered given that you're recommending
".ad l" instead, is that people who have found a way to force adjustment
off already will be angry with man pages taking your advice because
"full" adjustment (to both margins) will spring to life after the table.

People who _do_ like adjustment to both margins will also be angry with
your man pages because ".ad l" configures the adjustment mode to be
ragged-right, which means ".ad" afterwards is a no-op.  You would need
to recommend ".ad l"/".ad b" instead (or ".ad l"/".ad n"--they're
synonymous).

".ad l" also defeats the mechanism, forthcoming in groff 1.23.0, to make
the default adjustment mode for man pages user-configurable with the AD
string.

In other words, in the next groff release you can pass "-dAD=3Dl" to the
formatter (groff/troff/nroff) and force left-adjustment for _all_ man
pages, except those which are rude enough to use raw roff requests to
override it.

If you will relax this advice in favor of my suggestion below, it will
keep man pages rendering nicely while also respecting user rendering
preferences.

(2) I don't encourage bracketing tables with .nh/.hy either.  The
biggest problem is that .hy, despite a tempting analogy with .ad, does
not set the hyphenation mode to the previous default, but to the
formatter's hard-coded default, "1", which is not compatible with the
English hyphenation patterns GNU troff uses.  I'll skip over the history
of this regrettable point and get to the good news.  groff 1.23.0 will
also support a HY register allowing the user to specify a preference for
the default hyphenation mode when rendering man pages.

The above AD and HY features are already implemented, tested, and
documented[2].

(3) I would not use "lbx" as a blanket prescription for a table column.
I fear people cargo-culting it.  This column descriptor means
"left-align, boldface, expand".  Only the "x" character is motivated by
your advice, which I otherwise find sound.

 (usually the first column,
 though in some cases the last column if it contains a lot of text).
 .IP *
 Make free use of
 .IR T{ / T}
-macro pairs to allow table cells to be broken over multiple lines
+pairs to allow table cells to be broken over multiple lines

s/macro//

T{ and T} are not *roff macros, but special tokens recognized by the
parser of the tbl preprocessor.

 (also bearing in mind that pages may sometimes be rendered to a
 width of less than 80 columns).
+When doing so,
+it may be necessary to turn off adjustment and hyphenation with
+.I .na
+and
+.I .nh
+requests,
+respectively.
+(Adjustment does not need to be restored.)
 .PP
 For examples of all of the above, see the source code of various pages.
 .SH STYLE GUIDE

Instead of bracketing a table with .na/.ad and .nh/.hy requests, one can
put .na and .nh requests in individual text blocks.  Better still, you
don't even have to remember to turn adjustment back on--tbl takes care
of that for you.

I wish I could say the same thing about hyphenation.  .nh does work, but
tbl forgets to turn hyphenation back on after the table.  This is a bug
with a long beard--both groff tbl and Heirloom Doctools tbl misbehave
this way, and due to the latter I suspect it of being true of Version 7
Unix tbl as well[3].  Lesk's 1979 tbl manual says nothing about it.  It
is hard to rationalize as a deliberate choice, given the behavior of
adjustment.  I just learned about this in the course of composing this
mail and it's my intention to fix it in groff for 1.23.0.

People who hate hyphenation anyway--and there seem to be many--probably
won't mind if you forget to advise writers to re-enable it, so maybe you
can omit my suggested parenthetical with a clear conscience.

What about adjustment and hyphenation in table cells that aren't text
blocks?  The answer is simple--they don't happen.  Text blocks are
called that because tbl arranges for them to be laid out like miniature
pieces of the main document.  Ordinary table cells are handled using
roff's tab and field mechanisms, which don't enclose line breaks.  That
means they're not subject to hyphenation or adjustment.

I'm happy to prepare fresh patch(es) of any of the above items you
approve.  Let me know.

As always, I'm open to any readers' feedback, questions, and thundering
denunciations.

Regards,
Branden

[1] https://git.savannah.gnu.org/cgit/groff.git/commit/?id=3D550ab5338e04e5=
4539214997315f451c89ac25e6
[2] https://man7.org/linux/man-pages/man7/groff_man.7.html#Options
[3] TUHS doesn't have V7 tbl's source code, and firing up a PDP-11 in
    SIMH to key in a document with ed so I can test the behavior of its
    executable requires a lot of patience.

--czvznstwrja23kq3
Content-Type: text/x-diff; charset=us-ascii
Content-Disposition: attachment; filename="man-pages.7.diff"

diff --git a/man7/man-pages.7 b/man7/man-pages.7
index 7658ef33b..ea63b5c6f 100644
--- a/man7/man-pages.7
+++ b/man7/man-pages.7
@@ -511,7 +511,7 @@ However, blank lines (achieved using
 .IR .PP )
 may be added in the following cases:
 .IP * 3
-to separate long lists of function prototypes ino relates groups
+to separate long lists of function prototypes into related groups
 (see for example
 .BR list (3));
 .IP *
@@ -525,7 +525,8 @@ If there is a single such prototype that needs to be continued,
 then align the continuation line so that when the page is
 rendered on a fixed-width font device (e.g., on an xterm) the
 continuation line starts just below the start of the argument
-list in the line above.  (Exception: the indentation may be
+list in the line above.
+(Exception: the indentation may be
 adjusted if necessary to prevent a very long continuation line
 or a further continuation line where the function prototype is
 very long.)
@@ -537,11 +538,12 @@ As an example:
 .BI "              const struct termios *" termios_p );
 .fi
 .RE
-.IP 2. 3
+.IP 2.
 But, where multiple functions in the SYNOPSIS require
 continuation lines, and the function names have different
 lengths, then align all continuation lines to start in the
-same column.  This provides a nicer rendering in PDF output
+same column.
+This provides a nicer rendering in PDF output
 (because the SYNOPSIS uses a variable width font where
 spaces render narrower than most characters).
 As an example:
@@ -569,23 +571,25 @@ This wording is consistent with the wording used in both POSIX.1 and FreeBSD.
 .\" See man-pages commit c466875ecd64ed3d3cd3e578406851b7dfb397bf
 Note the following:
 .IP * 3
-Wrap the table in this section in a
-.IR ".ad\ l" / .ad
-pair to disable text filling and a
-.IR .nh / .hy
-pair to disable hyphenation.
-.IP *
 Ensure that the table occupies the full page width through the use of an
-.I lbx
-description for one of the columns
+.I x
+modifier appended to one of the table column formats
 (usually the first column,
 though in some cases the last column if it contains a lot of text).
 .IP *
 Make free use of
 .IR T{ / T}
-macro pairs to allow table cells to be broken over multiple lines
+pairs to allow table cells to be broken over multiple lines
 (also bearing in mind that pages may sometimes be rendered to a
 width of less than 80 columns).
+When doing so,
+it may be necessary to turn off adjustment and hyphenation with
+.I .na
+and
+.I .nh
+requests,
+respectively.
+(Adjustment does not need to be restored.)
 .PP
 For examples of all of the above, see the source code of various pages.
 .SH STYLE GUIDE

--czvznstwrja23kq3
Content-Type: application/x-troff-man
Content-Disposition: attachment; filename="man-table-na-nh.man"
Content-Transfer-Encoding: quoted-printable

'\" t=0A.TH foo 1 "groff experiments" 2021-01-29=0A.SH Name=0Afoo \- try a =
table with adjustment and hyphenation disabled=0A.SH Description=0A.TS=0Al =
lx.=0Afoo	T{=0A.na=0A.nh=0Atable with adjustment and hyphenation disabled=
=0Atable with adjustment and hyphenation disabled=0Atable with adjustment a=
nd hyphenation disabled=0Atable with adjustment and hyphenation disabled=0A=
T}=0A.TE=0A.=0A.=0AThat was our table with adjustment and hyphenation disab=
led.=0AThat was our table with adjustment and hyphenation disabled.=0AThat =
was our table with adjustment and hyphenation disabled.=0AThat was our tabl=
e with adjustment and hyphenation disabled.=0AThat was our table with adjus=
tment and hyphenation disabled.=0AThat was our table with adjustment and hy=
phenation disabled.=0AThat was our table with adjustment and hyphenation di=
sabled.=0A.=0A.ad l=0A.PP=0AHere's a paragraph using adjustment mode \[lq]l=
\[rq].=0AJackdaws love my big sphinx of quartz.=0A.PP=0ANow we've \[lq]rest=
ored\[rq] adjustment.=0ABut since we used \[lq].ad l\[rq],=0Ait doesn't get=
 restored at all.=0AJackdaws love my big sphinx of quartz.=0A
--czvznstwrja23kq3--

--ujjbydixib6a24mp
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmATJTYACgkQ0Z6cfXEm
bc67eg//eZHaTJ/QEHnUHlUNEM6H/N2Q8p2b8M/iwJySzSrKphjlC4264pKLcJ4I
kGaYMYQeQbnN9P5xTOdkheNBrun+paptlsAS9oLFPLpOHg8GcchXuINKwiZQ1xiO
GnuGneI6HOb+Ahv6RAcFaQZYleds5/fWc/1LovW6lx5yu/KW5rHwWO5TLVfHYBh5
EI3nXQjQwpGpLD88eS9LRRBpjVH70SBlbOI+qIaegiw9JOIR1ytgSSlgyean35ZR
MiBOhHd/qQK52CURt8+16TPr6n4sOwaVNgZyls003YU2my3ISIgMM/bl9QrkG3JR
NLGqdd5743AjgC/277apy5U9PZ8BiqYpJBoxcCFuAN02i/UtzBXYoVUbm8GR2rjC
oG8r3x5/RPgMcLFiro3vdEvggkFVL4Fx6tnbU/MMrjN54nhgN545Am+ayhpLKbJV
A9joe1LijMBTyk7/68dXS9PJfkuNvrw3uSS1B/Owp5x5rY0CGOZf4Dlj5hH+52FP
3TL9ND83YQBQ4lBBDOpMDF+2e9ACkMd9sNh7FSzU8KkTFhkzQ7WIGQ4BIANq6GJe
PK8SomVgXLlsoRGqMfCUxgVwAzoOT5nwdRSh6awOmtbgVnYRkTkhhDnwLQOuQFeY
P071WbFpZ0DFpQdXuy/ZHNV8btz7yHJ3kcFlctDeTwMv0/RpF/Q=
=sYk5
-----END PGP SIGNATURE-----

--ujjbydixib6a24mp--
