Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 213BF7D5AD8
	for <lists+linux-man@lfdr.de>; Tue, 24 Oct 2023 20:44:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1344042AbjJXSoe (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 24 Oct 2023 14:44:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40560 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1344188AbjJXSoe (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 24 Oct 2023 14:44:34 -0400
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 07486186
        for <linux-man@vger.kernel.org>; Tue, 24 Oct 2023 11:44:31 -0700 (PDT)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9772EC433C9;
        Tue, 24 Oct 2023 18:44:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1698173070;
        bh=3qY9XUYvWROEKksso6dghI7WtsgUfOnmwm8UM0idpAw=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=UsrOxJrf3AGhvqnd/GNhRm2ZLGEz7F3x8beBGcpbZIN4+XrmcBfgx41iMcn3A7NZ7
         G96YYM/QXI46Uom3NtHJ7+NgLVMWY6RSVyTIUee1oD0zM8PmCj7SDQaWmARzCsAYdw
         SOFxVAMsp0/DMAsHjd52GyQ0yWibv67f3kwApUfh2GPCRtcQhcAHN/tg8mgJFEl9pg
         pRFJ2ctZdnCaRP9MUJ4knzNazd2lmUUe2ggZIh3RDvUNqskr6683ZdY2E5thNQYqgK
         B2dSWSCyc1yb6U9ur62kEUgozcgHOoGRVHPL95BDSo/pTmql0vOpso/CQFEtrZkQNY
         WTGhOHKcSiV3Q==
Date:   Tue, 24 Oct 2023 20:44:21 +0200
From:   Alejandro Colomar <alx@kernel.org>
To:     Adhemerval Zanella Netto <adhemerval.zanella@linaro.org>
Cc:     Vincent Lefevre <vincent@vinc17.net>, linux-man@vger.kernel.org,
        GNU C Library <libc-alpha@sourceware.org>
Subject: Re: [PATCH] mcheck.3, mtrace.3: update examples for glibc 2.34
Message-ID: <ZTgQi4afYgYFzUBV@debian>
References: <20231024143144.76490-1-vincent@vinc17.net>
 <ZTfjnCHDc_meBr4S@debian>
 <8b505776-755c-42bb-8b8c-e6311a13f17b@linaro.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="dhPsJ9sY14ao1za4"
Content-Disposition: inline
In-Reply-To: <8b505776-755c-42bb-8b8c-e6311a13f17b@linaro.org>
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLACK autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--dhPsJ9sY14ao1za4
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Tue, 24 Oct 2023 20:44:21 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Adhemerval Zanella Netto <adhemerval.zanella@linaro.org>
Cc: Vincent Lefevre <vincent@vinc17.net>, linux-man@vger.kernel.org,
	GNU C Library <libc-alpha@sourceware.org>
Subject: Re: [PATCH] mcheck.3, mtrace.3: update examples for glibc 2.34

Hi Adhemerval,

On Tue, Oct 24, 2023 at 01:28:06PM -0300, Adhemerval Zanella Netto wrote:
> On 24/10/23 12:32, Alejandro Colomar wrote:
> > On Tue, Oct 24, 2023 at 04:31:17PM +0200, Vincent Lefevre wrote:
> >> The glibc 2.34 NEWS file says that mtrace() and mcheck() have now been
> >> disabled in the main C library, and preloading libc_malloc_debug.so is
> >=20
> > Can you please clarify "disabled"?  What is the behavior if that library
> > is not preloaded?  My attempt to run this program is that mcheck(3)
> > returns -1.  So, the preload interposes the dummy function that only
> > returns -1 with an actual mcheck(3) implementation?
>=20
> The libc mcheck and mcheck_pedantic now return -1, while mprobe returns
> MCHECK_DISABLED.  All the implementation that used to live in libc.so
> were moved to libc_malloc_debug.so.

Ok.  This should probably be documented.

>=20
> >=20
> > Are these functions deprecated by glibc?  If so, we should probably use
> > [[deprecated]] in the SYNOPSIS.  Or did they just move the functionality
> > for other reasons but without deprecating?
>=20
> There is no deprecation because the functionality is still fully supporte=
d,
> albeit in a different library. Setting to deprecated would require to move
> the prototypes to a different header.

Why was it moved to a different library?  I guess it wasn't often used,
maybe?  This should probably go to a HISTORY section.

Regarding the move, maybe I'm doing something wrong, but I'd expect the
following to work (but it doesn't):


	$ cc -Wall -Wextra mcheck.c -lc_malloc_debug -lc
	mcheck.c: In function =E2=80=98main=E2=80=99:
	mcheck.c:21:12: warning: pointer =E2=80=98p=E2=80=99 used after =E2=80=98f=
ree=E2=80=99 [-Wuse-after-free]
	   21 |            free(p);
	      |            ^~~~~~~
	mcheck.c:19:12: note: call to =E2=80=98free=E2=80=99 here
	   19 |            free(p);
	      |            ^~~~~~~
	$ ./a.out=20
	mcheck() failed
	$ ldd ./a.out=20
		linux-vdso.so.1 (0x00007fff048de000)
		libc.so.6 =3D> /lib/x86_64-linux-gnu/libc.so.6 (0x00007f82fe810000)
		/lib64/ld-linux-x86-64.so.2 (0x00007f82fea0c000)

Do you know why this program isn't linking correctly to
libc_malloc_debug?

Thanks,
Alex

> >=20
> > Should we document the need for LD_PRELOAD in the LIBRARY section?
>=20
> Yes, I think it would be better.
>=20
> >=20
> > Thanks,
> > Alex
> >=20
> >> needed to get this functionality back.
> >>
> >> So the examples now need a "LD_PRELOAD=3Dlibc_malloc_debug.so".
> >>
> >> Signed-off-by: Vincent Lefevre <vincent@vinc17.net>

--=20
<https://www.alejandro-colomar.es/>

--dhPsJ9sY14ao1za4
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmU4EIUACgkQnowa+77/
2zK6kxAAnm6n+U0HcSAwZ+39aLZsZBXUa+i95vfOJ+J//Q7ghLKLCNBOsDjBhyfI
kDZ685Jpg9BAa8TEFKbBSeVHbkWKj/yk0tevVqdSznJJcZX1ugP2BOQwYxAAv/1b
K+uu0qcH1U1oPICWdPOTkNUmXdA+aY+PWGSlf301thc4p7uJdaYReohiLK/nczbk
8C1Fx9DnsPCwcrs5Y/yKoC/iimJK2wiy8JTFGUrsRjaF9i6L4iLWHf+ycUt6vIrZ
TJ5Qoj3V681+S7mRjxl5zEh1TZYBcqy9TlLneGOyys0oCsM94r+rQGwQf0Z2InOY
s4vfLPxs1wojVLORuFEBrNyt5q8gl6FSw9d/PHEfUZOLQG5ODs4TC7/q/TN+mxbu
p/aHxpJSQT3z3xzLaB/dS1J2FX60GdqoZNbgHtVWYL2oe8B7xnh2xR51pmVeVhnL
iHWc5nvTF1JpUdZVT405T1TCmv8y79nbqGrCKU5jC/UoPtn3JzvfwjGm42Ostu9z
OghoeLa8Hcw2onKXtdYnuiFwS+PaODfUxZ1jsvOvT9ql2chMiowpWJohfgLsS/Ps
cWXg5AWbuiQYu9SOLBTYERDIgn4fzORTrnxnK/2gQvajsJRxMcC2qvttMP07eu9F
OO/hqNUNS6e9J+gLkbRlru/Pl+UQGfDPEmKKcLEezxbjjjCEQeI=
=JgfA
-----END PGP SIGNATURE-----

--dhPsJ9sY14ao1za4--
