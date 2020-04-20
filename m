Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AEDB21B15EA
	for <lists+linux-man@lfdr.de>; Mon, 20 Apr 2020 21:27:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725896AbgDTT1M (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 20 Apr 2020 15:27:12 -0400
Received: from luckmann.name ([213.239.213.133]:57337 "EHLO
        static.213-239-213-133.clients.your-server.de" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1726189AbgDTT1M (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 20 Apr 2020 15:27:12 -0400
Received: from localhost (localhost [127.0.0.1])
  (uid 502)
  by static.213-239-213-133.clients.your-server.de with local
  id 0000000000E56031.000000005E9DF78E.00004E5A; Mon, 20 Apr 2020 21:27:10 +0200
Date:   Mon, 20 Apr 2020 21:27:10 +0200
From:   Helge Kreutzmann <debian@helgefjell.de>
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: Re: Errors in man pages, here: clone(2): Missing spaces
Message-ID: <20200420192710.GA19913@Debian-50-lenny-64-minimal>
References: <20200419064752.GA30122@Debian-50-lenny-64-minimal>
 <e3ecb8be-1892-3fcb-53de-74c5049441b7@gmail.com>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256; protocol="application/pgp-signature"; boundary="=_luckmann.name-20058-1587410830-0001-2"
Content-Disposition: inline
In-Reply-To: <e3ecb8be-1892-3fcb-53de-74c5049441b7@gmail.com>
X-Public-Key-URL: http://www.helgefjell.de/data/debian_neu.asc
X-homepage: http://www.helgefjell.de/debian
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is a MIME-formatted message.  If you see this text it means that your
E-mail software does not support MIME-formatted messages.

--=_luckmann.name-20058-1587410830-0001-2
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello Michael,
On Sun, Apr 19, 2020 at 09:22:15PM +0200, Michael Kerrisk (man-pages) wrote:
> On 4/19/20 8:47 AM, Helge Kreutzmann wrote:
> >=20
> > s/--/ -- /
> >=20
> > "    /* Keep the namespace open for a while, by sleeping.\n"
> > "       This allows some experimentation--for example, another\n"
> > "       process might join the namespace. */\n"
>=20
> The suggested change is not correct. "em-dashes", which is
> what is being emulated here, are normally not surrounded by=20
> spaces in English usage.

Thanks, beeing not native speaker it looked strange. So please close
the issue.

Best regards

           Helge

--=20
      Dr. Helge Kreutzmann                     debian@helgefjell.de
           Dipl.-Phys.                   http://www.helgefjell.de/debian.php
        64bit GNU powered                     gpg signed mail preferred
           Help keep free software "libre": http://www.ffii.de/

--=_luckmann.name-20058-1587410830-0001-2
Content-Type: application/pgp-signature; name="signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEbZZfteMW0gNUynuwQbqlJmgq5nAFAl6d94EACgkQQbqlJmgq
5nA9dg//UDaQFWLnTSGwNIZNZL9Iovd0/rYpNmRiT8LlrVde/skws4LVm/DwjLB2
p0COqkxCkXCDHNbKLat3LyDSS2SlYggO1pS9Hz/p5/kOZfrBwfICySVJyhB6xwOh
xi/yhGP8DxZA+jYiLf1zyw1/mx4JQBcfMGx7Uk1kpSzwHY/2OBxPjBPHL6JXsNLS
5tlu4nLo7yjkR3D2Q/Jwdzz0vVPC4CfqeJ3gRNvkkMr13IlviG7eM/XeupDvFzPS
H3MNXfkx4AfY0F8QJ5VN3F9o99FoJ8Vx8xRLezKL7K4CT7b14VSyfKfAlOaqbAlm
0X6Pg/fKpQJpylGdE8RF7g3d3j7CD+1F0XhE2M5tsu1wbwN47raX3ptfSbWz+dPc
THMeLWBpZR5CMuBQ3oxz0d48HlrrvVfXRVXgvXICfDCJ6e09CFxkrBvFPLgUtYAv
WDuiOnIKhrZmPo7qpAxXOgx9WuIVx2L913Bldigak1thrg+BtYzOF38oubvtXEQJ
qDb3jgP2DJucAQsQbrYdxA2hOLhVtDoobCZn58+ryq/rzV2LS5GJglDWx1thzI+z
Y2Pnb760fRx9xRomYa0qmiPqyQ2JUsudRBLvOVuGS+gaTymAIO/w59S9kpUGZ872
Pa/8EFYLqOLWyU5uHz2+64bXO3N9hulxEbeiGFc7mRq9JGIThGU=
=vALF
-----END PGP SIGNATURE-----

--=_luckmann.name-20058-1587410830-0001-2--
