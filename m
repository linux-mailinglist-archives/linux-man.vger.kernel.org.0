Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 65BF64E3237
	for <lists+linux-man@lfdr.de>; Mon, 21 Mar 2022 22:14:42 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229830AbiCUVPx (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 21 Mar 2022 17:15:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48912 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229707AbiCUVPw (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 21 Mar 2022 17:15:52 -0400
Received: from smtp.gentoo.org (woodpecker.gentoo.org [IPv6:2001:470:ea4a:1:5054:ff:fec7:86e4])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3EB44261DE3
        for <linux-man@vger.kernel.org>; Mon, 21 Mar 2022 14:14:23 -0700 (PDT)
Received: by smtp.gentoo.org (Postfix, from userid 559)
        id DEDE7343150; Mon, 21 Mar 2022 21:14:21 +0000 (UTC)
Date:   Mon, 21 Mar 2022 17:14:33 -0400
From:   Mike Frysinger <vapier@gentoo.org>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     John Marshall <John.W.Marshall@glasgow.ac.uk>,
        "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>
Subject: Re: Man-pages Git repository
Message-ID: <YjjquYSCEnlFr0PJ@vapier>
Mail-Followup-To: "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>,
        John Marshall <John.W.Marshall@glasgow.ac.uk>,
        "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>
References: <A165C0C4-6879-49AB-8CF1-C1258C3F8773@glasgow.ac.uk>
 <2d3cff38-ba32-b382-c043-397af12d286b@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="obksdShLsO+9SHrP"
Content-Disposition: inline
In-Reply-To: <2d3cff38-ba32-b382-c043-397af12d286b@gmail.com>
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED,
        SPF_HELO_PASS,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--obksdShLsO+9SHrP
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On 16 Mar 2022 18:27, Alejandro Colomar (man-pages) wrote:
> On 3/16/22 14:14, John Marshall wrote:
> > At https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/ it appe=
ars that no new commits have been pushed since early September 2021. Howeve=
r here in the linux-man mailing list archives, it appears that changes are =
continuing to be applied as usual.
> >=20
> > I didn't find anything in the mailing list archives discussing this or =
mentioning a change in repository location. Is there something I'm missing =
about where to find an up-to-date Git repository for the Linux man pages?
>=20
> I keep updating the repository on my own git server,
> <http://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/>.
> That's where patches to the mailing list are being merged since half a
> year ago.
>=20
> However, we haven't released any new versions since then.
> There's only the git repository,
> which you can use to get the freshest manual pages,
> or prepare new patches against them.
>=20
> We (the maintainers) haven't had much time to prepare a release,
> but the official (kernel.org) repository
> will get updated some time in the future.

please keep the canonical git repo up-to-date.  it's what everyone is using,
and it shouldn't be updated only when releases are pushed.  no one is going
to find your personal server, and if they did, i don't see why anyone would
trust it as the canonical source.
-mike

--obksdShLsO+9SHrP
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEuQK1JxMl+JKsJRrUQWM7n+g39YEFAmI46rkACgkQQWM7n+g3
9YEd9Q/+J/co3dcXI+5rKLjnfGN0zG5V1Cn73UdGy/O57KO/xcucrLsfmsMO2L06
wa2qYzfsq9wZIwia/0XYLG2YJtgJ8zcLh9TXGl41In7SDFh5Yt7ltn8hNaz3Egp1
JJJvK6D99PPqNK1t4qBDqGasEslewqbSSGuQWIgTJDeG4JPpkpmKlqnwd0qO4dPg
Q3RU5naAeR0LWM+GKiwjWGiih9AdpDeCujvGu8b1ErH9kI7owBz2mQnmpQi66ujJ
bAPKMgmnf3RXppM7qBBnRjhNRGV5UELirP9UJH4hH7vm7QuYJvHvJhDjxBQeoiT3
Ky4dp3JiAm6xJ56i+1BPago2YjuMOvdGSLEXVK5ECB0HfHLObv2QaJJIhvVmQ9Gf
HLTzfnWIthgqGtHYqrxIOQ06AFq6fSnLKLVy0m4/ylkOWaJ77jFooELzBh+kfJ7L
oazIAyyTpyNlf/OgXYi7yc6HYcKV+Adkwl6Sl9Cj2EjTMjyiJReWStjWTOI2gGaE
74OtRJ0OJGk6XQfD997TLaJW3B19wsAKu6V1SzB9RQn3Eizy7xwSp1BJLZzMtsFQ
QSMaVRbc9AMS/GTspND/zHLjfnH8V7E7+jxt8GQ7bNWFtVgQ8QPNnb9Ts5GTWnx2
d5QMLODdsV4dsveeDF0LxGUXhyKG1UkdpVoW0r8frRO8UsIwSTg=
=p+9U
-----END PGP SIGNATURE-----

--obksdShLsO+9SHrP--
