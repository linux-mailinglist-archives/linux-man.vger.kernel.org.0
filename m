Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3DD8F1B15FB
	for <lists+linux-man@lfdr.de>; Mon, 20 Apr 2020 21:33:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725897AbgDTTdI (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 20 Apr 2020 15:33:08 -0400
Received: from luckmann.name ([213.239.213.133]:40975 "EHLO
        static.213-239-213-133.clients.your-server.de" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1725550AbgDTTdI (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 20 Apr 2020 15:33:08 -0400
Received: from localhost (localhost [127.0.0.1])
  (uid 502)
  by static.213-239-213-133.clients.your-server.de with local
  id 0000000000E56031.000000005E9DF8F2.00004FA0; Mon, 20 Apr 2020 21:33:06 +0200
Date:   Mon, 20 Apr 2020 21:33:06 +0200
From:   Helge Kreutzmann <debian@helgefjell.de>
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: Re: Errors in man pages, here: capabilities(7): Spelling
Message-ID: <20200420193306.GC19913@Debian-50-lenny-64-minimal>
References: <20200419064750.GA30023@Debian-50-lenny-64-minimal>
 <ee26d042-d1bd-2c54-7a7c-667078c436dd@gmail.com>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256; protocol="application/pgp-signature"; boundary="=_luckmann.name-20384-1587411186-0001-2"
Content-Disposition: inline
In-Reply-To: <ee26d042-d1bd-2c54-7a7c-667078c436dd@gmail.com>
X-Public-Key-URL: http://www.helgefjell.de/data/debian_neu.asc
X-homepage: http://www.helgefjell.de/debian
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is a MIME-formatted message.  If you see this text it means that your
E-mail software does not support MIME-formatted messages.

--=_luckmann.name-20384-1587411186-0001-2
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello Michael,
On Sun, Apr 19, 2020 at 09:22:23PM +0200, Michael Kerrisk (man-pages) wrote:
> On 4/19/20 8:47 AM, Helge Kreutzmann wrote:
>=20
> >   b) user IDs =E2=86=92 user ID
>=20
> No change. Nothing wrong that I can see here.

> > "I<Note>: according to the rules above, if a process with nonzero user =
IDs "
> > "performs an B<execve>(2)  then any capabilities that are present in it=
s "
> > "permitted and effective sets will be cleared.  For the treatment of "
> > "capabilities when a process with a user ID of zero performs an B<execv=
e>(2), "
> > "see below under I<Capabilities and execution of programs by root>."

Ok, so a process can have multiple user IDs then? I correct the
translation. Thanks for pointing this out.

Best regards

            Helge

--=20
      Dr. Helge Kreutzmann                     debian@helgefjell.de
           Dipl.-Phys.                   http://www.helgefjell.de/debian.php
        64bit GNU powered                     gpg signed mail preferred
           Help keep free software "libre": http://www.ffii.de/

--=_luckmann.name-20384-1587411186-0001-2
Content-Type: application/pgp-signature; name="signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEbZZfteMW0gNUynuwQbqlJmgq5nAFAl6d+PIACgkQQbqlJmgq
5nDjdxAAntNReblHAyFcc4ruIB/wVpvhJtHe80wzk+WhTJKdxSYJkR89Xd2Qeltl
ULsKd04nAjJuQc718bmQpazIweBmxz/Ukd/TqgsICmCpo/NlzWFEFfRVL8niZ5Qj
M3YcupxnanYBR64I7hwcjyNuYQgvz9QWX5CspO0EAUaUYOd22XvGKM4YZgPYJ1JY
ekiDfJkg5XjQU7Vz++asMguDnENzCBRCSdXEj2nKg0ZCMD9AAJfM7oCaHq31F10V
njHQkR2EERYEw4yFV0vsL9GwDIbbccmkw+Xkut85pspooFbjICBoDLuq7sxxTwWD
iN8ivWEU9OfMdxchwISYWw/wAE/3hUeZKSOKx8JsynEIrszcv0dumYSf3WzQOr5R
MOEPlIXwH83Uk2NbNamDxBG2WoYNePPmkSlvqxsU97uV4j4EqUM46jY7cnSFUODG
OCxawzqsvTJpDTPRs2hDrvJvBpk15ufz32dIBGUZB+8fJVTgp2yVLv/tVLjlwyW4
bclNvtJD3CAXQvDa9BVx/lfCw0T9l9XL/O07giTyTieAR2hK/9qAvAY6idqKrdeY
rQAKvjnE901zaizA4yCgbopGYKqCaEoR7enRpKK+6RL+T2W3qeRMmO7/VybpjgPM
vp4N1tYif9YLqSQOPllLRjhq1wixTXU+l0jFV0Iqej2n8zJhgho=
=XDCk
-----END PGP SIGNATURE-----

--=_luckmann.name-20384-1587411186-0001-2--
