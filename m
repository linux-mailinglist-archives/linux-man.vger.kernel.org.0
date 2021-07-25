Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 25EE23D4EF5
	for <lists+linux-man@lfdr.de>; Sun, 25 Jul 2021 19:11:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229689AbhGYQbI (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 25 Jul 2021 12:31:08 -0400
Received: from luckmann.name ([213.239.213.133]:56899 "EHLO
        static.213-239-213-133.clients.your-server.de" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S229584AbhGYQbH (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 25 Jul 2021 12:31:07 -0400
X-Greylist: delayed 302 seconds by postgrey-1.27 at vger.kernel.org; Sun, 25 Jul 2021 12:28:42 EDT
Received: from localhost (localhost [127.0.0.1])
  (uid 502)
  by static.213-239-213-133.clients.your-server.de with local
  id 0000000000BD800D.0000000060FD9A1D.0000401E; Sun, 25 Jul 2021 19:06:37 +0200
Date:   Sun, 25 Jul 2021 19:06:36 +0200
From:   Helge Kreutzmann <debian@helgefjell.de>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org
Subject: Errors in man pages, here: crypt.3
Message-ID: <20210725170636.GA16387@Debian-50-lenny-64-minimal>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256; protocol="application/pgp-signature"; boundary="=_luckmann.name-16414-1627232797-0001-2"
Content-Disposition: inline
X-Public-Key-URL: http://www.helgefjell.de/data/debian_neu.asc
X-homepage: http://www.helgefjell.de/debian
User-Agent: Mutt/1.10.1 (2018-07-13)
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is a MIME-formatted message.  If you see this text it means that your
E-mail software does not support MIME-formatted messages.

--=_luckmann.name-16414-1627232797-0001-2
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Dear Linux manpages maintainer,
the manpage-l10n project maintains a large number of translations of
man pages both from a large variety of sources (including Linux
Manpages) as well for a large variety of target languages.

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

Man page: crypt.3
Issue: Use tbl macro

"ID  | Method"

--=20
      Dr. Helge Kreutzmann                     debian@helgefjell.de
           Dipl.-Phys.                   http://www.helgefjell.de/debian.php
        64bit GNU powered                     gpg signed mail preferred
           Help keep free software "libre": http://www.ffii.de/

--=_luckmann.name-16414-1627232797-0001-2
Content-Type: application/pgp-signature; name="signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEbZZfteMW0gNUynuwQbqlJmgq5nAFAmD9mhwACgkQQbqlJmgq
5nC+Ww//Wy/o8P+stZtElQECsFpv+9mRwX+Aq9r5wvEv6GQroruH0ZwC1tyW9FSK
7qRykkYQEtqOfGXMfa4I2x11u0HvZ3Bhg5f30BsblCiK8xHhnHL3ghw3suiodSe9
g1K9AWHE5kTCDzlvw9FhU1ll7tqIL7q2iami2ss4nZ8GtLRfC5wRRY2z+TtSogxs
A6bpSobwaXJtCLDYwBBIgSVUxMSWWpTaDTnaQ4KtwywZHv/8J8wFkeiogdH737eN
VwNI824K3jUxbx9L86sQH0UHpNtGJPvhk4b7WKxhIsfA+UEPGdJUroGbEUFWEz4e
5okq60HdF1Bfr5my3IqpDyIEnJKZsS6HWi38APy2SL9caTUi3PavHjMIAKJQiKMj
38eRPIiKMVzglevJzf8IP7MDzjjRZ8p4yQq8dDe29ln9O6nHWpr0ieh719AYZWYQ
u2rQqEk+HgvozEz6wI/LPza4LCcUbUgY7DX2r71gYH0B3Io/Bho/oUUR/GOukfcy
gb+2RMojNyDtw8kZzdMFT2+rLX8kZPNs3o/IpxtcOsVCWhUsFRWFLbDobzoN5/We
jrfM/PMc406LIm6xkQAVsVzExcFO4eTO5bwAlfqBLKD2Pi6A5ESJB1vqk/l8GKQf
swMPRJVu8uN0lvn95gS8HkWDJadIU6CRF8TKJnInGfiFCO/XbvY=
=LFUN
-----END PGP SIGNATURE-----

--=_luckmann.name-16414-1627232797-0001-2--
