Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DC915591729
	for <lists+linux-man@lfdr.de>; Sat, 13 Aug 2022 00:10:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236032AbiHLWKs (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 12 Aug 2022 18:10:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53888 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231698AbiHLWKq (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 12 Aug 2022 18:10:46 -0400
Received: from mail-oa1-x34.google.com (mail-oa1-x34.google.com [IPv6:2001:4860:4864:20::34])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4EB8474CCC
        for <linux-man@vger.kernel.org>; Fri, 12 Aug 2022 15:10:44 -0700 (PDT)
Received: by mail-oa1-x34.google.com with SMTP id 586e51a60fabf-10e6bdbe218so2342627fac.10
        for <linux-man@vger.kernel.org>; Fri, 12 Aug 2022 15:10:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc;
        bh=OrRxjOZeGLUzeSBUaaZ8qTobYYSHg+83huRVxCwjbVU=;
        b=GYtOLLgrmmN/pUZO7s/chVKBLmF8z/oqpWkfdLtlZ/rdmh505XkdOUyn6SqAsZBpOr
         1y0hU4yo25cvhJQ9UDn8dQD0WmpC8N5XPKm33Pww4XLyGm9/1fKNgCyJxDaFV4HEUDku
         BuqAa8GLv5lw76hCqW4Sm3FxXyU52j+O3aVqY4Lxsr5oU6A/Du/feYbVOvG+ScGa+sTw
         gS4hlZ67D0PijkGGnvQuAuHIjq4KRoh7B7tAJ1k+7z33BgTIP0I3OA1VLU/Ulu2SiNPv
         h8FP1159XolzcUm5GQbz9A6AT10g4mBTbUnH8E4Gs4MxChfnWZst/ikEnFM76muw5R4e
         yClA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc;
        bh=OrRxjOZeGLUzeSBUaaZ8qTobYYSHg+83huRVxCwjbVU=;
        b=6V3jsVBldCWmK63fwpAwZ1G3OElsxL7MkSL4Gc5nU4v97udbFrAbUCJmAJkv1IcjPH
         KOUU4Xs1eMVTTbBdMbni+y+YAfGuQ7EUpLW/RMH4pPxntgRvTdu/wKxhZX7ajXqkp6w3
         m0XbCaUn8xM046GMiwQjf6L/LlUjDBT+EvwUIS0vgF3sAKhqiGE15BZUy3wwDgm27iKg
         vZX4uIcZ9khPAL4vh8kE7eXpoU3CVbYNjOgd6Fo+8n0QhB1ZfHGcYpK+gSSiJn3MXiJi
         +E4EjP3zbLo6y6FbgLy00r7cgfqc7Ner+WotTervDxM9x1OyVGuSACDsYSY44/DurL0e
         U+5A==
X-Gm-Message-State: ACgBeo0e1rDMyLNCO40rMw98vPU+UZ2XAaKCsBAhGElvOZglkT1ztOVg
        KytsOfyNB3NcUaMSAzVPtrxrZ707Nl0=
X-Google-Smtp-Source: AA6agR4NY2obkjPUf5ikNylUOqL+2SmlTvHOFcLFEWp8XELHjP6qxTs+Rdbvp4ZM24AFbLhNFLIa+Q==
X-Received: by 2002:a05:6870:b619:b0:10f:84f:ea0c with SMTP id cm25-20020a056870b61900b0010f084fea0cmr6975187oab.160.1660342243520;
        Fri, 12 Aug 2022 15:10:43 -0700 (PDT)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id i2-20020a4aab02000000b00448b1f49a11sm532135oon.34.2022.08.12.15.10.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Aug 2022 15:10:43 -0700 (PDT)
Date:   Fri, 12 Aug 2022 17:10:35 -0500
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Ingo Schwarze <schwarze@usta.de>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, groff@gnu.org
Subject: *roff `\~` support (was: [PATCH 4/6] xattr.7: wfix)
Message-ID: <20220812221035.xd4udngmz5erht5p@illithid>
References: <20220729114506.1669153-4-stepnem@gmail.com>
 <20220729205823.lcy4fbezlw32owgu@illithid>
 <20220730161521+0200.203910-stepnem@gmail.com>
 <c2ef3b9c-97d1-2733-df27-542c9eacad17@gmail.com>
 <8edd0272-0c43-b5e7-9220-20094bb5ae23@gmail.com>
 <YvT6s2Sv+M2bEldp@asta-kit.de>
 <20220811201714.a2o432xhkyyyj6qi@illithid>
 <YvZj6emfWNfwRjwe@asta-kit.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="bzmt4bqus73ma56y"
Content-Disposition: inline
In-Reply-To: <YvZj6emfWNfwRjwe@asta-kit.de>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--bzmt4bqus73ma56y
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Ingo,

At 2022-08-12T16:30:01+0200, Ingo Schwarze wrote:
> G. Branden Robinson wrote on Thu, Aug 11, 2022 at 03:17:14PM -0500:
> > At 2022-08-11T14:48:51+0200, Ingo Schwarze wrote:
> >> Alejandro Colomar wrote on Mon, Aug 01, 2022 at 03:28:03PM +0200:
>=20
> >>> I'd like to arrive to some consensus on usage of \~ and '\ '.
>=20
> >> In manual pages, always use "\ " and never use "\~", period.
>=20
> > This is hugely overstated.
>=20
> >> The former is portable and the latter is a GNU extension.
>=20
> > ...that is over 30 years old and supported by Heirloom Doctools
> > troff for 17 years now, neatroff for about six, and your mandoc for
> > three.
>=20
> Actually, mandoc supports \~ at least since Sep 17 2009:
> https://cvsweb.bsd.lv/mandoc/Attic/chars.in?rev=3D1.1&content-type=3Dtext=
/x-cvsweb-markup

Whoops!  I regret the error, and will update groff's Texinfo manual to
correct this.

> > plan9port troff doesn't either, and its laudable introduction
> > of a man(7) MR macro notwithstanding, its activity level is
> > not high.
>=20
> There are people using Plan 9 for practical work though, they have
> even occasionally posted on the groff and mandoc lists, so that is a
> bit more of a problem.

I have no moral objection to submitting a patch; I don't know my way
around the AT&T troff code base (which Plan 9 troff mostly is) nearly as
well as groff, though, and, as ever, available time is scarce.  But, if
that's what it takes to get this escape sequence de facto standardized,
and no one else will do it, that will move it up the priority queue.

I don't expect full support to be trivial.  I don't think AT&T troff has
a concept of a space that is adjustable but not breakable.  If that
blows out the effort/reward estimate, treating `\~` as a synonym of `\ `
as mandoc does _should_ be trivial.

Yup, it looks like it is.

https://github.com/9fans/plan9port/blob/master/src/cmd/troff/n1.c#L515

> > I would pessimistically assume that most or all proprietary Unix
> > troffs branched off from V7 Unix troff or early device-independent troff
> > (maybe DWB 1.0 troff, ca. 1984 [?, 1]) lack support for `\~`.
> > https://github.com/n-t-roff/Solaris10-ditroff/blob/master/troff/n1.c#L7=
97
>=20
> That does sound likely.  As an example, look at Oracle Solaris 11:
>=20
>    > uname -a
>   SunOS unstable11s 5.11 11.3 sun4u sparc SUNW,SPARC-Enterprise
>    > printf "a\\\\~b\n" | nroff | head -n 1
>   a~b
>    > printf "a\\\\~b\n" | groff -T ascii | head -n 1
>   a b

Yes.  The rule is, if no semantics are defined for the function selector
(the character after the escape character), then the character is
treated as if it were not escaped.

> > I further note that groff has a long tradition of inclusion in BSD
> > Unix, https://minnie.tuhs.org/cgi-bin/utree.pl
> > ?file=3DNet2/usr/src/usr.bin/groff/VERSION
>=20
> Yes.  Cynthia already considered dropping support for Kernighan's
> troff, but the CSRG vetoed that.  Inclusion of groff wasn't
> controversial even at a time when groff didn't have its own version
> conrol yet.

It seems strange now how revision control ever seemed like a luxury.
For a few years I maintained Debian's XFree86 packages, which had
_megabytes_ of patches on top of upstream, without using SCCS or RCS or
CVS and even without a tool as nice as quilt.

I was completely insane.  On the other hand, it trained me to be pretty
careful.

Eventually, I acquired sanity and started using Subversion.

> Frankly, i have no idea how to estimate the number of actively used
> installations of Plan 9, Solaris (any version), and possibly
> additional commercial systems like AIX and HP-UX, or how to check
> what the latter support.

Users/maintainers of these systems have to get involved and speak up.
There is an unbounded quantity of Russell's Teapots labeled with names
of Unix variants that have gone defunct.

Without evidence, we must assume their numbers are too small to serve as
a gate on development.

That said, it remains polite to document changes that would affect them.

> There might be more systems out there parsing manual pages (not
> necessarily full-featured roff(7) implementations like those
> you listed), but providing specific evidence of such systems
> would likely be my job to back up my advice.  I'm not searching
> for them right now because we already have a few relevant examples.

plan9port's troff seems like the only case for which we have concrete
evidence, and Russ Cox has already been a pleasure to work with.

I don't know that any user of OpenSolaris/Illumos troff has ever spoken
up on the groff mailing list, which in spite of its
implementation-specific name seems to be the water cooler for what
remains of the global *roff community.

The good news is that, both being descended from AT&T troff and, from
what I've seen, neither having been re-architected, if someone comes up
with `\~` support for plan9port troff, I predict that it will be
mergeable into OpenSolaris/Illumos troff without much difficulty.

=2E..especially the trivial `\ ` synonym version discussed above.

> Even authors might disagree which is more important:
>=20
>  (1) The typograpical difference between "\~" and "\ "
>      in PDF and PostScript output of manual pages.
>=20
>  (2) Correctly rendering whitespace on Plan 9, Solaris,
>      and likely some other systems *at all*, for any output mode.
>=20
> I suspect that many would prefer (2) - of course, that claim is hard
> to quantify.

Another thing to consider is how bad the damage to comprehension is if a
tilde shows up in place of a space.

In a prose phrase, it is likely to be distracting and annoying but will
not be a barrier to comprehension.

[from groff_diff(7):]
  For example, if the current font is\~1 and font position\~1 is

In synopses of commands and language features (like *roff requests or
macros), I think anyone already familiar with Unix command lines or
*roff languages, respectively, can still push their way past it, but it
is worse.

[from gdiffmk(1):]
  .RB [ \-a\~\c
  .RB [ \-c\~\c
  .RB [ \-d\~\c
  .RB [ \-x\~\c
  .BI \-a\~ add-mark
  .BI \-c\~ change-mark
  .BI \-d\~ delete-mark
  .BI \-M\~ "mark1 mark2"
  .BI \-x\~ diff-command
  .BI \-x\~ diff-command

[from groff_diff(7):]
  .BI .chop\~ object
  .BI .class\~ "name c1 c2\~"\c
  .BI .close\~ stream
  .BI .composite\~ glyph1\~glyph2
  .BI .color\~ n
  .BI .cp\~ n

The tilde showing up in boldface would be especially disappointing.

On the gripping hand, such aggressive use of `\~` is much more often
seen in groff man pages than in (any?) others, and groff man pages can
be expected to be formatted with groff or another `\~`-recognizing
formatter much of the time.

> It would probably be good to arrive at a consensus recommendation
> for such cases because many manual page authors probably have little
> interest in judging such questions themselves.  Consensus seems
> hard to reach though.  So maybe the best we can do is to simply
> state the fact that \~ is still not supported by a few not very widely
> used, but still somewahat significant roff implementations like Plan 9
> and Solaris, even though that forces authors to draw their own
> conclusion.

I could easily copy the (now-corrected with respected to the age of
mandoc's `\~` support) material about this escape sequence from our
groff Texinfo manual to groff_man_style(1), where the "Portability"
section quoted earlier in the thread is housed.

As with the uptake of groff man(7) extension macros (be they 15 years
old or more recent), a software project's documentors may be better
placed than we are to assess the formatting capabilities of their users.

Regards,
Branden

--bzmt4bqus73ma56y
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmL2z9IACgkQ0Z6cfXEm
bc6LwQ/+MfgMLCj3KbRrTa9eclPBsQZSHXbNanM/OELu17SJsuIvrl5K0kqQsFgQ
6aAxo6ekZbteZhED/FK5kDa0EKLOyB84mzi7wYNHaDtrcry2klZuPu/bZh6+V015
ahg2TFJW5qRQQumZTBsrQJQY/GYwuGbiHTOnn83JZjJSj2LJRIKnkRAcKXjl4qqt
0KTkQAuPddqgCFEMIA0RbDdgscfWicF/Vq9KFHLU3bhFP/YAeQAKwieT8hhzC28d
Hh0FcvqxCB7cJl2ceM5fHneyOqsHQl9xzGSN0Sj1eM+SCpgZMmsjWKwPOFZj4gHq
u69AkWKGan96DTB7XnxvkzRcUu5LZUoLQRUkYBhYE4nPqH7DxeMfMw8s747ra5+/
t4jrcPAoUgyRanclg0HBsUW49mU6amNlNszw8MzKp03XUCHNLHpZh3g0jOct9cHO
04gGbCJF9DqzZrxNYCYo+zmemMfM8ynrDl6f+XV9YtX3a4Zm3KfPyRVT2o0DnTA/
+1BrqX86WQw6L8PlwOVS/G/dzg0yb4ygmj3m3cNQ/tsNc1mswLbCFJHJ2+F3XKUA
aU5/HM4ees8umrdtz3ImWl0ZQpihFajK4BBIOR4aB8o70NjsNhTmPQSLTw3WufDR
8KCHYYln7C10M6ak+b9BtIaasBbjev/1x51XMC1jt+XQsrCy+oo=
=FYgg
-----END PGP SIGNATURE-----

--bzmt4bqus73ma56y--
