Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 28B4841005E
	for <lists+linux-man@lfdr.de>; Fri, 17 Sep 2021 22:45:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238758AbhIQUq4 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 17 Sep 2021 16:46:56 -0400
Received: from 139-28-40-42.artus.net.pl ([139.28.40.42]:49138 "EHLO
        tarta.nabijaczleweli.xyz" rhost-flags-OK-FAIL-OK-OK)
        by vger.kernel.org with ESMTP id S243655AbhIQUqz (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 17 Sep 2021 16:46:55 -0400
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id D8321360272;
        Fri, 17 Sep 2021 22:45:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=nabijaczleweli.xyz;
        s=202006; t=1631911531;
        bh=pKaRj+U1NHGMmsUzdaXamJrtGr7abACFkmtmVnpXf0E=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=lQPkZWD63FaFHGpTkSzA+Tk3K6jTB6ZPLj/egTKuOTK5N8oMdRzGlz/HVhOnPF9Kg
         M9mLrnxoqHqqOCTDkMVx0ySJY7nLTDT2uO3RYaT7FjI41GdjxefkqBSCjbel8V7oB4
         4oH8uwirGp1KvVYbKguOiy+6fdr12EVU8kVNOhGn5Xl7N0/pLdLo5KZyZd5DqIB0tv
         vPCmMKutZluo4dS8B2H97ntiLZrpsm6XOnHHfFNgcR0MjUefhFf1xDCNzWM+v76q1G
         ecXPALqTjEPrE5rc8FP0BD8KU/Ev3R+MrWYxin79dHdq/MasXy0nmzUgDvP08d2+b9
         crUfyghtliYyQ==
Date:   Fri, 17 Sep 2021 22:45:30 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org,
        "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>
Subject: Re: [PATCH v2 4/5] alloca.3: remove GCC faffling from NOTES
Message-ID: <20210917204530.3i2ctkt52gyfu7x7@tarta.nabijaczleweli.xyz>
References: <ed9ad00910f264f8f9ecd266d398522077f4548f.1629752426.git.nabijaczleweli@nabijaczleweli.xyz>
 <cover.1631622750.git.nabijaczleweli@nabijaczleweli.xyz>
 <fadbb957726f6d70ec87ca7f27fdf41c3042533e.1631622750.git.nabijaczleweli@nabijaczleweli.xyz>
 <15f837fb-1212-d974-5102-7b8075153761@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="7ccinluuff7mn32i"
Content-Disposition: inline
In-Reply-To: <15f837fb-1212-d974-5102-7b8075153761@gmail.com>
User-Agent: NeoMutt/20210205
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--7ccinluuff7mn32i
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Sep 15, 2021 at 09:48:14PM +0200, Alejandro Colomar (man-pages) wro=
te:
> On 9/14/21 2:41 PM, =D0=BD=D0=B0=D0=B1 wrote:
> [...]
> > +is required, lest a symbol dependency be emitted.
> Sorry that I'm not a native English speaker.  I tried to learn what "lest"
> means, but it's difficult to me, and I'm not sure I understand this line.
> Could you maybe please reword it?  :)

I stand by the "lest" version because it gets less noodly,
but rewritten as "in which case a symbol dependency will be emitted
unless <alloca.h> is included", see updated scissor-patch below.

And, well, neither am I, but that's hardly here or there.

-- >8 --
Chunks of glibc headers have no place in documenting an interface,
and (__builtin_)alloca() is an intrinsic, not code; those days are,
thankfully, long gone

Also, clarify standards behaviour (and remove the (outdated!)
list of cc(1) switches) regarding when alloca() is allowed to not be
ODR-usable

Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
---
 man3/alloca.3 | 52 +++++++++++++++------------------------------------
 1 file changed, 15 insertions(+), 37 deletions(-)

diff --git a/man3/alloca.3 b/man3/alloca.3
index 20761b079..913cbe56a 100644
--- a/man3/alloca.3
+++ b/man3/alloca.3
@@ -122,46 +122,24 @@ Do not attempt to
 .BR free (3)
 space allocated by
 .BR alloca ()!
-.SS Notes on the GNU version
-Normally,
-.BR gcc (1)
-translates calls to
+.PP
+By necessity,
 .BR alloca ()
-with inlined code.
-This is not done when either the
-.IR "\-ansi" ,
-.IR "\-std=3Dc89" ,
-.IR "\-std=3Dc99" ,
-or the
-.IR "\-std=3Dc11"
-option is given
-.BR and
-the header
-.I <alloca.h>
-is not included.
-Otherwise, (without an \-ansi or \-std=3Dc* option) the glibc version of
-.I <stdlib.h>
-includes
+is a compiler built-in, also known as
+.BR __builtin_alloca ().
+By default, modern compilers automatically translate all uses of
+.BR alloca ()
+into the built-in, but this is forbidden if standards conformance is reque=
sted
+.RI ( "\-ansi" ,
+.IR "\-std=3Dc*" ),
+in which case a symbol dependency will be emitted unless
 .I <alloca.h>
-and that contains the lines:
-.PP
-.in +4n
-.EX
-#ifdef  __GNUC__
-#define alloca(size)   __builtin_alloca (size)
-#endif
-.EE
-.in
+is included.
 .PP
-with messy consequences if one has a private version of this function.
-.PP
-The fact that the code is inlined means that it is impossible
-to take the address of this function, or to change its behavior
-by linking with a different library.
-.PP
-The inlined code often consists of a single instruction adjusting
-the stack pointer, and does not check for stack overflow.
-Thus, there is no NULL error return.
+The fact that
+.BR alloca ()
+is a built-in means it is impossible to take its address
+or to change its behavior by linking with a different library.
 .SH BUGS
 Due to the nature of the stack, it is impossible to check if the allocation
 would overflow the space available, and, hence, neither is indicating an e=
rror.
--=20
2.20.1

--7ccinluuff7mn32i
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmFE/moACgkQvP0LAY0m
WPFReg//R/6xNLVOgal8lfrmxL6MFASH9G0mj0oPUzXFMvTdHaTdntt04EI9mzwZ
tzm421mT3750zlts+Pn38RH1UH+uIWgbXYzFHs0q9UFtu0pq5dikTlRf0sh6+Eiu
tnhh7kGdiEbNfvdS+Y9ucg8fiqtRmjq05qIK1RtFmyhEAFpCg39UXciyWRIRF00l
AqHlDGV+SgXIrDwSyb+0a0MpO8LBPncMfUA1cOmRwT2ZwhFrQZLOiIn9Tu4csa9m
QbRgcpnhkyJp49Ykfp1jRHDKsoLzcCd59lX4nOqWjI/VviIa/P96DpT+dTsJLMwF
DtjC15NyiLmcXFHvhl3MEm9lQK0eCPQfRfCUMv5dIKR/RKXaUqlbRcJEJ9oSlMLm
4UVzHHy2Lu2a4qe0+npdnrw/U0sJY1iXEuhCyWtg+E1qvFnduRfUlTkM14eO+TMp
SC9C/MkDVDwAcrymCAZ8NkQD+FT8jA/jOo5gRfBwjO1NMV9BPACsAsPtZ1DqA/Me
buTLHZdzfa1I0tJuIA0uUJgAQ7Vp3QMrXRgfHroLX2KGrBLt/AC7szSwVLtFG2y1
5B2w0zKtKOqprf5rdClp5VcE4tnB2XNsNPb0B3BSQtmKqeS+5C8Mk9Y6s2KAm/Ta
/kUaVvGOjXKzJL1W0yyb4anol0yFaq9//JKOD9HSjbKS+KYG51A=
=Umnm
-----END PGP SIGNATURE-----

--7ccinluuff7mn32i--
