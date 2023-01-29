Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B697968003B
	for <lists+linux-man@lfdr.de>; Sun, 29 Jan 2023 17:29:56 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234123AbjA2Q3y (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 29 Jan 2023 11:29:54 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41118 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232771AbjA2Q3y (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 29 Jan 2023 11:29:54 -0500
Received: from tarta.nabijaczleweli.xyz (unknown [139.28.40.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 4D68A1E9E1
        for <linux-man@vger.kernel.org>; Sun, 29 Jan 2023 08:29:50 -0800 (PST)
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 09ABE356;
        Sun, 29 Jan 2023 17:29:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202211; t=1675009786;
        bh=ONMrxs22veDXrs26OKnnOl1PRWkvO8oiwO+ryHGIjfE=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=IiPlAl0iJXHIHlhVXNB0E8SYabxM4Qoo+WYzECxh7BY+fgKHHS/9kZw6pdmouNYb5
         rff2rDiletqYHV8UztEnis3BhcL7XsnpbvkoW8DP5kz7uDptBE6rSUvA73f6pvvOaj
         ZdeyBSgvMb2BjIllmOpou/v11kEHacy9reGVPopgK5tihxOABh2RPL0dlF8vAulOrY
         /8+328c3xM32ii0T4p5ksQMv6xRXnl7CtQQLNq4/dDb4PW/Za6ZdcnDN8bqYVOu8eZ
         C3rF38Sys8s8GFoHYb8B6FH3m/XXcdRTQkRv/jMKARbr6IegPp+WIKroQQZ5ZP3iX1
         yA9yX7qtzWVzQ==
Date:   Sun, 29 Jan 2023 17:29:44 +0100
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: Re: [PATCH 1/3] timespec.3type: tv_nsec is impl-def-type, glibc
 llong not a bug
Message-ID: <20230129162944.353r46pnt6fbcqeg@tarta.nabijaczleweli.xyz>
References: <4a67167df30db6019a6320dc92a953f9df3f4db2.1674915219.git.nabijaczleweli@nabijaczleweli.xyz>
 <cfda064c-b3f0-d541-bbee-e3a72c0b3cf3@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="vvmfw3hxjkgfq6tt"
Content-Disposition: inline
In-Reply-To: <cfda064c-b3f0-d541-bbee-e3a72c0b3cf3@gmail.com>
User-Agent: NeoMutt/20220429
X-Spam-Status: No, score=-0.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FROM_SUSPICIOUS_NTLD,
        PDS_RDNS_DYNAMIC_FP,RDNS_DYNAMIC,SPF_HELO_PASS,SPF_PASS,
        T_PDS_OTHER_BAD_TLD autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--vvmfw3hxjkgfq6tt
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi!

On Sun, Jan 29, 2023 at 04:48:04PM +0100, Alejandro Colomar wrote:
> On 1/28/23 15:17, =D0=BD=D0=B0=D0=B1 wrote:
> > This is in many ways a followup to the patchset that originally added
> > the BUGS sexion to timespec.3type, root msgid of
> >    <ec1dcc655184f6cdaae40ff8b7970b750434e4ef.1638123425.git.nabijaczlew=
eli@nabijaczleweli.xyz>
> >=20
> > For ease of reference, n3066:
> >    https://www.open-std.org/jtc1/sc22/wg14/www/docs/n3066.pdf
> > and the relevant part of n3091 (screenshot, it's a .doc):
> >    https://cohost.org/nabijaczleweli/post/922578-pog-pog
> What happened in the end with nsec_t?  Was it rejected, or are they still
> considering it?

n3066 (p1) was accepted, and it had nsec_t purged from n2878;
according to my archive, that's because
"nsec_t is only reserved in POSIX, not in C",
so introducing it would be a breaking change,
and it really doesn't matter
(and even my patience for standards processes is limited,
 especially when multiple Austin Group liaisons
 choose to die when you want something from them).

> > diff --git a/man3type/timespec.3type b/man3type/timespec.3type
> > index 7cd80ce86..ca5533814 100644
> > --- a/man3type/timespec.3type
> > +++ b/man3type/timespec.3type
> > @@ -16,14 +16,27 @@ Standard C library
> >   .PP
> >   .B struct timespec {
> >   .BR "    time_t  tv_sec;" "   /* Seconds */"
> > -.BR "    long    tv_nsec;" "  /* Nanoseconds [" 0 ", " 999999999 "] */"
> > +.BR "    /*\(da*/   tv_nsec;" "  /* Nanoseconds [" 0 ", " 999999999 "]=
 */"
> I'm tempted to merge this patch.  It's sooo qute /*=E2=86=93*/
>=20
> Please use the digit separator \(aq for the big number.
Applied.

> >   .SH STANDARDS
> >   C11 and later;
> >   POSIX.1-2001 and later.
> > +Prior to C23
> A comma here?
Sure.

> > +.I tv_nsec
> > +was
> > +.IR long .
> Please move this to a new VERSIONS sexion.
Added.

v2 with these notes and \(aqs in 3/3 in follow-up.

Best,
=D0=BD=D0=B0=D0=B1

--vvmfw3hxjkgfq6tt
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmPWnvgACgkQvP0LAY0m
WPHjbQ//dX042QLyq+HJDkCN6X9mS9ZZadBs2YcOl4O0kwilqaQ0LZwLmHhr1tzu
hZ7LwOBRQLBu1011nrGAD/N7iQhpZuJh8oqEMMntzZY1dJidiOP+PyzpGPxD4ebK
FaJct7ngVpH0OhCYWlK3/qZWd8WV5i2qEqn7JfqkzJhHPwUQSpeb9O/41AlcEKCO
dr6JlbI30d2+OP5XRCKkl395ah7b8Se239VLulYtl1DpHgU77YgAdUW/dpL6mgMr
V5EBpKjIydBGkbCUoP5LmKVW4i20bD0Pv72iOr4AN4Cx6Z2VIY4o3PCUmcBFULfE
293R89H7PFRgmqJlRj0ycByDqPVEj1cwNGXVWma08cPYLZiRlKNAUX2eARYBU0vE
vcQuXr7X82YAceo5gKzte8pmogJBvt6nTsQlsX9XuVD3pbjVXd0H9i53KBtmew3f
7wGHs6ZT9CO7ho3JSJDrCLhhqLLTgrQDZmbbswUACOuxeS9Xt4utpSqHC8OmB9Fe
IVb/u4YEJeii5b/BPhmHDEe/oRTbjTLti/BiAcRIR7bdj0Jw4ojWgF+pMvGlKN7r
xyxY7Ugq4fB9YvcTuBaiyULbjKeVDk8YgrPJPp13qS4olyHhe+hi1P8mwOda5bxy
ll+qcEm/s50KQVzqMqPoInEQtIr1hmmxQuCZosyVzLMQ3bEdiTY=
=wUoh
-----END PGP SIGNATURE-----

--vvmfw3hxjkgfq6tt--
