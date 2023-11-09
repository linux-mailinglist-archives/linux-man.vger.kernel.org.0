Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0873B7E6ABD
	for <lists+linux-man@lfdr.de>; Thu,  9 Nov 2023 13:43:27 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230055AbjKIMn1 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 9 Nov 2023 07:43:27 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50920 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230006AbjKIMn1 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 9 Nov 2023 07:43:27 -0500
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6C5BA2590
        for <linux-man@vger.kernel.org>; Thu,  9 Nov 2023 04:43:25 -0800 (PST)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F378AC433C7;
        Thu,  9 Nov 2023 12:43:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1699533805;
        bh=TF8l9TLsKrQ7ULUxaoMZ0ksw9UFt9nNYY1dwUY+M+Jo=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=iMsbI9kRbXRZX+AklT/+dLT5B7u6tj7RnxvNcqfK17VyOCKOtFV1x85GR3wmLwsCS
         gqjFznZZjFaaxJakDA0uIkTt84pUdDw+FTrFLOTQLIgBZqgPFc8/4fHrsJgkXZRIsE
         AztmH+xlV1GG07RlS3wv8PrgmttI5cvCeGhN36+JlsZu8aSSo9zTYx/oHDsUjpfsIw
         iigR1xb/pVVXq4jOft1LBWYIC/bAYlA31a5muiaPI/Vyfd9aY5Ig8PpWT6LYlX6Y+7
         RSgcW0auduZGtL7r6WgEVd1U6Mt8wlTOqIBKgS+ZrQRksBzwYymIJ7RxjPpYqb7on9
         4s/UBtqDiGQtg==
Date:   Thu, 9 Nov 2023 13:43:21 +0100
From:   Alejandro Colomar <alx@kernel.org>
To:     Jonny Grant <jg@jguk.org>
Cc:     Matthew House <mattlloydhouse@gmail.com>,
        linux-man <linux-man@vger.kernel.org>,
        GNU C Library <libc-alpha@sourceware.org>
Subject: Re: strncpy clarify result may not be null terminated
Message-ID: <ZUzT6SpgjyzkMCYN@debian>
References: <ZUacobMq0l_O8gjg@debian>
 <aeb55af5-1017-4ffd-9824-30b43d5748e3@jguk.org>
 <ZUgl2HPJvUge7XYN@debian>
 <d40fffcb-524d-44b6-a252-b55a8ddc9fee@jguk.org>
 <ZUo6btEFD_z_3NcF@devuan>
 <20231108021240.176996-1-mattlloydhouse@gmail.com>
 <ZUvilH5kuQfTuZjy@debian>
 <20231109031345.245703-1-mattlloydhouse@gmail.com>
 <250e0401-2eaa-461f-ae20-a7f44d0bc5ad@jguk.org>
 <ZUzEw2j6gHF5WtsO@debian>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="CEbyUQuTjdHtCXNj"
Content-Disposition: inline
In-Reply-To: <ZUzEw2j6gHF5WtsO@debian>
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--CEbyUQuTjdHtCXNj
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Thu, 9 Nov 2023 13:43:21 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Jonny Grant <jg@jguk.org>
Cc: Matthew House <mattlloydhouse@gmail.com>,
	linux-man <linux-man@vger.kernel.org>,
	GNU C Library <libc-alpha@sourceware.org>
Subject: Re: strncpy clarify result may not be null terminated

On Thu, Nov 09, 2023 at 12:38:37PM +0100, Alejandro Colomar wrote:
> If you would want to write something based on Michael Kerrisk's article,
> you could do this:
>=20
> 	ssize_t
> 	strxcpy(char *restrict dst, char *restrict src, size_t dsize)
> 	{
> 		if (strlen(src) < dsize)

Heh, here's my off-by-one bug of the day.  Good thing is I can fix it in
a single place; unlike calling strncpy(3) all the time.

This should have been <=3D.

Cheers,
Alex

> 			return -1;
>=20
> 		strcpy(dst, src);
> 	}
>=20
> You may also want to calculate 'dsize' automagically, to avoid human
> error, in case it's an array, so you could write a macro on top of it:
>=20
> 	#define STRXCPY(dst, src)  strxcpy(dst, src, ARRAY_SIZE(dst))
>=20
> These are just small wrappers over standard functions, so you shouldn't
> have problems adding them to your project.
>=20
> This is my long term plan for shadow-utils, indeed.  I'm first
> transforming strncpy(3) calls into strlcpy(3) to remove the superfluous
> padding, and later will use this strxcpy() to remove the truncated
> strings to avoid misinterpretation.

--=20
<https://www.alejandro-colomar.es/>

--CEbyUQuTjdHtCXNj
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmVM0+kACgkQnowa+77/
2zLtgA/+IB12zTb+SL3bJAu9dIdQ9y9wmtlNPKMwVhiYzshaM/W+EHQ10MKWdCxm
Nb/F204JpL43k1evpPb1Oor/SF6zxUkl8Z0VF4q1hv5FIkzgZ//HK6lC4MukG8Jy
OXkyrYyM2vEP+C4Kol0XtJeqnYWBCh3VGHWxQeVKMGmsJxVkRZS5NazEFubhnF5I
0kjZJG59cgTDOHD3EiswAmlM1MKe19WcTV/jTBUPXsOj2CflPIqpHNVyE4+HTisI
qZUj2gqCW8437s6t73e4rq+gHWiVv0I+48kT/8pWSQNiRcTG89PWr8nw14F49Zqf
qxRWefypFBpKqLa2YuTOmxcmuwVK+LZ7IajvWBroQMj5403zK9artHd71gma42YF
u9PBRENSve6V5Cx/Fc0WbdygTmfGp0m98TVMSzkCFZrUd4A717QTbgaSvxn092yZ
seNTpjdSGIQdr13u8A9KULvw0DUHVCXXOXb04KjBghJ8u0jAMdVrru5nULzfnjXm
+gFjJwWipr8MjnHGMy9oJuLso0KkFVLb6WoVQwKxXvROrYR5VAewHJx4W7nYO12N
n5OMrAqQ+hdPl7yHGcpSQoTIA/nYR8v/kG3Qdwid0W4M2W76ArDg3Wcl6nhvhBGk
YaC4YgSBDCAPw+1Qz5xZ2q3gzgmfxuZDfsJgrOpLpm1QhvI1a9s=
=gTs+
-----END PGP SIGNATURE-----

--CEbyUQuTjdHtCXNj--
