Return-Path: <linux-man+bounces-4170-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 312AABE35A1
	for <lists+linux-man@lfdr.de>; Thu, 16 Oct 2025 14:26:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A3B8B19C0E80
	for <lists+linux-man@lfdr.de>; Thu, 16 Oct 2025 12:27:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6314932BF55;
	Thu, 16 Oct 2025 12:26:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gB8msdyp"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21B0532BF48
	for <linux-man@vger.kernel.org>; Thu, 16 Oct 2025 12:26:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760617600; cv=none; b=IXeLUN1gs2bT8hS0YZxgUpvTeRhhe17Lef2uYtX/7V30O17kg2vAQediSe1V9uwTqKuOz7R7Mt4bdccWAlA9wxtVDganGHW2Y9HOi4a9SWJDZM+UNlODiWqJl6jbYXU00o/Fs8UKzzFs35erczo4FNiTI5NMogzwtFOce7hfUy4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760617600; c=relaxed/simple;
	bh=rIw1Rj/Tx7Oud+lOh6waPQfDnfz8quo9zESAA1y8rsk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=aJIwpzoBMgmkw6JKSQFgjIM0OPNoObGbfZNFJHNoXZOkeIPlQkTZQcqDhSCToJiHvoog/4JBKqTcfngMb/cF1KLry84Ssf0o8dhMBpyrfEr8QQzBp1AZC2sH9b935/MKHNRYQ9sXK2f4gZGdwUNIHtGpiyNCsFs+KuyT6d878IU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gB8msdyp; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A6440C4CEF1;
	Thu, 16 Oct 2025 12:26:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760617599;
	bh=rIw1Rj/Tx7Oud+lOh6waPQfDnfz8quo9zESAA1y8rsk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=gB8msdypzCNzjQr6eeQUpAyOJ/qIX/x5GC4XG22VYULQsxrNB4wcy8dJpS79jgWYH
	 pHI4cCAndqPcXlo/vAzJCq0X5EfpkbkZr8U8GMYOSGQL6/Mp2sGIJiXb97Mje2o2Kv
	 1V5goIekxTj75TjEzHSxZwh0+wNvptcXxfn4exUZ0LPJjGxhZNqwRoxVyUQZVKO201
	 eRHbgMuQvAKyQy20wnrxVOiokryr2z8N/5jzTdGNWdng/r6df9jNeo0ey883C087xK
	 pGNyRGMhRMGd276FVJ0SYFrME2twnZSTEAdOG3MRwrF8c45vkPasw6yzOWrcuSy1Rv
	 pupBI4NR1HtoA==
Date: Thu, 16 Oct 2025 14:26:36 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Carlos O'Donell <carlos@redhat.com>
Cc: linux-man@vger.kernel.org, Collin Funk <collin.funk1@gmail.com>, 
	Sam James <sam@gentoo.org>
Subject: Re: [PATCH v4] CONTRIBUTING.d/ai: Add guidelines banning AI for
 contributing
Message-ID: <52dkmkduo25xpmeze5k4yvxblrzcms4hy53zvbszo7vyn62fxq@s4ldpicmzinu>
References: <d6d3123c7271c11fc403906ee3971b22c2fe8e4c.1760476615.git.alx@kernel.org>
 <4599445186b3e659166f5c73f682467703396e9e.1760543375.git.alx@kernel.org>
 <1924e1ed-bb96-4a08-a47e-8e77857fa431@redhat.com>
 <7n2g7ccnlfcjm2pgptwwuq3pn6dpnrwvqfxa4exa2hnjikajwk@men5xbekuoop>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="2azqf6zgc7l547lc"
Content-Disposition: inline
In-Reply-To: <7n2g7ccnlfcjm2pgptwwuq3pn6dpnrwvqfxa4exa2hnjikajwk@men5xbekuoop>


--2azqf6zgc7l547lc
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Carlos O'Donell <carlos@redhat.com>
Cc: linux-man@vger.kernel.org, Collin Funk <collin.funk1@gmail.com>, 
	Sam James <sam@gentoo.org>
Subject: Re: [PATCH v4] CONTRIBUTING.d/ai: Add guidelines banning AI for
 contributing
Message-ID: <52dkmkduo25xpmeze5k4yvxblrzcms4hy53zvbszo7vyn62fxq@s4ldpicmzinu>
References: <d6d3123c7271c11fc403906ee3971b22c2fe8e4c.1760476615.git.alx@kernel.org>
 <4599445186b3e659166f5c73f682467703396e9e.1760543375.git.alx@kernel.org>
 <1924e1ed-bb96-4a08-a47e-8e77857fa431@redhat.com>
 <7n2g7ccnlfcjm2pgptwwuq3pn6dpnrwvqfxa4exa2hnjikajwk@men5xbekuoop>
MIME-Version: 1.0
In-Reply-To: <7n2g7ccnlfcjm2pgptwwuq3pn6dpnrwvqfxa4exa2hnjikajwk@men5xbekuoop>

Hi Carlos,

On Wed, Oct 15, 2025 at 08:22:03PM +0200, Alejandro Colomar wrote:
> > > +	This also includes AI assistive tools used in the contributing
> > > +	process, even if such tools do not generate the contributed
> > > +	code.
> >=20
> > I object strongly to this paragraph.

I've been thinking tonight, and I'll agree to allow assistive tools for
health reasons.  While I don't like them, I understand contributors
might not be in a position where they can choose.  We can add this
exception:

	diff --git i/CONTRIBUTING.d/ai w/CONTRIBUTING.d/ai
	index e0e1d3469..0ec7b7802 100644
	--- i/CONTRIBUTING.d/ai
	+++ w/CONTRIBUTING.d/ai
	@@ -9,6 +9,12 @@ Description
		process, even if such tools do not generate the contributed
		code.
	=20
	+    Exceptions
	+       As an exception to the above, AI assistive tools on which the
	+       contributor depends for health reasons, and which don't have
	+       a major influence on the contribution, are allowed, and the
	+       contributor does not need to disclose their use.
	+
	     Concerns
		Copyright concerns.
			At this point, the regulations concerning copyright of

This would allow assistive tools for health reasons, as long as they
don't influence significantly on the contribution, but would still
disallow other assistive tools such as static analyzers.

Does this sound good to you?


Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es>
Use port 80 (that is, <...:80/>).

--2azqf6zgc7l547lc
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmjw5HYACgkQ64mZXMKQ
wqlgUg//QGxMxQQA5qOcAElqVUt5bbMtJT5s7Cmwf1TLQA18cB7j4G5lbDR+cvzp
ynbgR3/OyXLnrIQYncAbhjkiCK8Tu0kbuAjdLrnSgf3b5FCy/EZsl6jnyU6BaGan
wt/qCf2DARgPoZW3LiBs3Xuk4c+6gb6p1Jz8nBQIY2TAX0ehtFWpgxtqi9eUihUA
R0RAfyAMOFVmLEr/ga5MaAIfL+pqs04vFU7+P4hKJvPrhNXatDb4MF3c/pzGY8RQ
8nrFVdzpRN1jLMbQ5Sx7m2l3BKeACav8V5J84HBePeLArc3gi/DkTQhaGY1ywVUR
mMb/OvzYuLmvJHtIOzXIYs9bGwmYiNlvAr3cj60FLwDo1qK7T7vr15qsh5Kd7X8f
G90FcFk8N21+iZb8FIzN+OfywCmEWtn860Z30pb+aMNG+si7XsRnZWxD6jT+OhQ3
KJqgsc3c62uQJlXl1d9BK/qt0I9Zm+VivMWxBObVytvbzGSSHa4wjKKuZgXd+yff
xiQ3T9B9ai6il2r4UdkpxvYK4p2T6LI6gMmthjYvmQSaH14F6h5MF4hP2U93Ddzf
vgpLZ6eY7mjwMxASiwhaIf0TN7ML/DCfC0RPTc0zNhh9xtN+DniVaf9PUkXnCqgv
MprHYmyAd0FLfw9T9gcfDYTvm60A8J+2uBd7a4kVfrh+ddSD9+A=
=Rn+P
-----END PGP SIGNATURE-----

--2azqf6zgc7l547lc--

