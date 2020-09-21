Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4BF672726C6
	for <lists+linux-man@lfdr.de>; Mon, 21 Sep 2020 16:16:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726991AbgIUOQB (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 21 Sep 2020 10:16:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39288 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726395AbgIUOQB (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 21 Sep 2020 10:16:01 -0400
Received: from mail-pj1-x1041.google.com (mail-pj1-x1041.google.com [IPv6:2607:f8b0:4864:20::1041])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2941CC061755
        for <linux-man@vger.kernel.org>; Mon, 21 Sep 2020 07:16:01 -0700 (PDT)
Received: by mail-pj1-x1041.google.com with SMTP id v14so7209841pjd.4
        for <linux-man@vger.kernel.org>; Mon, 21 Sep 2020 07:16:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=p6GZbIEHvu7f44VV0zCO9KCS66v1ZLPE4UsFPlLbMtQ=;
        b=Z05o5D5cc8oxgNoYqi/r72FQwzDxFw8cVNJdK141Z2y6u+njJfbOrJtTBW8VfmJCoy
         hZ70L2M2BaelgS2wQY96JN5MafBViyUsGpneSd0pkeUKm6rmSiYLHsqNKhSnNOZm5tIc
         nCb8KS+l59XIp4Lpy8y+SxZagxSjnJjhANuI+cqwftgkmjEnJU8AqKUfp5QxoiaJnLXX
         v0S6nGqBzQCi9ZLlS1b5mtMGlsPcx/bhtBVKNAAx0ygDyJALQ/2TAQfZhyGooyIoJYuf
         LA2eyCZsyoGjR7LW/re/vbI6c1d3/X/Kt+36Bdiv2YG+ftYqMojLv6LWgOm1JXGIqJYx
         u++Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=p6GZbIEHvu7f44VV0zCO9KCS66v1ZLPE4UsFPlLbMtQ=;
        b=IH60XjMcAMEt0ogLoe/Ynughv/6sbWaJ95mydYQqBREI6pSyAAgAPTgeHMQumhic2p
         C2UVjeRa3tW+Q7NwHLdgvZ3K6sQw2a8l4EP4NtUxPkD4iZQI5FI2zMxeewoWfP8pG9ZN
         AF5q2i3CigZ2q1U52D9BzCfDFTgMk+OlcqP9GnconSromW5b0EoD+n/rsGdDjZqMTS2W
         1U39+ht8/tl7OlidLALQb2D38xN2HqFJYfjfzIkQvU3wJ31kCbwRukAKGXWifiBkaOCI
         +jKIambgYwSxa6HVMIN8UkVtpnYPyz/ksIA0jiGC1JMMXX26dq/8HXBJgoOy1LhMM9dX
         OH+g==
X-Gm-Message-State: AOAM532an3NxwYeQY10bY1svFwCJ8OIrSp5u+ZpPXliLmQ5Ym3gMosae
        4UG/jZeo62o6wS9Vg/nX+BYIS0mZPPk=
X-Google-Smtp-Source: ABdhPJy2DayygikOUUvpRcrzRL3xA8DnTsp2v/HKjR2vVvQPL5eHmpkK2AiTJkVPOYRWyp0aYUU3HA==
X-Received: by 2002:a17:90b:374b:: with SMTP id ne11mr65588pjb.21.1600697760159;
        Mon, 21 Sep 2020 07:16:00 -0700 (PDT)
Received: from localhost.localdomain ([1.129.167.243])
        by smtp.gmail.com with ESMTPSA id 203sm12173084pfz.131.2020.09.21.07.15.57
        for <linux-man@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Sep 2020 07:15:59 -0700 (PDT)
Date:   Tue, 22 Sep 2020 00:15:55 +1000
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     linux-man <linux-man@vger.kernel.org>
Subject: Re: man-pages.7: Simplify indentation of structure definitions,
 shell session logs, and so on
Message-ID: <20200921141552.tpuhdxo24lc6e7dh@localhost.localdomain>
References: <20200920214012.454410-1-colomar.6.4.3@gmail.com>
 <61f4e2a4-d468-ceba-2ccf-ce0c061aa20b@gmail.com>
 <f70c7f62-9d61-71aa-67cf-43501a29bccc@gmail.com>
 <CAKgNAki7=AJ7p2AwPkf9+4AkYKdOL6b4D0NyVdwZzu-qHFvGiA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="loknnqffokfegkql"
Content-Disposition: inline
In-Reply-To: <CAKgNAki7=AJ7p2AwPkf9+4AkYKdOL6b4D0NyVdwZzu-qHFvGiA@mail.gmail.com>
User-Agent: NeoMutt/20180716
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--loknnqffokfegkql
Content-Type: multipart/mixed; boundary="m3qaaojz5qwgpvot"
Content-Disposition: inline


--m3qaaojz5qwgpvot
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

At 2020-09-21T09:49:11+0200, Michael Kerrisk (man-pages) wrote:
> On Mon, 21 Sep 2020 at 09:32, Alejandro Colomar <colomar.6.4.3@gmail.com>=
 wrote:
> > Indentation of structure definitions, shell session logs, and so on
> >
> > When  structure definitions, shell session logs, and so on are included
> > in running text, indent them by 4 spaces (i.e.,  a  block  enclosed  by
> > .in +4n and .in), format them using the .EX and EE macros, and surround
> > them with suitable paragraph markers (either .PP or .IP).  For example:
> >
> >                 .PP
> >                 .in +4n
> >                 .EX
> >                 int
> >                 main(int argc, char *argv[])
> >                 {
> >                     return 0;
> >                 }
> >                 .EE
> >                 .in
> >                 .PP
> >
> >
> > That could be simplified to the following, right?:
> >
> >                 .IP
> >                 .EX
> >                 int
> >                 main(int argc, char *argv[])
> >                 {
> >                     return 0;
> >                 }
> >                 .EE
> >                 .PP
> >
> > Or is there any difference?
>=20
> .IP indents by 8 spaces by default, I think.

7 "ens" on nroff devices (like terminals), 7.2n on troff devices.

An "en" is a traditional typesetting unit of measure, the width of a
letter "n" in the font being used.  For monospaced fonts, including
those used in character-cell terminals--barring the employment of CJK
"fullwidth" code points--this is the same width as a space.

> Also, .IP won't indent further, if we are already in an area of
> indented paragraphs.

This is true.  In my maintenance work on groff's man pages I have
devised an idiom of calling .RS twice, putting in the desired material,
and then calling .RE twice.

In membarrier(2), however, life is simple because no code examples are
being nested inside an indented paragraph (.IP).  I'm attaching a patch;
it produces no visible difference in output, not even white space
changes.

I should add that my suggestion is to _not_ specify precise indentation
amounts in man pages, as this is a presentation matter and readers may
prefer tighter or more generous indentation, which they can control via
the IN register; that is, passing -rIN to the groff command.  (Or, more
likely, by configuring it in their man.local file so all pages that
respect the user's wishes are consistent.)

I've been improving the groff_man(7) page over the past few years to
document all of this stuff much better, and recently in groff git[1]
I've split out a groff_man_style(7) page.  The latter is (as near as
makes no difference) a strict superset of the former.

Michael's site has a fairly recent snapshot of these pages:
  https://man7.org/linux/man-pages/man7/groff_man.7.html
  https://man7.org/linux/man-pages/man7/groff_man_style.7.html

Feedback is welcome.  For the latter page, I still need to write my
grand introduction where I explain the real typesetting basics: filling,
adjusting, breaking, and how these all relate to hyphenation.

In my opinion, .in requests are never necessary in idiomatic,
well-written man pages and I'm happy to offer technical advice for how
to achieve the desired result without using them.

I'm also happy to prepare patches for man-pages documents implementing
my recommendations.  :)

Regards,
Branden

[1] https://git.savannah.gnu.org/cgit/groff.git

--m3qaaojz5qwgpvot
Content-Type: text/x-diff; charset=us-ascii
Content-Disposition: attachment; filename="membarrier.2.diff"
Content-Transfer-Encoding: quoted-printable

Use .RS/.RE man macros instead of .in requests.

diff --git a/man2/membarrier.2 b/man2/membarrier.2
index f65c6be5c..526bb3819 100644
--- a/man2/membarrier.2
+++ b/man2/membarrier.2
@@ -60,11 +60,11 @@ The key idea is to replace, for these matching
 barriers, the fast-side memory barriers by simple compiler barriers,
 for example:
 .PP
-.in +4n
+.RS 4
 .EX
 asm volatile ("" : : : "memory")
 .EE
-.in
+.RE
 .PP
 and replace the slow-side memory barriers by calls to
 .BR membarrier ().
@@ -285,7 +285,7 @@ very frequently, and where "slow_path()" is executed in=
frequently, the
 following code (x86) can be transformed using
 .BR membarrier ():
 .PP
-.in +4n
+.RS
 .EX
 #include <stdlib.h>
=20
@@ -332,13 +332,13 @@ main(int argc, char **argv)
     exit(EXIT_SUCCESS);
 }
 .EE
-.in
+.RE
 .PP
 The code above transformed to use
 .BR membarrier ()
 becomes:
 .PP
-.in +4n
+.RS
 .EX
 #define _GNU_SOURCE
 #include <stdlib.h>
@@ -421,4 +421,4 @@ main(int argc, char **argv)
     exit(EXIT_SUCCESS);
 }
 .EE
-.in
+.RE

--m3qaaojz5qwgpvot--

--loknnqffokfegkql
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAl9otY8ACgkQ0Z6cfXEm
bc69dA/+K0PhMTY+CcWL0LYVjUVwNjJ87VO6CwnD2EEekw2lhu/WbYx8CSIAe0xp
vr5NcAoCY0D8U6iYYmnwWZcQU2Fl9KbsKEglObqIUAHh7zcDGhv+ZGue+t01aWCJ
gm/qopU/vMI8o/CAkIGDbgAmOoMrvX87ExZJTpbHhBl53sA8KyUKjuNCNqgfChMk
sVgjPhm8l9LMSUBwAL59AzdzylXEnQG76Fj1/H+R+LUJkvsMyviNaxE1wqeG/zYi
7WMf0MoUptmZtEqQSGYk5kpDz76ube/L3WS0QIBjkn+1JEMe+FxSIBWGYinnpmis
QY4uo29kPqLicQs3CAavLG4KDsAlDdbCK9dz+5gpO4TPyAWF0Euy8M30Z7nAeRhD
hEztiR7bM+G7IXaRHFdgVOliuZlo/fo34QcIErGnWOEbKEBbHtYGEZMIl/5odMKv
42/XzY47H7/TrCYTXZULD4M7m+J5/ht3ZBmh8KtChPlfOZTlzrVRas6pF6hH2bLf
uUghs21nSC3rCaGLt6Wz4PA5TO29r3ZN7Emi/hoMyt+fRHDo1w3W5prck1MeUEnJ
/+uv5hL5kElqqHMqFvfh0YHrmq/jfwQ6onjxRT6J5F/6y/wF1YqLcvJNsauDIeTP
Nu/jldAK5U8V46aBSijH8QkERTPowm5ax3FFOhEBwNqT7+P7vT4=
=kUmi
-----END PGP SIGNATURE-----

--loknnqffokfegkql--
