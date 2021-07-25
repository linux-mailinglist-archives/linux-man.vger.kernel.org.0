Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9B2CC3D4EF1
	for <lists+linux-man@lfdr.de>; Sun, 25 Jul 2021 19:10:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229545AbhGYQaY (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 25 Jul 2021 12:30:24 -0400
Received: from luckmann.name ([213.239.213.133]:56899 "EHLO
        static.213-239-213-133.clients.your-server.de" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S229584AbhGYQaY (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 25 Jul 2021 12:30:24 -0400
X-Greylist: delayed 302 seconds by postgrey-1.27 at vger.kernel.org; Sun, 25 Jul 2021 12:28:42 EDT
Received: from localhost (localhost [127.0.0.1])
  (uid 502)
  by static.213-239-213-133.clients.your-server.de with local
  id 0000000000BD8007.0000000060FD99F0.00003FCD; Sun, 25 Jul 2021 19:05:52 +0200
Date:   Sun, 25 Jul 2021 19:05:52 +0200
From:   Helge Kreutzmann <debian@helgefjell.de>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org
Subject: Errors in man pages, here: bzero.3
Message-ID: <20210725170552.GA16301@Debian-50-lenny-64-minimal>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256; protocol="application/pgp-signature"; boundary="=_luckmann.name-16333-1627232752-0001-2"
Content-Disposition: inline
X-Public-Key-URL: http://www.helgefjell.de/data/debian_neu.asc
X-homepage: http://www.helgefjell.de/debian
User-Agent: Mutt/1.10.1 (2018-07-13)
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is a MIME-formatted message.  If you see this text it means that your
E-mail software does not support MIME-formatted messages.

--=_luckmann.name-16333-1627232752-0001-2
Content-Type: text/plain; charset=utf-8
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

Man page: bzero.3
Issue: to zeroed =E2=86=92 to be zeroed

"The B<explicit_bzero>()  function addresses a problem that security-"
"conscious applications may run into when using B<bzero>(): if the compiler=
 "
"can deduce that the location to zeroed will never again be touched by a "
"I<correct> program, then it may remove the B<bzero>()  call altogether.  "
"This is a problem if the intent of the B<bzero>()  call was to erase "
"sensitive data (e.g., passwords)  to prevent the possibility that the data=
 "
"was leaked by an incorrect or compromised program.  Calls to "
"B<explicit_bzero>()  are never optimized away by the compiler."

--=20
      Dr. Helge Kreutzmann                     debian@helgefjell.de
           Dipl.-Phys.                   http://www.helgefjell.de/debian.php
        64bit GNU powered                     gpg signed mail preferred
           Help keep free software "libre": http://www.ffii.de/

--=_luckmann.name-16333-1627232752-0001-2
Content-Type: application/pgp-signature; name="signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEbZZfteMW0gNUynuwQbqlJmgq5nAFAmD9mfAACgkQQbqlJmgq
5nAB3BAAqELladMQQXEiY7jwL18C/p+ydAIvLHVCPx83PFwx77qDzmqEASxDUIu+
S068GO2I41P7LH1LbKlsJMDHepFRYwJVShtdgSnzYqctIdSildADnrlxc32PHWIh
JuRITxb7tlSfogtMYLIeIfX7Kp2tNF/ZcYSJkQwsdIIUGuMmXas5Avjgbpe1Ny3b
A4DAxSlqYjQhHh6YyYl7BcSKDSDvcttAEBW8yY6PlsOKtZkqncU9ek49fpS6nkY9
wfTp4mGBQTg77Dro+PqoIySYiQ/+pXcKbmoGDxzF0hn6fskFpeoppqB84QvrQby1
CFVkdxvZNNeVlvcxNdL5LqBikRv+ZiiZD0tOsggPUq1+MhiLycjvAvF+IvpVqHE9
Z+K2mFJftCg6+F83k2OT6YdI1cR0ZX404c47BAKL7oCAP6wLBFRvSLxV/vfFfgOL
9tFHijz5asC2kqD/MKxDY8xfiAJt8GCnA+LZ7HQWEGRk8LpmyGFKhv45xlIRL/Uv
SM2TAgUCgH4SDI19vZ7CNo3BJ4ULVbWvtDBmv3IhFjcf5G3w2YiS36KGRLF2eAgn
jpaFa+ShrefO+x1ojrrGzFfpSZSs5IQ8f2CUJbYp1ipzQfVzOCzWYOr2XsSstXuO
JK4dSGnQVBx9UobT9EyY3jtNbEAhQ6driQbxoq17CcznsvSwqfo=
=0lRy
-----END PGP SIGNATURE-----

--=_luckmann.name-16333-1627232752-0001-2--
