Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C8AD63DCB43
	for <lists+linux-man@lfdr.de>; Sun,  1 Aug 2021 12:52:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231527AbhHAKwI (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 1 Aug 2021 06:52:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45856 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231473AbhHAKwH (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 1 Aug 2021 06:52:07 -0400
Received: from mail-pl1-x634.google.com (mail-pl1-x634.google.com [IPv6:2607:f8b0:4864:20::634])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6AAA4C06175F
        for <linux-man@vger.kernel.org>; Sun,  1 Aug 2021 03:52:00 -0700 (PDT)
Received: by mail-pl1-x634.google.com with SMTP id z3so15059321plg.8
        for <linux-man@vger.kernel.org>; Sun, 01 Aug 2021 03:52:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=AE1OVevfFc0bOSYNJZNcEnOOuIgd6B40Q0wBLAeQVXg=;
        b=S0g5+TS0UplNXNRNWs6PUriREGCX1qZBYpzlaTs5iKVoVhSDaZ52/UybZpqPHCLWE6
         xIqbGsXafpNAsX6nUq5mnZRQd2TzQ6HTVMLX6E05QmjG1KtGA3KuGkEgDdP/38xSUsGB
         z60YsfVwYTNqB2UsqUTwk3jSj6b+mrb/lgVLOJdLfSwBsVMmndXbcLJMdiaCpS3Qx6GO
         eX0mtl/ibyAE/87cgFXqZLIp6oIFgPLlGf5AeQOgjyToUxFDqebzpA5IwQZ2HNmZdYXe
         eBCcZUBKNUEQBcTeUuDOhSIeXmIiBt7x/+S2Xth6Xl0Mwba7q6yoEfgvkU1+nhlvYpSb
         d0zA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=AE1OVevfFc0bOSYNJZNcEnOOuIgd6B40Q0wBLAeQVXg=;
        b=M1B13YMWswkLduMmJRUOXawb3wnSI1T3s9ykw/sZ6FRZjnHikDQv7d/lxtwFiyfd/C
         aBXlEZ6kqlAZSe1l96WEG9ldNpGRAja2tIzyUjFanZnWt7JbqsYV7PesFc8xZpP4KzPw
         2QA7rpZCSepHggD3K+OYL8ODr/jpnRn6OalAZDEf44gLsxuUSkLYn98tWUet8gWA2JhN
         FZqOW/DTE6hl9Df+HWei51Y0LTCiq326OflGOP0Jd0Njmv3weQo/39QGWqUTsdRG38e6
         2mjWbUd/jWu+qR4r4U5bAXDg11O+xIoQYwHSUxXby1mgTJInV4QqRHNXsWa5n0W1ZC+q
         pqkg==
X-Gm-Message-State: AOAM532Ja3bxtOgHqJD02lwCH2k++5A1LPSAFSbZajNhJ+nhJbGc2+V5
        VFqtcyYULQ9La1x5TwvJpBw=
X-Google-Smtp-Source: ABdhPJyiONz/hP39FukFgmCaEMdvznRwanG9NM9ONth1UpfGCmEbutaAxjO9OLqcuMNnMDmI2QtK/w==
X-Received: by 2002:a17:902:6903:b029:12b:ab66:1248 with SMTP id j3-20020a1709026903b029012bab661248mr9926189plk.69.1627815119905;
        Sun, 01 Aug 2021 03:51:59 -0700 (PDT)
Received: from localhost.localdomain ([1.145.37.91])
        by smtp.gmail.com with ESMTPSA id y10sm7326415pjy.18.2021.08.01.03.51.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 01 Aug 2021 03:51:59 -0700 (PDT)
Date:   Sun, 1 Aug 2021 20:51:54 +1000
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: Re: [PATCH v2] mount_setattr.2: New manual page documenting the
 mount_setattr() system call
Message-ID: <20210801105151.qtjjc7wly7ck6kme@localhost.localdomain>
References: <20210730094121.3252024-1-brauner@kernel.org>
 <9ba8d98e-dee9-1d8d-0777-bb5496103e24@gmail.com>
 <20210731094311.twnwu553i7hzr5md@wittgenstein>
 <1ca74dab-bda4-5105-6e18-3764ee607761@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="6ch6bk5s57gi5feb"
Content-Disposition: inline
In-Reply-To: <1ca74dab-bda4-5105-6e18-3764ee607761@gmail.com>
User-Agent: NeoMutt/20180716
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--6ch6bk5s57gi5feb
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

[CC list brutally trimmed as usual]

Hi Alex!

At 2021-07-31T14:30:49+0200, Alejandro Colomar (man-pages) wrote:
> On 7/31/21 11:43 AM, Christian Brauner wrote:
> > While I'm respectfully ranting, I'd like to say that in an ideal
> > world we would end up writing rst in the not too distant future just
> > as we do for the kernel documentation.
[...]
> > This is no comment on your work at all! But groff is a __giant__
> > __giant__ pain imho.
>=20
> Agree. :)
>=20
> Especially since it's something that you don't usually use, except
> when writing manual pages, which is not something that you do everyday
> (unless you're maintainer of the man pages, that is).

I get frustrated by groff and the man(7) macros, too, though much less
often than I used to, because I've learned enough that the design
principles have become clearer to me, and because when I find actual
bugs, often I can fix them.

I've ended up as a groff/roff/man(7) advocate not because I think
they're perfect but because having watched the development of Unix/Linux
documentation since 1996 I can attest to the truth of the following
stone tablet.

https://xkcd.com/927/

> BTW, I started using groff_man(7) to write other documents of mine
> replacing LibreOffice (legal documents, for example), and it's really
> nice, once you truly understand the language.

Wow!  I wouldn't do that and I've revised nearly every line of groff's
man(7) macro package.  I mean, I _could_ if ordered to, but there's a
superior alternative right next door, called ms(7).  It's what most of
the classic Bell Labs Unix white papers were written (before 1980 or so,
when the Labs started to adopt mm(7)).

Since attaching PDFs to emails destined for linux-man meets with an
ill-fate, hit me up if you're interested in a 22-page document called
ms.ms.  It's Larry Kollar's "Using _groff_ with the _ms_ Package".  He
originally wrote it in about 2001; he took it out of mothballs at my
request because the groff team decided it would be a good idea to
document the macro package using itself (much as groff_man_style(7)
tries to).  (We'd had it documented in the groff Texinfo manual instead,
which some distributors won't ship because it uses some obnoxious
features of the GNU FDL that are not DFSG-free.)

For the past several months I've been revising every section of it to
bring it up to date (and, as it happens, research the history of ms in
ways that were much harder to do 20 years ago, in the days before TUHS).
I've gotten some good feedback on it so far, and I aim to put my name on
it as co-author once I've finished revising every section.

A _lot_ of what you know will port from man(7) to ms(7).  An exception
I'm sorry to point out is the font styling macros, which share some of
the same names but have different semantics with respect to positional
arguments.  You'll also see some features, like keeps, and may wonder,
as I do, why we don't have them in man(7).

Anyway, hit me up if you want this document and I'll shoot it your way.
Or if you have Groff Git HEAD checked out, you'll find it you can build
it yourself.  :)

> > I genuinely like writing documentation because it gives me time to
> > think about the semantics I put into code.  But I hate writing
> > manpages or rather dread writing them because I know I'm going to be
> > losing hours or a day not on content but on formatting.  And then
> > rounds of reviews with subtle differences between .I and .IR and
> > whatnot. As a developer and maintainer I can't usually afford losing
> > that much time which means I postpone writing manpages especially
> > complex ones such as this.

Font styling bedevils nearly everyone to some extent.  If it's
excessively frustrating, I would use only the .B and .I macros on a
first pass, and let the formatter insert extra spaces initially.

Let's take the instant case for an example.  You knew you wanted roman
parentheses and "struct mount_attr" in italics.  So type exactly that,
hitting return every time the font needs to change.  It also harms
nothing to put all the arguments to a single-font macro in one set of
double-quotes, making one argument to the macro; this is similar to the
shell.

(
=2EI "struct mount_attr"
)

Later, when the page is nearing completion and it's time to boil off
those pesky extra spaces, you can return to this trio of lines, and
think:

"Okay, I need <R>oman first, then <I>talics, followed by roman again.

Roman, then Italics.
=3D           =3D

That means you want the "RI" font alternation macro.

=2ERI ( "struct mount_attr" )

This condenses it into one line, with a roman left parenthesis, the data
type in italics, and then a roman right parenthesis.  No extra space.

man(7) only gives you three font styles to work with, so there are six
font style alternation macros.

=2EBI
=2EBR
=2EIB
=2EIR
=2ERB
=2ERI

They all work precisely analogously.

Does this help?

In revising the groff man pages over the past four years I've learned to
my shock that even there, some page authors seem not to know that all
six of those macros exist.  They tie themselves in knots trying to get
what they want with a subset, and the result is usually ugly at least in
source form--sometimes in formatted output, too.

> > I already tried to make sure to use semantic newlines. I'll try to
> > go over this once more now but I'm reluctant to send a v3 just
> > because of that in case I should miss any. Especially since I've
> > just recently seen manpages get an ack where that requirement wasn't
> > fulfilled.  An automatic formatter for this scenario would be
> > appreciated.
>=20
> Okay,  I don't know how to write such an automatic formatter (and also
> don't have the time to write such a complex thing), but maybe Branden
> knows if such a thing exists.

I've heard good things about pandoc but have not tried it myself, let
alone carefully evaluated the quality of its man(7) output.

Frankly, the quality of much auto-generated man(7) output is abysmal and
no doubt contributed to the macro language's poor reputation.  People
view the source of a man page produced by docbook-to-man, for example,
and rightly recoil in horror.  Unfortunately they don't understand that
they're looking at the *roff equivalent of Obfuscated C.

Just today I was working on the "Notes" section of groff_man_style(7),
and came across a generator I'd never heard of called "Ronn"[1].  It's
been defunct for many years, but the lousy man(7) markup in produced in
pages like texdoc(1) has persisted long after it.

But it's better than docbook-to-man.  What wouldn't be?

Regards,
Branden

[1] https://github.com/rtomayko/ronn

--6ch6bk5s57gi5feb
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmEGfL8ACgkQ0Z6cfXEm
bc4Lbw/9FnRvPf4za5sYVtsVGOenB+d0enQcX5jN/7T1kuhVU6cAtQU57r5SCbPj
80tJalcgKhsMKwl4yAPsyp919ZMa/I57W/MaXKf7IwYtQU0Kq6ycMLkfoGO6TH27
0ZGuCLsdh0cTYSQJAoEkatKnkpyG55Wd/DFc9DACTHu5TULgPdI5HrwhKOzt8QfZ
YAG6HkegswgdUZltUFGN2k9LU4RZ05V7HMVAhkIr4P+hwrkQeUYLjY8I7iVP93d8
7n/0tPpszXpfOWlh36EPZ54mEjRCr0alBm0gqqo/PnYtUeKi+33zUZZUHviozkZt
ZV1L/4Kg+WwEKxahJk8HW0Lq2o1VlqTUcPGWzDgVpEEZJulDJihiOrQViawAmluw
ZPk4A3ukNSALHXHMNqrw30sxINMOE1U2g1AsLI4DyEBLMwG6TkatNY6g9zmFkEDO
Yso0oFa5Ka0WePFdtVdzlnDbqsy4gR8Iyj/WuNSaAn3uzFjlsqKLJqjqzMsCB4xM
mQn8Il+lo/Ku3JpKsasLjtWTy/Qw11mHXcjuQViWIE5vvz3aiqMX9NAFEyOpZebS
S4hUE7da9F6aFDE0pQWLikidAHzQ04LHWj4wB9FNzkYmFnFxUh0IuDIFwG0HXZ2w
M7JC9Pgm6qNVfzSsXCiRHAJ8347l1w2LDoZ2OsEsjkOzKUOpGaQ=
=vbBd
-----END PGP SIGNATURE-----

--6ch6bk5s57gi5feb--
