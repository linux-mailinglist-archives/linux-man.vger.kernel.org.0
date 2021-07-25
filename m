Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9CA023D4EF7
	for <lists+linux-man@lfdr.de>; Sun, 25 Jul 2021 19:12:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229689AbhGYQbc (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 25 Jul 2021 12:31:32 -0400
Received: from luckmann.name ([213.239.213.133]:56899 "EHLO
        static.213-239-213-133.clients.your-server.de" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S229584AbhGYQbc (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 25 Jul 2021 12:31:32 -0400
X-Greylist: delayed 302 seconds by postgrey-1.27 at vger.kernel.org; Sun, 25 Jul 2021 12:28:42 EDT
Received: from localhost (localhost [127.0.0.1])
  (uid 502)
  by static.213-239-213-133.clients.your-server.de with local
  id 0000000000BD8011.0000000060FD9A35.00004054; Sun, 25 Jul 2021 19:07:01 +0200
Date:   Sun, 25 Jul 2021 19:07:01 +0200
From:   Helge Kreutzmann <debian@helgefjell.de>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org
Subject: Errors in man pages, here: hier.7
Message-ID: <20210725170701.GA16440@Debian-50-lenny-64-minimal>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256; protocol="application/pgp-signature"; boundary="=_luckmann.name-16468-1627232821-0001-2"
Content-Disposition: inline
X-Public-Key-URL: http://www.helgefjell.de/data/debian_neu.asc
X-homepage: http://www.helgefjell.de/debian
User-Agent: Mutt/1.10.1 (2018-07-13)
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is a MIME-formatted message.  If you see this text it means that your
E-mail software does not support MIME-formatted messages.

--=_luckmann.name-16468-1627232821-0001-2
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

Man page: hier.7
Issue: Should start with uppercase letter

"is the traditional place to look for X11 executables; on Linux, it usually=
 "
"is a symbolic link to I</usr/X11R6/bin>."

--=20
      Dr. Helge Kreutzmann                     debian@helgefjell.de
           Dipl.-Phys.                   http://www.helgefjell.de/debian.php
        64bit GNU powered                     gpg signed mail preferred
           Help keep free software "libre": http://www.ffii.de/

--=_luckmann.name-16468-1627232821-0001-2
Content-Type: application/pgp-signature; name="signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEbZZfteMW0gNUynuwQbqlJmgq5nAFAmD9mjQACgkQQbqlJmgq
5nB9VxAAgtcB4h8l++wIYc3Gt+IiTYw+bNJRZDKqCCioOgJLANTXwpW0ug5XIQhQ
RAFpJZgPdLvJ6OLcApJ1j78bYB4XxcTGcFyvHhzTtU6u33hSmGAMlICt65H2aeDn
qeOis8nvy1elLnr0tYZPSzfeKd5S9PSv4kFTVkptuihXmyptGpig/VruWSVE+Fpa
cRae3iFnUkoFfEYKZYIaLsXdnySJDwnEFM5SoXlsoTL0nA3TGbOgLal8cut0//px
7nr+BsPiS7xvGn1db1tVvqtxViVX/y3gNkPrisuOZ0B4Xd0NN1/xlJkiKwWvxPqc
3MU6Hxb1unlXljvhNFLqogFv5JoXCKY0eJTW/Eg9cR9tp6Zl6UCRiLg9hzReVZer
9pOSZwZX3+y3FzWznR0+0bGVygl13Tiw6GsaUPAH4zGQGRBQ1i7PAvPyJXTbM4OP
4N1EnqW6Ck7tMms1jZk2ww9gxbs7PytCGT1UlnF24e1BmJub320JV6AsT3jm2WLs
gqIj/qLraRTzRAQyh9KqFbpVnh/eIU7qH3Dkvv/81xV8mhNuKoso24SUezsZLIpx
Sr2Ug0D1a6JRqNQCTS22SuZ5Om7yLPHpdLL710CTuMIBRZKoEcIpMtKWoYcrh5Ak
B905ZoyCjqOzv0CMJQYhL1ulpkzmB7EjEZ3Rd2P5mQuMMJ5v76Q=
=best
-----END PGP SIGNATURE-----

--=_luckmann.name-16468-1627232821-0001-2--
