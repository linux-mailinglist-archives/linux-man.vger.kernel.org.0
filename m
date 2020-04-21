Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 49CA71B2FB3
	for <lists+linux-man@lfdr.de>; Tue, 21 Apr 2020 21:02:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725963AbgDUTCd (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 21 Apr 2020 15:02:33 -0400
Received: from luckmann.name ([213.239.213.133]:59103 "EHLO
        static.213-239-213-133.clients.your-server.de" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1725918AbgDUTCd (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 21 Apr 2020 15:02:33 -0400
Received: from localhost (localhost [127.0.0.1])
  (uid 502)
  by static.213-239-213-133.clients.your-server.de with local
  id 0000000000E56011.000000005E9F4347.00001475; Tue, 21 Apr 2020 21:02:31 +0200
Date:   Tue, 21 Apr 2020 21:02:31 +0200
From:   Helge Kreutzmann <debian@helgefjell.de>
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>
Subject: Re: Errors in man pages, here: gethostbyname(3): Space/Formatting
Message-ID: <20200421190230.GA4951@Debian-50-lenny-64-minimal>
References: <20200419064802.GA30701@Debian-50-lenny-64-minimal>
 <2318ec0f-bc6b-c202-3fca-42c10c714372@gmail.com>
 <20200420194855.GE19913@Debian-50-lenny-64-minimal>
 <CAKgNAkjrHK_-9QTaisW_8zom66UwcT8EO_8jg3NcR_B-d0n_qg@mail.gmail.com>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256; protocol="application/pgp-signature"; boundary="=_luckmann.name-5237-1587495751-0001-2"
Content-Disposition: inline
In-Reply-To: <CAKgNAkjrHK_-9QTaisW_8zom66UwcT8EO_8jg3NcR_B-d0n_qg@mail.gmail.com>
X-Public-Key-URL: http://www.helgefjell.de/data/debian_neu.asc
X-homepage: http://www.helgefjell.de/debian
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is a MIME-formatted message.  If you see this text it means that your
E-mail software does not support MIME-formatted messages.

--=_luckmann.name-5237-1587495751-0001-2
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello Michael,
On Mon, Apr 20, 2020 at 10:01:21PM +0200, Michael Kerrisk (man-pages) wrote:
> On Mon, 20 Apr 2020 at 21:48, Helge Kreutzmann <debian@helgefjell.de> wro=
te:
> > On Sun, Apr 19, 2020 at 10:09:16PM +0200, Michael Kerrisk (man-pages) w=
rote:
> > > On 4/19/20 8:48 AM, Helge Kreutzmann wrote:
> > > > **
> > > >
> > > > Space between true and (1) and mark up
> > > >
> > > > "The B<sethostent>()  function specifies, if I<stayopen> is true (1=
), that a "
> > > > "connected TCP socket should be used for the name server queries an=
d that the "
> > > > "connection should remain open during successive queries.  Otherwis=
e, name "
> > > > "server queries will use UDP datagrams."
> > >
> > > I don't understand this report. Can you elaborate please.
> >
> > We translator understood the "(1)" as the section number for the man
> > page of true. So actually it should also contain markup, i.e.
> >
> > true (1) =E2=86=92 B<true>(1)
> >
> > And there is no space between the man page name and the section. If
> > another meaning was intended, then we translators misunderstood this
> > sentence completly.
>=20
> Another meaning was intended.
>=20
> The B<sethostent>()  function specifies, if I<stayopen> is true (i.e., 1)
>=20
> Oder: "wenn I<stayopen> wahr (d.h., 1) ist"

Thanks / Danke
Corrected / Korrigiert

Greetings

           Helge
--=20
      Dr. Helge Kreutzmann                     debian@helgefjell.de
           Dipl.-Phys.                   http://www.helgefjell.de/debian.php
        64bit GNU powered                     gpg signed mail preferred
           Help keep free software "libre": http://www.ffii.de/

--=_luckmann.name-5237-1587495751-0001-2
Content-Type: application/pgp-signature; name="signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEbZZfteMW0gNUynuwQbqlJmgq5nAFAl6fQ0EACgkQQbqlJmgq
5nAAkg/6Aw+JV2c3uLXeNWDK3/6SdN2XEpSYJTobrjOxPton4gAIDkLrmEq6c0D1
xDuqT+hHnRD2aWq4aCdRcy1ta7MrBGJrC4iepnvuBRcG3+TGC3bUFbf1LmYA2CTE
wlSrCBUnGIS9d1SMbFd69WFLH3ilNlbYyxYYYRLwdPOT8ydWpngw0A+/UCMJLZC7
sbX0sN8FKweRKeyUxOhP/z3s9biVwi/EJw4KY2K3gMPB3tp0/WInNyoQzRHwB5q9
bdgy+8Qw2GmAZo1SSjDLLLRwJnO1wpoGZH5nb1jsj8cDhrVqji6l+nvz83+B+W45
4CzCSq98JKkXmcaUWL139xtF/eyVMZLIRxNs2vF6yFgOd8aX2FNsFD8en9EpcICk
t55AYsK95VqVLqOB9iaSbJ8lB0EeJkxqsT5H3KNQTX6KZRyTE522RhxEElBIjUHv
6qfHKujrxEjBve7y3DbqzAvM3ilB3zzhFNr0oSA2CXRIlNwsvy2yNYgiXulZC694
0W3oRNRClFQ6a5bz3l5ScbfvReGb9SLLbdlwYyk6s1+anAZEw4cTTpAj5UUKXuFL
a2y318Z7E/N6AkKxB94lKueEObxCfwOtomh8fgdfI9Q1OP4sra6holi9k/NgoABz
pB7MfjN1Hz1O8fzTmeib6gTCV3US65Mr8/uujHjcu/LF6Wozdlo=
=rolh
-----END PGP SIGNATURE-----

--=_luckmann.name-5237-1587495751-0001-2--
