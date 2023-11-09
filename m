Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 851F37E6BE5
	for <lists+linux-man@lfdr.de>; Thu,  9 Nov 2023 15:01:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230218AbjKIOB1 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 9 Nov 2023 09:01:27 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53454 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231659AbjKIOB0 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 9 Nov 2023 09:01:26 -0500
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 960FD272C
        for <linux-man@vger.kernel.org>; Thu,  9 Nov 2023 06:01:24 -0800 (PST)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0B355C433C8;
        Thu,  9 Nov 2023 14:01:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1699538484;
        bh=Os6WGLOzyjL2rQDl88BLY3OK1wShUVS6xXAN8CoZBR8=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=n4lRK23Wkr/utbXBW11sBXz3ooYjHf8lnwSwMC1xmNkdgtR3pnp9tpsv0XgInoaoj
         c1OJBb6Gaq5qIw1MnYsC2zF86qvxwUNOuPg8Lj0c3+5BC+JOUlCdBTINjqd2NfjQ9H
         Gw3UvwWm3ztBSJClgYj0fr1iZa2Snvhf/riubM9bi7wff9lQfMMDv2S8icqqSIVlrA
         4FFF1blX06+4FMi2zOT+iPSqDTfokoqcMoYMeB2+Y8GSMIlPJs1hOb5UVOwT1Ppk2u
         uW+eX2fSdLtfz0F4Hx4NLkBi50WVbgQ7hcOpnqOhSX074uP2zwTk1SGG0WFwCwsc8h
         hswU2A0IwrDEw==
Date:   Thu, 9 Nov 2023 15:01:20 +0100
From:   Alejandro Colomar <alx@kernel.org>
To:     Xi Ruoyao <xry111@xry111.site>
Cc:     Jonny Grant <jg@jguk.org>,
        Matthew House <mattlloydhouse@gmail.com>,
        linux-man <linux-man@vger.kernel.org>,
        GNU C Library <libc-alpha@sourceware.org>
Subject: Re: strncpy clarify result may not be null terminated
Message-ID: <ZUzmMNlokdWkFLGf@debian>
References: <aeb55af5-1017-4ffd-9824-30b43d5748e3@jguk.org>
 <ZUgl2HPJvUge7XYN@debian>
 <d40fffcb-524d-44b6-a252-b55a8ddc9fee@jguk.org>
 <ZUo6btEFD_z_3NcF@devuan>
 <20231108021240.176996-1-mattlloydhouse@gmail.com>
 <ZUvilH5kuQfTuZjy@debian>
 <20231109031345.245703-1-mattlloydhouse@gmail.com>
 <250e0401-2eaa-461f-ae20-a7f44d0bc5ad@jguk.org>
 <ZUzEw2j6gHF5WtsO@debian>
 <b14f59e81e1c6ad2c75999ed62f2374344b5942e.camel@xry111.site>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="Idfyvc6kkpfUZHcl"
Content-Disposition: inline
In-Reply-To: <b14f59e81e1c6ad2c75999ed62f2374344b5942e.camel@xry111.site>
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--Idfyvc6kkpfUZHcl
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Thu, 9 Nov 2023 15:01:20 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Xi Ruoyao <xry111@xry111.site>
Cc: Jonny Grant <jg@jguk.org>, Matthew House <mattlloydhouse@gmail.com>,
	linux-man <linux-man@vger.kernel.org>,
	GNU C Library <libc-alpha@sourceware.org>
Subject: Re: strncpy clarify result may not be null terminated

On Thu, Nov 09, 2023 at 08:51:34PM +0800, Xi Ruoyao wrote:
> On Thu, 2023-11-09 at 12:38 +0100, Alejandro Colomar wrote:
> > If you are consistent in checking the return value of strlcpy(3) and
> > reporting an error, it's the best standard alternative nowadays.
> > snprintf(3), except for using int instead of size_t, has an equivalent
> > API, and is in C99, in case that means something.
>=20
> Yes, you can always create your own wrapper instead of demanding a
> standard function which must be implemented by every libc.
>=20
> > If you would want to write something based on Michael Kerrisk's article,
> > you could do this:
>=20
> > 	ssize_t
> > 	strxcpy(char *restrict dst, char *restrict src, size_t dsize)
> > 	{
> > 		if (strlen(src) < dsize)
> > 			return -1;
> >=20
> > 		strcpy(dst, src);
> > 	}
>=20
> I'd like to add __attribute__ ((warn_unused_result)) for this wrapper as
> well.

Indeed.  Thanks!

>=20
> --=20
> Xi Ruoyao <xry111@xry111.site>
> School of Aerospace Science and Technology, Xidian University

--=20
<https://www.alejandro-colomar.es/>

--Idfyvc6kkpfUZHcl
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmVM5jAACgkQnowa+77/
2zJCVg/+KaXnk+UYdNM6DFVc9mcyI6M8xbARUHdF2SKpfMEDrBt5fQKc6+d+2XoI
sxVbceVWzbZ5tKnCQMS5QA0ti7e3EGm/jE8GM69ibY4BL3hjbNI6xCJSOBrjdu8m
r7aKTINo6mreyQKqYt+GTGW3Kwp3NimwqcikoETsK4Unevl8Ln0W+6Nl7sIqEgM9
BMM3lTWz9EmmJB0VMZ0q2O8aQTPe9r3eFjdmmDJZXbF53NZ8OLKtyVJTzJc1d9yP
os6L7GwXiWHQ2T5Z2LoevM8btLIoS81cZmlC3K9nbz9Cns6pbFw5PnHxQugWkDRu
XBeYvdlxyxW/xawNB1YulHqkw9cKtwdkOR8LnLnCZb9TB2xkpFQ+ehhhq6Zhu8l2
YCIl27M8RqqIL7hB2Mkgttz8F5kx4r7vxvy+/BgrGDhA/kyJp9F6MOneIyvllvey
sIgRHIWuRVe3yyr0nOToQga2tFxaKyh0BaAL4lZzTyAgItpCk3S17gtwCDWkB4pO
g68+gx7kVZtTpokc2VwP8qPRkqB79HZ+sqJa7c/TwpU2pFdQqEIyaVJMzn/WlJNy
y8T24ExYa3uMvsqGuigFWQxFiBNFO4OGrbeEr5ohyhY80zGH5VheEMg+BaiITk0v
vID+U10wyZFXP5VrFOmaog2b0Z4L+3UYH034SuauTpGZ2TuvLMI=
=dEmN
-----END PGP SIGNATURE-----

--Idfyvc6kkpfUZHcl--
