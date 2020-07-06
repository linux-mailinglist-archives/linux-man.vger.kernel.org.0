Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 647B8215561
	for <lists+linux-man@lfdr.de>; Mon,  6 Jul 2020 12:17:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728734AbgGFKRY (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 6 Jul 2020 06:17:24 -0400
Received: from luckmann.name ([213.239.213.133]:54993 "EHLO
        static.213-239-213-133.clients.your-server.de" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1728787AbgGFKRV (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 6 Jul 2020 06:17:21 -0400
Received: from localhost (localhost [127.0.0.1])
  (uid 502)
  by static.213-239-213-133.clients.your-server.de with local
  id 0000000000E5805E.000000005F02FA2F.0000693D; Mon, 06 Jul 2020 12:17:19 +0200
Date:   Mon, 6 Jul 2020 12:17:19 +0200
From:   Helge Kreutzmann <debian@helgefjell.de>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org
Subject: Errors in man pages, here: strcmp.3, punctuation
Message-ID: <20200706101719.GA26907@Debian-50-lenny-64-minimal>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256; protocol="application/pgp-signature"; boundary="=_luckmann.name-26941-1594030639-0001-2"
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

--=_luckmann.name-26941-1594030639-0001-2
Content-Type: text/plain; charset=utf-8
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

Man page: strcmp.3
Issue: ; =E2=86=92 Full stop

"a positive value if I<s1> is greater than I<s2>;"

--=20
      Dr. Helge Kreutzmann                     debian@helgefjell.de
           Dipl.-Phys.                   http://www.helgefjell.de/debian.php
        64bit GNU powered                     gpg signed mail preferred
           Help keep free software "libre": http://www.ffii.de/

--=_luckmann.name-26941-1594030639-0001-2
Content-Type: application/pgp-signature; name="signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEbZZfteMW0gNUynuwQbqlJmgq5nAFAl8C+i8ACgkQQbqlJmgq
5nA2kBAAifHuQbHd/gRN/BiX2dOhogsdg7u8e1crppk0FNOOzTc3a6j7mXxe5kgR
eoytZs46o7/U4I8cxVZeEZiToDDR5xfxOwYEzuVTqlHgEhe8LXJhZSd4BV+qipoT
UuCTc1aLmgSyzWkaDmCeXu23LiqEItEpq4Lu03gnuvUBMJqySVOzqG55vLaQCBWY
okOk13SXW0HIvMKn31p6pkEnGKiWVaBjGPfgYIKVu63ShWfo5Muk+UwJRR1CIjI7
i61jXpNdKLEQSPDtmEZ0jVeAuPoPCDQ+pWJyJ3cRvIMhpu4RMKK5+MxSur9Alh7+
KS/0MjUY31rzQ2z7RtpkRbQdPaUTsjOVvjUyxcXAysoez0ugoGLt0KiidBCK3Lp5
2BmSjb7r4MdNMTEz9V/HKgHx2P2Eq4jCoyvCgFBCILPU7rFW04pUDx1H/T4tpq3K
NSYRYmym7c+lWmTC/2BN4icXjmZiWDWriTIRK3Sx3TBaZiTan0AqviuL3giJAE16
6UeE68quSNPMhSawRQfjZhoG4TZLeN/UCmHaqAjRNQoozoLHrfknArRbKWyihT9g
5BYm210KoNUPubSsqN6DVXB4AsLvLn7PV9ltNo6WHf4xyPXAzWTeZkVWf549q+/Q
gheNvcYh8CeMozVtiQhcOfXDwRmhs0C+Y3Je2xFNCCAdM+SHRJ0=
=is5V
-----END PGP SIGNATURE-----

--=_luckmann.name-26941-1594030639-0001-2--
