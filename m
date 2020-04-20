Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 012381B15F7
	for <lists+linux-man@lfdr.de>; Mon, 20 Apr 2020 21:30:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725988AbgDTTaZ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 20 Apr 2020 15:30:25 -0400
Received: from luckmann.name ([213.239.213.133]:52819 "EHLO
        static.213-239-213-133.clients.your-server.de" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1725896AbgDTTaZ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 20 Apr 2020 15:30:25 -0400
Received: from localhost (localhost [127.0.0.1])
  (uid 502)
  by static.213-239-213-133.clients.your-server.de with local
  id 0000000000E56031.000000005E9DF84E.00004EF6; Mon, 20 Apr 2020 21:30:22 +0200
Date:   Mon, 20 Apr 2020 21:30:22 +0200
From:   Helge Kreutzmann <debian@helgefjell.de>
To:     "Dr. Tobias Quathamer" <toddy@debian.org>
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Fwd: Re: Errors in man pages, here: charmap(5): Content
Message-ID: <20200420193022.GB19913@Debian-50-lenny-64-minimal>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256; protocol="application/pgp-signature"; boundary="=_luckmann.name-20214-1587411022-0001-2"
Content-Disposition: inline
X-Public-Key-URL: http://www.helgefjell.de/data/debian_neu.asc
X-homepage: http://www.helgefjell.de/debian
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is a MIME-formatted message.  If you see this text it means that your
E-mail software does not support MIME-formatted messages.

--=_luckmann.name-20214-1587411022-0001-2
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello Tobias,
according to "git blame" you added the FIXME (or moved it, then it
would be from Martin) in 2014.=20

Can you say something for this FIXME (see below)?

----- Forwarded message from "Michael Kerrisk (man-pages)" <mtk.manpages@gm=
ail.com> -----

> Date: Mon, 20 Apr 2020 08:53:33 +0200
> From: "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
> To: Helge Kreutzmann <debian@helgefjell.de>
> Cc: mtk.manpages@gmail.com, linux-man@vger.kernel.org
> Subject: Re: Errors in man pages, here: charmap(5): Content
> User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101 Thund=
erbird/68.6.0
>=20
> On 4/19/20 8:47 AM, Helge Kreutzmann wrote:
> > Dear manpages maintainers.
> > the manpage-l10n project maintains a large number of translations of
> > man pages both from a large variety of sources (including manpages) as
> > well for a large variety of target languages.
> >=20
> > During their work translators notice different possible issues in the
> > original (english) man pages. Sometiems this is a straightforward
> > typo, sometimes a hard to read sentence, sometimes this is a convention
> > not held up and sometimes we simply do not understand the original.
> >=20
> > We use several distributions as sources and update regularly (at
> > least every 2 month). This means we are fairly recent (some
> > distributions like archlinux also update frequently) but might miss
> > the latest upstream version once a while, so the error might be
> > already fixed. We apologize and ask you to close the issue immediately
> > if this should be the case, but given the huge volume of projects and
> > the very limited number of volunteers we are not able to double check
> > each and every issue.
> >=20
> > Secondly we translators see the manpages in the neutral po format,
> > i.e. converted and harmonized, but not the original source (be it man,
> > groff, xml or other). So we cannot provide a true patch (where
> > possible), but only an approximation which you need to translate into
> > your source format.
> >=20
> > Finally the issues I'm reporting have accumulated over time and are
> > not always discovered by me, so sometimes my description of the
> > problem my be a bit limited - do not hesitate to ask so we can clarify
> > them.
> >=20
> > I'm now reporting the errors for your project. As requested, each
> > issue is sent in an unique mail for easier tracking on your side. If
> > future reports should use another channel, please let me know.
> >=20
> > **
> >=20
> > UTF-8 in Debian Squeeze:
> >=20
> > "is followed by the maximum number of bytes for a character.  The defau=
lt "
> > "value is 1."
>=20
> I don't understand this report. Please elaborate.

----- End forwarded message -----

--=20
      Dr. Helge Kreutzmann                     debian@helgefjell.de
           Dipl.-Phys.                   http://www.helgefjell.de/debian.php
        64bit GNU powered                     gpg signed mail preferred
           Help keep free software "libre": http://www.ffii.de/

--=_luckmann.name-20214-1587411022-0001-2
Content-Type: application/pgp-signature; name="signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEbZZfteMW0gNUynuwQbqlJmgq5nAFAl6d+E0ACgkQQbqlJmgq
5nBZiQ//ampzFdX0cWBsuJongZIXa+LHfMOzKoF5kTZVw/oj6mOc2rxqtDUMPWy9
Dxc/iS7XcidBg5DLE/bO6rQv/Ljrq8GJcD+H8vxqdcRJdVUjbyF9WXPzHhmn8YVH
8tSeHUGsr+WTeagzjibplvb9o+CnmTpp3YCr4ggejoKYP4mt9npxDgdeJn0OX0hn
DzK21FuilA6Bq7avuSgzSCVcOsIheXRj6/gDk7umpB7Y0Dwk/OPLAbYQMSP6qATJ
4g1CX4GwJtQbb/f3QCgIUkqz8PhgVKXxJMhtxJuE3mdUbYKL9eZnaVxdelIjriHX
nn2WP/+KehLQ01ySMx2uJVxn/bj/c993ql01zubZ+Cc145KgP38sRe3udSlEfjK7
O6A1521ONUhHmGR64oWt7+BhL5ZiEFzPcHTkZ2tyMCWF4FTYrxIZXx4SWeSJaHBg
0w341DO7t0rHFE0YCF0P7u5jDHyJBMla6OovPM9PykdYCBcOQ/Ll265r5a7EgDds
03m8DOAIEjBrer9IIB4K/dfPEgkbGlkagXnLiBthf+XXxiVvKWdpdIXVRGXs+xZb
M8V1wSPv26veN0cpXjkkQ27O5HA0LYDG3oXfS20fKZT9PP/H7mpW3k/ztI27Uxea
2Z+QjDijxuAnnwmTeit6V9L1tnHQsOVxj/ECNazvLBW/8l+ryjo=
=T1n0
-----END PGP SIGNATURE-----

--=_luckmann.name-20214-1587411022-0001-2--
