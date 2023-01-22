Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 79ED867722F
	for <lists+linux-man@lfdr.de>; Sun, 22 Jan 2023 21:04:05 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230366AbjAVUED (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 22 Jan 2023 15:04:03 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34844 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230155AbjAVUED (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 22 Jan 2023 15:04:03 -0500
Received: from static.213-239-213-133.clients.your-server.de (luckmann.name [213.239.213.133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 560466A67
        for <linux-man@vger.kernel.org>; Sun, 22 Jan 2023 12:04:02 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
  (uid 502)
  by static.213-239-213-133.clients.your-server.de with local
  id 0000000000E5808C.0000000063CD96B0.00007849; Sun, 22 Jan 2023 21:04:00 +0100
Date:   Sun, 22 Jan 2023 21:04:00 +0100
From:   Helge Kreutzmann <debian@helgefjell.de>
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     alx.manpages@gmail.com, mario.blaettermann@gmail.com,
        linux-man@vger.kernel.org
Subject: Re: Issue in man page wctype.3
Message-ID: <20230122200400.GB30353@Debian-50-lenny-64-minimal>
References: <20230122193133.GA29288@Debian-50-lenny-64-minimal>
 <20230122200149.54quo22te2kckbee@illithid>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256; protocol="application/pgp-signature"; boundary="=_luckmann.name-30793-1674417840-0001-2"
Content-Disposition: inline
In-Reply-To: <20230122200149.54quo22te2kckbee@illithid>
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

--=_luckmann.name-30793-1674417840-0001-2
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello Branden,
On Sun, Jan 22, 2023 at 02:01:49PM -0600, G. Branden Robinson wrote:
> At 2023-01-22T20:31:33+0100, Helge Kreutzmann wrote:
> > Without further ado, the following was found:
> >=20
> > Issue:    all locales. =E2=86=92 all locales:
> >=20
> > "The B<wctype>()  function returns a property, given by its name.  The =
set of "
> > "valid names depends on the B<LC_CTYPE> category of the current locale,=
 but "
> > "the following names are valid in all locales."
>=20
> I disagree with this.  The material that follows does not serve to end
> the sentence; it is a displayed list of items with no grammatical
> structure.

For me, this would have been the perfect use of a colon, but =E2=80=A6

> The colon in English must be followed by an independent clause. (A list
> of comma-separated items, or a list of semicolon-separated items that
> contain commas is tolerated after a colon by some style guides.)

=E2=80=A6 I'm not a native speaker, so please disregard this if it is
incorrect.

Greetings

         Helge


--=20
      Dr. Helge Kreutzmann                     debian@helgefjell.de
           Dipl.-Phys.                   http://www.helgefjell.de/debian.php
        64bit GNU powered                     gpg signed mail preferred
           Help keep free software "libre": http://www.ffii.de/

--=_luckmann.name-30793-1674417840-0001-2
Content-Type: application/pgp-signature; name="signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEbZZfteMW0gNUynuwQbqlJmgq5nAFAmPNlrAACgkQQbqlJmgq
5nBuwA//S7JKMzd8tPxLst2WWWK1DnnWV1y11bUKaxk7ebUO5jRfoABX1icc2Fee
TbaGjebRk6KZUdivlbazzWxxZI+SBOQcp77HG0BfR0X+qNXoZdDQXElzHGjHsW6r
SX32y1SATuymzAnVYe/lkHIn+GDapMTxKXL9eBnsw8Bn/cZ00q+5lCSep2VeI7jC
MfdtObrzRCskJqYYtqleJag7V67PXeWLkNEHPTpFK/US2DuX+jEzrDl8yWJAx9rK
R3vkANGz0NAmm3yXQoeZxzqq4X3t0fkCf0vZkkzULD/OJJ4FVuTdktpBaQLEoaVj
N1UKiuGLUYazB5MMraproShEmyMY/tCwyBg4HLU2KtG14O2YJFmU5szp1APF++Qo
2rJeV9cJqKVoY0bap3ofrTgqR1+gQrqrkZ99Mui2BaDOyunMmZEMNJR/LGnOmExF
5Y1NHnhOV1M3aKPWvLtmmWpgtOZU67RGtONHiWpXUOik76KvDrzBI8SFj0yLlfI+
iZFI5ioAQrpE90pDXBS8L3lhMnqW0VeUZRgIV3GgZ0XpzwgdaLJ3t2ryJIdcI/iB
yfVNShqKvjHp8z6I6Q9upVETjHNeDm+LciGCWi7w/FBTfIs5S7a8qI2FfP+xDTnV
YO2nxJ6HRENelbaXtbz14vwtMUgNaEuUNSFUyu7iDcblkiIsYbg=
=cCV7
-----END PGP SIGNATURE-----

--=_luckmann.name-30793-1674417840-0001-2--
