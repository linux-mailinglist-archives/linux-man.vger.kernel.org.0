Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A3D4D3D4EFA
	for <lists+linux-man@lfdr.de>; Sun, 25 Jul 2021 19:12:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229829AbhGYQcK (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 25 Jul 2021 12:32:10 -0400
Received: from luckmann.name ([213.239.213.133]:56899 "EHLO
        static.213-239-213-133.clients.your-server.de" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S229689AbhGYQcK (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 25 Jul 2021 12:32:10 -0400
X-Greylist: delayed 302 seconds by postgrey-1.27 at vger.kernel.org; Sun, 25 Jul 2021 12:28:42 EDT
Received: from localhost (localhost [127.0.0.1])
  (uid 502)
  by static.213-239-213-133.clients.your-server.de with local
  id 0000000000BD8017.0000000060FD9A5C.000040B1; Sun, 25 Jul 2021 19:07:40 +0200
Date:   Sun, 25 Jul 2021 19:07:40 +0200
From:   Helge Kreutzmann <debian@helgefjell.de>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org
Subject: Errors in man pages, here: ioctl_tty.2
Message-ID: <20210725170739.GA16534@Debian-50-lenny-64-minimal>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256; protocol="application/pgp-signature"; boundary="=_luckmann.name-16561-1627232860-0001-2"
Content-Disposition: inline
X-Public-Key-URL: http://www.helgefjell.de/data/debian_neu.asc
X-homepage: http://www.helgefjell.de/debian
User-Agent: Mutt/1.10.1 (2018-07-13)
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is a MIME-formatted message.  If you see this text it means that your
E-mail software does not support MIME-formatted messages.

--=_luckmann.name-16561-1627232860-0001-2
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

Man page: ioctl_tty.2
Issue: B<TIOCUCNTL>, B<TIOCREMOTE> =E2=86=92 B<TIOCUCNTL> and B<TIOCREMOTE>

"The BSD ioctls B<TIOCSTOP>, B<TIOCSTART>, B<TIOCUCNTL>, B<TIOCREMOTE> have=
 "
"not been implemented under Linux."

--=20
      Dr. Helge Kreutzmann                     debian@helgefjell.de
           Dipl.-Phys.                   http://www.helgefjell.de/debian.php
        64bit GNU powered                     gpg signed mail preferred
           Help keep free software "libre": http://www.ffii.de/

--=_luckmann.name-16561-1627232860-0001-2
Content-Type: application/pgp-signature; name="signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEbZZfteMW0gNUynuwQbqlJmgq5nAFAmD9mlsACgkQQbqlJmgq
5nAmsw//bY5LMNdQs5sIwLNRlGsMUTvr9ZUs4SjxTFoK6H2EfsJJwjzOMtBo1wLC
XUw5HmTxkddjvo8Qbqx2U+qREXF+8dz3keCt7uEipvPEXUl1sLtnproR4mtF+X+G
IQRur+ssRfClnYakD4+CMSEGSt83lOBTZJXTq7lQ9IZbD7PP9cytQTNWtHrdivPn
iu4M+mvZCfOAMlTAke+1Mi5HGva9XKSymi/RTdL72oQdfqG5HyTLzNqdHAKdF6n1
dT13vlJB9gtEmssfWhB/c3oUf5huUstsgngtbDEM47x6HUnb5xDzO9eWm1RRzQiL
k4Jn9C9Pjju2wTJAFPXvx0s6impXgyvu4SFf0aQHiHrmCu0aJRV0mXbqwTo65j4S
3mta9xHuM9efYZm+oXoPOW7ijkzZ3ZkuEyj+zEGkP5YHW8qTxjd53ijbjGmSRjYx
UCbnZjA8TK+1jW4qm6hNUI2i42P6ShGyMV+VxRPGmZ6PEyWsxgzNZ/mqoR54biyp
8xSMT8RtpIoF3a+zJ4PnAftzOCatayYFyuxv+d3IjBatHS2HeALLw9zBooYnrKVJ
mapeoCb4d/O29p+UYEPfnE0JX9W4i5YeX0MOh8XokwiLtH2Wfv8boDSJyHXkc8Mt
owlWQKHiaLh9RJTY3o/QZO41R70tUGn93TEmj0JPqYRsrCijGrQ=
=/aUT
-----END PGP SIGNATURE-----

--=_luckmann.name-16561-1627232860-0001-2--
