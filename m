Return-Path: <linux-man+bounces-4331-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id DD491C8C6C7
	for <lists+linux-man@lfdr.de>; Thu, 27 Nov 2025 01:28:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9B2E83B277D
	for <lists+linux-man@lfdr.de>; Thu, 27 Nov 2025 00:28:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CB7C71FF1AD;
	Thu, 27 Nov 2025 00:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tnvKVXH1"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8807F5695
	for <linux-man@vger.kernel.org>; Thu, 27 Nov 2025 00:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764203296; cv=none; b=qllKnnoecxsZcnAkIUBy6nQyNtCvtgLs8HnKsS2JE0pbP3y0k1Y05Ad+MaDjpe6i41gwkMFeJLfy5ZNejUhJBxnPNPEma7WVDo/JXDm777iChcFncU9x47XYlGL9Stg1mP2IQlM5d/+KACXMcXNHQJm8k/jB6WFi3Oeq+IplnQQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764203296; c=relaxed/simple;
	bh=xOthgOnSK6ZlOZKxvHWyV0509sFZ9xJbKzL037/Yyz4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ks9T1wkdpk8SF5lYaLaJGfgg8M/tY8TaEtZuy/2h5ySQM5zv8zyi9Q0bR3RB87vhLIHD5h6zDj0I/c0yCbHRG5qX9tOizfUNW0utw8gpCbKOnYJko3wA/E5Bk7PFUlw7WCmN8FPPtAVJshVamFmVIKoTrH0TSTYxnPiyCI/FzxM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tnvKVXH1; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6DBCAC4CEF7;
	Thu, 27 Nov 2025 00:28:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764203296;
	bh=xOthgOnSK6ZlOZKxvHWyV0509sFZ9xJbKzL037/Yyz4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=tnvKVXH1lcunF2E6khrIsgYs8OY/p4KB3Wx7ZtvFHkDZAR+nXVbGTktmyJWl65XVm
	 uZ/kpKRooUehtXSdHjYtxa4V7Kh/06UhNmeC6Th1tOB24hyf+tpJYq07cYt65DKD2+
	 gBSS4XYn/rKt7ols75aEIXMkKkFnPPnGbMMXikc2Se6O7l7cqQ+Zw8B5EW6FHFcKdc
	 OTweue+6YMrVuIKQM0egkszDbLbFjt9HGpIUJIR6HCnnsXLD1kEaojy/k74HTKLvx5
	 FwUgcl+wCY2nFx6tRVlPxHFCC8XyVobY2NDhKCHR4DzzvsV8SU8UVyvg80NWk6kRAu
	 N18FfGl3Rd9ew==
Date: Thu, 27 Nov 2025 01:28:12 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Simon Essien <champbreed1@gmail.com>
Cc: "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>
Subject: Re: [PATCH] man3/getgrnam: clarify possible errno values when entry
 not found
Message-ID: <qidkusrnwxbco2sqc6i2bxlh2teegyy73wyfrxgp2f2ifaot5y@sfupwcfhkonz>
References: <BYAPR10MB33664883B12034BFE939B74EAEDFA@BYAPR10MB3366.namprd10.prod.outlook.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="tr3hq47bitzdpwu4"
Content-Disposition: inline
In-Reply-To: <BYAPR10MB33664883B12034BFE939B74EAEDFA@BYAPR10MB3366.namprd10.prod.outlook.com>


--tr3hq47bitzdpwu4
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Simon Essien <champbreed1@gmail.com>
Cc: "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>
Subject: Re: [PATCH] man3/getgrnam: clarify possible errno values when entry
 not found
Message-ID: <qidkusrnwxbco2sqc6i2bxlh2teegyy73wyfrxgp2f2ifaot5y@sfupwcfhkonz>
References: <BYAPR10MB33664883B12034BFE939B74EAEDFA@BYAPR10MB3366.namprd10.prod.outlook.com>
MIME-Version: 1.0
In-Reply-To: <BYAPR10MB33664883B12034BFE939B74EAEDFA@BYAPR10MB3366.namprd10.prod.outlook.com>

Hi Simon,

On Thu, Nov 27, 2025 at 12:19:20AM +0000, Simon Essien wrote:
> man3/getgrnam: clarify possible errno values when entry not found
>=20
> Update ERRORS section to clearly separate the POSIX-mandated '0' return f=
or 'not found' from the various non-POSIX errno values encountered in diffe=
rent UNIX implementations.

The patch does much more than this.  Please send separate patches for
logically separate changes.


Have a lovely night!
Alex

>=20
> Signed-off-by: Simon Essien <champbreed1@gmail.com>




--=20
<https://www.alejandro-colomar.es>
Use port 80 (that is, <...:80/>).

--tr3hq47bitzdpwu4
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmknmxwACgkQ64mZXMKQ
wqncDw/9Fx4TsFk60nDQSxjJKzdn8QmGrbO7YR8KQy0GJWk3sOdn1huT0B3h26r/
Cch4DzoIa+LpsHYoQOn/wUCmycjbZpovKbbgeHN6roMniieyX69K13fBcV/9OkI5
5vP/PK2dxlnx3CAcxmvJkEu0eS7vp8LJeF7L/oflfDpREve+BHj5GZSi+lJiwggY
UOgTuH0dLcSWeTyIGYPxZOEclbB01iODXT6l0jdrA4aKqJViMum9ywCa9uq/HWND
sNRckqRKi1Z9rEeLID9Eo/Tl21ew/GPYunVHrAjwEBzfJw1HFmi6t2sAjOeFm8Yv
wFznZitiBVwzyFUFMBTrNoKxO+T8Y7u/A69DucL4TwPHnMyaS74bM8qGmCq7e/DF
bAFoH1MjsogFs9bArkUq+IkqIP9EgR7S0Sjhq8OdDQexFc+NkOsx2cJuVFjwAipi
95TkhoqG8uNBhUV26AZCZaeHDbfdFXaPhVc5AY5PCxcc7rUji7d73iZbuFiXw8Jx
SyZpHq+Yh4RCBfFHmjAJ3OWOkXaI7fw4oNZKtSSJyzb2T1TLMRoJKBUDjDWycYVD
15rESwvPpgdEuLlIIU7pBcLW3k1HY5yJ1CQxoipV9eh2ozxDssd3NfbvmuqOLOJG
3AJ97MCfC50hqTzCH3YbO1gn5YxaAZ8FXOt0KnvINgRF2Pl0gvU=
=aTWL
-----END PGP SIGNATURE-----

--tr3hq47bitzdpwu4--

