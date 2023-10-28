Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C82D27DA813
	for <lists+linux-man@lfdr.de>; Sat, 28 Oct 2023 18:30:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229572AbjJ1QaX (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 28 Oct 2023 12:30:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55516 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229565AbjJ1QaT (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 28 Oct 2023 12:30:19 -0400
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 31FF5E5
        for <linux-man@vger.kernel.org>; Sat, 28 Oct 2023 09:30:17 -0700 (PDT)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F3149C433C7;
        Sat, 28 Oct 2023 16:30:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1698510616;
        bh=Zl3w8PIKfCq6LqJT6ys+xgwhQABgQfzbgyZVdu+SyMQ=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=XkM7wc0ktEs6UkkMH/6RVXsTShnAG0xCzL+6o1xDTlsk8em74APKDk6aFw05o6k/G
         ZkEsIQPNY+5rLVLH2VJjZa8TVDaPbtfNkWqFo3/zu/RxkIR6287DQ9vTMcY3YqBsrC
         Pe0i2gsPFcRZIGZ8c+ZK1QoCqNi/yNp6tLwKcAI0cYv0izuIsEl534Gl8hhAiT2KF+
         kzP8rnOTfVsrEFVuxMT/B0MWjfp5L8Tw/Zl+rFsYBZux9kWU+UOyDGGit74o3lMyNa
         QNJD4VjYste+qW8WXYJMZl43KVeWQcUe2LbQ74nmlM99XbkMYNzyLg/05D6IGgbavb
         QdHHp7odmCboA==
Date:   Sat, 28 Oct 2023 18:30:13 +0200
From:   Alejandro Colomar <alx@kernel.org>
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     linux-man@vger.kernel.org, groff@gnu.org
Subject: Re: `\c`, mdoc(7), and man(7) extension macros (was: [PATCH 1/2]
 man*/: srcfix)
Message-ID: <ZT03FcWI7V5iQIon@debian>
References: <20231025185424.txreg7q47zigo24j@illithid>
 <ZTlu2r8N3nrCnMpa@debian>
 <20231026125835.phpfjhz6xbsde33d@illithid>
 <ZTpz3A0yijoxDvip@debian>
 <20231028132159.zkf6fh34mmfjzu37@illithid>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="yFDuoHuI4yXKbo08"
Content-Disposition: inline
In-Reply-To: <20231028132159.zkf6fh34mmfjzu37@illithid>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--yFDuoHuI4yXKbo08
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Sat, 28 Oct 2023 18:30:13 +0200
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org, groff@gnu.org
Subject: Re: `\c`, mdoc(7), and man(7) extension macros (was: [PATCH 1/2]
 man*/: srcfix)

Hi Branden,

On Sat, Oct 28, 2023 at 08:21:59AM -0500, G. Branden Robinson wrote:
> > Regarding PP, LP, and P, what's the history of them?  Why do we have
> > the 3?  I'm willing to reduce them to just one.
>=20
> We covered this in another thread, but as Ingo noted, there is no hope
> of actually _retiring_ any of these.  At most they can be documentarily
> deprecated and a high "-rCHECKSTYLE" setting can gripe about them.

Makes sense.

>=20
> groff man(7) formats every Seventh Edition Unix (1979) man page
> correctly as far as I can tell, and I don't want to ever give that up.
>=20
> (This is a slightly different objective from preserving perfect
> compatibility with 7th edition's tmac.an.  I have no qualms about
> discarding compatibility with details of macro package behavior that no
> one relied upon for practical purposes.)

This gives me hope in changing the behavior of RS.  :P

Cheers,
Alex

--=20
<https://www.alejandro-colomar.es/>

--yFDuoHuI4yXKbo08
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmU9NxUACgkQnowa+77/
2zIJlw/8D56AVI5il4fO/OuwLHQPXXuMkC4YNnsaduNeJh+BYUBCvb5f8jFc2ZFN
Nl/1vLdqzmG2y98SKANvpL8aoGzy5htL2c+dEzmTfOvr3l0KKp5EyIMqa5UAno3/
37kpNlF9wRRBi1UqJF/+VF/5IFGfmCuoognbKyDGq3uPsM7h3sbqioQTh3R8qsKM
2KZSsq8pk8GBlBnaG7dcRyFUK2GWzxGnZ6OBGxrzrtaC+sMqSfqCVehQGgs7PceG
nay0NRV/neAGvrG6XN06ElB9SuSrrtFohEOXFlLCpGzuxClP5ndSKS5DtSt6LAWt
7RnA6tywADWeV168HtyqkI1I3eygKx6Vt4TzSul+EzpMefkbRM38UBg6IK+5XQG8
pU7dDtVoQyvD07IUlLV+T16einq1vVrkFTiCywd+Qbg5Znc/Aq3dPLKlrE/DJuO2
VQHZFZjWNWWBCMUrjErJWQR/lP04QgBsu6G7w2VaQ+YLa9M24N8OnKDDjZuPEMKQ
tmu2O3kv11rayujq9m6ycxbwljaquQcw7E+JQM/Gz6i+FRj5q8XBEVzr8QjYhbrz
BJvTsbnyUEEpcOsPrz7gEYyUy2kJ51mxYmJyJdJCrj7f355K8Ezx8EqT/FzfUZTI
yatP4fDr6RIWuTsSjRIS4U3ofmJgGBq+a1N1RGIW531Nzc6kwAM=
=CdI8
-----END PGP SIGNATURE-----

--yFDuoHuI4yXKbo08--
