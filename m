Return-Path: <linux-man+bounces-3491-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 53A6BB2C018
	for <lists+linux-man@lfdr.de>; Tue, 19 Aug 2025 13:19:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5AA9E1BC45D5
	for <lists+linux-man@lfdr.de>; Tue, 19 Aug 2025 11:19:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0A722322DA6;
	Tue, 19 Aug 2025 11:19:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FyVyQMD1"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B96E379F5;
	Tue, 19 Aug 2025 11:19:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755602363; cv=none; b=WK7u62Ji//vZVK0mxNVdSlZuCQBUvydCV46sbT4mFPj/CKWYJiFxcdTolYcebNNUEPsaRheZrd2ErEBwNB9vVR2PdCOsDb8IiHPv6gGY/y2iCxRCOSAheVG4IeqAAW5s2rwoeMcx/N/S5Cm+UF4loPLkfyuVF24gWcTRjJNv8Uc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755602363; c=relaxed/simple;
	bh=Xo5PrAieD7b5xWjUfA39YDOUgeUlVLQMHHnsf+O50u0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=jMuz1Y7GHFsq6VZL1ykHR1Aofr7kk4mxtQ506wd8A2gZ3wSUI7zBu4Rt9ZklPIxpm0LulgDhDavbXUbVSZn+htCmXkVnvd4sVALOlR6V+wMLMY5l87bjcCSce99XTKq7MXMSzdDSeGAtqjsh6mH4oC3pC9LokeB6gXbmACkzfqs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FyVyQMD1; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0941DC4CEF1;
	Tue, 19 Aug 2025 11:19:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755602363;
	bh=Xo5PrAieD7b5xWjUfA39YDOUgeUlVLQMHHnsf+O50u0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=FyVyQMD1fnpNQJ+cmXzGDI0Glb8JUHI7L3E8KiEH7LHEVxJ69hcTMlhOOXTml4RyT
	 BhCASVHaU3fCmyo7debk02SqHy+JpSQCNbA9k/gwlYp082xSmzxhVxyiE6CVDQEeJ8
	 7YByho4StyfaU1qQ6crtXuZsgdfewhHY9vGeCve6bUZVq0pZzoVNRVaxmMkeez/4kR
	 btu/Pp0QS1tk25Pg+NvyteRrEroo770xk/d3s9DjSx77OnN0B4a71E3xmfhst6S1PB
	 wQhLXFYaE8ExNpNuDpSVwoy0WRDhF1G+gXStNaJ0bYylecxRO2wREbE1Qst35/uFMZ
	 IpdkHLY7GWJ9A==
Date: Tue, 19 Aug 2025 13:19:15 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Cc: linux-kernel@vger.kernel.org, linux-man@vger.kernel.org, 
	=?utf-8?B?QW5kcsOp?= Almeida <andrealmeid@igalia.com>, Darren Hart <dvhart@infradead.org>, 
	Davidlohr Bueso <dave@stgolabs.net>, Ingo Molnar <mingo@redhat.com>, 
	Juri Lelli <juri.lelli@redhat.com>, Peter Zijlstra <peterz@infradead.org>, 
	Thomas Gleixner <tglx@linutronix.de>, Valentin Schneider <vschneid@redhat.com>, 
	Waiman Long <longman@redhat.com>
Subject: Re: [PATCH v5 2/3] man/man2/prctl.2, PR_FUTEX_HASH_SET_SLOTS.2const:
 Document PR_FUTEX_HASH_SET_SLOTS
Message-ID: <v5luee7avc6ayyox7hn4lwb6wfvezv52by7noffwejvksypord@kx26fel62kan>
References: <20250819071728.1431543-1-bigeasy@linutronix.de>
 <20250819071728.1431543-3-bigeasy@linutronix.de>
 <c5yimoxm73uwq7xhparfqhohrgk7hznzawgajntbmz3nx6337l@ukuiw4n2hfqh>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="momk7ueynfnkqf4p"
Content-Disposition: inline
In-Reply-To: <c5yimoxm73uwq7xhparfqhohrgk7hznzawgajntbmz3nx6337l@ukuiw4n2hfqh>


--momk7ueynfnkqf4p
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Cc: linux-kernel@vger.kernel.org, linux-man@vger.kernel.org, 
	=?utf-8?B?QW5kcsOp?= Almeida <andrealmeid@igalia.com>, Darren Hart <dvhart@infradead.org>, 
	Davidlohr Bueso <dave@stgolabs.net>, Ingo Molnar <mingo@redhat.com>, 
	Juri Lelli <juri.lelli@redhat.com>, Peter Zijlstra <peterz@infradead.org>, 
	Thomas Gleixner <tglx@linutronix.de>, Valentin Schneider <vschneid@redhat.com>, 
	Waiman Long <longman@redhat.com>
Subject: Re: [PATCH v5 2/3] man/man2/prctl.2, PR_FUTEX_HASH_SET_SLOTS.2const:
 Document PR_FUTEX_HASH_SET_SLOTS
References: <20250819071728.1431543-1-bigeasy@linutronix.de>
 <20250819071728.1431543-3-bigeasy@linutronix.de>
 <c5yimoxm73uwq7xhparfqhohrgk7hznzawgajntbmz3nx6337l@ukuiw4n2hfqh>
MIME-Version: 1.0
In-Reply-To: <c5yimoxm73uwq7xhparfqhohrgk7hznzawgajntbmz3nx6337l@ukuiw4n2hfqh>

Hi Sebastian,

On Tue, Aug 19, 2025 at 01:02:42PM +0200, Alejandro Colomar wrote:
> On Tue, Aug 19, 2025 at 09:17:27AM +0200, Sebastian Andrzej Siewior wrote:
> > Signed-off-by: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
> > ---
> >  man/man2const/PR_FUTEX_HASH_SET_SLOTS.2const | 67 ++++++++++++++++++++
> >  1 file changed, 67 insertions(+)
> >  create mode 100644 man/man2const/PR_FUTEX_HASH_SET_SLOTS.2const
> >=20
> > diff --git a/man/man2const/PR_FUTEX_HASH_SET_SLOTS.2const b/man/man2con=
st/PR_FUTEX_HASH_SET_SLOTS.2const
> > new file mode 100644
> > index 0000000000000..93af27cbd5e5e
> > --- /dev/null
> > +++ b/man/man2const/PR_FUTEX_HASH_SET_SLOTS.2const
> > @@ -0,0 +1,67 @@
> > +.\" Copyright, the authors of the Linux man-pages project
> > +.\"
> > +.\" SPDX-License-Identifier: Linux-man-pages-copyleft
> > +.\"
> > +.TH PR_FUTEX_HASH_SET_SLOTS 2const (date) "Linux man-pages (unreleased=
)"
> > +.SH NAME
> > +PR_FUTEX_HASH_SET_SLOTS
> > +\-
> > +set the size of the private hash
> > +.SH LIBRARY
> > +Standard C library
> > +.RI ( libc ,\~ \-lc )
> > +.SH SYNOPSIS
> > +.nf
> > +.BR "#include <linux/prctl.h>" "  /* Definition of " PR_* " constants =
*/"
> > +.B #include <sys/prctl.h>
> > +.P
> > +.B int prctl(PR_FUTEX_HASH, PR_FUTEX_HASH_SET_SLOTS,
> > +.BI "          unsigned long " hash_size ", unsigned long " hash_flags=
 ");

I see that it is implemented in the kernel as

	static int
	futex_hash_allocate(unsigned int hash_slots, unsigned int flags)
	{
		...
	}

But PR_FUTEX_HASH is implemented as

	int
	futex_hash_prctl(unsigned long arg2, unsigned long arg3,
	    unsigned long arg4)
	{
		...
	}

Should we document is as a u_int, or a u_long?  Is that mismatch a bug,
or is it on purpose?


Cheers,
Alex

--=20
<https://www.alejandro-colomar.es/>

--momk7ueynfnkqf4p
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmikXbMACgkQ64mZXMKQ
wqm41RAAsjqR2qBkMI9KrM+VegPONzTdqyByCpGpcAhummFxOy3W9fwPywY5jSsu
K3b8LDuryC1VF3GLu2t4vqIP+q8bOL7lmas9L3wj2Ctrj/crMjtgpfGDGjHYOIR+
Elx+doTO5tbjod7BrAXnGyagrdmxCJV+kCaSOnhJdqRIdK7DztGrVUfCxDsiBtLg
KIa/BoSIbyzcNx0BuCPs2H5sfnkyUZJA5j+xJJXkBkf+0dGTA1gbQOwZgtsXpfY1
eai4cL9kF0N5WHt+9MhpqWRgVwmAJhB0YdvzM+FqRGMBJoOllX19jXvgr6Z8HiJj
CgB36mGwOSudGkxy3mPcnmuzqEfRbnoeRT6azUXCBQfm48VEW5jl+ZSVqi1PVjxP
xOu344KJHSjvpQiHIVlVQpS2PVOzIO9YJucEwLlpkkO+h8Ww4etXqoaYmGqILdML
e9FeHVJkXLRWzWgQO/UmcYl2Anz0uBYmuoMGC6Jlfq2gkKlYN4+8u3KleJQcjRIP
kFyFOW1elhI8Fs1cyNeNC9VIvsj5B1ygUKejg5t8BmdET85ilCJi3djqdiqhmg/w
h97Br5mtV7qm/YSo+/aYWzqbPyMmNB76bL6dOT+rngJnXOeMKxGPDHCYj9Q8XMNU
szGKyDGPuKFBNOaZA1+8s2AJTCTmW1xLj9LTCQYbXBybou3LPn4=
=4l6U
-----END PGP SIGNATURE-----

--momk7ueynfnkqf4p--

