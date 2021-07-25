Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 336663D4EEA
	for <lists+linux-man@lfdr.de>; Sun, 25 Jul 2021 19:09:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229709AbhGYQ3M (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 25 Jul 2021 12:29:12 -0400
Received: from luckmann.name ([213.239.213.133]:56899 "EHLO
        static.213-239-213-133.clients.your-server.de" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S229545AbhGYQ3M (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 25 Jul 2021 12:29:12 -0400
X-Greylist: delayed 302 seconds by postgrey-1.27 at vger.kernel.org; Sun, 25 Jul 2021 12:28:42 EDT
Received: from localhost (localhost [127.0.0.1])
  (uid 502)
  by static.213-239-213-133.clients.your-server.de with local
  id 0000000000BD8002.0000000060FD9AD5.000041FF; Sun, 25 Jul 2021 19:09:41 +0200
Date:   Sun, 25 Jul 2021 19:09:41 +0200
From:   Helge Kreutzmann <debian@helgefjell.de>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org
Subject: Errors in man pages, here: sync.2
Message-ID: <20210725170941.GA16868@Debian-50-lenny-64-minimal>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256; protocol="application/pgp-signature"; boundary="=_luckmann.name-16895-1627232981-0001-2"
Content-Disposition: inline
X-Public-Key-URL: http://www.helgefjell.de/data/debian_neu.asc
X-homepage: http://www.helgefjell.de/debian
User-Agent: Mutt/1.10.1 (2018-07-13)
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is a MIME-formatted message.  If you see this text it means that your
E-mail software does not support MIME-formatted messages.

--=_luckmann.name-16895-1627232981-0001-2
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

Man page: sync.2
Issue: to a files =E2=86=92 to a file

"Data was written to a files on NFS or another filesystem which does not "
"allocate space at the time of a B<write>(2)  system call, and some previou=
s "
"write failed due to insufficient storage space."

--=20
      Dr. Helge Kreutzmann                     debian@helgefjell.de
           Dipl.-Phys.                   http://www.helgefjell.de/debian.php
        64bit GNU powered                     gpg signed mail preferred
           Help keep free software "libre": http://www.ffii.de/

--=_luckmann.name-16895-1627232981-0001-2
Content-Type: application/pgp-signature; name="signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEbZZfteMW0gNUynuwQbqlJmgq5nAFAmD9mtUACgkQQbqlJmgq
5nAaLg//Zb4JpLkBUwV7oTR5IdZ9lxIzAc3V2qkBC9pLG92CXWFlEeBXYn2pVzgW
Y2SlowK7cvicw6FKoJsZbDqRMPdQKKhl4Ba1RbrxDrscGR9uUyVlWHt2Qimoh95B
OinUmjBkoU2itfQKM6dIOPoa6RR+DXC2IBT/4xV2mGlgAbWl/Ycbk90Dqqb84bQE
YJ3oQmKL0v2u9w3VfU3GoonUR1FhOaodzAEPX2q8nshbuVqQJ9/rDGtiVxopXANg
SboqCS0Uz0t56HXMknV2QXDbQBZgyY6A+oEi7DwWngzCI2hx4iJqxvbgyx/vj0bI
Z+7uczRrNbf2dMZG+Y3vSd46wLmv7eXr4MBY3A1cugl+UqAYVUgLNl0lUViE7MTs
OaR5OA8r3yGtVEKGxbjLYxu5R2yaRCa4av4Reg8YwRE5Bx5Og3FDNfwFWMNiuuXv
BzA/6QxwR5FdfNSzYP+5bM400WF9m6Uk+t3GB9ApgrHXzC7Y5RrN7IcJZ1nOtLUP
iqJJeaWEawXU2qcjwSrsC+FDbh9xZafJQQDZhi52EWkjns1YE57VP9Ks2ho5TIo1
fxcG04tj8+3OM8Zk/GUqoAwunTlKtK0+Eb5DDV+5ObV469TFlXm+v6+IoYqEGyAr
YN7zrcXEdHu6kPC8PlOD4prJlKS3aM8+De+Z6elioaj3h3ctiqM=
=V18v
-----END PGP SIGNATURE-----

--=_luckmann.name-16895-1627232981-0001-2--
