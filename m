Return-Path: <linux-man+bounces-1057-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 06CAB901730
	for <lists+linux-man@lfdr.de>; Sun,  9 Jun 2024 19:33:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 207071C2089E
	for <lists+linux-man@lfdr.de>; Sun,  9 Jun 2024 17:33:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AFC3B4317C;
	Sun,  9 Jun 2024 17:33:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jafSMxQ+"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BCB0D2E5;
	Sun,  9 Jun 2024 17:33:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717954407; cv=none; b=YhRzeHwIKMPwQiRyhBu10dQOzG44nHH606W+V6Lbt98eqUZSsypcY+y6P0hSmWLGxfvcpgMSMI91RqrkfDpyAV5e3TmOFVxFzZFnp4twvqJ1mfDmo8a+xbc+KcUJAPUPOMRmgPwGliH5souGyBjTxZ3ku6E0NoLZMoJGF97M4PI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717954407; c=relaxed/simple;
	bh=CBcnhStXol0Ia+umXn8moK4bXWC4G6yis63nfVjQ67M=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=fE1bfvVPCmC1J+Iz+FQyAXMBO3AfnGuG0Zpy9IpbByg5WKmvTE4iRWkd1XNnXjd68b2trrJtY8GsikcmD/Ma47h2seLczmuygmiNgHYlWN4J3NCFkWx99+nH0L41klQkixhJ9mYWUcNUo8TFR0o5SFDlN/kulurAp1SDmvmasGw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jafSMxQ+; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9A67EC2BD10;
	Sun,  9 Jun 2024 17:33:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717954405;
	bh=CBcnhStXol0Ia+umXn8moK4bXWC4G6yis63nfVjQ67M=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=jafSMxQ+rfGLKTi2b6pV8wSjMONVIwt2fqfcu96DKNdtOh6peW+TFiWIJ+TjkBI0n
	 Zu07YZKDxrKwFIbnYGNpiyJ+3nu3zSufIAc4l6FhXVoKzRdPiOICza9H01Zjc4RQWj
	 FpKcHBg0BbzhFmNTBjMwHYND94bWa+lsrvF5n5OS6Ij8FylUHjcwkfwi80WQlmALrb
	 69pIqC9KEYvSYSCr70zJ9pGD14i9ECgxuNmuBuK/Z2SjxQ/oezq7YTd7gR9Q2KG2PD
	 TFJoF0eHtqzCbEaQQc85lI99TdPXPlKfcm6Fzvo7pkQp57fAcmwuAKm3bjV53pEOAn
	 6IKQc1drKrCxg==
Date: Sun, 9 Jun 2024 19:33:21 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Mark Brown <broonie@kernel.org>
Cc: Dev Jain <dev.jain@arm.com>, linux-man@vger.kernel.org, 
	mingo@kernel.org, tglx@linutronix.de, mark.rutland@arm.com, ryan.roberts@arm.com, 
	suzuki.poulose@arm.com, Anshuman.Khandual@arm.com, DeepakKumar.Mishra@arm.com, 
	AneeshKumar.KizhakeVeetil@arm.com, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] signal.7: Clearly describe ucontext kernel dump to
 userspace
Message-ID: <slkndx4223o6we7rygfatca6sa46hsw2fwbiovn2wx3mvyc55c@tyklfmkbe37r>
References: <20240607123119.769044-1-dev.jain@arm.com>
 <20240607123119.769044-2-dev.jain@arm.com>
 <ZmMptdPt_Zw9Xrlt@finisterre.sirena.org.uk>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="t7t3p7hirvo5uufk"
Content-Disposition: inline
In-Reply-To: <ZmMptdPt_Zw9Xrlt@finisterre.sirena.org.uk>


--t7t3p7hirvo5uufk
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Mark Brown <broonie@kernel.org>
Cc: Dev Jain <dev.jain@arm.com>, linux-man@vger.kernel.org, 
	mingo@kernel.org, tglx@linutronix.de, mark.rutland@arm.com, ryan.roberts@arm.com, 
	suzuki.poulose@arm.com, Anshuman.Khandual@arm.com, DeepakKumar.Mishra@arm.com, 
	AneeshKumar.KizhakeVeetil@arm.com, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] signal.7: Clearly describe ucontext kernel dump to
 userspace
References: <20240607123119.769044-1-dev.jain@arm.com>
 <20240607123119.769044-2-dev.jain@arm.com>
 <ZmMptdPt_Zw9Xrlt@finisterre.sirena.org.uk>
MIME-Version: 1.0
In-Reply-To: <ZmMptdPt_Zw9Xrlt@finisterre.sirena.org.uk>

Hi Mark, Dev,

On Fri, Jun 07, 2024 at 04:39:33PM GMT, Mark Brown wrote:
> On Fri, Jun 07, 2024 at 06:01:18PM +0530, Dev Jain wrote:
>=20
> >  .I ucontext_t
> > -object that is pointed to by the third argument of the signal handler.)
> > +object that is pointed to by the third argument of the signal handler.
> > +We emphasize on the fact that this object contains context information
>=20
> s/We emphasize on the fact that/Note that/
>=20
> feels more idiomatic.

Even more idiomatic is to jump straight to the point, without noting it.
If it weren't notable, we wouldn't say it.  :)

>=20
> > +of the thread, present before jumping into the handler; the set of
> > +blocked signals for the current thread would be updated from struct
>=20
> s/would/will/
>=20
> > +sigaction only after
> > +.I ucontext_t
> > +has been dumped to userspace. This semantically makes sense since the

Please use semantic newlines.  See man-pages:

$ MANWIDTH=3D72 man man-pages | sed -n '/Use semantic newlines/,/^$/p'
   Use semantic newlines
     In the source of a manual page, new sentences should be started on
     new lines, long sentences should be split  into  lines  at  clause
     breaks  (commas,  semicolons, colons, and so on), and long clauses
     should be split at phrase boundaries.  This convention,  sometimes
     known as "semantic newlines", makes it easier to see the effect of
     patches, which often operate at the level of individual sentences,
     clauses, or phrases.

> > +context for which the signals have been blocked, remains only during
> > +execution of the handler.)
>=20
> I'd drop the "this semantically makes sense" and reword the last bit to
> be something like "The ucontext reflects the state at the time the
> signal is delivered rather than in the handler" for idiom reasons.

Thank you both.

Have a lovely day!
Alex


--=20
<https://www.alejandro-colomar.es/>

--t7t3p7hirvo5uufk
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmZl52EACgkQnowa+77/
2zISPw//YFBwIkNkOCIegtXdYoUMN4j9lZMglkuqPrE/WMJLHVb6XJ5URr2fDRBD
yLDzJ+ow05U73WYmRsXwM3q1NwD3t3CCvl50gxCwQ+IGZ1TnBu1NNzo79hoM/lgH
dgdbBMHGieK6XwYBtiWZLle/shy1wdBVvRae5lcfuCBh8NfYGWwwB5x4hSXf9Xao
pfeSTRD6OAZoouu3oO6ZKlp/6CcvYbYxdMxR+UEQImPprXp0WyBP9fLIydY5JSpq
+TloFpJXWkTYrlxbRLe8fcsIwJ5iDtz1hD5GpIPXosp/PHLjexot/d89Ixs/7pa6
rzdyrXMvrSYF+8vd4wCJjuRB+abewra5mn03b8pBs2Y9Lbqg8rb2QLo/OT3zIom5
Km5lVLCTpitZCJKnp32rk1eomz7FHiSzYsPdPqXg71DG9J0y0JU20ZBy8ZCu+ZsM
mzJ+XKkbC9bdAyuGnX1tbPxj43PNhVWfxRq8ZTmDr6/OaJDBoFS8mG+suP0THW13
rVOANNeljHABKHleiUEpXZKExZTq5n0RaNHCw3C8aoKN2Drsb1iCqLqyuwklin/b
/ILzChdYE2988Olnpm86pAaWAsR6T6jkHTFZaSDEH4lL0Z55GtpRWV7wF0kVOD6i
LcCtG0mhXbNwMrXlRost/n+DM3vc0/RfLDPGqDlpHAeh1Ly5s98=
=W4Or
-----END PGP SIGNATURE-----

--t7t3p7hirvo5uufk--

