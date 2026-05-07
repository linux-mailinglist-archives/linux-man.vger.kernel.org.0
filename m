Return-Path: <linux-man+bounces-5472-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eKtaBFMg/WlaYAAAu9opvQ
	(envelope-from <linux-man+bounces-5472-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Fri, 08 May 2026 01:29:23 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F02F4F0168
	for <lists+linux-man@lfdr.de>; Fri, 08 May 2026 01:29:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E57B13028017
	for <lists+linux-man@lfdr.de>; Thu,  7 May 2026 23:29:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 891A635AC00;
	Thu,  7 May 2026 23:29:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VmsM9H1w"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C2FB33290F
	for <linux-man@vger.kernel.org>; Thu,  7 May 2026 23:29:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778196560; cv=none; b=DM+m0zWE8SZZ53KBZtwVPu0SSBlIUwCwbNRXURpnqpsEDLEC3tTqCahDxkYyuPWqqlNQh2yrNrq5sQaS65e6ivpuibfi+JRXocJ1EloXH6DgcUlowA0SuAWXWBNMuoBBlhIVwFvesvVslLqnWXG75yAwT+6UHiJMxGfcVciDVT4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778196560; c=relaxed/simple;
	bh=IKQqjlu32atA0hC18cBkirjXTe4CIBp7T9hLHLnTSs8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=CRmrm1hRTRSbKw/vxr6TwOnt8wixK/XMivCbXEDESQAGi4e5fSXMEWLOnZ3TyoXmY65FwQ7OsrrRaHsMRYVeD2rsoeO+hzEVE5JmuqbxEgCCmEqGoGRJyEJ2ITVpQKi43hiwMCgGcAGvla236lJl1eAAlni4VtxEK30cRxnmAwY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VmsM9H1w; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EB7FAC2BCB2;
	Thu,  7 May 2026 23:29:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778196559;
	bh=IKQqjlu32atA0hC18cBkirjXTe4CIBp7T9hLHLnTSs8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=VmsM9H1wFQ417gM9aCFi40Qz9k9JFguviZ4KtYxP67t9dRImGNBp0upNPZa/uYjXt
	 KStMhvtPQMQ3FGf0cTgdR8lcJ2pIYrOqw9PrCBJkEkZ3cMCsa58RKPWoFQLzVKz0j7
	 GW45srrhsvt5hBxqeBbfdWQvPy49/RtgWtfXFg0ixMPKs243QfbDZ44jrKxFs0xEXc
	 cmEJgpqgWVTuuuF0i0cMztPSCpT1oKT/uKQghh8xeT8MAEz3uRVUWsjM8zBl7e1bFY
	 EhJTiUf/itO5jZ/FRdRNLvJvxzf0dbECOkRtLNQ/er0cj3QGelQbPvKX+ZpRU3M9qi
	 amtenu24SpSIg==
Date: Fri, 8 May 2026 01:29:14 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Garrett Wollman <wollman@bimajority.org>
Cc: Douglas McIlroy <douglas.mcilroy@dartmouth.edu>, 
	linux-man <linux-man@vger.kernel.org>, kleink <kleink@netbsd.org>
Subject: Re: mkstemp(3)
Message-ID: <af0eqm_8jG0Y_7Ox@devuan>
References: <CAKH6PiUk2L35i4i4TYkEP5VWH8DWodgRDLqUTSRQ27MB20HRhA@mail.gmail.com>
 <afzrREof611q7MIX@devuan>
 <27133.498.654796.822374@hergotha.csail.mit.edu>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="o6ic3fczqaufchxc"
Content-Disposition: inline
In-Reply-To: <27133.498.654796.822374@hergotha.csail.mit.edu>
X-Rspamd-Queue-Id: 5F02F4F0168
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-5472-lists,linux-man=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_ALL(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FUZZY_RATELIMITED(0.00)[rspamd.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[linux-man];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,alejandro-colomar.es:url]
X-Rspamd-Action: no action


--o6ic3fczqaufchxc
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Garrett Wollman <wollman@bimajority.org>
Cc: Douglas McIlroy <douglas.mcilroy@dartmouth.edu>, 
	linux-man <linux-man@vger.kernel.org>, kleink <kleink@netbsd.org>
Subject: Re: mkstemp(3)
Message-ID: <af0eqm_8jG0Y_7Ox@devuan>
References: <CAKH6PiUk2L35i4i4TYkEP5VWH8DWodgRDLqUTSRQ27MB20HRhA@mail.gmail.com>
 <afzrREof611q7MIX@devuan>
 <27133.498.654796.822374@hergotha.csail.mit.edu>
MIME-Version: 1.0
In-Reply-To: <27133.498.654796.822374@hergotha.csail.mit.edu>

Hi Garret,

On 2026-05-07T17:19:46-0400, Garrett Wollman wrote:
> <<On Thu, 7 May 2026 22:23:01 +0200, Alejandro Colomar <alx@kernel.org> s=
aid:
>=20
> > Later, in POSIX.1-2001, it already appears in <stdlib.h>.  So, at some
> > point, people decided to move it there.  POSIX doesn't say anything
> > about the move, though.
>=20
> Note that 1003.1-2001 (XSH page 761) shades the synopsis as "XSI" --
> this is code for "mistakes inherited from XPG4 and included as a part
> of the unification of POSIX with the Single UNIX Specification".

Oh, my browser doesn't open anything when I click on XSI (javascript is
probably disabled for $reasons).  That's the text that appears?
Interesting!  Thanks!

So this is officially a mistake from XPG4?

Anyway, that still leaves me with doubts: Were there any implementations
that provided mkstemp(3) in <stdlib.h>?  If all the implementations
provided it in <unistd.h>, why wasn't the standard ignored?  Why did all
implementations change to accomodate to a known mistake?  Or maybe the
closed source Unix systems of the time did have it in <stdlib.h>?


Have a lovely night!
Alex

>  As
> the definition of <stdlib.h> (XBD page 325) notes:
>=20
> 	Some of the functionality described on this reference page
> 	extends the ISO C standard.  Applications shall define the
> 	appropriate feature test macro (see the System Interfaces
> 	volume of IEEE Std 1003.1-2001, Section 2.2, The Compilation
> 	Environment) to enable the visibility of these symbols
> 	in this header.
>=20
> This is shaded "CX", meaning "extension to ISO C", but all of the
> noted extensions are shaded "XSI" except for posix_memalign ("ADV"),
> rand_r ("TSF"), setenv and unsetenv (both "CX").
>=20
> > So, the point where it was moved seems to have been XPG4v2 (which was
> > later repackaged as SUSv1).  I don't know why XPG4v2 decided to move the
> > prototype from <unistd.h> to <stdlib.h>.  I've CCed kleink, in case it
> > knows (and remembers).
>=20
> The "XSI" declarations in 1003.1-2001 for <stdlib.h> are:
>=20
> 	All symbols from <stddef.h>, <limits.h>, <math.h>, and
> 	<sys/wait.h> (at the implementation's option).
>=20
> 	The W* constants from <sys/wait.h> for use with wait3().
>=20
> 	The functions a64l(), drand48(), ecvt(), erand48(), fcvt(),
> 	gcvt(), getsubopt(), grantpt(), initstate(), jrand48(),
> 	l64a(), lcong48(), lrand48(), mktemp() [marked "LEGACY"],
> 	mkstemp(), mrand48(), nrand48(), posix_openpt(), ptsname(),
> 	putenv(), random(), realpath(), seed48(), setkey(),
> 	setstate(), srand48(), srandom(), and unlockpt().
>=20
> This is really quite a motley list: PRNGs, ASCII-numeric conversion
> routines, temporary files, environment variables, pseudo-TTYs, and the
> constants for wait3() but not the wait3() functon itself.
>=20
> The "XSI" option is unusual in POSIX in that its interfaces need not
> be declared unless the application has defined the appropriate
> _XOPEN_SOURCE macro.  (In real-world implementations, these interfaces
> are normally declared by default unless the application has requested
> a stricter namespace with _POSIX_C_SOURCE or similar.)
>=20
> POSIX also has a very weird attitude toward compatibility with
> previous (or future) revisions of itself; the standard says nothing
> about how an application written for C99 can be compiled on an
> 1003.1:2024 system -- as far as the current standard is concerned, the
> only compiler is C17.[1]  Many implementations, however (including the
> work I did for FreeBSD back in the early 2000s) attempt to support
> source and binary compatibility with multiple standards and with
> traditional (pre-standard) applications, to the extent feasible with
> preprocessor macros and the development tools available.
>=20
> -GAWollman
>=20
> [1] Why is 1003.1:2024 not aligned with C23?  Because the work on the
> 2024 standard started in 2018, and POSIX as currently specified both
> subsumes and defers to a specific ISO C standard; the Austin Group
> couldn't align to C23 until we knew officially what was going to be in
> it and that it was going to be fully approved and published *before*
> POSIX went into balloting with IEEE and ISO.  The next POSIX will be
> aligned with C23.

--=20
<https://www.alejandro-colomar.es>

--o6ic3fczqaufchxc
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmn9IEQACgkQ64mZXMKQ
wqmk+w/9EBQCKKNh6iWlEa8BWVVulIyTOf1bw/4WDeFwq2kbd6On0s2BN2v3TOcY
GL3y4zmX3ZmlO9enqJSYlfpyB+RgKcP2v5qzSqPR4rRDCeJ39Xbv3vPfPBeUf8+C
FEXBC7b1rXVfWmFOQXVwmTuLNl0j6u2tiVzcTQesaSatnL7FTIPJPHaeJNtzt06B
G4TC07fYINws3ZfeFE9GHruCmcc7890WJG8Dkeovrsv5/3VYQHNJ3uRg/dpPfLID
qvuJffGo8OSXirCUXl85DESLnCZ5GgjDnjTnP+RuYDYTmOTogDGqpGCRxkhqcuHR
RMAXmnfs4z0CwpflwRDaY2X9HXXEqFzKOj0KRs4QBq0YoIx4eW1kZuspPyN3R1YA
/JD0TdX83rpC3OG9luvFz5CU4wMM3Tv8HSXc/ix+9q1qzQA8xAY/wtgCGa5DQMIY
rYa9xD2ruJeqNV3fYJbDk3VmbHxhKvU8xDyvpcgtlISQqUQll9vVltGG4FlTCmeB
Mz4DqOJNmimbwWNrQmc15ceWxH79R89VKsClyIdXRLtAxS+33vxAODyd46J29Iqy
K2sDVKh0Z7YdNv2ssmEi0aoVeRJNbJ2kvlZMC/D//XG7EcBoV8K7SqnmwvNqUQCb
h2rPnWZpN6FJLQKNQwf/Xfs/2PeJV+f3n6Zqs2ftSCSrJDHdcpo=
=LfcU
-----END PGP SIGNATURE-----

--o6ic3fczqaufchxc--

