Return-Path: <linux-man+bounces-29-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DCA97E8C59
	for <lists+linux-man@lfdr.de>; Sat, 11 Nov 2023 20:45:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B7328280DF1
	for <lists+linux-man@lfdr.de>; Sat, 11 Nov 2023 19:45:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D00D01CF90;
	Sat, 11 Nov 2023 19:45:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: linux-man@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBAE01CABC
	for <linux-man@vger.kernel.org>; Sat, 11 Nov 2023 19:45:06 +0000 (UTC)
Received: from mail.helgefjell.de (unknown [IPv6:2a01:4f8:261:4d55::2])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 415363A81
	for <linux-man@vger.kernel.org>; Sat, 11 Nov 2023 11:45:05 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 0000000000020152.00000000654FD9BE.0035B634; Sat, 11 Nov 2023 19:45:02 +0000
Date: Sat, 11 Nov 2023 19:45:02 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: Alejandro Colomar <alx@kernel.org>
Cc: alx.manpages@gmail.com, mario.blaettermann@gmail.com,
  linux-man@vger.kernel.org
Subject: Re: Issue in man page charsets.7
Message-ID: <ZU_ZvgyEddvKasYd@meinfjell.helgefjelltest.de>
References: <ZUJaZXoT9HQxRY1r@meinfjell.helgefjelltest.de>
 <ZU_YU1RKZa1SR6Qo@debian>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256; protocol="application/pgp-signature"; boundary="=_meinfjell-3520052-1699731902-0001-2"
Content-Disposition: inline
In-Reply-To: <ZU_YU1RKZa1SR6Qo@debian>
X-Public-Key-URL: http://www.helgefjell.de/data/debian_neu.asc
X-homepage: http://www.helgefjell.de/debian

This is a MIME-formatted message.  If you see this text it means that your
E-mail software does not support MIME-formatted messages.

--=_meinfjell-3520052-1699731902-0001-2
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Am Sat, Nov 11, 2023 at 08:38:59PM +0100 schrieb Alejandro Colomar:
> Hi Helge,
>=20
> On Wed, Nov 01, 2023 at 02:02:13PM +0000, Helge Kreutzmann wrote:
> > Without further ado, the following was found:
> >=20
> > Issue:    ISO 4873 =E2=86=92 ISO/IEC 4873
>=20
> For all the reports about ISO -> ISO/IEC, I'd appreciate if you could
> add a link to an official document that shows that it's the correct
> name.  I'd include that in the commit message.

Simply go to=20
https://www.iso.org

and enter the number in the search field.

For this one you will get:
https://www.iso.org/standard/10859.html

Is this sufficient?

Greetings

         Helge

--=20
      Dr. Helge Kreutzmann                     debian@helgefjell.de
           Dipl.-Phys.                   http://www.helgefjell.de/debian.php
        64bit GNU powered                     gpg signed mail preferred
           Help keep free software "libre": http://www.ffii.de/

--=_meinfjell-3520052-1699731902-0001-2
Content-Type: application/pgp-signature; name="signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEbZZfteMW0gNUynuwQbqlJmgq5nAFAmVP2bsACgkQQbqlJmgq
5nDHQw/+KhIS3Ly6j6TBzlUuZi0L4sQB32L0tczB0rLhEXKn4nEmbWNC+rMDDKoz
I2yTgLflMbMFL/1GiI6/lpBTjhJDSFUohhTfgLmPXvh/CX1dRahwh8OdiRpzTq3X
CBdkRK9IZyfYTbfSBbcOKnD9GPW5cL4UPIQ81Upz09SiRxZezVKKjSZpkXtW65Mt
H2EYowHHpt4CXt1+jywxYXunNposF0+yrhJtg6dVfGj/UGDCbLjh7KC37Oc4nos1
vvQGBihkFhDfCknvqF2jGs8VxNpk4h5nRxD2wUTeX3YrYZPBmE3kLONBROV4W8Ta
cAqjY5Ksll6sHqQP3OYw3DLGiICkEI0nBtqRDqKkv4Ekj6nuJ/q0GWZbWsk+2C1y
5byv9+0fwePWQTitK7YdFoke56ZxNWtJM8r6L6nUqu9VNzfSSbZSs6EiUiLYPQRt
G/AERbYEZc4njEICxh8Auz7vh3BMoEB4f68aG2SbkWSYVXEH5Ceyila6rv4i2+Qv
+G5uik5BcNZjAJ7u8PJvzuuw1TEseyLqX6+RRfQS7NpeF43RxxVrBLELNYKmQi8T
pV7JmWHJ/+DEVtH4gsilUuyfzttQ92uknzqjcY3SXmGFRFlu6w0LWe5jpI2lvu9R
3CszIUBQgnCw5ejVOZEj4wl+g19M4SDPiApd7ikkXBhdUHkRNS4=
=KOLa
-----END PGP SIGNATURE-----

--=_meinfjell-3520052-1699731902-0001-2--

