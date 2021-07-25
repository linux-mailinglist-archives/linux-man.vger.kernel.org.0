Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 594243D4EF0
	for <lists+linux-man@lfdr.de>; Sun, 25 Jul 2021 19:10:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229829AbhGYQaQ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 25 Jul 2021 12:30:16 -0400
Received: from luckmann.name ([213.239.213.133]:56899 "EHLO
        static.213-239-213-133.clients.your-server.de" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S229545AbhGYQaQ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 25 Jul 2021 12:30:16 -0400
X-Greylist: delayed 302 seconds by postgrey-1.27 at vger.kernel.org; Sun, 25 Jul 2021 12:28:42 EDT
Received: from localhost (localhost [127.0.0.1])
  (uid 502)
  by static.213-239-213-133.clients.your-server.de with local
  id 0000000000BD8002.0000000060FD9B15.0000427A; Sun, 25 Jul 2021 19:10:45 +0200
Date:   Sun, 25 Jul 2021 19:10:45 +0200
From:   Helge Kreutzmann <debian@helgefjell.de>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org
Subject: Errors in man pages, here: uri.7
Message-ID: <20210725171045.GA16990@Debian-50-lenny-64-minimal>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256; protocol="application/pgp-signature"; boundary="=_luckmann.name-17018-1627233045-0001-2"
Content-Disposition: inline
X-Public-Key-URL: http://www.helgefjell.de/data/debian_neu.asc
X-homepage: http://www.helgefjell.de/debian
User-Agent: Mutt/1.10.1 (2018-07-13)
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is a MIME-formatted message.  If you see this text it means that your
E-mail software does not support MIME-formatted messages.

--=_luckmann.name-17018-1627233045-0001-2
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

Man page: uri.7
Issue: Gopher selector string =E2=86=92 Gopher type selector string?

"I<selector> is the Gopher selector string.  In the Gopher protocol, Gopher=
 "
"selector strings are a sequence of octets which may contain any octets "
"except 09 hexadecimal (US-ASCII HT or tab), 0A hexadecimal (US-ASCII "
"character LF), and 0D (US-ASCII character CR)."

--=20
      Dr. Helge Kreutzmann                     debian@helgefjell.de
           Dipl.-Phys.                   http://www.helgefjell.de/debian.php
        64bit GNU powered                     gpg signed mail preferred
           Help keep free software "libre": http://www.ffii.de/

--=_luckmann.name-17018-1627233045-0001-2
Content-Type: application/pgp-signature; name="signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEbZZfteMW0gNUynuwQbqlJmgq5nAFAmD9mxUACgkQQbqlJmgq
5nDoBw//ZgaW0DqVbGdbQk4aMSzh78JBi7T9j1gv2qO7wHGo/vX0srfPzt5fBXCc
YNSnZ3Z6O7xpdhDfiWha81i+8oRE78VDCiYC8bvUd+YMlGbw1QPUhdn+SrN1M4Vh
i96+wWVCksTL4q4+vi+33RJykmGL6wWY/ko13EGURwpkHbTi/WslG96oQoyjkhk7
CkIeuOQ+Zl5z+y06lyEhLN2K9yTR0sutN3c99rxbWUtgGLsRc7IJZMJKo8ozeN07
kT1J6F69EQYd0p0e7owfsRP4VSSNlEel43so/0szlzDj8noyT9L+qWs9xkwRRSbB
y4q2gX2Ds2ZRcUBtm7sNy7pNZs7+XEIczeLK2SIlL8g718g+Bd290QDcRf02TeH9
BtwsTiZldTdwBppYM29+J6JqDuDrJLTQIXSVAq4JlFQnBsKbTR1SFyxXHSYuGOfO
FzTGMSLgfzmfLeXFEp9Dc/q345VjdeMZNbtkbRG2+VHgyJX7kY0kysFZNOYF8bJq
Dw9w5Xtog2iuRN7RfIyonuKYHD8vG6y1i8WQbOLIlAknV0GXITQTdD3UHlhxCtJV
+/Tb56r/jDPSawP8z4VQn6+KhvOUnnbb9V7j89TUypwW0Rd8mkX7YLWzGiap+enr
1FI/LY5MTLfMgzXzog7tYBE+fQcy3XiFRqH4QPJ68o7Oxb+ZQro=
=V0Ln
-----END PGP SIGNATURE-----

--=_luckmann.name-17018-1627233045-0001-2--
