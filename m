Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 01D6D7DE3A6
	for <lists+linux-man@lfdr.de>; Wed,  1 Nov 2023 16:37:23 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233987AbjKAPZz (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 1 Nov 2023 11:25:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40374 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234017AbjKAPZy (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 1 Nov 2023 11:25:54 -0400
Received: from mail.helgefjell.de (unknown [IPv6:2a01:4f8:261:4d55::2])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4C34B102
        for <linux-man@vger.kernel.org>; Wed,  1 Nov 2023 08:25:48 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 0000000000020152.0000000065426DFA.000FBA9F; Wed, 01 Nov 2023 15:25:46 +0000
Date:   Wed, 1 Nov 2023 15:25:46 +0000
From:   Helge Kreutzmann <debian@helgefjell.de>
To:     Alejandro Colomar <alx@kernel.org>
Cc:     mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page clog.3
Message-ID: <ZUJt-iwf-d9cLBGd@meinfjell.helgefjelltest.de>
References: <ZUJaYtPeCL1kXYwl@meinfjell.helgefjelltest.de>
 <ZUJoBtadvsPTwFXh@debian>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256; protocol="application/pgp-signature"; boundary="=_meinfjell-1030815-1698852346-0001-2"
Content-Disposition: inline
In-Reply-To: <ZUJoBtadvsPTwFXh@debian>
X-Public-Key-URL: http://www.helgefjell.de/data/debian_neu.asc
X-homepage: http://www.helgefjell.de/debian
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is a MIME-formatted message.  If you see this text it means that your
E-mail software does not support MIME-formatted messages.

--=_meinfjell-1030815-1698852346-0001-2
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello Alejandro,
Am Wed, Nov 01, 2023 at 04:00:16PM +0100 schrieb Alejandro Colomar:
> On Wed, Nov 01, 2023 at 02:02:10PM +0000, Helge Kreutzmann wrote:
> > Without further ado, the following was found:
> >=20
> > Issue:    [-pi,pi] means both -pi and pi are included, this does not ma=
ke sense, either one must be out of the interval?
> >=20
> > "The logarithm B<clog>()  is the inverse function of the exponential "
> > "B<cexp>(3).  Thus, if I<y\\ =3D\\ clog(z)>, then I<z\\ =3D\\ cexp(y)>.=
  The "
> > "imaginary part of I<y> is chosen in the interval [-pi,pi]."
>=20
> I don't know this function.  Please suggest a fix, and CC glibc so that
> they can review the change.

=46rom a mathematical point of view either -pi or pi needs to be
excluded. I'm not a programmer, so the I cannot tell which is the case
here.

So you need to contact the person who wrote or who maintains this
function / man page.

Greetings

        Helge

--=20
      Dr. Helge Kreutzmann                     debian@helgefjell.de
           Dipl.-Phys.                   http://www.helgefjell.de/debian.php
        64bit GNU powered                     gpg signed mail preferred
           Help keep free software "libre": http://www.ffii.de/

--=_meinfjell-1030815-1698852346-0001-2
Content-Type: application/pgp-signature; name="signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEbZZfteMW0gNUynuwQbqlJmgq5nAFAmVCbfcACgkQQbqlJmgq
5nAqAxAAloABH4keFkYJr0KfSDQLBkwsUraETfcoydeMrI84skQfTRY3+wcQP3Te
OwGTvpaQtwF8nOlpObc3wEMz3JEaJNv1FGRyjT2djSvdgZxrXZ3Tx033bsqLtizO
hoCanBB9c7aTOUPvelhi271VvWVdl3KhJI6VUCkiqekKG3UwQKA0wADY+mchbLp1
GH/oKy1Je2eXrGBCyuJ4Wz6oiI3eLO+QXZ7U/Cj6WTJOfK8CGUizldE0LYg/uBSm
xfTtk2sQ4N8yatXyvjujG0ZspbkWktPKqPRwZthKrF1t8e8/9aEtJqJv1zgepuz5
EqaMg6axonJ1zkTDM7eCCQct5QMtZoXLm/pebI4EY0a2NqXI+4m0O9TsOLRcJQfV
vGptYCb78IPK2VGvv5YEzaEKPr9rzz9QiZ9u1XiR3e8odqWonbbhvdufCGAwkPaF
pNk8Jo7lZkZ7Hj5djPgGFSUbEaFEWwz3RAc6ytkUIX/B15g0OS3g2bMNYb3NQM6L
OXI+4sBMMf+VDwpBDoQ+kPvv4yfxznw5z419pSt76U2cHTbFBo30TokOg6TM21v2
jr6XaCG8uzZc+/XSx4Ok3p9EQk1eZWzYPJtC8Y2yBHg0bxXcOqGpBJJ9DPytzd95
/xsWrxVx8W97/Lu7uVmRsZlpJy62hTKwn3QV+HaotN9yuE+pu+M=
=vR/E
-----END PGP SIGNATURE-----

--=_meinfjell-1030815-1698852346-0001-2--
