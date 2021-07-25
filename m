Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 031533D4EED
	for <lists+linux-man@lfdr.de>; Sun, 25 Jul 2021 19:10:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229831AbhGYQ3m (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 25 Jul 2021 12:29:42 -0400
Received: from luckmann.name ([213.239.213.133]:56899 "EHLO
        static.213-239-213-133.clients.your-server.de" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S229545AbhGYQ3l (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 25 Jul 2021 12:29:41 -0400
X-Greylist: delayed 302 seconds by postgrey-1.27 at vger.kernel.org; Sun, 25 Jul 2021 12:28:42 EDT
Received: from localhost (localhost [127.0.0.1])
  (uid 502)
  by static.213-239-213-133.clients.your-server.de with local
  id 0000000000BD8003.0000000060FD99C7.00003F88; Sun, 25 Jul 2021 19:05:11 +0200
Date:   Sun, 25 Jul 2021 19:05:11 +0200
From:   Helge Kreutzmann <debian@helgefjell.de>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org
Subject: Errors in man pages, here: access.2
Message-ID: <20210725170511.GA16224@Debian-50-lenny-64-minimal>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256; protocol="application/pgp-signature"; boundary="=_luckmann.name-16264-1627232711-0001-2"
Content-Disposition: inline
X-Public-Key-URL: http://www.helgefjell.de/data/debian_neu.asc
X-homepage: http://www.helgefjell.de/debian
User-Agent: Mutt/1.10.1 (2018-07-13)
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is a MIME-formatted message.  If you see this text it means that your
E-mail software does not support MIME-formatted messages.

--=_luckmann.name-16264-1627232711-0001-2
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

Man page: access.2
Issue: FIXME: The if construct does not reeally work well, better: B<access=
>() and B<faccessat>() return the following exit codes:

"B<access>()  and B<faccessat>()  shall fail if:"

--=20
      Dr. Helge Kreutzmann                     debian@helgefjell.de
           Dipl.-Phys.                   http://www.helgefjell.de/debian.php
        64bit GNU powered                     gpg signed mail preferred
           Help keep free software "libre": http://www.ffii.de/

--=_luckmann.name-16264-1627232711-0001-2
Content-Type: application/pgp-signature; name="signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEbZZfteMW0gNUynuwQbqlJmgq5nAFAmD9mcYACgkQQbqlJmgq
5nAQOg//fNSYqyE7xBFU2XO9w7P8f8mQdjza6BoBQcM5/KZM8BGI/1qB5Q846zKC
6BfVmmry5oriRnmcoA25o+/Zpyw/qw7wkN1Le6ijb1iaGY6lhVxtCytHqmbVjrPF
bhMF3p0A59pjoFBL4kZO1X9nfBpey1JUnGeC+Rc65kQoNhic6jhJojdY9Ixv06qp
uL0+oT8U00GA+NFQkkCcx85M/HCYamme67mPjrkLUOmCDJ2hwe6bLDgx6bSm+2Hx
KDSdwOZic7BiBo0xbdj860w1yMUpT3vNum5jHAsuco87/fNvVnQ2MFvoRzpIwIjp
w7CN+VHvo/w+d8SYvnsQD85Z/cGitEBnpJPyoxXoxuWksqE9g8Idhl9N9yiCccOC
zKsOsPlE2dJ7aDkEzx+0RtPsyoYjZq75p+botLQruGtdfKl/Lu0jUd9RfhTx5PxD
wFMjBFknEYsg9iW7zhRI+T6UvKODl8w64u9zKTvMHoNhhOm7q19c6/w+l1a8UW84
gjZGpLeddJDqtMHcrmRtfzkL7jItKYVeA7efmiPCnm7SyXvxX4TSL17lk2h+9m/3
C+z42HlGdFkw1KRj5Wt5G6L29S2Nt6PluRtO5QWQ7vpZGHHW0WK1okc/3CqMWxhD
gEBqNSEn55D+B6eV1kadk7MTkq7EUwOpkpuDAx/coof+lBnvxrA=
=81ul
-----END PGP SIGNATURE-----

--=_luckmann.name-16264-1627232711-0001-2--
