Return-Path: <linux-man+bounces-4283-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 191F5C4665D
	for <lists+linux-man@lfdr.de>; Mon, 10 Nov 2025 12:55:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C621D3A2A94
	for <lists+linux-man@lfdr.de>; Mon, 10 Nov 2025 11:54:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 41B5430AABC;
	Mon, 10 Nov 2025 11:54:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="okOd7OA+"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F4238309EF7
	for <linux-man@vger.kernel.org>; Mon, 10 Nov 2025 11:54:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762775696; cv=none; b=GPXUWGYSccQ2tiq6h47ff1BGDG6LzPF4jmjuiJ7mAVjvLbDrMftMC5I/d42LvLgJOppmmZwg/o8X6rjQQ9F9w5uni5TAWb/0syoKl3beyYV06TCU4zNcFels4fd4Ys0ssy9jDOEZyBEJr4OZ/6EbbQUGGNp8vXo8TrKnBMWf9jA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762775696; c=relaxed/simple;
	bh=N0HlX7Sv781lsea5Tq+MCgQphUM36xaj2FTzzHJKsT0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=CDp6LttpzsjRD0OeZO5pPmOch4RkuPMNpG0M71V3SzU4xEUvxqee/2InEe7QhmEnh/ATczqnSnpKCbToVJ25N2KDoZ54hp4eSAsm9cQUOFa22BlVv9QOaGm60CC9c3rv43jvhm7tlnlniJhfupalcZFjJWXQirAGM06opOJ0f5U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=okOd7OA+; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4D16CC2BC86;
	Mon, 10 Nov 2025 11:54:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762775695;
	bh=N0HlX7Sv781lsea5Tq+MCgQphUM36xaj2FTzzHJKsT0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=okOd7OA+fqese4NA5msC7JxTo28A7HlVTPw1wh/+h/l1jKcVBTgprE8FcnnV4prFk
	 ZuYF0Kk5RnxluTHqmzOzO+DemLKf/wxltNIVydm0O4akk9zKmBkiKDx2R3cUR5pzvF
	 owfE3DL0ROPkyNef5H6yajtgR88QPcLICzhtn0Q8VdvSD9rEeesLwdb6PqqPzGfnxp
	 Tt7FiTVc5s7V8IRx7cDEPwLSkpz5oHPNsNMkUYDeLXJQvPiwvuwcbGO87DlL/EtYUy
	 6MB9cnay+XNyldUjuyxa6vJTLLee3GTscPE07CeUhPC/G6reADzBlB1uwmmGX2/wC4
	 U1qSTq/PXUuMQ==
Date: Mon, 10 Nov 2025 12:54:52 +0100
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Cc: Carlos O'Donell <carlos@redhat.com>, 
	Collin Funk <collin.funk1@gmail.com>, Sam James <sam@gentoo.org>, 
	"G. Branden Robinson" <branden@debian.org>
Subject: Re: [PATCH v7] CONTRIBUTING.d/ai: Add guidelines banning AI for
 contributing
Message-ID: <yq7huqs3mw3zhitg275uxirunn6s5dwgx6pr4w57q7ehqoctnv@m4gafq25elss>
References: <07d0b354caffa459dd8a40d31fefcf5315513a40.1761586102.git.alx@kernel.org>
 <299541d41bc305e65971801d06131941127eb99d.1761657613.git.alx@kernel.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="4rbj2e6hf5ugf2hr"
Content-Disposition: inline
In-Reply-To: <299541d41bc305e65971801d06131941127eb99d.1761657613.git.alx@kernel.org>


--4rbj2e6hf5ugf2hr
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Cc: Carlos O'Donell <carlos@redhat.com>, 
	Collin Funk <collin.funk1@gmail.com>, Sam James <sam@gentoo.org>, 
	"G. Branden Robinson" <branden@debian.org>
Subject: Re: [PATCH v7] CONTRIBUTING.d/ai: Add guidelines banning AI for
 contributing
Message-ID: <yq7huqs3mw3zhitg275uxirunn6s5dwgx6pr4w57q7ehqoctnv@m4gafq25elss>
References: <07d0b354caffa459dd8a40d31fefcf5315513a40.1761586102.git.alx@kernel.org>
 <299541d41bc305e65971801d06131941127eb99d.1761657613.git.alx@kernel.org>
MIME-Version: 1.0
In-Reply-To: <299541d41bc305e65971801d06131941127eb99d.1761657613.git.alx@kernel.org>

Hi Carlos,

On Tue, Oct 28, 2025 at 02:21:04PM +0100, Alejandro Colomar wrote:
> This policy is based on the Gentoo policy (see link below).
> However, I've modified our text to be more restrictive.
>=20
> Cc: Carlos O'Donell <carlos@redhat.com>
> Cc: Collin Funk <collin.funk1@gmail.com>
> Cc: Sam James <sam@gentoo.org>
> Cc: "G. Branden Robinson" <branden@debian.org>
> Link: <https://wiki.gentoo.org/wiki/Project:Council/AI_policy>
> Signed-off-by: Alejandro Colomar <alx@kernel.org>
> ---

Are you okay with v7?


Have a lovely day!
Alex

>  CONTRIBUTING.d/ai | 66 +++++++++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 66 insertions(+)
>  create mode 100644 CONTRIBUTING.d/ai
>=20
> diff --git a/CONTRIBUTING.d/ai b/CONTRIBUTING.d/ai
> new file mode 100644
> index 000000000..95784872a
> --- /dev/null
> +++ b/CONTRIBUTING.d/ai
> @@ -0,0 +1,66 @@
> +Name
> +	AI - artificial intelligence policy
> +
> +Description
> +	It is expressly forbidden to contribute to this project any
> +	content that has been created with the assistance of AI tools.
> +
> +	This also includes AI assistive tools used in the contributing
> +	process, even if such tools do not generate the contributed
> +	code.  For example, AI linters and AI static analyzers are
> +	forbidden.
> +
> +	If for some reason, a contributor receives information from an
> +	AI tool unintentionally, it should actively try to not use that
> +	information, and should also disclose the incident when
> +	contributing.
> +
> +    Exceptions
> +	As an exception to the above, AI assistive tools which don't
> +	have any influence on the contribution other than enabling the
> +	contributor to work with their computer (e.g., screen reader,
> +	text to speech) --where the contributor verifies the output to
> +	the best of their ability-- are allowed, and the contributor
> +	need not disclose their use.
> +
> +    Concerns
> +	Copyright concerns.
> +		At this point, the regulations concerning copyright of
> +		generated contents are still emerging worldwide.  Using
> +		such material could pose a danger of copyright
> +		violations, but it could also weaken claims to copyright
> +		and void the guarantees given by copyleft licensing.
> +
> +	Quality concerns.
> +		Popular LLMs are really great at generating plausibly
> +		looking, but meaningless content.  They pose both the
> +		risk of lowering the quality of a project, and of
> +		requiring an unfair human effort from contributors and
> +		maintainers to review contributions and detect the
> +		mistakes resulting from the use of AI.
> +
> +	Ethical concerns.
> +		The business side of AI boom is creating serious ethical
> +		concerns.  Among them:
> +
> +		-  Commercial AI projects are frequently indulging in
> +		   blatant copyright violations to train their models.
> +		-  Their operations are causing concerns about the huge
> +		   use of energy, water, and other natural resources.
> +		-  The advertising and use of AI models has caused
> +		   a significant harm to employees and reduction of
> +		   service quality.
> +		-  LLMs have been empowering all kinds of spam and scam
> +		   efforts.
> +
> +Caveats
> +	This policy can be revisited, should a case been made over such
> +	a tool that does not pose copyright, quality, or ethical
> +	concerns.
> +
> +Copyright
> +	Text derived from --but different than-- the Gentoo project
> +	AI policy
> +	<https://wiki.gentoo.org/wiki/Project:Council/AI_policy>.
> +
> +	SPDX-License-Identifier: CC-BY-SA-4.0
>=20
> base-commit: cef39ff51bfd016d7079baefbf2a39f0fed7549b
> --=20
> 2.51.0
>=20

--=20
<https://www.alejandro-colomar.es>
Use port 80 (that is, <...:80/>).

--4rbj2e6hf5ugf2hr
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmkR0osACgkQ64mZXMKQ
wqmyPA/+KbO6d134e0VsKGPk7eybANCQxp5SyGqi2yBRzcI6pRRjf8FdQRF/5HhJ
3BIvJfbposBhAO4fvRUFDqSuf2+Tg7ePKdj3ujDjZTGA36NlpaMwj+3oagBadcrx
+MqaBIOAsvLnV8OvKccRVWMv/eEMNgo5jblBrb6mSlcUqE+YPpM2x91KCgdx+PFC
QumHWjS3WrRP8WvBqDIOC/rYUnbGtivLHxyVxAhk5cxFrdkHO03TpNIgddHIbmxL
1UzkNwonQjEtcXNtEIvoMrOiLl95G5hWFeu5SY1jLuvVUcQzEdWqALanaMsD7r5O
h+4q7aaSNAECVK6jqv1wbQCKgVqGm5X2oa75XJ7ty7LHveuS9VG6mipFeo1xGw6X
CJ29mJbnjq9NtKl0+ji7Kx8wU756rLqiJ8mM+diuQ2CALup1Jh++jaIAVX8trxDl
1BC2PN5LSe6Wn1xb5MR2m8T61pMmvMXkHQz7APOhj8KM58PP7TF4F8fx920x1EfC
ku6Z/qRAKag0DxTyUlfar6/hCSKMLx2zTWABg5XYmtBLPmHHYDos98uUDC7uh4Kf
U57hGhGLMjhj6xveGLCotwDLpGJPseKBN6q55q5HrC48bPkBs+xro2dzKlZqaMCB
zEwfPOgQ3E1XBeMuDrMRoGYFmI2zQZfefZ/PXRwZRep22av6hnk=
=qqui
-----END PGP SIGNATURE-----

--4rbj2e6hf5ugf2hr--

