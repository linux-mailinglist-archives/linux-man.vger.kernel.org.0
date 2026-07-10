Return-Path: <linux-man+bounces-5731-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id LSRyCtoiUWpJ/wIAu9opvQ
	(envelope-from <linux-man+bounces-5731-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Fri, 10 Jul 2026 18:50:34 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 780BA73CBC6
	for <lists+linux-man@lfdr.de>; Fri, 10 Jul 2026 18:50:33 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=eDXptiw1;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "linux-man+bounces-5731-lists+linux-man=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="linux-man+bounces-5731-lists+linux-man=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id BCA2E301A917
	for <lists+linux-man@lfdr.de>; Fri, 10 Jul 2026 16:44:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2495A43B48F;
	Fri, 10 Jul 2026 16:44:26 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B4223FB055
	for <linux-man@vger.kernel.org>; Fri, 10 Jul 2026 16:44:24 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783701865; cv=none; b=XYCjzewqJuHu8YFRP3ALlTiHZbWrw52UxpMsCuf8/Gcs4EaxFB1w5TWRwZ4rZkgnxL8Nk+l6rUIDXUZ6fivj4FZ3rBGQhttOeoQTFqz1X3Dsk1r5MHCQvUXsM4SF8pGyD/slbLaoanNMZWeu5vbng4A1R9r6CENOTArqfFb7C54=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783701865; c=relaxed/simple;
	bh=IVHt5DuDaZkKtwzA4H4x2/1UzXgcTSgR14yQ0fsAnHQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=aysBfVf1qOH69mAvS+KgPO3o9eUnWDSrc3ZR2lAn6sb+roy4GimOIZDZx562a9vxz5llIrheV4awyjCQIHHcxraX8vHxq8QJY6gTyHkrHkAe8PRI8W6wfFDv734G430UmEwM2tDmZDVF2B0qAPUQJhzuYCefVIde/6NZsYM5R1U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eDXptiw1; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0AE2B1F000E9;
	Fri, 10 Jul 2026 16:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783701864;
	bh=00n8NvoERrrB6QtS2MjTKgKi8ybqWXgwHZMHgGQtsBU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=eDXptiw1g+hC3iAcljSKOFIRPwkVu+r8YZO0zYHy4hBD6pBSDYKgkL5MU74hGknq/
	 kqgtDeDNoW9GVTxv5wCaQM/BjH9EaBdfG7WabGWXeu4RQ8mSV6j3E9ntxWBto8D3yl
	 V8P/aVDojNBC1Gg09yeW99HkYknW5jNWJiTNfaP72GQEOFdbAg072C2a9A4yu0hEL/
	 s69/1h4qf8yE32Ds2EKQvGDfQ8XWD9pjtpzy/Y5m345eBFc5kPSFsxBckMpMSwA+yM
	 dUeAU9YidvF/wAfd0o9cNqqls/+elgqXWD81t5ky1D4aTDbU4lcirHX802wP0768z9
	 ZKFZ0/4RTLZpA==
Date: Fri, 10 Jul 2026 18:44:19 +0200
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?B?xaB0xJtww6FuIE7Em21lYw==?= <stepnem@smrk.net>
Cc: linux-man@vger.kernel.org, Mike Rapoport <rppt@linux.ibm.com>, 
	=?utf-8?Q?Micka=C3=ABl_Sala=C3=BCn?= <mic@digikod.net>, =?utf-8?Q?G=C3=BCnther?= Noack <gnoack@google.com>
Subject: Re: [PATCH 1/3] man/: tfix
Message-ID: <alEfVXgJBmtlCtH0@devuan>
References: <20260709153422.210312-1-stepnem@smrk.net>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="g3u4rkqrrqn5csvx"
Content-Disposition: inline
In-Reply-To: <20260709153422.210312-1-stepnem@smrk.net>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-6.76 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:stepnem@smrk.net,m:linux-man@vger.kernel.org,m:rppt@linux.ibm.com,m:mic@digikod.net,m:gnoack@google.com,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORWARDED(0.00)[lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-5731-lists,linux-man=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smrk.net:email,vger.kernel.org:from_smtp,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 780BA73CBC6


--g3u4rkqrrqn5csvx
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?B?xaB0xJtww6FuIE7Em21lYw==?= <stepnem@smrk.net>
Cc: linux-man@vger.kernel.org, Mike Rapoport <rppt@linux.ibm.com>, 
	=?utf-8?Q?Micka=C3=ABl_Sala=C3=BCn?= <mic@digikod.net>, =?utf-8?Q?G=C3=BCnther?= Noack <gnoack@google.com>
Subject: Re: [PATCH 1/3] man/: tfix
Message-ID: <alEfVXgJBmtlCtH0@devuan>
References: <20260709153422.210312-1-stepnem@smrk.net>
MIME-Version: 1.0
In-Reply-To: <20260709153422.210312-1-stepnem@smrk.net>

[CC +=3D Mike]
[CC +=3D Micka=C3=ABl, G=C3=BCnther]

Hi =C5=A0t=C4=9Bp=C3=A1n!

On 2026-07-09T17:34:20+0200, =C5=A0t=C4=9Bp=C3=A1n N=C4=9Bmec wrote:
> Signed-off-by: =C5=A0t=C4=9Bp=C3=A1n N=C4=9Bmec <stepnem@smrk.net>
> ---
>  man/man2/dup.2               | 2 +-
>  man/man2/memfd_secret.2      | 2 +-
>  man/man2/sched_setaffinity.2 | 2 +-
>  man/man2/seccomp_unotify.2   | 2 +-
>  man/man2/select.2            | 2 +-
>  man/man2/send.2              | 2 +-
>  man/man2/sigsuspend.2        | 2 +-
>  man/man5/proc_meminfo.5      | 2 +-
>  man/man7/landlock.7          | 4 ++--
>  man/man7/pipe.7              | 2 +-
>  man/man7/socket.7            | 2 +-
>  11 files changed, 12 insertions(+), 12 deletions(-)
>=20

[...]

> diff --git a/man/man2/memfd_secret.2 b/man/man2/memfd_secret.2
> index 0ea4b8e93c37..4033adc75772 100644
> --- a/man/man2/memfd_secret.2
> +++ b/man/man2/memfd_secret.2
> @@ -119,7 +119,7 @@ .SH ERRORS
>  .B EMFILE
>  The per-process limit on the number of open file descriptors has been re=
ached.
>  .TP
> -.B EMFILE
> +.B ENFILE

I think I'd fix this typo in a separate commit, since it's a meaningful
typo (both EMFILE and ENFILE exist, and they have a slightly different
meaning).

In the fix, please include the following tags:

	Fixes: ac5edfeb1dd6 (2021-08-27; "memfd_secret.2: New page describing memf=
d_secret() system call")
	Cc: Mike Rapoport <rppt@linux.ibm.com>

>  The system-wide limit on the total number of open files has been reached.
>  .TP
>  .B ENOMEM

[...]

> diff --git a/man/man7/landlock.7 b/man/man7/landlock.7
> index 55cd002d5789..293374ed9b46 100644
> --- a/man/man7/landlock.7
> +++ b/man/man7/landlock.7
> @@ -21,7 +21,7 @@ .SH DESCRIPTION
>  and unexpected or malicious behaviors in applications.
>  .P
>  A Landlock security policy is a set of access rights
> -(e.g., open a file in read-only, make a directory, etc.)
> +(e.g., open a file read-only, make a directory, etc.)
>  tied to a file hierarchy.
>  Such policy can be configured and enforced by processes for themselves
>  using three system calls:
> @@ -334,7 +334,7 @@ .SS Bind mounts and OverlayFS
>  contains its own set of files and directories,
>  which is different from a bind mount.
>  A policy restricting an OverlayFS layer will not restrict
> -the resulted merged hierarchy, and vice versa.
> +the resulting merged hierarchy, and vice versa.
>  Landlock users should then only think about file hierarchies they want to
>  allow access to, regardless of the underlying filesystem.
>  .\"

This seems to also exist in the kernel internal documentation.  I've
CCd the maintainers of that documentation.

	$ find Documentation/ | grep landlock | xargs grep OverlayFS
	Documentation/userspace-api/landlock.rst:Bind mounts and OverlayFS
	Documentation/userspace-api/landlock.rst:An OverlayFS mount point consists=
 of upper and lower layers.  These layers are
	Documentation/userspace-api/landlock.rst:on the upper layer.  From a Landl=
ock policy point of view, all OverlayFS layers
	Documentation/userspace-api/landlock.rst:OverlayFS layer will not restrict=
 the resulted merged hierarchy, and vice versa.

[...]


Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es>

--g3u4rkqrrqn5csvx
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmpRIV0ACgkQ64mZXMKQ
wqnygQ//XeBCkESFUAWenuQeXc4NeDGnRQFBMeFlAaB9ziFm1UBhU+jV3vUoNIKf
nEtLf85EsMyDl5x7tKXu+DVcUx0HskAhRMACsLHCgeiwhNJECWCI6i02lNFKx4PJ
sewF0N+P3uS6dpJm0U52zSQ1TpLM/M2i984XZdKPepKICtUBj/UxP3US0d8DJzv3
RTo3dusCCtbr+tTyokglk6CDxRphiypt+cN+AWNc0cmGvCMD4mya0nOH+cNU8k+/
TnMNYIfOgp8zLqD7816cwZCOzYwj+cJObG1G9K8JB7A2HK/3/w/A0TWqE0CD1N+z
iLX0PtmjdBJRZhoNL1h5OhyqlXfaKaZLCERlTeE/HO2p0+956/Bfx9we9Ye4kJDa
pzTFbZ+GweNtse6fy1EiiDrs95HvSg6iTBtOoJkd8joxIYodx1W2yHZ4iDXtfbGR
dQshV1tPAULoKcSvmqPQaxGwNQL7toKqtio/rmTPGva4Hf2TAkSxQ71SlBYaq68/
epQddVMc/GDpM2gN79hcK35lpDYNxZJVUQi4mMV3FogaWlXBp/vQ1tq0G2PIFPSn
qqrli27i+DG0pqjOUiA2s/5R2Q7NgTjVZGXCDWT31NGJ4DKvbGB7jyzqw3LLBBnl
W+JsAIFDGEdYaYS5lmSqID3mqptV/mk75Xovfk07Vm76eIBu+Zo=
=5DBv
-----END PGP SIGNATURE-----

--g3u4rkqrrqn5csvx--

