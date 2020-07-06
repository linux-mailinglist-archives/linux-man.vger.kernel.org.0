Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BFE3F215535
	for <lists+linux-man@lfdr.de>; Mon,  6 Jul 2020 12:12:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728515AbgGFKMX (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 6 Jul 2020 06:12:23 -0400
Received: from luckmann.name ([213.239.213.133]:54993 "EHLO
        static.213-239-213-133.clients.your-server.de" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1728299AbgGFKMW (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 6 Jul 2020 06:12:22 -0400
Received: from localhost (localhost [127.0.0.1])
  (uid 502)
  by static.213-239-213-133.clients.your-server.de with local
  id 0000000000E5805E.000000005F02F905.0000676E; Mon, 06 Jul 2020 12:12:21 +0200
Date:   Mon, 6 Jul 2020 12:12:21 +0200
From:   Helge Kreutzmann <debian@helgefjell.de>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org
Subject: Errors in man pages, here: expm1.3, bogus full stop
Message-ID: <20200706101221.GA26426@Debian-50-lenny-64-minimal>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256; protocol="application/pgp-signature"; boundary="=_luckmann.name-26478-1594030341-0001-2"
Content-Disposition: inline
X-Public-Key-URL: http://www.helgefjell.de/data/debian_neu.asc
X-homepage: http://www.helgefjell.de/debian
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is a MIME-formatted message.  If you see this text it means that your
E-mail software does not support MIME-formatted messages.

--=_luckmann.name-26478-1594030341-0001-2
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Dear linux man page maintainer,
the manpage-l10n project maintains a large number of translations of
man pages both from a large variety of sources (including linux man
pages) as well for a large variety of target languages.

During their work translators notice different possible issues in the
original (english) man pages. Sometimes this is a straightforward
typo, sometimes a hard to read sentence, sometimes this is a
convention not held up and sometimes we simply do not understand the
original.

We use several distributions as sources and update regularly (at
least every 2 month). This means we are fairly recent (some
distributions like archlinux also update frequently) but might miss
the latest upstream version once in a while, so the error might be
already fixed. We apologize and ask you to close the issue immediately
if this should be the case, but given the huge volume of projects and
the very limited number of volunteers we are not able to double check
each and every issue.

Secondly we translators see the manpages in the neutral po format,
i.e. converted and harmonized, but not the original source (be it man,
groff, xml or other). So we cannot provide a true patch (where
possible), but only an approximation which you need to convert into
your source format.

Finally the issues I'm reporting have accumulated over time and are
not always discovered by me, so sometimes my description of the
problem my be a bit limited - do not hesitate to ask so we can clarify
them.

I'm now reporting the errors for your project. If future reports
should use another channel, please let me know.

**

Man page: expm1.3
Issue: bogus full stop after infinity

"Before approximately glibc version 2.11, B<expm1>()  raised a bogus invali=
d "
"floating-point exception in addition to the expected overflow exception, a=
nd "
"returned a NaN instead of positive infinity.  for some large positive I<x>=
 "
"values,"

--=20
      Dr. Helge Kreutzmann                     debian@helgefjell.de
           Dipl.-Phys.                   http://www.helgefjell.de/debian.php
        64bit GNU powered                     gpg signed mail preferred
           Help keep free software "libre": http://www.ffii.de/

--=_luckmann.name-26478-1594030341-0001-2
Content-Type: application/pgp-signature; name="signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEbZZfteMW0gNUynuwQbqlJmgq5nAFAl8C+QUACgkQQbqlJmgq
5nCrHA/+MHpIJ9vFgsd5Q03R/Ss5QLY0mcRfcisVdPLSS0ZcuLVzrnCAekqypw/w
Y9Esj4u8xBMatk1VnHKzJ6fJ6y5pX5ggxB9QVarKNkdCmt27ctR0RADkITEZKGnp
NWVDfnqo1oV4Yd0hH5Jo8BBo/gdxB/auMmSETgVBQVbykL3H5SmRzEv2hoLN6EhD
NVT/5IZdSVjdEFjEJVu/TArXkg1WR3zW4bO8WDuiQWmvCYPCoJmtbeNYeqScvxQ6
nX/Tx/PL4S1gYd3FrgsrfBLhm8b4vAHqsSqfSNuW6NmKE7HSS0qZDuh+TYmG1O4q
830XCICJpbBG95dAAMDIT6i7iDR7i4wHQWZeGCQubZ6mTCawtDSDot/3EQxsNA+u
Nq053IrqwmUAbODgDAg2t4LPpec9QXN4lxsZt563uO061btktCXwI3Bp4JDC4ZVw
MdKX0IK2iKNBmjgAcGI1ec3xbKr1T9z6C3VRzdXsMoGcQ9mef4p66KkwNVXrr16+
3vaDyFb6ISdZssEjSy9Sek/CCpjfQ56erMjmKp3r40LYqayNB+TQf+S1SWBw0Hz7
81elrKW3ydV719qxY9zi1DsE22yHShn4DTTee92mSdiCVYXpY0CMXnZtnOA7yCWz
94XkJDW9DytYNQTVO/GzBbzVO8RGytS4Q/ryZ0mR/XaSVy9Lda0=
=Zaav
-----END PGP SIGNATURE-----

--=_luckmann.name-26478-1594030341-0001-2--
