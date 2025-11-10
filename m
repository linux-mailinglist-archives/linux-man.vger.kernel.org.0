Return-Path: <linux-man+bounces-4289-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 530E4C4991A
	for <lists+linux-man@lfdr.de>; Mon, 10 Nov 2025 23:31:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 902F6188EA4B
	for <lists+linux-man@lfdr.de>; Mon, 10 Nov 2025 22:29:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 975A4302CBF;
	Mon, 10 Nov 2025 22:25:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ORB+pNwH"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56D76301025
	for <linux-man@vger.kernel.org>; Mon, 10 Nov 2025 22:25:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762813533; cv=none; b=EQzOWm9dvEEe+jYJ3ysEh4kKQ6BWEGpNjJb/l3bxaKmVCoiNzmarOrBJpJUc6ZHu6Z/3WBJZoquf/AQFiNzq8XyEGM3n0hv38oNL4n7NndXEd+GOg949EOLBqjYsI54wLkiLoOQqjvPebzHRqW7IDtmwNANugXxOihVxQuUxcrg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762813533; c=relaxed/simple;
	bh=EKKXN1zHBERdLgze6xk2CqrFy+0FYrlBruEdGonPWng=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=lWDbzHuIyzilPd9gxhAIWgv5IHpNhEL2iHQ0vRdRNhghgjwq5vhlGALX2Be6viAKauomArG6fcTmHoKUniTv4zpX6GI6av1s08K9JIc4ol5O93UFjYfpgJqcGfPcdx5cpXFw3SDpFhNMhys+qVu2V8pfxJH24SA1LohNfi6UYw4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ORB+pNwH; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B12B7C16AAE;
	Mon, 10 Nov 2025 22:25:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762813532;
	bh=EKKXN1zHBERdLgze6xk2CqrFy+0FYrlBruEdGonPWng=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ORB+pNwHcm8OKfPvcwAvEdIENng6LxmXdrJEliGujlvhbxqXd0oDd9n3QkaB6UG2U
	 iWECqJHIjmtIZfDBhUnQKHXutmaVq7L4AVv6onldSL08FqOWZNc7isqzLGazzynyO0
	 n1xLV376YS6NaAIZnhTD2UGvr3dp3yBsrTyVe1Yc5z2rQVCpvhau7cxoDyUykysQvE
	 VFV0YCkrk5m9itc9Wjpwdb/KEvASPb1g7DEDPbzbArM79/qdf+1nDSuev5a/rJpwuH
	 Gs+C6LEYcOQrHgfPhkfvTOcPrNlpjftHJoVfv6LS/HD9ZvfmS4uN7jboEkjM343qq+
	 QfurbYDPov6pA==
Date: Mon, 10 Nov 2025 23:25:29 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Carlos O'Donell <carlos@redhat.com>
Cc: linux-man@vger.kernel.org, Collin Funk <collin.funk1@gmail.com>, 
	Sam James <sam@gentoo.org>, "G. Branden Robinson" <branden@debian.org>
Subject: Re: [PATCH v9] CONTRIBUTING.d/ai: Add guidelines banning AI for
 contributing
Message-ID: <vyk76rlypdhirbwbyo4awha7krtz4pejmao7ugcnqyr45h6iqe@6lxua2tsicqg>
References: <d6d3123c7271c11fc403906ee3971b22c2fe8e4c.1760476615.git.alx@kernel.org>
 <999614b18f0b6740603b3df37530144148f342b2.1762785344.git.alx@kernel.org>
 <1b126d0f-d004-4da2-8239-6b9f472e7b9d@redhat.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="65jpt4dnac4angxs"
Content-Disposition: inline
In-Reply-To: <1b126d0f-d004-4da2-8239-6b9f472e7b9d@redhat.com>


--65jpt4dnac4angxs
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Carlos O'Donell <carlos@redhat.com>
Cc: linux-man@vger.kernel.org, Collin Funk <collin.funk1@gmail.com>, 
	Sam James <sam@gentoo.org>, "G. Branden Robinson" <branden@debian.org>
Subject: Re: [PATCH v9] CONTRIBUTING.d/ai: Add guidelines banning AI for
 contributing
Message-ID: <vyk76rlypdhirbwbyo4awha7krtz4pejmao7ugcnqyr45h6iqe@6lxua2tsicqg>
References: <d6d3123c7271c11fc403906ee3971b22c2fe8e4c.1760476615.git.alx@kernel.org>
 <999614b18f0b6740603b3df37530144148f342b2.1762785344.git.alx@kernel.org>
 <1b126d0f-d004-4da2-8239-6b9f472e7b9d@redhat.com>
MIME-Version: 1.0
In-Reply-To: <1b126d0f-d004-4da2-8239-6b9f472e7b9d@redhat.com>

Hi Carlos,

On Mon, Nov 10, 2025 at 11:56:42AM -0500, Carlos O'Donell wrote:
> On 11/10/25 9:36 AM, Alejandro Colomar wrote:
> > This policy is based on the Gentoo policy (see link below).
> > However, I've modified our text to be more restrictive.
> >=20
> > Cc: Carlos O'Donell <carlos@redhat.com>
> > Cc: Collin Funk <collin.funk1@gmail.com>
> > Cc: Sam James <sam@gentoo.org>
> > Cc: "G. Branden Robinson" <branden@debian.org>
> > Link: <https://wiki.gentoo.org/wiki/Project:Council/AI_policy>
> > Signed-off-by: Alejandro Colomar <alx@kernel.org>
>=20
> This exceptions language meets my criteria for inclusiveness.
>=20
> The currently worded policy is a workable compromise.
>=20
> Reviewed-by: Carlos O'Donell <carlos@redhat.com>

Thanks!  I've applied the patch with your tag, and the wording fix you
noted below.


Have a lovely night!
Alex

>=20
> > ---
> >   CONTRIBUTING.d/ai | 63 +++++++++++++++++++++++++++++++++++++++++++++++
> >   1 file changed, 63 insertions(+)
> >   create mode 100644 CONTRIBUTING.d/ai
> >=20
> > diff --git a/CONTRIBUTING.d/ai b/CONTRIBUTING.d/ai
> > new file mode 100644
> > index 000000000..91d767785
> > --- /dev/null
> > +++ b/CONTRIBUTING.d/ai
> > @@ -0,0 +1,63 @@
> > +Name
> > +	AI - artificial intelligence policy
> > +
> > +Description
> > +	It is expressly forbidden to contribute to this project any
> > +	content that has been created or derived with the assistance of
> > +	AI tools.
> > +
>=20
> OK.
>=20
> > +	This includes AI assistive tools used in the contributing
> > +	process, even if such tools do not directly generate the
> > +	contributed code but are used to derive the contribution.  For
> > +	example, AI linters, AI static analyzers, and AI tools that
> > +	summarize input are forbidden.
>=20
> OK.
>=20
> > +
> > +    Exceptions
> > +	As an exception to the above, AI assistive tools which don't
> > +	have any influence on the contribution other than enabling the
> > +	contributor to work with their computer (e.g., screen reader,
> > +	text to speech) --where the contributor verifies the output to
> > +	the best of their ability-- are allowed, and the contributor
> > +	need not disclose their use.
>=20
> OK.
>=20
> > +
> > +    Concerns
> > +	Copyright concerns.
> > +		At this point, the regulations concerning copyright of
> > +		generated contents are still emerging worldwide.  Using
> > +		such material could pose a danger of copyright
> > +		violations, but it could also weaken claims to copyright
> > +		and void the guarantees given by copyleft licensing.
> > +
> > +	Quality concerns.
> > +		Popular LLMs are really great at generating plausibly
> > +		looking, but meaningless content.  They pose both the
> > +		risk of lowering the quality of a project, and of
> > +		requiring an unfair human effort from contributors and
> > +		maintainers to review contributions and detect the
> > +		mistakes resulting from the use of AI.
> > +
> > +	Ethical concerns.
> > +		The business side of AI boom is creating serious ethical
> > +		concerns.  Among them:
> > +
> > +		-  Commercial AI projects are frequently indulging in
> > +		   blatant copyright violations to train their models.
> > +		-  Their operations are causing concerns about the huge
> > +		   use of energy, water, and other natural resources.
> > +		-  The advertising and use of AI models has caused
> > +		   a significant harm to employees and reduction of
> > +		   service quality.
> > +		-  LLMs have been empowering all kinds of spam and scam
> > +		   efforts.
> > +
> > +Caveats
> > +	This policy can be revisited, should a case been made over such
>=20
> s/been/be/g
>=20
> > +	a tool that does not pose copyright, quality, or ethical
> > +	concerns.
> > +
> > +Copyright
> > +	Text derived from --but different than-- the Gentoo project
> > +	AI policy
> > +	<https://wiki.gentoo.org/wiki/Project:Council/AI_policy>.
> > +
> > +	SPDX-License-Identifier: CC-BY-SA-4.0
> >=20
> > Range-diff against v8:
> > 1:  b40a7c44c ! 1:  999614b18 CONTRIBUTING.d/ai: Add guidelines banning=
 AI for contributing
> >      @@ CONTRIBUTING.d/ai (new)
> >       +
> >       +Description
> >       +	It is expressly forbidden to contribute to this project any
> >      -+	content that has been created with the assistance of AI tools.
> >      ++	content that has been created or derived with the assistance of
> >      ++	AI tools.
> >       +
> >      -+	This also includes AI assistive tools used in the contributing
> >      -+	process, even if such tools do not generate the contributed
> >      -+	code.  For example, AI linters, AI static analyzers, and AI
> >      -+	tools that summarize input are forbidden.
> >      -+
> >      -+	If for some reason, a contributor receives information from an
> >      -+	AI tool unintentionally, it should actively try to not use that
> >      -+	information, and should also disclose the incident when
> >      -+	contributing.
> >      ++	This includes AI assistive tools used in the contributing
> >      ++	process, even if such tools do not directly generate the
> >      ++	contributed code but are used to derive the contribution.  For
> >      ++	example, AI linters, AI static analyzers, and AI tools that
> >      ++	summarize input are forbidden.
> >       +
> >       +    Exceptions
> >       +	As an exception to the above, AI assistive tools which don't
> >=20
> > base-commit: afdd0a64c5bad49d6030ddc488951aeb50f0b88e
>=20
>=20
> --=20
> Cheers,
> Carlos.
>=20

--=20
<https://www.alejandro-colomar.es>
Use port 80 (that is, <...:80/>).

--65jpt4dnac4angxs
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmkSZlkACgkQ64mZXMKQ
wqm04g//ceSoxRffJ/yaG+tZL76TPXMxml/C2YRQweR+EnI078JEHt4yFKUsrgbc
QGoJ78TqMnzSSy4qD+pJABgYZ3fgMD8FcTMJqLbYpEZWWSSim0SGuAdhKelEOicc
bCV3eJcINkoY76P5TIFF1BcHP+NkDqVfOEwe0q8Oe5RLB9SLkLAjwBsWcZ1Slssc
TC/as6bri2XcHa8AKd9lC2lDiEqdvTap2uDWpvYyD+8/D5cVOlPZvMaEXKrHP7FH
pE+EnFf0P6fqX5cD6l0kdW2Gk3iZE9/V9VoXEAGMLtPF+7tKz+DmX99EzAZydtz1
2zjXe0AgUTKOdHDBIyyoyJmpA2lwifq/KPKZeB+mBEdOiuNzZdkUYKt6+zrUeZvI
1Ja2m3qVgK82RGPrfY3R/f73JyyBOKbiFi+NZ3UcLIa5lb5vd1TiI2Jvon+SeVTj
KAUPe5zRviLYwZ8uieK1QDP8duDCKAY98jZj47omSSLEj7gDabuAyEWRpf5gilTB
UlxEO7yAQpnnhFmR9qDjLUndF+mhsI76P5odNhuvpg9YaBLmqNgi6ZRiNnDjeTwD
lrTm7Fysve/6kK7gxRO2xveukrrx4nrZaVRr91+EdjeUV/wOFPZ9A2LK/iVe7cwZ
xUir1xfiApt33SUxvG1j8TwzRDw+vwqpJEJuaOC1ExSM6O90FuQ=
=X2/b
-----END PGP SIGNATURE-----

--65jpt4dnac4angxs--

