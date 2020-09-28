Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9822727AE25
	for <lists+linux-man@lfdr.de>; Mon, 28 Sep 2020 14:49:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726350AbgI1Mtc (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 28 Sep 2020 08:49:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52828 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726327AbgI1Mtc (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 28 Sep 2020 08:49:32 -0400
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com [IPv6:2607:f8b0:4864:20::442])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 65830C061755
        for <linux-man@vger.kernel.org>; Mon, 28 Sep 2020 05:49:32 -0700 (PDT)
Received: by mail-pf1-x442.google.com with SMTP id d9so945834pfd.3
        for <linux-man@vger.kernel.org>; Mon, 28 Sep 2020 05:49:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=MYJ3JJ/Jd0eWgStakx+5rpTCbXb2QyvMwz7liYbDwEo=;
        b=smnQXGjUBf/cdRrGjxrHC+iGp/+mQIovEc44HOeiNGETMByLU0JwE2vc8epz6f5Bg/
         iYk4fSfcS3KX6+9i7V0VuRM1H1/U/PaeR0z9mpL6+quwK0grizUpAHdhlVQDq7GBF4d/
         Jj5DwRX/rIqo5LxAleK80y0b3UmTeZcUMaFVtoQtl8uGS3KZDQHpqoof0fk20tBpd03+
         8sEGHRSMiRzK3jCUCAC6exqV3CEFB1mavhkEsH3lr4IAcO3YHrQVdLf7cu0RvEe5HGrI
         hCj9/ukuBCzi5qNjq4QXrzKJmbPSejlI39rKykwVTYDrl4Jtdz0GvbfSqsUvh0Y/T1AF
         CVRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=MYJ3JJ/Jd0eWgStakx+5rpTCbXb2QyvMwz7liYbDwEo=;
        b=h21ac7n0/MyZiXStW+VEtXHQvor/NOWRK1ywQvn59+Id2N9/D1rUIKMWTe8UU0tGDS
         W15YFhnJjTo6jDeOqi57kOGebskBbgKeTPfsEHWS6xFh3cknZEmPXQ2vtmJN5uu0IxVx
         DWbu0vCR6ejenWvkSC5fyamNE7XyCMBI2YcIY4+RHkoH+mcmBgKLPqvkYt4SDfgZD2EF
         Zc6bfpK8IcirOgM0p8FlLNGvS5q89cvXsH1Co9seKJlpdCeZxf3KJR/S8rUVKfOaU5bV
         hQlQed0awHLw5UAA+tJam2w7XzBDTLCvrhynUDLNTUwRD68TLX55nwO6lzNeDJztKxCy
         Cr4g==
X-Gm-Message-State: AOAM530zmKipVE2p8u094QvP23ZmQNr49RrQw3/T4s8Ap2Bk5C/DpEkR
        bxroYUKNiIS4r/1xsKbJvqMR/0Qwi7w=
X-Google-Smtp-Source: ABdhPJy91ZyRA599IKPl2wllmw+4ayD9idy8hT6dXnTP7wP8sJ2WcmZ7FS+3AxyOw8mCWk12lEVb7A==
X-Received: by 2002:a63:1c4e:: with SMTP id c14mr1017932pgm.98.1601297371602;
        Mon, 28 Sep 2020 05:49:31 -0700 (PDT)
Received: from localhost.localdomain ([1.129.174.166])
        by smtp.gmail.com with ESMTPSA id 1sm1363008pgm.4.2020.09.28.05.49.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Sep 2020 05:49:31 -0700 (PDT)
Date:   Mon, 28 Sep 2020 22:49:27 +1000
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
Cc:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: Re: [PATCH 1/3] system_data_types.7: ffix
Message-ID: <20200928124924.ol22t7ej5tkt33lr@localhost.localdomain>
References: <20200927211345.20433-1-colomar.6.4.3@gmail.com>
 <836b6d7d-4433-18d0-78aa-542c419c02f2@gmail.com>
 <20200928104016.za36rrtmgb55bh3v@localhost.localdomain>
 <7fd6e906-8050-b1a8-96e9-a4866965bdd7@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="y6wdyszzsxunuxfu"
Content-Disposition: inline
In-Reply-To: <7fd6e906-8050-b1a8-96e9-a4866965bdd7@gmail.com>
User-Agent: NeoMutt/20180716
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--y6wdyszzsxunuxfu
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Alex!

I'll reorganize the content below a bit.

At 2020-09-28T12:51:08+0200, Alejandro Colomar wrote:
> Then, a few days ago, I pushed the change that you still didn't see:
> Replace .IP with .RS/.RE + .PP
>=20
> I'll refer to the patch for the rationale: it was a bit long. Basically,
> it better represents a whole block, and it's easier to further indent:
>=20
> https://lore.kernel.org/linux-man/16c0890e-33c0-d052-d7ee-39385cd79299@gm=
ail.com/T/#m21da4dba4b3a44b0a59cad1e7eacb13a68a91636
>=20
> This change actually didn't have visual effects; just source changes.

Ah, okay.  That makes sense in context.  If it were me, I'd put a big
comment block in the man page sources to explain to future contributors
why it is structured (macro-wise) the way it is.

> On 2020-09-28 12:40, G. Branden Robinson wrote:
> > What is it that you don't like about the following pattern?
> >
> > .TP
> > .I typename_t
> > Include
> > .IR <header.h> .
> > .IP
> > .EX
> > struct typename {
> >      // ...
> > }
> > .EE
> > .IP
> > Notes and commentary.
>=20
> That's the first thing we tried; actually if I remember correctly,
> that's what Michael suggested first.
>=20
> But as you said, when we documented types with a long name such as
> ptrdiff_t, the alginment broke: sometimes Include was in the same line,
> and sometimes in the next one.
>=20
> That's when we opted for
>=20
> .\"------------------------------------- aiocb ------------------------/
> .TP
> .I aiocb
> .IP
> Include:
> .IR <aio.h> .
> .IP
> .EX
> struct aiocb {

Hmm, yes, I was afraid of that.  :)

Okay, there are other ways I can think of to skin this cat, ad which
will keep you from having to resort to .br to suppress the
inter-paragraph space that .IP produces.

However, first consider whether you can live with the default
arrangement.  In my opinion, when working with a man page, we should
first look to semantic correctness before worrying about presentation
issues.  It is entirely typical for tagged paragraphs in man pages (and
other *roff macro sets, as it happens), to shift their paragraph
beginnings depending on the width of the tag.  You are setting a
definition list, not a table--if you want a table, tbl(1) has been
around since the mid-1970s to help you include one.  :)

Still, my protest may be feeble because I too sometimes get preoccupied
with presentation issues and in any event, when preparing documents for
publication you _do_ have to sweat this sort of question, along with the
dreaded widows and orphans.

So let me propose some alternatives.

Alternative #1
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

I actually thought of this one _after_ writing up the three below.  It's
a bit outside the box relative to those.

You could force the paragraph bodies to start on the next line by making
the tags wider, and one way to do that is by _describing what the data
types are_ in a few words.  This might be the most pedagogically useful
thing to do.

As long as you don't make the tag so wide that it will need to break,
you should't have any formatting problems.  Allocate yourself a budget
of a dozen words or forty columns and you should be well within the
limits of any reasonable page rendering.

So, for instance:

=2ETP
=2EIR aiocb "\~\- asynchronous I/O control block"

=2ETP
=2EIR size_t "\~\- object size (unsigned)"

Alternative #2
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Is it acceptable to you to have _all_ the paragraphs end up on the same
line as the text body?  In other words, is consistency the main thing
you're going for?

If so, the best solution I can think of is to do something I gently
discourage people from doing, which is to use the argument to the .TP
macro to set the minimum indentation for the tagged paragraphs.

However, here, it seems the least bad approach to me that doesn't
involve content changes.  I'm appending a patch to implement it, for
your and Michael's consideration (I also "git pull"ed first :) ).

I checked PostScript output and the tag width works there, too.
However, I see that the comments in the aiocb struct overrun the right
margin a bit.  (The rest of the page looks fine, though, or very close
to it.)  Maybe that is why you _don't_ want to use this approach.  If
that is the case, let's move on to...

Alternative #3
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

I feel a little bit dirty suggesting this, but it doesn't break any of
the portability rules I prescribe in groff_man_style(7)[1], so I guess
I'm not a hypocrite for doing so...

Use the .TQ macro to add an additional tag, and then make that tag
empty.

So:

=2ETP
=2EI aiocb
=2ETQ
\&
Include:
=2EIR <aio.h> .
=2EIP
=2EEX
struct aiocb {

=2ETQ is a GNU extension dating back almost 14 years; but man-pages
already uses the .UR/.UE GNU extensions widely to mark up URLs, and .TQ
in one other place that I can see (keyctl.2, where it is used
idiomatically).

The above is a slight offense to the semantic markup gods, but I would
argue it's an excusable one because there's nothing sensible to
associate a null tag with, just like with ".IP \&".  A semantic parser
should discard it.

There's a story behind \& and what to call it, but for the time being
the main thing to know is that it's portable; it's documented all the
way back in M. E. Lesk's nroff/troff User's Manual of 1976.

Perhaps a better solution would be for someone like me to expand the
interface of .TP to accept a second argument (the first is the tag width
in ens, and has been since 1979--it won't help for your use case) to
force a break before starting the paragraph body.  A nice thing about
this approach is that it would fail gracefully with implementations that
don't support it; *roff macros are almost universally written to ignore
parameters that they don't require.  By "fail gracefully", I mean you'll
get output that doesn't look any worse than the mixed-alignment
paragraph starts, which I don't think constitute a barrier to
reader understanding.

Alternative #4
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

I can think of one other alternative--use tbl(1).  However, that is a
pretty big gun for a problem of this size, and given the format you're
shooting for you're going to have lengthy "text blocks" for the right
column of every table row.  Follow-up if you want to hear more about it.

Regards,
Branden

[1] https://man7.org/linux/man-pages/man7/groff_man_style.7.html

=46rom 0c71d88532388dec5d308a497acb3487d6f2d9e9 Mon Sep 17 00:00:00 2001
=46rom: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Date: Mon, 28 Sep 2020 22:21:09 +1000
Subject: [PATCH] man7/system_data_types.7: ffix

Indent idiomatically.

Use an explicit indentation argument to the first tagged paragraph .TP
to accommodate the documented type with the widest name, suseconds_t.
The remaining .TP and .IP paragraphs at this nesting level will re-use
it automatically.

Use indented paragraphs (.IP) instead of ordinary ones (.PP) inside
relative insets (.RS/.RE) for discussion of each data type.

Document values of FLT_EVAL_METHOD inside a doubly-inset region.
---
 man7/system_data_types.7 | 321 +++++++++++++++------------------------
 1 file changed, 121 insertions(+), 200 deletions(-)

diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
index 6d24dee2f..aa05d38a9 100644
--- a/man7/system_data_types.7
+++ b/man7/system_data_types.7
@@ -63,13 +63,11 @@ system_data_types \- overview of system data types
 .\"
 .\"		* See also
 .\"------------------------------------- aiocb ------------------------/
-.TP
+.TP 12n \" wide enough for "suseconds_t"
 .I aiocb
-.RS
-.br
 Include:
 .IR <aio.h> .
-.PP
+.IP
 .EX
 struct aiocb {
     int             aio_fildes;    /* File descriptor */
@@ -81,12 +79,12 @@ struct aiocb {
     int             aio_lio_opcode;/* Operation to be performed */
 };
 .EE
-.PP
+.IP
 For further information about this structure, see
 .BR aio (7).
-.PP
+.IP
 Conforming to: POSIX.1-2001 and later.
-.PP
+.IP
 See also:
 .BR aio_cancel (3),
 .BR aio_error (3),
@@ -96,45 +94,41 @@ See also:
 .BR aio_suspend (3),
 .BR aio_write (3),
 .BR lio_listio (3)
-.RE
 .\"------------------------------------- div_t ------------------------/
 .TP
 .I div_t
-.RS
-.br
 Include:
 .IR <stdlib.h> .
-.PP
+.IP
 .EX
 typedef struct {
     int quot; /* Quotient */
     int rem;  /* Remainder */
 } div_t;
 .EE
-.PP
+.IP
 It is the type of the value returned by the
 .BR div (3)
 function.
-.PP
+.IP
 Conforming to: C99 and later; POSIX.1-2001 and later.
-.PP
+.IP
 See also:
 .BR div (3)
-.RE
 .\"------------------------------------- double_t ---------------------/
 .TP
 .I double_t
-.RS
-.br
 Include:
 .IR <math.h> .
-.PP
+.IP
 The implementation's most efficient floating type at least as wide as
 .IR double .
 Its type depends on the value of the macro
 .B FLT_EVAL_METHOD
 (defined in
 .IR <float.h> ):
+.RS
+.RS
 .TP
 0
 .I double_t
@@ -150,67 +144,62 @@ is
 .I double_t
 is
 .IR "long double" .
-.PP
+.RE
+.RE
+.IP
 For other values of
 .BR FLT_EVAL_METHOD ,
 the type of
 .I double_t
 is implementation-defined.
-.PP
+.IP
 Conforming to: C99 and later; POSIX.1-2001 and later.
-.PP
+.IP
 See also the
 .I float_t
 type in this page.
-.RE
 .\"------------------------------------- fenv_t -----------------------/
 .TP
 .I fenv_t
-.RS
-.br
 Include:
 .IR <fenv.h> .
-.PP
+.IP
 This type represents the entire floating-point environment,
 including control modes and status flags; for further details, see
 .BR fenv (3).
-.PP
+.IP
 Conforming to: C99 and later; POSIX.1-2001 and later.
-.PP
+.IP
 See also:
 .BR fenv (3)
-.RE
 .\"------------------------------------- fexcept_t --------------------/
 .TP
 .I fexcept_t
-.RS
-.br
 Include:
 .IR <fenv.h> .
-.PP
+.IP
 This type represents the floating-point status flags collectively;
 for further details see
 .BR fenv (3).
-.PP
+.IP
 Conforming to: C99 and later; POSIX.1-2001 and later.
-.PP
+.IP
 See also:
 .BR fenv (3)
-.RE
 .\"------------------------------------- float_t ----------------------/
 .TP
 .I float_t
-.RS
-.br
 Include:
 .IR <math.h> .
-.PP
+.IP
 The implementation's most efficient floating type at least as wide as
 .IR float .
 Its type depends on the value of the macro
 .B FLT_EVAL_METHOD
 (defined in
 .IR <float.h> ):
+.RS
+.RS
 .TP
 0
 .I float_t
@@ -226,24 +215,23 @@ is
 .I float_t
 is
 .IR "long double" .
-.PP
+.RE
+.RE
+.IP
 For other values of
 .BR FLT_EVAL_METHOD ,
 the type of
 .I float_t
 is implementation-defined.
-.PP
+.IP
 Conforming to: C99 and later; POSIX.1-2001 and later.
-.PP
+.IP
 See also the
 .I double_t
 type in this page.
-.RE
 .\"------------------------------------- gid_t ------------------------/
 .TP
 .I gid_t
-.RS
-.br
 Include:
 .IR <sys/types.h> ;
 or
@@ -260,13 +248,13 @@ or
 .I <sys/stat.h>
 or
 .IR <unistd.h> .
-.PP
+.IP
 A type used to hold group IDs.
 According to POSIX,
 this shall be an integer type.
-.PP
+.IP
 Conforming to: POSIX.1-2001 and later.
-.PP
+.IP
 See also:
 .BR chown (2),
 .BR getgid (2),
@@ -275,17 +263,14 @@ See also:
 .BR getresgid (2),
 .BR getgrnam (2),
 .BR credentials (7)
-.RE
 .\"------------------------------------- id_t -------------------------/
 .TP
 .I id_t
-.RS
-.br
 Include:
 .IR <sys/types.h> ;
 or
 .IR <sys/resource.h> .
-.PP
+.IP
 A type used to hold a general identifier.
 According to POSIX,
 this shall be an integer type that can be used to contain a
@@ -293,45 +278,39 @@ this shall be an integer type that can be used to con=
tain a
 .IR uid_t ,
 or
 .IR gid_t .
-.PP
+.IP
 Conforming to: POSIX.1-2001 and later.
-.PP
+.IP
 See also:
 .BR getpriority (2),
 .BR waitid (2)
-.RE
 .\"------------------------------------- imaxdiv_t --------------------/
 .TP
 .I imaxdiv_t
-.RS
-.br
 Include:
 .IR <inttypes.h> .
-.PP
+.IP
 .EX
 typedef struct {
     intmax_t    quot; /* Quotient */
     intmax_t    rem;  /* Remainder */
 } imaxdiv_t;
 .EE
-.PP
+.IP
 It is the type of the value returned by the
 .BR imaxdiv (3)
 function.
-.PP
+.IP
 Conforming to: C99 and later; POSIX.1-2001 and later.
-.PP
+.IP
 See also:
 .BR imaxdiv (3)
-.RE
 .\"------------------------------------- lconv ------------------------/
 .TP
 .I lconv
-.RS
-.br
 Include:
 .IR <locale.h> .
-.PP
+.IP
 .EX
 struct lconv {                  /* Values in the "C" locale: */
     char   *decimal_point;      /* "." */
@@ -360,72 +339,63 @@ struct lconv {                  /* Values in the "C" =
locale: */
     char    int_n_sign_posn;    /* CHAR_MAX */
 };
 .EE
-.PP
+.IP
 Contains members related to the formatting of numeric values.
 In the "C" locale, its members have the values
 shown in the comments above.
-.PP
+.IP
 Conforming to: C11 and later; POSIX.1-2001 and later.
-.PP
+.IP
 See also:
 .BR setlocale (3),
 .BR localeconv (3),
 .BR charsets (5),
 .BR locale (7)
-.RE
 .\"------------------------------------- ldiv_t -----------------------/
 .TP
 .I ldiv_t
-.RS
-.br
 Include:
 .IR <stdlib.h> .
-.PP
+.IP
 .EX
 typedef struct {
     long    quot; /* Quotient */
     long    rem;  /* Remainder */
 } ldiv_t;
 .EE
-.PP
+.IP
 It is the type of the value returned by the
 .BR ldiv (3)
 function.
-.PP
+.IP
 Conforming to: C99 and later; POSIX.1-2001 and later.
-.PP
+.IP
 See also:
 .BR ldiv (3)
-.RE
 .\"------------------------------------- lldiv_t ----------------------/
 .TP
 .I lldiv_t
-.RS
-.br
 Include:
 .IR <stdlib.h> .
-.PP
+.IP
 .EX
 typedef struct {
     long long   quot; /* Quotient */
     long long   rem;  /* Remainder */
 } lldiv_t;
 .EE
-.PP
+.IP
 It is the type of the value returned by the
 .BR lldiv (3)
 function.
-.PP
+.IP
 Conforming to: C99 and later; POSIX.1-2001 and later.
-.PP
+.IP
 See also:
 .BR lldiv (3)
-.RE
 .\"------------------------------------- pid_t ------------------------/
 .TP
 .I pid_t
-.RS
-.br
 Include
 .IR <sys/types.h> ;
 or
@@ -452,7 +422,7 @@ or
 .I <unistd.h>
 or
 .IR <utmpx.h> .
-.PP
+.IP
 This type is used for storing process IDs, process group IDs, and session =
IDs.
 According to POSIX, it shall be a signed integer type,
 and the implementation shall support one or more programming environments
@@ -460,9 +430,9 @@ where the width of
 .I pid_t
 is no greater than the width of the type
 .IR long .
-.PP
+.IP
 Conforming to: POSIX.1-2001 and later.
-.PP
+.IP
 See also:
 .BR fork (2),
 .BR getpid (2),
@@ -476,22 +446,19 @@ See also:
 .BR waitpid (2),
 .BR sigqueue (3),
 .BR credentials (7),
-.RE
 .\"------------------------------------- ptrdiff_t --------------------/
 .TP
 .I ptrdiff_t
-.RS
-.br
 Include:
 .IR <stddef.h> .
-.PP
+.IP
 Used for a count of elements, and array indices.
 It is the result of subtracting two pointers.
 According to the C language standard, it shall be a signed integer type
 capable of storing values in the range
 .RB [ PTRDIFF_MIN ,
 .BR PTRDIFF_MAX ].
-.PP
+.IP
 The length modifier for
 .I ptrdiff_t
 for the
@@ -507,23 +474,20 @@ or
 for printing
 .I ptrdiff_t
 values.
-.PP
+.IP
 Conforming to: C99 and later; POSIX.1-2001 and later.
-.PP
+.IP
 See also the
 .I size_t
 and
 .I ssize_t
 types in this page.
-.RE
 .\"------------------------------------- regmatch_t -------------------/
 .TP
 .I regmatch_t
-.RS
-.br
 Include:
 .IR <regex.h> .
-.PP
+.IP
 .EX
 typedef struct {
     regoff_t    rm_so; /* Byte offset from start of string
@@ -533,38 +497,35 @@ typedef struct {
                           substring */
 } regmatch_t;
 .EE
-.PP
+.IP
 This is a structure type used in regular expression matching.
-.PP
+.IP
 Conforming to: POSIX.1-2001 and later.
-.PP
+.IP
 See also:
 .BR regexec (3)
-.RE
 .\"------------------------------------- regoff_t ---------------------/
 .TP
 .I regoff_t
-.RS
-.br
 Include:
 .IR <regex.h> .
-.PP
+.IP
 According to POSIX, it shall be a signed integer type
 capable of storing the largest value that can be stored in either a
 .I ptrdiff_t
 type or a
 .I ssize_t
 type.
-.PP
+.IP
 Conforming to: POSIX.1-2001 and later.
-.PP
+.IP
 Notes: Prior to POSIX.1-2008, the type was capable of storing
 the largest value that can be stored in either an
 .I off_t
 type or a
 .I ssize_t
 type.
-.PP
+.IP
 See also the
 .I regmatch_t
 structure and the
@@ -572,12 +533,9 @@ structure and the
 and
 .I ssize_t
 types in this page.
-.RE
 .\"------------------------------------- sigevent ---------------------/
 .TP
 .I sigevent
-.RS
-.br
 Include:
 .IR <signal.h> ;
 or
@@ -586,7 +544,7 @@ or
 .I <mqueue.h>
 or
 .IR <time.h> .
-.PP
+.IP
 .EX
 struct sigevent {
     int             sigev_notify; /* Notification type */
@@ -598,12 +556,12 @@ struct sigevent {
                                   /* Notification attributes */
 };
 .EE
-.PP
+.IP
 For further details about this type, see
 .BR sigevent (7).
-.PP
+.IP
 Conforming to: POSIX.1-2001 and later.
-.PP
+.IP
 Notes:
 .I <aio.h>
 and
@@ -611,27 +569,24 @@ and
 define
 .I sigevent
 since POSIX.1-2008.
-.PP
+.IP
 See also:
 .BR timer_create (2),
 .BR getaddrinfo_a (3),
 .BR lio_listio (3),
 .BR mq_notify (3)
-.PP
+.IP
 See also the
 .I aiocb
 structure in this page.
-.RE
 .\"------------------------------------- siginfo_t --------------------/
 .TP
 .I siginfo_t
-.RS
-.br
 Include:
 .IR <signal.h> ;
 or
 .IR <sys/wait.h> .
-.PP
+.IP
 .EX
 typedef struct {
     int      si_signo;  /* Signal number */
@@ -643,38 +598,35 @@ typedef struct {
     union sigval si_value;  /* Signal value */
 } siginfo_t;
 .EE
-.PP
+.IP
 Information associated with a signal.
 For further details on this structure
 (including additional, Linux-specific fields), see
 .BR sigaction (2).
-.PP
+.IP
 Conforming to: POSIX.1-2001 and later.
-.PP
+.IP
 See also:
 .BR pidfd_send_signal (2),
 .BR rt_sigqueueinfo (2),
 .BR sigaction (2),
 .BR sigwaitinfo (2),
 .BR psiginfo (3)
-.RE
 .\"------------------------------------- sigset_t ---------------------/
 .TP
 .I sigset_t
-.RS
-.br
 Include:
 .IR <signal.h> ;
 or
 .I <spawn.h>
 or
 .IR <sys/select.h> .
-.PP
+.IP
 This is a type that represents a set of signals.
 According to POSIX, this shall be an integer or structure type.
-.PP
+.IP
 Conforming to: POSIX.1-2001 and later.
-.PP
+.IP
 See also:
 .BR epoll_pwait (2),
 .BR ppoll (2),
@@ -686,31 +638,28 @@ See also:
 .BR sigsuspend (2),
 .BR sigwaitinfo (2),
 .BR signal (7)
-.RE
 .\"------------------------------------- sigval -----------------------/
 .TP
 .I sigval
-.RS
-.br
 Include:
 .IR <signal.h> .
-.PP
+.IP
 .EX
 union sigval {
     int     sigval_int; /* Integer value */
     void   *sigval_ptr; /* Pointer value */
 };
 .EE
-.PP
+.IP
 Data passed with a signal.
-.PP
+.IP
 Conforming to: POSIX.1-2001 and later.
-.PP
+.IP
 See also:
 .BR pthread_sigqueue (3),
 .BR sigqueue (3),
 .BR sigevent (7)
-.PP
+.IP
 See also the
 .I sigevent
 structure
@@ -718,12 +667,9 @@ and the
 .I siginfo_t
 type
 in this page.
-.RE
 .\"------------------------------------- size_t -----------------------/
 .TP
 .I size_t
-.RS
-.br
 Include:
 .I <stddef.h>
 or
@@ -778,7 +724,7 @@ or
 .I <wchar.h>
 or
 .IR <wordexp.h> .
-.PP
+.IP
 Used for a count of bytes.  It is the result of the
 .I sizeof
 operator.
@@ -792,7 +738,7 @@ where the width of
 .I size_t
 is no greater than the width of the type
 .IR long .
-.PP
+.IP
 The length modifier for
 .I size_t
 for the
@@ -808,9 +754,9 @@ or
 for printing
 .I size_t
 values.
-.PP
+.IP
 Conforming to: C99 and later; POSIX.1-2001 and later.
-.PP
+.IP
 Notes:
 .IR <aio.h> ,
 .IR <glob.h> ,
@@ -824,7 +770,7 @@ and
 define
 .I size_t
 since POSIX.1-2008.
-.PP
+.IP
 See also:
 .BR read (2),
 .BR write (2),
@@ -835,18 +781,15 @@ See also:
 .BR memcpy (3),
 .BR memset (3),
 .BR offsetof (3)
-.PP
+.IP
 See also the
 .I ptrdiff_t
 and
 .I ssize_t
 types in this page.
-.RE
 .\"------------------------------------- ssize_t ----------------------/
 .TP
 .I ssize_t
-.RS
-.br
 Include:
 .IR <sys/types.h> ;
 or
@@ -865,7 +808,7 @@ or
 .I <sys/uio.h>
 or
 .IR <unistd.h> .
-.PP
+.IP
 Used for a count of bytes or an error indication.
 According to POSIX, it shall be a signed integer type
 capable of storing values at least in the range [-1,
@@ -875,7 +818,7 @@ where the width of
 .I ssize_t
 is no greater than the width of the type
 .IR long .
-.PP
+.IP
 Glibc and most other implementations provide a length modifier for
 .I ssize_t
 for the
@@ -901,9 +844,9 @@ by converting the value to
 .I intmax_t
 and using its length modifier
 .RB ( j ).
-.PP
+.IP
 Conforming to: POSIX.1-2001 and later.
-.PP
+.IP
 See also:
 .BR read (2),
 .BR readlink (2),
@@ -911,25 +854,22 @@ See also:
 .BR recv (2),
 .BR send (2),
 .BR write (2)
-.PP
+.IP
 See also the
 .I ptrdiff_t
 and
 .I size_t
 types in this page.
-.RE
 .\"------------------------------------- suseconds_t ------------------/
 .TP
 .I suseconds_t
-.RS
-.br
 Include:
 .IR <sys/types.h> ;
 or
 .I <sys/select.h>
 or
 .IR <sys/time.h> .
-.PP
+.IP
 Used for time in microseconds.
 According to POSIX, it shall be a signed integer type
 capable of storing values at least in the range [-1, 1000000],
@@ -938,18 +878,15 @@ where the width of
 .I suseconds_t
 is no greater than the width of the type
 .IR long .
-.PP
+.IP
 Conforming to: POSIX.1-2001 and later.
-.PP
+.IP
 See also the
 .I timeval
 structure in this page.
-.RE
 .\"------------------------------------- time_t -----------------------/
 .TP
 .I time_t
-.RS
-.br
 Include:
 .I <sys/types.h>
 or
@@ -970,52 +907,46 @@ or
 .I <sys/time.h>
 or
 .IR <utime.h> .
-.PP
+.IP
 Used for time in seconds.
 According to POSIX, it shall be an integer type.
-.PP
+.IP
 Conforming to: C99 and later; POSIX.1-2001 and later.
-.PP
+.IP
 Notes:
 .I <sched.h>
 defines
 .I time_t
 since POSIX.1-2008.
-.PP
+.IP
 See also:
 .BR stime (2),
 .BR time (2),
 .BR ctime (3),
 .BR difftime (3)
-.RE
 .\"------------------------------------- timer_t ----------------------/
 .TP
 .I timer_t
-.RS
-.br
 Include:
 .IR <sys/types.h> ;
 or
 .IR <time.h> .
-.PP
+.IP
 Used for timer ID returned by
 .BR timer_create (2).
 According to POSIX,
 there are no defined comparison or assignment operators for this type.
-.PP
+.IP
 Conforming to: POSIX.1-2001 and later.
-.PP
+.IP
 See also:
 .BR timer_create (2),
 .BR timer_delete (2),
 .BR timer_getoverrun (2),
 .BR timer_settime (2)
-.RE
 .\"------------------------------------- timespec ---------------------/
 .TP
 .I timespec
-.RS
-.br
 Include:
 .IR <time.h> ;
 or
@@ -1030,30 +961,27 @@ or
 .I <sys/select.h>
 or
 .IR <sys/stat.h> .
-.PP
+.IP
 .EX
 struct timespec {
     time_t  tv_sec;  /* Seconds */
     long    tv_nsec; /* Nanoseconds */
 };
 .EE
-.PP
+.IP
 Describes times in seconds and nanoseconds.
-.PP
+.IP
 Conforming to: C11 and later; POSIX.1-2001 and later.
-.PP
+.IP
 See also:
 .BR clock_gettime (2),
 .BR clock_nanosleep (2),
 .BR nanosleep (2),
 .BR timerfd_gettime (2),
 .BR timer_gettime (2)
-.RE
 .\"------------------------------------- timeval ----------------------/
 .TP
 .I timeval
-.RS
-.br
 Include:
 .IR <sys/time.h> ;
 or
@@ -1062,18 +990,18 @@ or
 .I <sys/select.h>
 or
 .IR <utmpx.h> .
-.PP
+.IP
 .EX
 struct timeval {
     time_t      tv_sec;  /* Seconds */
     suseconds_t tv_usec; /* Microseconds */
 };
 .EE
-.PP
+.IP
 Describes times in seconds and microseconds.
-.PP
+.IP
 Conforming to: POSIX.1-2001 and later.
-.PP
+.IP
 See also:
 .BR gettimeofday (2),
 .BR select (2),
@@ -1081,12 +1009,9 @@ See also:
 .BR adjtime (3),
 .BR futimes (3),
 .BR timeradd (3)
-.RE
 .\"------------------------------------- uid_t ----------------------/
 .TP
 .I uid_t
-.RS
-.br
 Include:
 .IR <sys/types.h> ;
 or
@@ -1101,13 +1026,13 @@ or
 .I <sys/stat.h>
 or
 .IR <unistd.h> .
-.PP
+.IP
 A type used to hold user IDs.
 According to POSIX,
 this shall be an integer type.
-.PP
+.IP
 Conforming to: POSIX.1-2001 and later.
-.PP
+.IP
 See also:
 .BR chown (2),
 .BR getuid (2),
@@ -1115,19 +1040,16 @@ See also:
 .BR getresuid (2),
 .BR getpwnam (2),
 .BR credentials (7)
-.RE
 .\"------------------------------------- va_list ----------------------/
 .TP
 .I va_list
-.RS
-.br
 Include:
 .IR <stdarg> ;
 or
 .I <stdio.h>
 or
 .IR <wchar.h> .
-.PP
+.IP
 Used by functions with a varying number of arguments of varying types.
 The function must declare an object of type
 .I va_list
@@ -1138,15 +1060,14 @@ which is used by the macros
 and
 .BR va_end (3)
 to traverse the list of arguments.
-.PP
+.IP
 Conforming to: C99 and later; POSIX.1-2001 and later.
-.PP
+.IP
 See also:
 .BR va_start (3),
 .BR va_arg (3),
 .BR va_copy (3),
 .BR va_end (3)
-.RE
 .\"--------------------------------------------------------------------/
 .SH NOTES
 The structures described in this manual page shall contain,
--=20
2.20.1


--y6wdyszzsxunuxfu
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAl9x28wACgkQ0Z6cfXEm
bc7gERAAqsY2OtyHMAPijU2aY4wwAgz4F/YQcYE86N7qEiwCk4L6fHsgshWFK+5Q
oBmcCWfFov7gqGACiqVzOAJQ/JYslrEo2KiI6W41fg75MtfAVxbcJp7JijY2KhdX
PDzHNae2nRfZFn2i8s2sB2vbNN/j5dKNQAtWydTru+nCC/NkDDq75CN3A7vvTLjO
my+BIfUCVMgbKCFRGiXCKLS/9MSOIYZDw2pinUiZ4Sfkz/yNibqzZEDrcjW1grow
3Qlfa4MuKlAxBK1efm7vgaSZBQDKL7kxRy34VR89U7/JRWymvQ+XMGiMFe/OZbHO
9iW3+QNKzkbMAxawFr1soYRC+ZkZ5Fwnuw7Fk5sssglLvrD9oqDTs32ZTeBbtwU1
26wk3D8eG0b6yaslAervYzhgzMObxGQxO/Wm/kVUdpoQp7UWn9X6OAG7zMGpNWE+
xMYRrG9CA2GcTtROrigg+CJaz+JY3qeZzFoGghU1idlcT+C/HNEfmPb025rsHT06
5rsKC4z1vg1kaXllYzIHg3Gc4cICKRswEJJT6lCowKwDxNN1WWy9WgUK10yxjpNe
WK5W4GMx4cutC02xg03H2GruHfomXS/q/3AC5k0QBIfgNLnS7uDc7lf31UdnQNka
SiArPBeeNnMa6/IHTETNJptPPkC5PZdb+duVa39c29EqlY9r2YQ=
=u4ZE
-----END PGP SIGNATURE-----

--y6wdyszzsxunuxfu--
