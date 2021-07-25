Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 795A93D4EFE
	for <lists+linux-man@lfdr.de>; Sun, 25 Jul 2021 19:13:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229831AbhGYQcy (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 25 Jul 2021 12:32:54 -0400
Received: from luckmann.name ([213.239.213.133]:56899 "EHLO
        static.213-239-213-133.clients.your-server.de" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S229545AbhGYQcy (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 25 Jul 2021 12:32:54 -0400
X-Greylist: delayed 302 seconds by postgrey-1.27 at vger.kernel.org; Sun, 25 Jul 2021 12:28:42 EDT
Received: from localhost (localhost [127.0.0.1])
  (uid 502)
  by static.213-239-213-133.clients.your-server.de with local
  id 0000000000BD801F.0000000060FD9A86.0000411B; Sun, 25 Jul 2021 19:08:22 +0200
Date:   Sun, 25 Jul 2021 19:08:22 +0200
From:   Helge Kreutzmann <debian@helgefjell.de>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org
Subject: Errors in man pages, here: open.2
Message-ID: <20210725170822.GA16643@Debian-50-lenny-64-minimal>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256; protocol="application/pgp-signature"; boundary="=_luckmann.name-16667-1627232902-0001-2"
Content-Disposition: inline
X-Public-Key-URL: http://www.helgefjell.de/data/debian_neu.asc
X-homepage: http://www.helgefjell.de/debian
User-Agent: Mutt/1.10.1 (2018-07-13)
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is a MIME-formatted message.  If you see this text it means that your
E-mail software does not support MIME-formatted messages.

--=_luckmann.name-16667-1627232902-0001-2
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

Man page: open.2
Issue: same was =E2=86=92 same ways

"When these APIs are given a I<dirfd> argument of B<AT_FDCWD> or the "
"specified pathname is absolute, then they handle their pathname argument i=
n "
"the same way as the corresponding conventional APIs.  However, in this cas=
e, "
"several of the APIs have a I<flags> argument that provides access to "
"functionality that is not available with the corresponding conventional AP=
Is."

--=20
      Dr. Helge Kreutzmann                     debian@helgefjell.de
           Dipl.-Phys.                   http://www.helgefjell.de/debian.php
        64bit GNU powered                     gpg signed mail preferred
           Help keep free software "libre": http://www.ffii.de/

--=_luckmann.name-16667-1627232902-0001-2
Content-Type: application/pgp-signature; name="signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEbZZfteMW0gNUynuwQbqlJmgq5nAFAmD9moYACgkQQbqlJmgq
5nAIRQ//dSTzEM5+AHubaFJijwKscJBpaB7HKBluOn9vYgeS6pdJxwPn1nLxc/+e
/uYyAYGRtQJkgs+yx5A+Uhv0GAnfLpLHi6YjraVHim7SGhXP0snzgX4CWYYffHDD
07sH+1IfHfMQg2qGqHVdPEP9FwPS+BqIk2byH4t8VcSCeQyPdMxT+FTG3IKdnuVS
ByZWSjaB8NqcK1wySugmTAvpP+vS9ozIhgP+rcszWYuh5ysktX1/04fg6oAW2P/2
6gbrHApIYgFccc2J74/wggWc5b2ww85aVHn4nwz9vMYBlWNDKNsoCAOKoVJe5CTg
oC21z6H9rjyJ/va/LvphyXV0LLgWTwo16uy1Auyo4E2rHT9Q349tD+85TOO+B3pu
gAyJNB3CE6K4ktSDVvYm1rQCwGoQcFTCR5UiX5lX3wIwkd2FFmhtR3CxO4iJ+Aw7
tZzjQr7g8gSeVv1hXPLGl5iWL08a59xpzufwVDxsKTFtjfaB93rvyf09dxAbb1KU
j/9wAOpKDlZUpiuvndnbM/ZNcGb7oMZGeWO/D2RJJx1r7Qru2aLMtIzVDgVeiowr
LlgiUL6e1LXTvukoh2cUyZhROtpuvMJ+8L3ERN+VIlJQfqEGQonycWfXcILIm5Ou
udmqnR7SSi2aOmkXkBPxegXiLQfq9mOONzDkLD6gR072UsTY0W0=
=ft/Z
-----END PGP SIGNATURE-----

--=_luckmann.name-16667-1627232902-0001-2--
