Return-Path: <linux-man+bounces-3148-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id F3484AD97F8
	for <lists+linux-man@lfdr.de>; Sat, 14 Jun 2025 00:03:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id ED7043BD789
	for <lists+linux-man@lfdr.de>; Fri, 13 Jun 2025 22:03:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 656A628EA7C;
	Fri, 13 Jun 2025 22:03:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XtH3jHUN"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 253EB28D8D1
	for <linux-man@vger.kernel.org>; Fri, 13 Jun 2025 22:03:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749852189; cv=none; b=orQGV/BmMSR5fvov3TpXKN1i9xJoV9IWYwn/WJaH/hyLsldJ7EIRfFATy5fDSif30smcZj446D4F3o8ayQTKUDVsuAGkHRr8uABOWI3XwNrXS6hSQvWFEBPFwo6zNLEhOoWOzWpp/S5xdikCVwfwi1ccpCXLfy55fyMcgddgIGQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749852189; c=relaxed/simple;
	bh=sTD7cWno0SSGGfPba/sXcdEikVAZ43zorg57thL3v0E=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=efVXHYjKeHxPxGRsqXa6sRvFbV1FlEUMBNRHsfnypfcwiTemsmc1UAy0txGWdT/P4KH2KWqP+wiaWFQcx7DmH+1RvM5WmW5Ij0OmymDxOnI83lZg3Z9f3xcq7RhRgElt7+7MPaRFXM5cCqBosqq/NuvNrt7NeIglh62yi7iXP2E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XtH3jHUN; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D7DEEC4CEEB;
	Fri, 13 Jun 2025 22:03:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749852189;
	bh=sTD7cWno0SSGGfPba/sXcdEikVAZ43zorg57thL3v0E=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=XtH3jHUNxBROYYr/uZGY2j68tJE7rXIz4h6YmCV1x5LQEB+RY1fQGzuU3pl2IoJTN
	 dXKaIBtpM3MYs+WVgVdQLtqOghfqc2tetu5cuHLEg0xEGnJQ/j6sVoyW+Q72fiyJW4
	 iNOIuJqHUkf31DbLzhJ6hY26Mh/nvqUCJL5rOle0nmX+YuLVuqRwreNxQbQSUUTos9
	 Dby0lbtxcrkg6J2G4xZSmkaCaazun3Lo01l/RfvY4bBVIP/nDkEP4QVei6/PuZqFZ2
	 ttPxUte8K5YxO3SvphuIx0VHVxbfUgybTq5fIezugWlL9XGE7zvz7YbxIpo4cd5Grv
	 WdetApUGtTMtA==
Date: Sat, 14 Jun 2025 00:03:03 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Collin Funk <collin.funk1@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] INSTALL: Adjust file names to match current build system
 organization.
Message-ID: <tbaqdh5b7t3ri4n7b5y3kuxkxucs2rpdv56f3ou25wrv4gaj6n@354pxmwl6fat>
References: <1cd0d5aa80cdc10a6c03dc8f3f2827d38bc86767.1749795252.git.collin.funk1@gmail.com>
 <3rgmfiajpc6lumg2zeos6bek5wtnd457cizex275aauayferec@44fw2hvwww6r>
 <87a56bs5ug.fsf@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="qinze7huhgorl5py"
Content-Disposition: inline
In-Reply-To: <87a56bs5ug.fsf@gmail.com>


--qinze7huhgorl5py
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Collin Funk <collin.funk1@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] INSTALL: Adjust file names to match current build system
 organization.
References: <1cd0d5aa80cdc10a6c03dc8f3f2827d38bc86767.1749795252.git.collin.funk1@gmail.com>
 <3rgmfiajpc6lumg2zeos6bek5wtnd457cizex275aauayferec@44fw2hvwww6r>
 <87a56bs5ug.fsf@gmail.com>
MIME-Version: 1.0
In-Reply-To: <87a56bs5ug.fsf@gmail.com>

Hi Collin,

On Fri, Jun 13, 2025 at 02:13:11PM -0700, Collin Funk wrote:
> Hi Alejandro,
>=20
> Alejandro Colomar <alx@kernel.org> writes:
>=20
> > On Thu, Jun 12, 2025 at 11:14:23PM -0700, Collin Funk wrote:
> >> Signed-off-by: Collin Funk <collin.funk1@gmail.com>
> >
> > Patch applied.  Thanks!
>=20
> Thanks!
>=20
> > <https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git=
/commit/?h=3Dcontrib&id=3D249fa859134d815df71c8bd5c414ea0a04b66530>
>=20
> FYI, your site is unreachable, at least for me.

Yup, it must have been some blackout.  They're becoming too frequent
here, sadly.  I'm out of home this weekend, so I'll fix it on Monday.  :(

Thanks!


Have a lovely night!
Alex

>=20
> Collin



--=20
<https://www.alejandro-colomar.es/>

--qinze7huhgorl5py
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmhMoBAACgkQ64mZXMKQ
wqlFnA//b7wQOFqdUU6iBX9y7yE5t4JqKW5x+UG1Z0eOgqkiILsdOQXRyaE4agwX
+ANh0We7zOd/ND390i7D7avkskf4huZarlcK3Ose+4NqVQ8vJ2G585pJ5T7Oef06
39wxeS9TWKg2NZiLlpcMaqY+GRclibYuD4dawe+E4djCxKTasJrIpZgqLyC6lP39
OwNt7EvkGX6HfQH+9vVlQ/uY7cUm9Vw1s6GEjRe8Jq53NTbEKJGRY5/B3wlOlJn3
qAh0egddfayf1mvc/af/nxP6IHSDdq94zRE/DOJszRP8E+hVUzU5moO6W1RdEbay
pMxC7jhEvZ1J1TJez64vGQoTSUs5IJM4idiMk7PNoZdTdqQ+aFzV5FA+/cI6ZTzi
1QKMNJMQ4YrBOdWEY61jFk6sVecvlqqYFl/u/MtDDUubNWdZn3H+5GI7UTX5UHmK
HQeK+/5aodSxaQYqZA/Q/xlO6uFjRFOCQLRkcx7adgEVDXUK8cKPa5JJw89ZgZC2
NUmCmGdSe/oE8V+wpvzjG+VoM9LxuFF4sRjsEd5TLac6hKCiBJePhXOJEj7wU7RN
+CUHoKI0UisXhJvZAnWZFzg4MBt4HCW5HXRjA3cHdicZYZgWGC8gnURoDoaNTRz0
jnGz6FzdWl113TJ9w7JWIERSbjTqnrMkasOBMYqqBjBC6eVAA1M=
=quo/
-----END PGP SIGNATURE-----

--qinze7huhgorl5py--

