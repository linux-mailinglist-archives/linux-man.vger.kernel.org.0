Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 967B33F5D49
	for <lists+linux-man@lfdr.de>; Tue, 24 Aug 2021 13:47:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234787AbhHXLr5 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 24 Aug 2021 07:47:57 -0400
Received: from 139-28-40-42.artus.net.pl ([139.28.40.42]:36834 "EHLO
        tarta.nabijaczleweli.xyz" rhost-flags-OK-FAIL-OK-OK)
        by vger.kernel.org with ESMTP id S236531AbhHXLrz (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 24 Aug 2021 07:47:55 -0400
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 0126A360F14;
        Tue, 24 Aug 2021 13:47:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=nabijaczleweli.xyz;
        s=202006; t=1629805630;
        bh=eb/x29apXen89z6meJu8Fc4ba6U/7+qimyfudHhZV0w=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=Zp7r/8ElWUPtEMxgQiaaOP1jllDjb1WW4V6Ap64S8qrGy8QkI9dV1NafsGfNmh6Mm
         QoGHVFLx2LrSl+KcKLtcQoxeKlQdxfR1EGnYKFB/ByuJ9+iWiLhT+f1XHq0tW10idQ
         1+bI+WWb/eWNiLaVL/zwivwkzU5amzvTmmbtsK+Fyb3Du30QZJgnqv+utesUEDT2Ad
         7B6yQodxrknAYLUgPtIa8wFlc96/lvs9SUr3uBS90EMbjpHSVTrxEDa2xsbAjBm9rC
         9yxl0pg5/DGeIj9pdwP79Lfzbn2ViYsMXMj+/nuRocXnqnG1kPScf3JDrm0p8cOFrT
         /KQtSXbymT5vQ==
Date:   Tue, 24 Aug 2021 13:47:08 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: Re: [PATCH 2/2] alloca.3: rewrite NOTES
Message-ID: <20210824114708.2332yac2ssm4g33p@tarta.nabijaczleweli.xyz>
References: <ed9ad00910f264f8f9ecd266d398522077f4548f.1629752426.git.nabijaczleweli@nabijaczleweli.xyz>
 <c08c2bb9ccbbc097166f4815f8dea420e5fe1044.1629752426.git.nabijaczleweli@nabijaczleweli.xyz>
 <d2c606ce-468d-8545-30cc-d8dabeb48296@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="gdz5p5meop5jmp74"
Content-Disposition: inline
In-Reply-To: <d2c606ce-468d-8545-30cc-d8dabeb48296@gmail.com>
User-Agent: NeoMutt/20210205
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--gdz5p5meop5jmp74
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi!

On Tue, Aug 24, 2021 at 11:50:57AM +0200, Michael Kerrisk (man-pages) wrote:
> On 8/23/21 11:01 PM, =D0=BD=D0=B0=D0=B1 wrote:
> > Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.=
xyz>
> > ---
> >  man3/alloca.3 | 66 ++++++++++++++++-----------------------------------
> >  1 file changed, 21 insertions(+), 45 deletions(-)
> >=20
> > diff --git a/man3/alloca.3 b/man3/alloca.3
> > index 5bceeabe1..133ca6ab3 100644
> > --- a/man3/alloca.3
> > +++ b/man3/alloca.3
> > @@ -84,20 +84,14 @@ T}	Thread safety	MT-Safe
> >  .SH CONFORMING TO
> >  This function is not in POSIX.1.
> >  .PP
> > -There is evidence that the
> >  .BR alloca ()
> > -function appeared in 32V, PWB, PWB.2, 3BSD, and 4BSD.
> > -There is a man page for it in 4.3BSD.
> > -Linux uses the GNU version.
> > +originates from PWB and 32V, and appears in all their derivatives.
> The patch subject says "rewrite NOTES", but here you change=20
> the CONFORMING TO. For the record, I think the change is fine;
> there was too much info here that isn't really helpful.
> But, I would prefer this change as a separate patch, with
> a commit message that notes that the CONFORMING TO is
> overly complex, so let's simplify.
Will do.

> > -translates calls to
> > +.PP
> > +By necessity,
> > +.BR alloca ()
> > +is a compiler built-in, also known as
> > +.BR __builtin_alloca ().
> I'm not convinced about this change, or what follows. At the
> least, it needs some explanation.
How'd you mean? I think I'm missing what there's to be explained
in this particular hunk.

> > +By default, modern compilers automatically translate plain
> What does "plain" mean here? It is not explained.
How about "By default, modern compilers automatically translate all
uses of alloca() into the built-in, but this is forbidden if..."?
=20
> >  .BR alloca ()
> > -with inlined code.
> > -This is not done when either the
> > +calls, but this is forbidden if
> Why lose the piece "with inlined code"?
Because... it isn't inlined code (indeed, code at all)?
It's an intrinsic. If you don't include alloca.h, aliasing alloca() to
__builtin_alloca() is also 100% magic.

PWB and 32V do actually implement this as a libc function and raze the
stack frame (PWB even pre-emptively crashes, as a feature, if it OOMed),
but those days are long gone.

> And why the word "forbidden"? Who forbids it?
The standards that are outlined in the following seven words.

> >  .IR "\-ansi" ,
> >  .IR "\-std=3Dc89" ,
> >  .IR "\-std=3Dc99" ,
> > -or the
> > +or
> >  .IR "\-std=3Dc11"
> Okay.

> >  .PP
> > -.in +4n
> > -.EX
> > -#ifdef  __GNUC__
> > -#define alloca(size)   __builtin_alloca (size)
> > -#endif
> > -.EE
> > -.in
> > -.PP
> > -with messy consequences if one has a private version of this function.
> > -.PP
> > -The fact that the code is inlined means that it is impossible
> > -to take the address of this function, or to change its behavior
> > -by linking with a different library.
> Why remove the preceding piece? This should be clarified in the=20
> commit message.
The first bit is glibc guts, and has no place in documentation of
alloca(3) as an interface =E2=80=92 this is noted.

The latter paragraph just moved down.

> > -.PP
> > -The inlined code often consists of a single instruction adjusting
> > -the stack pointer, and does not check for stack overflow.
> > -Thus, there is no NULL error return.
> Why remove the preceding piece?=20
Because there /is/ no code, inlined or otherwise. The stack pointer or
lack thereof is beside this point, and the rest of this paragraph
lives in the hunk below.

> > +The fact that
> > +.BR alloca ()
> > +is a built-in means it is impossible to take its address
> > +or to change its behavior by linking with a different library.
> >  .SH BUGS
> > -There is no error indication if the stack frame cannot be extended.
> > -(However, after a failed allocation, the program is likely to receive a
> > +As it's untestable, there is no error indication if the allocation
> It's not clear to me that adding "As it's untestable," really helps=20
> the reader. Why do you think it does? (This should be explained in
> the commit message.)
I kept it from the hunk you outlined above, I can drop it, but it is an
important difference from most regular allocators, which are able to
detect an OOM condition. By definition, you have stack until you hit an
unmapped or non-R/W-mapped page. How about something like
"Due to the nature of the stack, there is ..."?

> My feelings about this patch:
> * There's good stuff here, and stuff that I am less sure of.
> * This should be *at least* 2 patches, but possibly 3 or 4.
> * We need some meaningful commit messages. Your two line commit
>   message is too vague; think of people some years from now
>   looking at these changes, and asking: "what was the author's
>   motivation for these changes?"
>=20
> Would you be willing to rework this patch in the light of=20
> the above please? Breaking it into a few pieces (if you can)
> would make it much easier to wave some pieces through and
> discuss the other pieces in detail.
The CONFORMING TO split is trivial, but I hardly see a good cleave line
for anything beside it. If we can arrive at a consensus on some of the
bits you found problematic in this version, I'll split it two-fold and
resend with the new wording and commit message, then we can cleave it
further if you'd like?

Best,
=D0=BD=D0=B0=D0=B1

--gdz5p5meop5jmp74
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmEk3DoACgkQvP0LAY0m
WPHNNxAAu8sMqIwkE/9UU01TTqGtl9DLr0hRpZDStWyJ+rbCNRlUXla7RfNa88Sb
3vUlzO/HmwGOR08BfsFcSHJQxxi2MKkoKfWM7JQweUkAb2tH5Is+xDlPjxGMJX4r
WMHsuxLvfq58yYsjKDz44Pla55qjqZf3VLfQOnPzo136x/z6OUt2ZV4o84ZB6Jbm
wlrcDkcLaW9amFJ74M1yRA+nYyGLEBc7/og7gfKqplmA/dP7C/e2H1KNXMOsznXz
oZPKdqI6SGIx5Q+qdbaJuWpISQYD48QG4M48Z8ttiAsoAWRXvj1AADWe/hO5X875
M14KHKco6XO4HRnnq54wYsxrZgbLzA681Nr6AnpkDWJE0ipTPaVFkYspqUP/MeGb
i5/c4n/YWSeit2jg5zD/Zx0idzqG8/NhHvL++f7d7UgWNtpCNi5XRtunc3cKtta0
2cC3GVA/pU/3YjCun4mZ3KDjZihS/1MczbC79XWFVEppIT75g5HzXEiSwbmcf1jF
yh7TGfYD1MmD60Lc106XUDWc8HugAyhzrgEyrfnYNeMMtv33cSlUgZoe8qIFvfBK
PXEdvvm8lMPzpgVHj+9TT9/dRwNW26KDQJQvE270EVe5bYwkok7Hm2yRyLXYyj/d
stnDlv5gudc20KHzMgFOx7s4mEQ3qbyc2dMhQuFRKUdJdya0B9s=
=lYEe
-----END PGP SIGNATURE-----

--gdz5p5meop5jmp74--
