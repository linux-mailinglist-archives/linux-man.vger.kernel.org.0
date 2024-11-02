Return-Path: <linux-man+bounces-1828-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 20D999B9E79
	for <lists+linux-man@lfdr.de>; Sat,  2 Nov 2024 10:58:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3E861282E10
	for <lists+linux-man@lfdr.de>; Sat,  2 Nov 2024 09:58:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 376CD16DED2;
	Sat,  2 Nov 2024 09:58:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eGWmb+DB"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0375168483;
	Sat,  2 Nov 2024 09:58:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730541517; cv=none; b=reAtjQB9pU8rdesAW5pj2BkFurO4X40cMud/46rVslxW4tybOb3HuLoXky7ZQYhuOqAzKjzISUZ5Zr59hG8K4C3R6K7zjOa6TMIT5vpZC5s2y5F7H4d1JG9PtIQnPoypCWfAJLhceMbIU1hv3/b6cYUzfRCj3nwcAw2c+t1YHB0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730541517; c=relaxed/simple;
	bh=tbMox3JqUr5lOTe8HnjC60IThDI0H0Z+M3GyU+7isO4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=FVe+A/DsO4GgPKxhs6cwTRbNpsyYwG5kg0Zq68r753YJMKNAmyxcqdfsbFhr/Dt8Adrd+IfmIJcWEjG0yxPGw4FSUiSzdU4NQLgweVasI4E7k+AUDxBhclK0LP7p9Nmyx5/7RNv2nYhwnwF2NsWStWg1mEVoqhFEmam9y7GOwR0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eGWmb+DB; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E7629C4CED2;
	Sat,  2 Nov 2024 09:58:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730541515;
	bh=tbMox3JqUr5lOTe8HnjC60IThDI0H0Z+M3GyU+7isO4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=eGWmb+DBD/NfsG6FvVOwkkk0zzvQmtxVS/ZVng7fQo4XC9EFifF9vtKtuDX4x2Epi
	 qAqLaLOVPq0rwfzL4Utn6vhyUjmn21qWmti/7T6JcMHWW0DgFm0vbkvbBwkB4K7zEc
	 F/0x8xS7f0TUo90p6grvJYF4w9ccaizUMi2V1mf91CyTjkZSzwUn9xnFJkxR2VRQjJ
	 5b/V4BYqYOBYWErd6tfdztdrlDXIjv2W64HArRPItjIWOHvopgRh7UDU3fDs+uNRO3
	 4arIzcFqyGsm6gN5ewaJa7/Ti6wMTmZ8QWDJR45grceNFftZ8dxhz4ugI0PH/qGyKL
	 fKqz3rIzH2zyQ==
Date: Sat, 2 Nov 2024 10:58:27 +0100
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: Ian Rogers <irogers@google.com>, David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Jonathan Corbet <corbet@lwn.net>, dri-devel@lists.freedesktop.org,
	linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-man@vger.kernel.org
Subject: Re: [PATCH v4 3/4] proc_pid_fdinfo.5: Add subsection headers for
 different fd types
Message-ID: <20241102095827.mkuj56gwq3yg3ng4@devuan>
References: <20241101211830.1298073-1-irogers@google.com>
 <20241101211830.1298073-3-irogers@google.com>
 <20241102092007.ixxtdc6u4iutxmam@illithid>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ckra4qg4vp2i7l6a"
Content-Disposition: inline
In-Reply-To: <20241102092007.ixxtdc6u4iutxmam@illithid>


--ckra4qg4vp2i7l6a
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v4 3/4] proc_pid_fdinfo.5: Add subsection headers for
 different fd types
MIME-Version: 1.0

Hi Branden, Ian,

On Sat, Nov 02, 2024 at 04:20:07AM -0500, G. Branden Robinson wrote:
> Hi Ian,
>=20
> At 2024-11-01T14:18:29-0700, Ian Rogers wrote:
> > Make the sections about eventfd, epoll, signalfd, inotify, fanotify,
> > timerfd better separated with a clearer subsection header.
> >=20
> > Signed-off-by: Ian Rogers <irogers@google.com>
> [...]
> > +.SS eventfd
> >  .P
> [...]
> > +.SS epoll
> >  .P
> [...]
> > +.SS signalfd
> >  .P
> [...]
> > +.SS inotify
> >  .P
> [etc.]
>=20
> I suggest deleting the paragraphing macros when you add (sub)sectioning
> macros immediately before them.  In these cases the `P` calls end up
> doing nothing.

Indeed.  We have warnings (see `make help`) that trigger for this.


Have a lovely day!
Alex

>=20
> groff_man(7):
>        .SS [subheading=E2=80=90text]
>               Set subheading=E2=80=90text as a subsection heading indented
>               between a section heading and an ordinary paragraph (.P).
>               If no argument is given, a one=E2=80=90line input trap is p=
lanted;
>               text on the next line becomes subheading=E2=80=90text.  The=
 left
>               margin is reset to the value of the SN register to set the
>               heading text in bold (or the font specified by the string
>               HF).  If the heading font \*[HF] is bold, use of an italic
>               style in subheading=E2=80=90text is mapped to the bold=E2=
=80=90italic
>               style if available in the font family.  The inset level is
>               reset to 1, setting the left margin to the value of the IN
>               register.  Text after subheading=E2=80=90text is set as an
>               ordinary paragraph (.P).


--=20
<https://www.alejandro-colomar.es/>

--ckra4qg4vp2i7l6a
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmcl97wACgkQnowa+77/
2zKrWw/+KrpPmumKfpmG4f/41LB8giMstDl3QQ5OBDFPS1EJIL/jDyyxGYzEmv9n
DaZ6kJFzZghGcbP1xBi0h8JT9Z2DQothBN7+L61Hh/WCXkLD9rhBXwlcKxHEJn9O
swRT3BBv6GQzfDITkFPrPEjvsjMLEmqwMA0L7MyzAlq8CozO2lvW9MxeZAg0SD2A
H2Yan3xJPm88yN2AXCs21ZKm3PtjQz6Y6xmuUxVLvePSpoLQYDGwi4mB+2e+g1Co
e4nvX3NQxYBYRTh4qQSCDklLdiq0YHjeCBHjf6+swDnNbn4CemYHF3Wjuwymti/x
FqY5sonsH7HndsIgCZmMMqKiwJfzOTyptQtWg9l+hY3eCw0Iwnjw2gbP7GYgmbwT
/KF2U3rpFw66R9uvYXM6/EkuIW1aRpE7/Okwf5gLhx9GSFyjYSjgcIbmrWtFWOio
ACwRcp+b587Z0CpYPS4t8b07PwPQ39MfPWLVsIxNt5eofg359v4aI6GKdqS9dPQN
XBf7WFWqq8aaMA+dzzWPM1CbXhUXoFEtyWjLLtOfR1GorHPixVtUCTkNf1+32iM1
oEJgUoxerDVlO5NqLskatmRbN181Bwove4eWwkcPDAE9LMnX+F8unrft5Ghlratg
zZ5TcK1u97TdTTopdnnQEYAfBerUH5ir2ORKNXojhPt20zIwF74=
=rLjy
-----END PGP SIGNATURE-----

--ckra4qg4vp2i7l6a--

