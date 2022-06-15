Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9F45054CC42
	for <lists+linux-man@lfdr.de>; Wed, 15 Jun 2022 17:12:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236237AbiFOPMw (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 15 Jun 2022 11:12:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33456 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239055AbiFOPMw (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 15 Jun 2022 11:12:52 -0400
Received: from tarta.nabijaczleweli.xyz (unknown [139.28.40.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id CE6FFA461
        for <linux-man@vger.kernel.org>; Wed, 15 Jun 2022 08:12:50 -0700 (PDT)
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 7C18B2652;
        Wed, 15 Jun 2022 17:12:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202205; t=1655305969;
        bh=kczXS3sEkabxuF5zqlHMPMfYit7ATW+VPFQ4xV/oEkI=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=VbDxy6fZh5Rzzykt1bbWXYWTUnCscHwK6x38S7ND4qLdeIYkRVe3hyC8JZtfAgw2v
         POiq1I1yB59+oxpzoHIYDP0+jJnG0LOPiukKgkg+imFOATTOSwbMQ5udCjmMmQWH91
         b17z5oXBBnPEUruli99aGqF/ai1ddJA6U1e2qAC7GrV0DBr7+Dy1D8umiQ6yw19Uw/
         i8m3xAVHauvcAOr/GYQSILbHD/XoI+3umjehg2rkYwqBVwmDol4hX6Ym/fzVQmB1UH
         PvC5+1clXOpK3BewHU0OB0gWqOnUVVP3REBkCv5ththYmzYd7fveAHLUE73JN8FMZS
         ZTXyOWSWpsCiklCL+r8/UB/fjGHdJAm4lxa1tsueRw8DApgxLQkYCIjoIwrpBRNgZu
         rRvSGvuQMW+48ENZTNCxo5SmgGnwsafmlonii3lQWFZy0EbPSUMeHa49ns9WnyuDdx
         HbGo5D8Sl3MrvnmYO5F1oRuH27cl0VMoJaaJ90kBmC3QGmCjar7dO/5sRbTCp2e4rj
         GFl/Lk8m/uHs7bHiXS6DJZwvpzIDJwinFgsshwNnIUCuq+p7XUHD/7txoHMLjbYezA
         HZoHpOu5c1TRFGyVpzwQwepbAQIdXHv+7e9UZrl2D9gqYYyfotjLN/XtvxzA3t9GDU
         2k68217nTO53IMUfOuxCRZ00=
Date:   Wed, 15 Jun 2022 17:12:48 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     Stefan Puiu <stefan.puiu@gmail.com>
Cc:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>,
        lnx-man <linux-man@vger.kernel.org>
Subject: Re: [PATCH 1/2] uname.2: fix standard reference wording
Message-ID: <20220615151248.galayhoy34rheez5@tarta.nabijaczleweli.xyz>
References: <4a27c7c7295739005855299b23d1ab20b11e0110.1655287466.git.nabijaczleweli@nabijaczleweli.xyz>
 <CACKs7VAdedMNLhx0NWvayt3GzDVYVuoKp1mEt8kGH_=YMYCaXw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="hlboj3ztsmpn7uaa"
Content-Disposition: inline
In-Reply-To: <CACKs7VAdedMNLhx0NWvayt3GzDVYVuoKp1mEt8kGH_=YMYCaXw@mail.gmail.com>
User-Agent: NeoMutt/20220429
X-Spam-Status: No, score=1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FROM_SUSPICIOUS_NTLD,
        PDS_OTHER_BAD_TLD,RDNS_DYNAMIC,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=no autolearn_force=no version=3.4.6
X-Spam-Level: *
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--hlboj3ztsmpn7uaa
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi!

On Wed, Jun 15, 2022 at 02:58:27PM +0300, Stefan Puiu wrote:
> On Wed, Jun 15, 2022 at 1:15 PM =D0=BD=D0=B0=D0=B1 <nabijaczleweli@nabija=
czleweli.xyz> wrote:
> > @@ -73,9 +73,10 @@ So, four of the fields of the struct are meaningful.
> >  On the other hand, the field
> >  .I nodename
> >  is meaningless:
> > -it gives the name of the present machine in some undefined
> > -network, but typically machines are in more than one network
> > -and have several names.
> > +it gives the name of the present machine in some "the" network
>=20
> Maybe "in one network" sounds better here?

Typo! This was supposed to be "some network". I've updated this locally
but 2/2 replaces this line, so not resending (yet).

> > +to which it's attached,
> > +but typically machines are in more than one network
> > +and have several names by which they're reachable.
>=20
> I'm not sure the use case of many networks and many names is typical,
> though it is common. Maybe we can rephrase this to "Note the machine
> might sit in more than one network and have several names"?

It's 100% the case on all systems; your machine is reachable as both
$(uname -n) and localhost (and, likely, $(uname -n).your.FQDN, and
probably localhost6).

localhost (and localhost6) is routed through a different network
(obviously your LAN isn't 127/8;
 the addressof localhost =3D=3D addressof $(uname -n) 4.2BSDism
 has died with 4.3BSD)
and /through a different NIC/
(the lo prefix dates back to at least 4.2BSD).

Also: a machine may only have one name (well, ex def., but also because
what other nomenclatural facility beside uname -n is there? you could
make the case for SVr3 uname -S that also wrote to sysname,
but that's an abuse, and forbidden by the standard).
That it's /reachable/ by multiple names doesn't change its utsname.

I still think that as a small wording-fixup diff this diff stands,
and the larger rewrite in 2/2 avoids this issue completely:
> Conversely, the nodename field is configured by the administrator to
> match the network (this is what the BSD historically calls the
> "hostname", and is set via sethostname(2)).

Best,
=D0=BD=D0=B0=D0=B1

--hlboj3ztsmpn7uaa
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmKp9vAACgkQvP0LAY0m
WPHweg//XJMZ1+IVF5BWhVZqWpOogCyUMwOfHLI4BfAfA1hCQDOkrpjk7opjiSWT
DuYZ/DBIgnuSiaQFdByunQi6Ri1YpulYM2XGqJlZZwJyRQcrlYRSXxWiywNTuadj
OrMSFbj00yPKlKqTd4OsOTZXxMnoV5a/ncKU0toiTzEEFbP2K17Te4xyi+xNMB84
knyTWuzv5yWnCfwJU5rMrWnexOGacbzj3f7gUyPDlSZpw4W7YTD8yGK660WaVomt
0UT3aVPVl18lDTjP61D32hKSA/7aPS+/x2xYn9jcTBSt5v7v5Tqi64eKgjb5AFux
5fx3WOkTpO4Yg93QGOTAx5gN2+RXUOdSfXBFXuDb2rNHSkKTKZDJiT4LtQ6U8l0U
mmASClMg8ToiRuTdOkjipZOQD9Z6Mk58O3mrwDMuJ6fGNQ6lcXCA0vgXvO+s9RT2
+9BfyfDh6fJ92KP0n9L5Aq/5YMVzdBbZFF4u5drKH6V6GAucQ8WfRWJCMNYU2n8D
0z+dhPHFhoR+WZdcsLch+dVT0NxZtF9bM1d4nwYU9EoFTAeMfxzeHdpBLPHzrBvJ
kDUBCJG42za1j5cAauQddQApOXn2CQgqTpDCV15GcuJty31A21d+u28CjqJBXXIc
JO2kDDcGJzkqnnmy6Utx/SG27kAaEMI93MsU2rlhShOviWUePZ0=
=CiWA
-----END PGP SIGNATURE-----

--hlboj3ztsmpn7uaa--
