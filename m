Return-Path: <linux-man+bounces-4286-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D831C4737C
	for <lists+linux-man@lfdr.de>; Mon, 10 Nov 2025 15:33:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 2522B4EC570
	for <lists+linux-man@lfdr.de>; Mon, 10 Nov 2025 14:31:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8F42F21171B;
	Mon, 10 Nov 2025 14:31:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GHyA7aHp"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E58317BED0
	for <linux-man@vger.kernel.org>; Mon, 10 Nov 2025 14:31:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762785087; cv=none; b=Es6K3xjxVWRt7B9/eF4xlSyr7wX6pNu9A3gWtWrxG1OI4ednOP7xN7XqUXJ4OSykL51VFMe+xk+dhaNY37xaqsp7U6lSam9c5sa0J27w/I55S+PVkvirQpmcUTo6qDbS/wpD3DrXQHAc+O1rGPMsdHS84T98OnZhk2nGBEuSJWQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762785087; c=relaxed/simple;
	bh=VI+UvLkAC3FKYYoOFoQxiRehSjJRk4WlY4r+iJr7d98=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=GigI4xdMc4y38hgOqc4ZsuMjAT9WsO3Lhj3Pt/UCxOchgPaRkKPbsmv+u10o3vyI/SXUabsN2awXCE5KQF5IBCuAtr5GpApLeGvqUlU7cdGpvucUIx+i30w7xoIeh/yV8gmhdVYi1quNkrHeTIp3aMJIii8ZpeWoABBIu9/c574=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GHyA7aHp; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9E3D4C4CEFB;
	Mon, 10 Nov 2025 14:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762785086;
	bh=VI+UvLkAC3FKYYoOFoQxiRehSjJRk4WlY4r+iJr7d98=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=GHyA7aHp49znWqzlgc5RssYpZcWF55gU5yWfTqS4x8oNRDOZ5V2QKIeGIyUmRkQ90
	 avubDQ1zZtyxVyoMo3Twjv3qiQsTyZumUzWxnfapTED213MfPSzSz1HvWLouaKYaqn
	 VT6nWsjSmrquIoSJ0dI/fIlbNGKSrWmh+NnnykizZdeHKtAKGEGU5nrgtcEPtSfu+z
	 84NCCQEHWZzJm4vnRmUu+WUdq0ONQFj0CUTWKA0fi4YY8m111Uls/i08WFxObU2Y51
	 tc168ovfpwPs6Rt6vRsE+2AS3VD+SmkRnA23Urjxz0WDEM13axM6C1jKXSjosg+WLx
	 wFDpWdKBQNVVw==
Date: Mon, 10 Nov 2025 15:31:23 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Carlos O'Donell <carlos@redhat.com>
Cc: linux-man@vger.kernel.org, Collin Funk <collin.funk1@gmail.com>, 
	Sam James <sam@gentoo.org>, "G. Branden Robinson" <branden@debian.org>
Subject: Re: [PATCH v8] CONTRIBUTING.d/ai: Add guidelines banning AI for
 contributing
Message-ID: <abks3sesxjsibpmbap5lfnzkystr5fljzc6ltacnwvcbg24mbo@vaf7qz4czgu2>
References: <d6d3123c7271c11fc403906ee3971b22c2fe8e4c.1760476615.git.alx@kernel.org>
 <b40a7c44ca89740ccea37852d09d11b6130de53d.1762776026.git.alx@kernel.org>
 <f9091911-f861-4fac-bfe8-4956e1f37ce2@redhat.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="57rf3cyltd6dbxgs"
Content-Disposition: inline
In-Reply-To: <f9091911-f861-4fac-bfe8-4956e1f37ce2@redhat.com>


--57rf3cyltd6dbxgs
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Carlos O'Donell <carlos@redhat.com>
Cc: linux-man@vger.kernel.org, Collin Funk <collin.funk1@gmail.com>, 
	Sam James <sam@gentoo.org>, "G. Branden Robinson" <branden@debian.org>
Subject: Re: [PATCH v8] CONTRIBUTING.d/ai: Add guidelines banning AI for
 contributing
Message-ID: <abks3sesxjsibpmbap5lfnzkystr5fljzc6ltacnwvcbg24mbo@vaf7qz4czgu2>
References: <d6d3123c7271c11fc403906ee3971b22c2fe8e4c.1760476615.git.alx@kernel.org>
 <b40a7c44ca89740ccea37852d09d11b6130de53d.1762776026.git.alx@kernel.org>
 <f9091911-f861-4fac-bfe8-4956e1f37ce2@redhat.com>
MIME-Version: 1.0
In-Reply-To: <f9091911-f861-4fac-bfe8-4956e1f37ce2@redhat.com>

Hi Carlos,

On Mon, Nov 10, 2025 at 08:31:49AM -0500, Carlos O'Donell wrote:
> On 11/10/25 7:01 AM, Alejandro Colomar wrote:
> > This policy is based on the Gentoo policy (see link below).
> > However, I've modified our text to be more restrictive.
> >=20
> > Cc: Carlos O'Donell <carlos@redhat.com>
> > Cc: Collin Funk <collin.funk1@gmail.com>
> > Cc: Sam James <sam@gentoo.org>
> > Cc: "G. Branden Robinson" <branden@debian.org>
> > Link: <https://wiki.gentoo.org/wiki/Project:Council/AI_policy>
> > Signed-off-by: Alejandro Colomar <alx@kernel.org>
> > ---
> >   CONTRIBUTING.d/ai | 66 +++++++++++++++++++++++++++++++++++++++++++++++
> >   1 file changed, 66 insertions(+)
> >   create mode 100644 CONTRIBUTING.d/ai
> >=20
> > diff --git a/CONTRIBUTING.d/ai b/CONTRIBUTING.d/ai
> > new file mode 100644
> > index 000000000..8443bbcc0
> > --- /dev/null
> > +++ b/CONTRIBUTING.d/ai
> > @@ -0,0 +1,66 @@
> > +Name
> > +	AI - artificial intelligence policy
> > +
> > +Description
> > +	It is expressly forbidden to contribute to this project any
> > +	content that has been created with the assistance of AI tools.
>=20
> This is fine.
>=20
> The goal is not to accept contributions that can't be attested.
>=20
> > +
> > +	This also includes AI assistive tools used in the contributing
> > +	process, even if such tools do not generate the contributed
> > +	code.  For example, AI linters, AI static analyzers, and AI
> > +	tools that summarize input are forbidden.
>=20
> This is acceptable.
>=20
> It is another way of saying derived content is not acceptable either.
>=20
> One suggestion is to fold "created or derived" into the first paragraph?
>
> ~~~
> It is expressly forbidden to contribute to this project any content
> that has been created or derived with the assistance of AI tools.
>=20
> This includes AI assistive tools used in the contributing process,
> even if such tools do not directly generate the contributed code but
> are used to derive the contribution. For example, AI linters, AI static
> analyzers, and AI tools that summarize input are forbidden
> ~~~

LGTM.  Thanks!

>=20
> > +	If for some reason, a contributor receives information from an
> > +	AI tool unintentionally, it should actively try to not use that
> > +	information, and should also disclose the incident when
> > +	contributing.
>=20
> This paragraph is contradictory and vague.
>=20
> If we forbid them from contributing such content, then we never get to
> this paragraph?

This paragraph was to cover your concerns of being tainted for life for
having even used such a tool.

>=20
> The "receives information from an AI tool" is sufficiently vague that
> it makes the policy unenforceable.
>=20
> I suggest dropping this to make the policy shorter and clearer.

I'm okay dropping this paragraph.

> > +    Exceptions
> > +	As an exception to the above, AI assistive tools which don't
> > +	have any influence on the contribution other than enabling the
> > +	contributor to work with their computer (e.g., screen reader,
> > +	text to speech) --where the contributor verifies the output to
> > +	the best of their ability-- are allowed, and the contributor
> > +	need not disclose their use.
>=20
> Looks good.
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
> > +	a tool that does not pose copyright, quality, or ethical
> > +	concerns.
> > +
> > +Copyright
> > +	Text derived from --but different than-- the Gentoo project
> > +	AI policy
> > +	<https://wiki.gentoo.org/wiki/Project:Council/AI_policy>.
> > +
> > +	SPDX-License-Identifier: CC-BY-SA-4.0
>=20
> OK.

Thanks!


Have a lovely day!
Alex

>=20
> >=20
> > Range-diff against v7:
> > 1:  299541d41 ! 1:  b40a7c44c CONTRIBUTING.d/ai: Add guidelines banning=
 AI for contributing
> >      @@ CONTRIBUTING.d/ai (new)
> >       +
> >       +	This also includes AI assistive tools used in the contributing
> >       +	process, even if such tools do not generate the contributed
> >      -+	code.  For example, AI linters and AI static analyzers are
> >      -+	forbidden.
> >      ++	code.  For example, AI linters, AI static analyzers, and AI
> >      ++	tools that summarize input are forbidden.
> >       +
> >       +	If for some reason, a contributor receives information from an
> >       +	AI tool unintentionally, it should actively try to not use that
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

--57rf3cyltd6dbxgs
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmkR9zIACgkQ64mZXMKQ
wqnXSg/+IQC6VM6fwx4fXHpxW8TP1QfR4dBvT0dKioV6PPQ43bMi/kfkklKGC2xS
A87khWbS6Q3uJF0cQu4F3ESgX92OBbdd0xwBYSKYV7wb0Qdl/9zo0aVdwzlVkStA
yEGoHktPNx5PfAgfmZHiHVdpTpmTjbmZ4jhByltBCWI485p35T/nKI2bGqBet+QC
Dp8robwzktPSa0LqfuBnnoa2Tc8fb/NjL7fSse85m4jM1ZnaV+fCl2oLvpfUBPPh
H5Y5/W5+cvvawGQuqzfU+aBNvk7yLMaepTReh1zqaDlf2kaCvGyOFvG56y0E8VEI
mbS2hYQFDXg4jc0wkGNxLlrNPnU/Hsj0Han1MEMIGwm+Js6/p8fxJPO//wJFvGIw
rZ3lm6N/ES/dSZkKNqixseYSAPjm2XYWpiIBAP9ierGUAlMFV4toZvH+w17oek9B
NVAApLFq/Fw0q8KJU/Bar2+06IopcfSTmikxnpfvRs+zdtpS5dr6TgxDgLhNcNxx
9F0YO10k8M/wDQZLuflU3xEU3kymv1OaXdyU0zunFleDusX+IEGuyS7Cj2Xl0fty
ctKXbVqvG4jzOxXaEa9n67DL7yI624gAX1q5wb6gGkEogBOdqOvndyP7XJ0fnwjW
J45VyI1RY/Zu76F6M0bb/ae9Q5TLf75LIW11IzKpMMC1kft7WQg=
=tYrb
-----END PGP SIGNATURE-----

--57rf3cyltd6dbxgs--

