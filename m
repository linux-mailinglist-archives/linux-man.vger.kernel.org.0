Return-Path: <linux-man+bounces-4153-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EA08BE04D5
	for <lists+linux-man@lfdr.de>; Wed, 15 Oct 2025 21:05:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 4A81934FF8E
	for <lists+linux-man@lfdr.de>; Wed, 15 Oct 2025 19:05:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1209E21B1BC;
	Wed, 15 Oct 2025 19:05:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E1FJKIc6"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C36A91EA65
	for <linux-man@vger.kernel.org>; Wed, 15 Oct 2025 19:05:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760555100; cv=none; b=qE7Yjow5rmXD9482b71Bar/GeDu9I82nzJZR4bz6eddU7mLBzXXkBycFrLDWDs3zFLJP7DFjCN0ywumgCxq94ei6roACIqDpBXusqi3mXXQKjW4v4kulu+lP+3AO9tXki+ZVuosLBnfzYNUWB1baz0Z0DXhyuB4YC39DWXimwrI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760555100; c=relaxed/simple;
	bh=urnyDN05LcqdP4TzrcN7JPfNCX6T9Gq9wi0wXT/iiSA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=qHC0jpdNWbeHtePmGOaX1x+GdigdOYB1GgcwsShwtKwro9DAx0NoV37B70j8qEq6YKPRKM5mlDs9I9Tyf3Z0c/EJGlLtMUweo0h8dv17vAFn2IDq5wMfBN9dCLXPnap1U/2u48VefBwe1nDfMxpAGq1HLEaYb41GA/HkqzlH42U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E1FJKIc6; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9DEA1C4CEF8;
	Wed, 15 Oct 2025 19:04:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760555100;
	bh=urnyDN05LcqdP4TzrcN7JPfNCX6T9Gq9wi0wXT/iiSA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=E1FJKIc6T7tPbFiyTqlsmWfty1XpdMWG1sCIeEoCTE8QRsxtfeFfsq4x0ZVVoapdz
	 dXw92LohuP6N/y3wU+N+Z7MB+R8+BPoTwAMviLROXG8NvwJRoLD+4BdTanwArdZxZm
	 BirOgWN2pC8mPOZ1Ad5eISrK//0Twkejf2MOawz+N+BGOU8tIgOaImyOpmk7dgPZn/
	 yt5/5GZjqnWrG/suB65l9ufgWIId4WeuClrwT7A5tI1pFrHkQwz2MwKv0cQjer27Lh
	 Z/TqudX7VyMPifNYgOJKiVQz7p2GHUzRMEuV7Cp0XbSfoRzfqARleLmIigtRdfy+K+
	 JNAjmjt+YklQw==
Date: Wed, 15 Oct 2025 21:04:57 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Sam James <sam@gentoo.org>
Cc: Carlos O'Donell <carlos@redhat.com>, linux-man@vger.kernel.org, 
	Collin Funk <collin.funk1@gmail.com>
Subject: Re: [PATCH v4] CONTRIBUTING.d/ai: Add guidelines banning AI for
 contributing
Message-ID: <pzpqnukol5vapop3js7vmnwtlvagmivpqpwr3uy7idntrls6jp@vmfilg5dvobt>
References: <d6d3123c7271c11fc403906ee3971b22c2fe8e4c.1760476615.git.alx@kernel.org>
 <4599445186b3e659166f5c73f682467703396e9e.1760543375.git.alx@kernel.org>
 <1924e1ed-bb96-4a08-a47e-8e77857fa431@redhat.com>
 <7n2g7ccnlfcjm2pgptwwuq3pn6dpnrwvqfxa4exa2hnjikajwk@men5xbekuoop>
 <878qhc6lv5.fsf@gentoo.org>
 <e36y5jnoxqshixvvaqsmamuz3qvun3f2j6oarpo3wzedufnvq3@ckwmkcqb7pnn>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="2jjpuhaia4zs2tsz"
Content-Disposition: inline
In-Reply-To: <e36y5jnoxqshixvvaqsmamuz3qvun3f2j6oarpo3wzedufnvq3@ckwmkcqb7pnn>


--2jjpuhaia4zs2tsz
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Sam James <sam@gentoo.org>
Cc: Carlos O'Donell <carlos@redhat.com>, linux-man@vger.kernel.org, 
	Collin Funk <collin.funk1@gmail.com>
Subject: Re: [PATCH v4] CONTRIBUTING.d/ai: Add guidelines banning AI for
 contributing
Message-ID: <pzpqnukol5vapop3js7vmnwtlvagmivpqpwr3uy7idntrls6jp@vmfilg5dvobt>
References: <d6d3123c7271c11fc403906ee3971b22c2fe8e4c.1760476615.git.alx@kernel.org>
 <4599445186b3e659166f5c73f682467703396e9e.1760543375.git.alx@kernel.org>
 <1924e1ed-bb96-4a08-a47e-8e77857fa431@redhat.com>
 <7n2g7ccnlfcjm2pgptwwuq3pn6dpnrwvqfxa4exa2hnjikajwk@men5xbekuoop>
 <878qhc6lv5.fsf@gentoo.org>
 <e36y5jnoxqshixvvaqsmamuz3qvun3f2j6oarpo3wzedufnvq3@ckwmkcqb7pnn>
MIME-Version: 1.0
In-Reply-To: <e36y5jnoxqshixvvaqsmamuz3qvun3f2j6oarpo3wzedufnvq3@ckwmkcqb7pnn>

On Wed, Oct 15, 2025 at 09:03:28PM +0200, Alejandro Colomar wrote:
> Hi Sam,
>=20
> On Wed, Oct 15, 2025 at 07:49:50PM +0100, Sam James wrote:
> > >> We should base the contribution policy on things we can objectively
> > >> measure and claim.
> > >>=20
> > >> Rejecting AI content in contributions is objective and measurable
> > >> since you can't attest the DCO clearly with this content.
> > >
> > > Rejecting AI content would follow the first concern, but the second a=
nd
> > > third concerns would be entirely ignored by a policy that permits AI
> > > static analyzers.
> > >
> >=20
> > It is hard in my mind to justify rejecting TTS or similar that may be
> > based on AI.

BTW, I assume TTS means text-to-speech.  Please don't use abbreviations
not supported by wtf(1), or parenthesize their meaning in the first use.

>=20
> The following is enough, IMO, as justification:
>=20
> 	Ethical concerns.
> 		The business side of AI boom is creating serious ethical
> 		concerns.  Among them:
>=20
> 		-  Commercial AI projects are frequently indulging in
> 		   blatant copyright violations to train their models.
> 		-  Their operations are causing concerns about the huge
> 		   use of energy, water, and other natural resources.
> 		-  The advertising and use of AI models has caused
> 		   a significant harm to employees and reduction of
> 		   service quality.
> 		-  LLMs have been empowering all kinds of spam and scam
> 		   efforts.
>=20
> 	Quality concerns.
> 		Popular LLMs are really great at generating plausibly
> 		looking, but meaningless content.  They pose both the
> 		risk of lowering the quality of a project, and of
> 		requiring an unfair human effort from contributors and
> 		maintainers to review contributions and detect the
> 		mistakes resulting from the use of AI.
>=20
> 		AI tools should be considered adversarial, as if they
> 		were a black box with Jia Tan inside them.
>=20
>=20
> Cheers,
> Alex
>=20
> --=20
> <https://www.alejandro-colomar.es>
> Use port 80 (that is, <...:80/>).



--=20
<https://www.alejandro-colomar.es>
Use port 80 (that is, <...:80/>).

--2jjpuhaia4zs2tsz
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmjv8FkACgkQ64mZXMKQ
wqnH4xAAggngLM2z30oNbdDZ76CNl371o7PidERkO7Ryr54rZZGqi/HD7UhL5b6G
JGcTkoKib8cFbMafuyypXrV+ym1quk/kgWDCLp4+YGg3hAfOiyX1DlpsKdnqrTMf
K9Yk1qOZezdMi9ZoRmAg++LTZwLx+n+Sgz69F26Qb/ZHjm6MreQqciiyLNiaMbld
IlNQ2d6lRg6jyRfNwnfQxJzFNyp7Mg9G/8vDD/rf7ef6FOwzT/jQ8IVtsDJgR0yJ
wI7fxBr/0NghbCe9189Rkgo/SzqP2ULblNI6GpjLQfq9EPtoBdkR7zSZvLTYqCH5
YVU77OudW1batUoSMSUSA0lY4+FOGD03tZi7VZg3uwYsbcGQmPtccrtVM7UmDQ6M
fOGow/OxKnEJeyqe2VvQLbQjRg+4u5vJK7FmXvaBruEbaI39aUvrnKXDjqJ4fZ7k
+JCaTwCWVrzNAClWAYin02gXIu270z/NJ9k7axwn+2zy1t/gYxpbJzfw1jIFoN9b
hMdEGfyVGFSouldz7J8TNJ2OavKSX4KOI6cwyaRfFD3BnCB+4yM9I8AYIeT5vKF6
rvsYQL/Ee7ECbGNi0VFMEMd9IL+9nOANTp8++e7KHs9560FDLueabpN1UhURpTxQ
vCHZo6VdFGjFf2FmIjCYw+8e+4RTAaLNhmPA99NGDOjrOAufX5g=
=sWWr
-----END PGP SIGNATURE-----

--2jjpuhaia4zs2tsz--

