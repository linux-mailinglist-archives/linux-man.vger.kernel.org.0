Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6DCB01B6493
	for <lists+linux-man@lfdr.de>; Thu, 23 Apr 2020 21:39:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726216AbgDWTjZ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 23 Apr 2020 15:39:25 -0400
Received: from luckmann.name ([213.239.213.133]:33579 "EHLO
        static.213-239-213-133.clients.your-server.de" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1726116AbgDWTjZ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 23 Apr 2020 15:39:25 -0400
Received: from localhost (localhost [127.0.0.1])
  (uid 502)
  by static.213-239-213-133.clients.your-server.de with local
  id 0000000000E56033.000000005EA1EEEB.00001D8F; Thu, 23 Apr 2020 21:39:23 +0200
Date:   Thu, 23 Apr 2020 21:39:23 +0200
From:   Helge Kreutzmann <debian@helgefjell.de>
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: Re: Errors in man pages, here: times(2): Content
Message-ID: <20200423193923.GC6193@Debian-50-lenny-64-minimal>
References: <20200419064833.GA32471@Debian-50-lenny-64-minimal>
 <b4ff410f-f674-3aa3-10e4-96b34f1981b2@gmail.com>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256; protocol="application/pgp-signature"; boundary="=_luckmann.name-7567-1587670763-0001-2"
Content-Disposition: inline
In-Reply-To: <b4ff410f-f674-3aa3-10e4-96b34f1981b2@gmail.com>
X-Public-Key-URL: http://www.helgefjell.de/data/debian_neu.asc
X-homepage: http://www.helgefjell.de/debian
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is a MIME-formatted message.  If you see this text it means that your
E-mail software does not support MIME-formatted messages.

--=_luckmann.name-7567-1587670763-0001-2
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello Michael,
On Mon, Apr 20, 2020 at 09:03:02AM +0200, Michael Kerrisk (man-pages) wrote:
> On 4/19/20 8:48 AM, Helge Kreutzmann wrote:
> > **
> >=20
> > The sentence is not logical, a =3D b + a?
> >=20
> > "The I<tms_cutime> field contains the sum of the I<tms_utime> and "
> > "I<tms_cutime> values for all waited-for terminated children.  The "
> > "I<tms_cstime> field contains the sum of the I<tms_stime> and I<tms_cst=
ime> "
> > "values for all waited-for terminated children."
>=20
> I believe the sentence is correct.
>=20
> a[parent] =3D b[children] + a[children]
>=20
> Do you see what I mean?

Yes and thanks for the clarification. I added a note in the source
file in case a future translator reviews this string again.

Greetings

            Helge
--=20
      Dr. Helge Kreutzmann                     debian@helgefjell.de
           Dipl.-Phys.                   http://www.helgefjell.de/debian.php
        64bit GNU powered                     gpg signed mail preferred
           Help keep free software "libre": http://www.ffii.de/

--=_luckmann.name-7567-1587670763-0001-2
Content-Type: application/pgp-signature; name="signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEbZZfteMW0gNUynuwQbqlJmgq5nAFAl6h7usACgkQQbqlJmgq
5nB2tRAApCjX5MMn/Rb0sCnvPVzLEqyLhM21CLYizZ196dO8HiDEx+zS7HqqTncJ
nWump8uOXAAQ4msYUZ7eA9c+FN6uwFXB+8Lq+ZGaT3temZlAn7dkoen1l+iVR2qy
/lcUIGF/rAR0OfSgpl4pso6qu2GUKHX8rGdqonRbqyfq0kh6J1hzzwP3+0r1E+cl
c44OUYQQQ2Cdoyg4JUFwFyUvWS1NL4FpEKtIUkSk65VOCuialQ+Q7W9gO+SStEf6
ynbQIxL0gNbXzOpmirZYsjATudV0TJZAaGvu3CYb0+dfWCNHeqVtiD1bkun3xclw
Gtwxkxhryf3Pu3+RExjgS3Li0/VMqFg6LNhfpZgA7rPcJsudvDuWeH0qDqOWcw40
BNf7U3cQo+TsLCYv1AyoJjhQ7n4NJtTRL+9RqvZpEy17VYZa3kB+fQQPvCCYxJfB
bU65b0RWwToQVXhNMI10VoNzQIzWofuRE0mao6cgtP9fZvvH+7k9L5J1W83tHTkr
wLnxS1sctYjpSYbfBq6FEF/E+NmFzZnziYys0I3DfJx74wXmHV3NAn+wmiN8Krhx
SQz4dTyS4Ct+h27q6vFaCUnoobZrcPdRmzxUwb2CYiQi5NPBougbqZDk6bMNItf/
jHX0xKoG3zrKehkesaKwdXjX/RYTBVXfB0jJtLO01F4HHpOioOY=
=tTD0
-----END PGP SIGNATURE-----

--=_luckmann.name-7567-1587670763-0001-2--
