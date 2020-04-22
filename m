Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 661331B4D46
	for <lists+linux-man@lfdr.de>; Wed, 22 Apr 2020 21:24:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726046AbgDVTYL (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 22 Apr 2020 15:24:11 -0400
Received: from luckmann.name ([213.239.213.133]:47999 "EHLO
        static.213-239-213-133.clients.your-server.de" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1725961AbgDVTYL (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 22 Apr 2020 15:24:11 -0400
Received: from localhost (localhost [127.0.0.1])
  (uid 502)
  by static.213-239-213-133.clients.your-server.de with local
  id 0000000000E56034.000000005EA099D9.00006923; Wed, 22 Apr 2020 21:24:09 +0200
Date:   Wed, 22 Apr 2020 21:24:09 +0200
From:   Helge Kreutzmann <debian@helgefjell.de>
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: Re: Errors in man pages, here: copysign(3): Suggested improvement
Message-ID: <20200422192409.GB26557@Debian-50-lenny-64-minimal>
References: <20200419064754.GA30214@Debian-50-lenny-64-minimal>
 <84846ce0-881a-e882-8bbc-8fe93d7e4607@gmail.com>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256; protocol="application/pgp-signature"; boundary="=_luckmann.name-26915-1587583449-0001-2"
Content-Disposition: inline
In-Reply-To: <84846ce0-881a-e882-8bbc-8fe93d7e4607@gmail.com>
X-Public-Key-URL: http://www.helgefjell.de/data/debian_neu.asc
X-homepage: http://www.helgefjell.de/debian
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is a MIME-formatted message.  If you see this text it means that your
E-mail software does not support MIME-formatted messages.

--=_luckmann.name-26915-1587583449-0001-2
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hallo Michael,
On Mon, Apr 20, 2020 at 08:36:37AM +0200, Michael Kerrisk (man-pages) wrote:
> On 4/19/20 8:47 AM, Helge Kreutzmann wrote:
> > **
> >=20
> > Description, of what is really done, should be improved
> >=20
> > msgid "copysign, copysignf, copysignl - copy sign of a number"
>=20
> I do not understand the report. Please elaborate.

If you read the text below the description, the function does
something more complex than siply copying the sign of a number, where
I would expect the the result to be either a "+" or a "-" (or maybe 1
or -1).=20

The translator simply found this discrepancy when comparing the body
and the NAME part.

Of course, as this is an improvement request, if you do not think it
can (or should) be changed, then please leave it as is.

Greetings

           Helge

--=20
      Dr. Helge Kreutzmann                     debian@helgefjell.de
           Dipl.-Phys.                   http://www.helgefjell.de/debian.php
        64bit GNU powered                     gpg signed mail preferred
           Help keep free software "libre": http://www.ffii.de/

--=_luckmann.name-26915-1587583449-0001-2
Content-Type: application/pgp-signature; name="signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEbZZfteMW0gNUynuwQbqlJmgq5nAFAl6gmdkACgkQQbqlJmgq
5nACpw//TfXYs+pWdktVIJK7qVAtxP5ddxpI4k3rJzeiMgairAhZTpQLQv6vRXw6
NDE49ulsay7XXyCnKyA4SqfkCPPvhocLqnmR11HhfH+ARgPjRL/Rh2Tu0umWsGdo
XIymiCASr+Tb0RI+xyDDuj85+xIDEzmNTq+Ilt0cGLZr3hL5j/6FWFm5g7rWMLvC
6E/klz9XN2qpaqdBILE2IpMEOqwySfJ8Vlm6DaSQtWnE/VgaGYhXQ3vSNgox0BwB
WYiQp4cBe91m0kbbFc3fbRlz5kI76Erqtj9C0/9oJDfRt3B5aaTbQP6sMN2RyNOo
uR803GP3IiaKdptTOgW5EGcQGsyTHvWsF9qkGQ0Pl0RMTtyqRGEG3TQRUkcca0WL
uSTg+lQ/ABfLhJ8pIVODBncXaNBaCYZ2/mLtS5BZ4ODMs+bbKY9nQSi2ICTDoAk4
KdatO+PHL7aOIl16X52OjCXIzQzg7o+qMvZybltLdJ7+0f4bqRGDwMuQEScp+pzG
9iimrDBoHmjbvf58wFEZXkfX6+RLYyiD2bRQD5MLZHwBfTEyJoHiICxmNLM56zUF
Xb9ehSsfhXsUtHZ/1726a/SkrHN7NZD39iMhc8FHd/4vr8wKaqUh9NtwCnE7eLt3
MxnT4K1dHUtOwCZnGjHprqJXpEkVDeBlWeUwFbGmIbJfx4O4HCY=
=RXgL
-----END PGP SIGNATURE-----

--=_luckmann.name-26915-1587583449-0001-2--
