Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A86413D4EF9
	for <lists+linux-man@lfdr.de>; Sun, 25 Jul 2021 19:12:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229825AbhGYQb6 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 25 Jul 2021 12:31:58 -0400
Received: from luckmann.name ([213.239.213.133]:56899 "EHLO
        static.213-239-213-133.clients.your-server.de" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S229689AbhGYQb6 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 25 Jul 2021 12:31:58 -0400
X-Greylist: delayed 302 seconds by postgrey-1.27 at vger.kernel.org; Sun, 25 Jul 2021 12:28:42 EDT
Received: from localhost (localhost [127.0.0.1])
  (uid 502)
  by static.213-239-213-133.clients.your-server.de with local
  id 0000000000BD8015.0000000060FD9A4E.00004094; Sun, 25 Jul 2021 19:07:26 +0200
Date:   Sun, 25 Jul 2021 19:07:26 +0200
From:   Helge Kreutzmann <debian@helgefjell.de>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org
Subject: Errors in man pages, here: ioctl_tty.2
Message-ID: <20210725170726.GA16503@Debian-50-lenny-64-minimal>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256; protocol="application/pgp-signature"; boundary="=_luckmann.name-16532-1627232846-0001-2"
Content-Disposition: inline
X-Public-Key-URL: http://www.helgefjell.de/data/debian_neu.asc
X-homepage: http://www.helgefjell.de/debian
User-Agent: Mutt/1.10.1 (2018-07-13)
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is a MIME-formatted message.  If you see this text it means that your
E-mail software does not support MIME-formatted messages.

--=_luckmann.name-16532-1627232846-0001-2
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
Issue: Solaris, Linux =E2=86=92 Solaris and Linux

"(SVr4, UnixWare, Solaris, Linux treat I<tcsendbreak(fd,arg)> with nonzero "
"I<arg> like I<tcdrain(fd)>.  SunOS treats I<arg> as a multiplier, and send=
s "
"a stream of bits I<arg> times as long as done for zero I<arg>.  DG/UX and "
"AIX treat I<arg> (when nonzero) as a time interval measured in "
"milliseconds.  HP-UX ignores I<arg>.)"

--=20
      Dr. Helge Kreutzmann                     debian@helgefjell.de
           Dipl.-Phys.                   http://www.helgefjell.de/debian.php
        64bit GNU powered                     gpg signed mail preferred
           Help keep free software "libre": http://www.ffii.de/

--=_luckmann.name-16532-1627232846-0001-2
Content-Type: application/pgp-signature; name="signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEbZZfteMW0gNUynuwQbqlJmgq5nAFAmD9mk4ACgkQQbqlJmgq
5nBx9A/9EV+s0fyUxEaA6d0dthIVrgBhcDpn0Kz/LmU2rMHUBp0RO6i8nrXrepn2
UbQTKnLzfAM9N9a9O6EEgeXxAkkosFuuSqViy3c0b1LB9vbf+rMs2RWDX3nGG8kk
UagUSziMWqbGQQWgAYvLY/oEkQ1GcFbYbl/UHbAqBi+f0B/OAF9adrakyjhML4iA
ISRLb2n9+fBTnGy54cSj0qhENAANfjBDt81QvCVVuu4b2yrwJandYOZAob0EaWkG
xwgIkXmVbfh4z25aINBCZU+JGF6sbOVk5DkL4C53RpXXf6O1AZW0AqDdA7IvHmtD
yvNGMInSV6lZvAcYR6rklk/FNUJaN1kG0vVhyG+QyXzxYP174a8e7PMiu8RmOLRB
3VpGmepl/4dJpvo6bDH17lsNHw5BHKFtC443JwfyjQB7ztrDuJUTDHwfA7mMCUOB
M/1JiqFHmCIwIDTYBNxOXPy38hnrn/hxd3H5dN7nSxUtWJUDUg0yhvFVmX+g9Oiq
Ik6HIhXArh5+v0FH7YbLlk3pyOQ8zQQrOhEtU779cJ/kjfsGnfZJL88mPKW5kPBT
2omGV5IEF3iCnMC7DHEf1oYsELTgaXFF4kHmS0wu6MYcPeHx7Qpo9GSJheElKAq/
ZurZekt63hnFrhcNIWz7bXNoLTNGKV8ZPSqJMZ4Sc8/o93qA77k=
=3ez8
-----END PGP SIGNATURE-----

--=_luckmann.name-16532-1627232846-0001-2--
