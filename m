Return-Path: <linux-man+bounces-646-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 578BA87DDB2
	for <lists+linux-man@lfdr.de>; Sun, 17 Mar 2024 16:00:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8652A1C20915
	for <lists+linux-man@lfdr.de>; Sun, 17 Mar 2024 15:00:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7751F1BF50;
	Sun, 17 Mar 2024 15:00:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pILYWOP8"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 395D31BF33
	for <linux-man@vger.kernel.org>; Sun, 17 Mar 2024 15:00:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710687625; cv=none; b=NCrazJAMsauv9N+7S0Ej9q5pKMiqRIWkOHAoj6SUsgwpFr35ALzdLaSvbZO4VJhY3IRxpOMNvhMocSJUOOakinXfFRDDo0K0hKCzaN3Oh9lPAtYI3v3wmj8Q2hv5ubIPVW86a7RNFnXt5+UCJVJYSDUFqHAu+Y0MKiTjaOE8K7s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710687625; c=relaxed/simple;
	bh=gUdgj+uJCnV+4V/NmbaM+w2UlZfcS6bVFrSweshnweo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=uHYPn5hrGxgg/jRSbg0GdLc/CDMbCPzIrxk3zfcMHviiuZtCG2Io7Hz9HhLJMPZYXcQsYvPlmmaPvlWot+0lLy107OxFXWhsi18jVeAvtHaETWmUaksGmyV+p37id6tO69jdXi7GJrgZY0bQ7UAqtmGKbnc1GD5YF5AlEKvnhUA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pILYWOP8; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 08DEAC433F1;
	Sun, 17 Mar 2024 15:00:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710687624;
	bh=gUdgj+uJCnV+4V/NmbaM+w2UlZfcS6bVFrSweshnweo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=pILYWOP8KyCxKHfwHQJagHQ4S6d5RWuTVEkCQ8SlKwZvx03MufylCPmO5qZVuetrF
	 tzkDZW9Fdok2AAcpwqD16CmPa4QUpQCmqTE5keIPKHojIfKkQxBWAa4HUi8F7uInsR
	 Ne1kMCl79bDpRig7CRWexG5VZwOjLMd2fcVuaXmY/cAISybp308Z+BWnvruubgp0nP
	 VN2V3ThOFv6cUKSSktV68D7lxWcXsJopo9MmCxiGx9Z8Bg2D7RIkwi4M5tSQOf8Ggh
	 s5p/p82E0ppoS8QES51TvHuX2W9bcM/Nrd43xW68AzovsQjHZFlN04YxlQxxMvkGVl
	 8kX4j45rgbERA==
Date: Sun, 17 Mar 2024 16:00:09 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Jeremy Baxter <jtbx@disroot.org>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v2 2/6] intro.1: Document the meaning of the PS1 variable
Message-ID: <ZfcFhQIUv6vRGwGd@debian>
References: <20240317080850.28564-3-jtbx@disroot.org>
 <20240317080850.28564-5-jtbx@disroot.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="JlTwWOgFhaGGE9ih"
Content-Disposition: inline
In-Reply-To: <20240317080850.28564-5-jtbx@disroot.org>


--JlTwWOgFhaGGE9ih
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Sun, 17 Mar 2024 16:00:09 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Jeremy Baxter <jtbx@disroot.org>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v2 2/6] intro.1: Document the meaning of the PS1 variable

On Sun, Mar 17, 2024 at 09:08:30PM +1300, Jeremy Baxter wrote:
> It still doesn't explain what a variable is but I think
> shell variables are out of scope of this manual.
> ---
>  man1/intro.1 | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
>=20
> diff --git a/man1/intro.1 b/man1/intro.1
> index 96eb3b7fc..090678750 100644
> --- a/man1/intro.1
> +++ b/man1/intro.1
> @@ -109,7 +109,10 @@ that it is ready for the next command.
>  The prompt can be customized in lots of ways, and one might include
>  information like the username, machine name, current directory, the time,
>  and so on.
> -An assignment PS1=3D"What next, master? "
> +It can be changed by setting the value of the "PS1" (prompt string 1)
> +variable.

I think this is too long, and the existing text is informative enough.

> +An assignment
> +.B PS1=3D"What next, master?\ "
>  would change the prompt as indicated.
>  .P
>  From this example we can see that there is the command
> --=20
> 2.44.0
>=20
>=20

--=20
<https://www.alejandro-colomar.es/>

--JlTwWOgFhaGGE9ih
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmX3BXkACgkQnowa+77/
2zICZA/+KITKzSmXt19+3QGKNUG6E63/1elgAyMWXdcAvFrLlL/BT78jF5/IZj9s
7ejWLK0zJ25POMcYBDFNXqMV6TOxZAwYwsSXMlKlVS4a1YoinM6vFyiOVDp1pewE
hmjQ8dI4L2r6oFlzDlstkcdOxXpg4YSNOlpom/NK2eqDHJgUkymqqOVNmydRt7mz
erqZb90VtnbPv3MxMYHA+U03V4YKRDkOvu7Mg0veQG8/tggTedohb2HAeYWwAG95
C7vZpoWjnIdBOinQy0K6QDiRgIcJxD4LoC87mOHopQST7PFnd2T8jd2oTEcOijqO
1EJTzqTVtOcgBHl+qwCZL4L41CdBqBR989RU9P1qO77ZNUBsm1eOzuAyrOK8nAyr
hfKwd8ST55Z0jkP8raMWb2udIYpO3m+0hscPkI89Xc/Pvi69QFdsfSW6PdvXuoxo
evfKjoU2rY45Pl4KfDkZAP4LZvfFEQLmrEQp2V8spj2r41OdvENJAPuLviubJMpc
YoT5hhzjOVSdi4uUXkdnT1AIsN2ACfKezySGzsdypYMYpDwiz38iXxPyD0c7Q7d3
2UPMERfq5bKt7fD1ijj4m0j3Nj0VgIJPOuUt+1x+NfdBLKDOHrKeAtoZ8e7LunOE
Wa1F13OOHCxA9YFzfhfM8oSUZ8jxe7B6YaIyU6tfKyozvme3lbA=
=2ZlA
-----END PGP SIGNATURE-----

--JlTwWOgFhaGGE9ih--

