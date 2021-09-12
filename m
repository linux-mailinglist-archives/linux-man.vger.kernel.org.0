Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EAE19407DE6
	for <lists+linux-man@lfdr.de>; Sun, 12 Sep 2021 17:22:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233221AbhILPXw (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 12 Sep 2021 11:23:52 -0400
Received: from THBLACKELECTRIC.COM ([207.244.97.128]:39896 "EHLO lsw.cs1local"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S229653AbhILPXv (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Sun, 12 Sep 2021 11:23:51 -0400
Received: from [72.29.63.102] (helo=localhost)
        by lsw.cs1local with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <thb@b-tk.org>)
        id 1mPRJU-0005ht-P6
        for linux-man@vger.kernel.org; Sun, 12 Sep 2021 15:22:37 +0000
Received: from thb by localhost with local (Exim 4.94.2)
        (envelope-from <thb@b-tk.org>)
        id 1mPRJT-0001n2-T7; Sun, 12 Sep 2021 15:22:35 +0000
Date:   Sun, 12 Sep 2021 15:22:35 +0000
From:   "Thaddeus H. Black" <thb@debian.org>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: Re: [PATCH 3/3] Use subsections instead of sections
Message-ID: <YT4bOyqm87Do3SMG@b-tk.org>
References: <YTluPPbquS6ZHmHL@b-tk.org>
 <20210909072442.423117-4-alx.manpages@gmail.com>
 <YT4MsXe46WlMa8i0@b-tk.org>
 <6ca6520f-ed0e-75b4-7eb2-972a8b8f1dfb@gmail.com>
 <30501890-2a01-3be2-ed51-568a1cd55397@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="ajldYHvw4iFGRhmY"
Content-Disposition: inline
In-Reply-To: <30501890-2a01-3be2-ed51-568a1cd55397@gmail.com>
X-Spam_score: -0.8
X-Spam_bar: /
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--ajldYHvw4iFGRhmY
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sun, Sep 12, 2021 at 04:56:21PM +0200, Alejandro Colomar (man-pages) wro=
te:
> I'm a bit worried that this might be overcomplicating it, and maybe a
> hypothetical .SSS macro would be useful here (or another solution).  Do y=
ou
> have any thoughts about it?
>=20
> That hypothetical macro would behave like .TP + .B + .RS (as shown above;
> and that .RS would only end at a following .SSS/.SS/.SH)

It is not important to me that my .SSS macro be used, but for reference
here it is:

=2Ede1 SSS
=2E  if !r SSS_SN_ORIG .nr SSS_SN_ORIG \\n[SN]
=2E  nr SN (2 * \\n[SSS_SN_ORIG])
=2E  SS \&\\$*
=2E  nr SN (\\n[SSS_SN_ORIG])
=2E.

--ajldYHvw4iFGRhmY
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEM1APDU+pwMhnuF4GcGMmQy2FIrwFAmE+GzYACgkQcGMmQy2F
IrwDARAA7pYiIjMYx+x43+fKwLfdSnfvkks7UpTlcEhhVr7rCY+V4C/mKZdx/AL4
JRvir7iekRAWDKknqX9WSAzSCA96ZGGcSUXc2HOqhdBbBS+6EzVxpSdxO6KuRA75
/oyCWGi7M3YIv75Jm906fub9ReTnnEqEvUn4WNCNDhbJ2xXVEr1JQd+oLr2kHG9o
FPzPDFH3V00yP9ndYyG3qa5YDnJFyuxSHcveTZDUWikLgMtqv62SBVgs2C+1dgTW
yowmwCWtPkoMpEPVmnWH8edke1XJEMExhTITUYfwhMDHHNwGIWyzEAlS0UQ+yYGi
3lZNR49TJe3WsLexN0LYK3YZhe858gkEP6h2YZo3tGssjsWzdsjQ24YFPvcb10+z
oAOg1lkkd1ZI3rK1Uw1Uo9J+yupEtiR3O1kSqPyMa9dlmnjRxoJCNkwAyZJdpP5Q
QEJxBsBgAis/ZWbhFA3TT+R1gw/fQRB3zsHg4EIe4/KRNEkS2wZeq8KnC8cpyTbw
F121CC3z5/I7R9DhTaqHrfhPrsMr3B9WvhOdZRRqi/9gr1OQf+Y/QnUNjrdwMGXZ
gIA0V6zL2cnXVRnQpiZtFlVnDeTqBByFb7WA0H3af7eqKKzyJxFDfP4o0WXJl+b3
ljlGMZDPEL/iApr+9n6Xlh604RvCY+zKxh4ww331hzIELrFqB6I=
=Xkb2
-----END PGP SIGNATURE-----

--ajldYHvw4iFGRhmY--
