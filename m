Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E456B677267
	for <lists+linux-man@lfdr.de>; Sun, 22 Jan 2023 21:32:05 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229973AbjAVUcE (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 22 Jan 2023 15:32:04 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44008 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230022AbjAVUcD (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 22 Jan 2023 15:32:03 -0500
Received: from static.213-239-213-133.clients.your-server.de (luckmann.name [213.239.213.133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 367401E5E5
        for <linux-man@vger.kernel.org>; Sun, 22 Jan 2023 12:31:54 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
  (uid 502)
  by static.213-239-213-133.clients.your-server.de with local
  id 0000000000E580F5.0000000063CD9D39.00007C66; Sun, 22 Jan 2023 21:31:53 +0100
Date:   Sun, 22 Jan 2023 21:31:53 +0100
From:   Helge Kreutzmann <debian@helgefjell.de>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page motd.5
Message-ID: <20230122203153.GC30840@Debian-50-lenny-64-minimal>
References: <20230122193124.GA28740@Debian-50-lenny-64-minimal>
 <fc20e87a-bb2e-3821-ea0f-40d923163cdd@gmail.com>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256; protocol="application/pgp-signature"; boundary="=_luckmann.name-31846-1674419513-0001-2"
Content-Disposition: inline
In-Reply-To: <fc20e87a-bb2e-3821-ea0f-40d923163cdd@gmail.com>
X-Public-Key-URL: http://www.helgefjell.de/data/debian_neu.asc
X-homepage: http://www.helgefjell.de/debian
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Spam-Status: No, score=0.3 required=5.0 tests=BAYES_00,CK_HELO_GENERIC,
        HELO_DYNAMIC_IPADDR,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is a MIME-formatted message.  If you see this text it means that your
E-mail software does not support MIME-formatted messages.

--=_luckmann.name-31846-1674419513-0001-2
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello Alex,
On Sun, Jan 22, 2023 at 09:07:49PM +0100, Alejandro Colomar wrote:
> On 1/22/23 20:31, Helge Kreutzmann wrote:
> > Without further ado, the following was found:
> >=20
> > Issue:    B<pam_motd>(8)  B<login>(1) =E2=86=92 B<pam_motd>(8) from B<l=
ogin>(1)
>=20
> Sorry, I can't reproduce.  The current upstream manual page has the
> following text (ignoring formatting):

As comment, I see below the following:
#.  Patched in Debian, maybe other distribs
#.  End of patch

(Again, in our representation, not groff!)

So probably a Debian patch, marked as such.

Please ignore this and the following report then.

Greetings

        Helge



--=20
      Dr. Helge Kreutzmann                     debian@helgefjell.de
           Dipl.-Phys.                   http://www.helgefjell.de/debian.php
        64bit GNU powered                     gpg signed mail preferred
           Help keep free software "libre": http://www.ffii.de/

--=_luckmann.name-31846-1674419513-0001-2
Content-Type: application/pgp-signature; name="signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEbZZfteMW0gNUynuwQbqlJmgq5nAFAmPNnTkACgkQQbqlJmgq
5nB/6w/9GyRz6EOlqeApLLfzLx29up8oy271qgJPkFGNBQWIOADAY88MLK15caJz
lFF0ly25N/AkmIHc3yblDW3zzxo6grN65NwRZ0yKjCADU761EkbmmOKliqFpj9dY
GQNVqfbQ1GBNpyzCCzgIgTawTALwKXsU9lSgvwtuzYKoUcexcVuXpwqw3hkGLnnN
P0ZXkTqmVgJOWk9bTpor0GqDMvNI79XnEdxwhW9b8umjzDUFfR65VGVNMA9nIlXt
oGYl0sttiG0O+ZEbtvLZMgsGn1mgR8LkGPwwRdGGt5VyZmY1L+aSFKyj1p9n5GIG
SWJpAoa6ft65E6wCryiuHqPsrcrR++tUlbb2LV6UgfnGkmEF5WfqqpFOHYPaM3X0
1iHQQRaIkJWJx1onoXmYqWwTjY2qr2Q6qWBD2fLSLCKVtA4YcEOFl8aD8oV/C9Yh
+/VKkOx457v00Vpm7o11E2N2BQv+y7b8PZAqlbRlXk/nczVvamj2HnY3Q7hwm4Dv
s2mAjxEtMeUN0g+E/vqCJAoeY3z3IdRD9WtPkusUJNB6GXSLCkp473eQ+ur3GA6u
lpz/0iz3bxH2dU0YKTI1xPt9r1fMrPCVutq/nN7qT9zmAfNOAhtnXKZJDW32Klut
LHFIjkWsgilrvVId+0K5bph2XV3qHKcngLYkJ4J4P9+kFYSBXXQ=
=6iZF
-----END PGP SIGNATURE-----

--=_luckmann.name-31846-1674419513-0001-2--
