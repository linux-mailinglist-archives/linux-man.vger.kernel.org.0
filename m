Return-Path: <linux-man+bounces-1053-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AE595901718
	for <lists+linux-man@lfdr.de>; Sun,  9 Jun 2024 19:08:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BFD491C2036D
	for <lists+linux-man@lfdr.de>; Sun,  9 Jun 2024 17:08:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D23A241C63;
	Sun,  9 Jun 2024 17:08:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hnd54cCb"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9071E2C181
	for <linux-man@vger.kernel.org>; Sun,  9 Jun 2024 17:08:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717952905; cv=none; b=Sj+o27IsZcHwIGYAns6sNhqUEjPSHIGaD+a6QzszIQH0YAjgyXziaBvfIFiq9Jb2Bdo4l/SB6dH6V1kFiWMxUDuI+OOmPCwn1Vpou6C9dOmPOSZt+49SMUvPN0zP50oGhvOG31rxLO68LjzAZFxTvwqaEWO2c2zJ+cudisE8r4g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717952905; c=relaxed/simple;
	bh=Wz0JxwtfR6bLjqktdRUUdwhCpu8VzVDjEIgbViYfTaI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=fubyIhJTaA8zyxs/VM3gOD8eSVekUgIZkbciSseg+i1iwxSpfLwv4kuDCWgtBt6VDQ+20UvMW1eOz6Q1e3pq7WVdG7CkqRtnIoJOkFCAJW7hIZfmAlPGcXyZnPhwZYgWjXe0NzvCKaT2kFtzAJE4HpKNVBf59fvsXh0qUO31y8Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hnd54cCb; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 40980C2BD10;
	Sun,  9 Jun 2024 17:08:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717952905;
	bh=Wz0JxwtfR6bLjqktdRUUdwhCpu8VzVDjEIgbViYfTaI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Hnd54cCbmgxGtdyO9FQLEaHSdSzN6cMP0pXc1vRo7kiG16xpxFJtwNAwZ1f9EUM9g
	 lEe9II3Iyn6HInBLHfOB1FUKQGyrj7EsuXDAGwEIrNxc5NTD3JvRfOIWw++YH43rJN
	 fZl2uZcIPQS/I7WVTqXjrlEe1l0Fu3QXJpP86mqNNus0kYWiJpimkhgPGJt7fGjS98
	 q/uDgH+mLHFsA9GImXsM8Usi6cLaOWz3jSgYSYuagWN30/bagh0H9JB9f7ttldpa8O
	 sUpeG92mbQ7vQW/4NzYbaVQWNj48fu6tbijnVCArMkLKRbgX/6ZmeGs86EMNBUCllM
	 /P6jWuGqyED6A==
Date: Sun, 9 Jun 2024 19:08:22 +0200
From: Alejandro Colomar <alx@kernel.org>
To: ellie <el@horse64.org>
Cc: linux-man@vger.kernel.org, Petr Gajdos <pgajdos@suse.cz>
Subject: Re: Suggestion for clarifications on "man 5 proc" page regarding
 /proc/[pid]/self race conditions
Message-ID: <wieg7pby53ldfpvisxpyxoe6xkkyl7sdsqd6g4osmb6i4gksdv@phf545blvrue>
References: <e170ffa6-986a-4e55-9d44-27d7d7520151@horse64.org>
 <26bb3fce-6bed-452b-bf0e-5365f2bc7fa1@horse64.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="szefmgatekcbrd6j"
Content-Disposition: inline
In-Reply-To: <26bb3fce-6bed-452b-bf0e-5365f2bc7fa1@horse64.org>


--szefmgatekcbrd6j
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: ellie <el@horse64.org>
Cc: linux-man@vger.kernel.org, Petr Gajdos <pgajdos@suse.cz>
Subject: Re: Suggestion for clarifications on "man 5 proc" page regarding
 /proc/[pid]/self race conditions
References: <e170ffa6-986a-4e55-9d44-27d7d7520151@horse64.org>
 <26bb3fce-6bed-452b-bf0e-5365f2bc7fa1@horse64.org>
MIME-Version: 1.0
In-Reply-To: <26bb3fce-6bed-452b-bf0e-5365f2bc7fa1@horse64.org>

Hi Ellie,

On Sat, Jun 08, 2024 at 12:23:11AM GMT, ellie wrote:
> Dear Alejandro Colomar,
>=20
> I finally wrote a patch against the latest man pages, see file attached.
> Hopefully this is in a format that allows you to integrate it well.
>=20
> Some quick notes:
>=20
> 1. The "make" process aborted with an error, I couldn't use it to verify.
> However, pandoc seems to think my formatting is correct.
>=20
>=20
> Regards,
>=20
> Ellie
>=20
> PS: The error that "make" gave me was this one, in case anybody finds this
> useful: "TROFF .tmp/man/man2/s390_sthyi.2.cat.set
> troff:.tmp/man/man2/s390_sthyi.2:124: warning [p 2, 1.8i]: cannot adjust
> line"

Huh, you're the second one to report that error, both in this weekend.

Can you please pass --debug=3Dprint to make to see more details?

Also, you can skip that target with

	$ touch .tmp/man/man2/s390_sthyi.2.cat.set

And run make(1) again.


Have a lovely day!
Alex


P.S.:  I'll check the patch later.

--=20
<https://www.alejandro-colomar.es/>

--szefmgatekcbrd6j
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmZl4YUACgkQnowa+77/
2zKAwg//cZ/qOJZNKbKEMNG/2LgkA0qvvTpw6Sp5KwEkQkzItrcJKZc4Dn6OBzOX
tNUCcnUcxEVoja42LEQNiTlpUjiHakK+metA0SiY/ngzszU9dpaaQqepf+jRTj3X
YEoet59ppV9xIxNPUI6Zpgycm1zLgFvm3JRLOwIs63dzLtKAaT0alyq/z68BJb4z
zgiTovQLjgkFZl2yLxbuE065XrI8WY1RYSSnjXK/svz4wxgDRt6yjgoYqFHlOka7
wcAWfv0885duCgzZUm0Q/M3Bif4POCgk9KCIKo841uoJktGYijLOmEbZjAuBmH3s
ubq1Q0BJwX8Vcpe/Q5SMobXbNhj6F3oxzLwy8qWRb3AVaXPKs+RcDIXPIrfe8tOa
BqUVOODh7GF8qc7EdQ2Ekpp9Dq5zVVLXKBRxFOpIhQrBDXlaTOo5f1sdSCVdPNPZ
bYhYhzjgixPgcmtaGC5sW5f+783P8XEolZ5i7Xl7N6OtgOT0R/KTeAkFo3ISjrNk
RQQ9/7y3Do/IK/e67zBRnPclItG0M5Iv2vqewuohOox6qYBRGoz9saYBdPLIEkR1
9PHASE5dDFp2HKUtsZgEks4MuUzvMsx7GGKnWKz989TZywlYKDwMnUD06xKLWCZo
GJAK3NydY31odOUZ+MOayOCkHkaIIFSC1dsb+w26Eqlziht0kSA=
=VdOd
-----END PGP SIGNATURE-----

--szefmgatekcbrd6j--

