Return-Path: <linux-man+bounces-5616-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8OXOLb0sGGqwfAgAu9opvQ
	(envelope-from <linux-man+bounces-5616-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Thu, 28 May 2026 13:53:33 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D6BE5F19CA
	for <lists+linux-man@lfdr.de>; Thu, 28 May 2026 13:53:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id A70A630433D5
	for <lists+linux-man@lfdr.de>; Thu, 28 May 2026 11:48:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 44AB53CF02B;
	Thu, 28 May 2026 11:48:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e79SGiL4"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E77A32FE591
	for <linux-man@vger.kernel.org>; Thu, 28 May 2026 11:48:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779968923; cv=none; b=oJfmoJTY2OiwSTrvWpwlRiTIwg+vS+wHzI3CePWYkh8cKYHduDDiHSuU/UpoiMDZFip562LSC5U4/Yc8ROpMsPJsXAqSksgfOtmXlkE1yY03J/qzudx0pC2baNalkjVA8EZCOiA46AJLYACCAQAiHO0J1Hfb49TnEqMAo+fdwlY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779968923; c=relaxed/simple;
	bh=iIi4GXjz8VO+dp8buYWt+ROpbMllXMBIWQ7a79XQPa0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=e8ds+JqkC+Jo5hScSM1f5ubsTAf7cYYuK1KiQkk5fgc4t1aPz6ZVjFbx1rPguhMPS6Hgc37O8bodUkQno0BA39/iD4foMTPOXimF38R2rIgDf++u0FnB35A10WTR+p6WhjX/mLi6FZZ5QrllEE1HN4YPWW9t15CMA425Df6s60o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e79SGiL4; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B5B081F000E9;
	Thu, 28 May 2026 11:48:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779968921;
	bh=jtbdOj7dZrbjiLwjaaye4NR8UuAsQaAsdqw0x+wMVeM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=e79SGiL4GzTsOLjx4fZH6K3UfBGnomyIpw08Vpi+p61jwIX6Ru9LlRW7lfVQam9LB
	 UpFLHUlEFEMqZcmyRgtfXz91bWZRHzxyP/KUzpgeObI7d5HDvqpQlM2e/b7JS+Ti2f
	 t9KrpB/kWSoGrt01WMGXpi3W8JIB68rISoiEwLcviSgAs1xNc0DH8Eq8t+acQkDG8i
	 V+cz01xeZRtlxbWRLdWxO7ftWIQvjIiFVRCLL7gax6zNAkMQEhxuugMYFuu2P7WL8Y
	 VOhTGnPkWQWcZGE3gssp/5fD88dLK31DjT14nzHdGDrWaUxFrU6AKVnco6SEe1efrO
	 OqVsyUA8bf5Xw==
Date: Thu, 28 May 2026 13:48:37 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Kiryl Shutsemau <kirill@shutemov.name>
Cc: linux-man@vger.kernel.org, linux-mm@kvack.org, 
	akpm@linux-foundation.org, rppt@kernel.org, peterx@redhat.com, david@kernel.org, 
	kernel-team@meta.com, Kiryl Shutsemau <kas@kernel.org>
Subject: Re: [PATCH v2 3/6] UFFDIO_SET_MODE.2const: New page
Message-ID: <ahgricY0ShOw5wR_@devuan>
References: <20260526134149.2831720-1-kirill@shutemov.name>
 <20260526134149.2831720-4-kirill@shutemov.name>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="bsg7w76kuxswidxj"
Content-Disposition: inline
In-Reply-To: <20260526134149.2831720-4-kirill@shutemov.name>
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-5616-lists,linux-man=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[alejandro-colomar.es:url,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo]
X-Rspamd-Queue-Id: 3D6BE5F19CA
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--bsg7w76kuxswidxj
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Kiryl Shutsemau <kirill@shutemov.name>
Cc: linux-man@vger.kernel.org, linux-mm@kvack.org, 
	akpm@linux-foundation.org, rppt@kernel.org, peterx@redhat.com, david@kernel.org, 
	kernel-team@meta.com, Kiryl Shutsemau <kas@kernel.org>
Subject: Re: [PATCH v2 3/6] UFFDIO_SET_MODE.2const: New page
Message-ID: <ahgricY0ShOw5wR_@devuan>
References: <20260526134149.2831720-1-kirill@shutemov.name>
 <20260526134149.2831720-4-kirill@shutemov.name>
MIME-Version: 1.0
In-Reply-To: <20260526134149.2831720-4-kirill@shutemov.name>

On 2026-05-26T14:41:46+0100, Kiryl Shutsemau wrote:
> Document the UFFDIO_SET_MODE ioctl (since Linux 7.2). It toggles
> userfaultfd feature bits at runtime; currently only UFFD_FEATURE_RWP_ASYNC
> is toggleable, and enabling it requires UFFD_FEATURE_RWP to have been
> negotiated at UFFDIO_API time.
>=20
> Describe the uffdio_set_mode struct (enable/disable pair, must not
> overlap), the serialization against in-flight page faults that lets a
> single userfaultfd switch between async detection and synchronous
> eviction without re-registering its ranges, and the EINVAL/EFAULT
> errors returned by the kernel.
>=20
> Signed-off-by: Kiryl Shutsemau <kas@kernel.org>
> Acked-by: Mike Rapoport (Microsoft) <rppt@kernel.org>

Patch applied; thanks!


Cheers,
Alex

> ---
>  man/man2const/UFFDIO_SET_MODE.2const | 98 ++++++++++++++++++++++++++++
>  1 file changed, 98 insertions(+)
>  create mode 100644 man/man2const/UFFDIO_SET_MODE.2const
>=20
> diff --git a/man/man2const/UFFDIO_SET_MODE.2const b/man/man2const/UFFDIO_=
SET_MODE.2const
> new file mode 100644
> index 000000000000..b71632011a4c
> --- /dev/null
> +++ b/man/man2const/UFFDIO_SET_MODE.2const
> @@ -0,0 +1,98 @@
> +.\" Copyright, the authors of the Linux man-pages project
> +.\"
> +.\" SPDX-License-Identifier: Linux-man-pages-copyleft
> +.\"
> +.TH UFFDIO_SET_MODE 2const (date) "Linux man-pages (unreleased)"
> +.SH NAME
> +UFFDIO_SET_MODE
> +\-
> +toggle userfaultfd runtime mode bits
> +.SH LIBRARY
> +Standard C library
> +.RI ( libc ,\~ \-lc )
> +.SH SYNOPSIS
> +.nf
> +.BR "#include <linux/userfaultfd.h>" "  /* Definition of " UFFD* " const=
ants */"
> +.B #include <sys/ioctl.h>
> +.P
> +.BI "int ioctl(int " fd ", UFFDIO_SET_MODE, struct uffdio_set_mode *" ar=
gp );
> +.P
> +.B #include <linux/userfaultfd.h>
> +.P
> +.fi
> +.EX
> +.B struct uffdio_set_mode {
> +.BR "    __u64  enable;" "   /* Feature bits to set */"
> +.BR "    __u64  disable;" "  /* Feature bits to clear */"
> +.B };
> +.EE
> +.SH DESCRIPTION
> +Toggle userfaultfd features that may be flipped at runtime.
> +.P
> +Bits set in
> +.I enable
> +turn the named features on;
> +bits set in
> +.I disable
> +turn them off.
> +The two fields must not overlap.
> +Today only
> +.B UFFD_FEATURE_RWP_ASYNC
> +is a valid bit in either field;
> +any other bit causes the ioctl to fail with
> +.BR EINVAL .
> +Enabling
> +.B UFFD_FEATURE_RWP_ASYNC
> +also requires
> +.B UFFD_FEATURE_RWP
> +to have been negotiated at
> +.BR UFFDIO_API (2const)
> +time.
> +.P
> +The operation is serialized against in-flight page faults,
> +so the new mode takes effect
> +only after every fault that started before the call has finished,
> +and any fault that starts after the call observes the new mode.
> +This allows a single userfaultfd
> +to switch between lightweight async detection
> +and synchronous eviction
> +without re-registering its ranges.
> +.SH RETURN VALUE
> +On success,
> +0 is returned.
> +On error, \-1 is returned and
> +.I errno
> +is set to indicate the error.
> +.SH ERRORS
> +.TP
> +.B EINVAL
> +A bit other than
> +.B UFFD_FEATURE_RWP_ASYNC
> +was specified in
> +.I enable
> +or
> +.IR disable ;
> +the two fields overlap;
> +or
> +.B UFFD_FEATURE_RWP_ASYNC
> +was requested without
> +.B UFFD_FEATURE_RWP
> +having been negotiated.
> +.TP
> +.B EFAULT
> +.I argp
> +refers to an address that is outside the calling process's
> +accessible address space.
> +.SH STANDARDS
> +Linux.
> +.SH HISTORY
> +Linux 7.2.
> +.SH EXAMPLES
> +See
> +.BR userfaultfd (2).
> +.SH SEE ALSO
> +.BR ioctl (2),
> +.BR ioctl_userfaultfd (2),
> +.BR userfaultfd (2)
> +.P
> +.I linux.git/\:Documentation/\:admin\-guide/\:mm/\:userfaultfd.rst
> --=20
> 2.54.0
>=20

--=20
<https://www.alejandro-colomar.es>

--bsg7w76kuxswidxj
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmoYK5UACgkQ64mZXMKQ
wql/WQ//afWC0mC5rCJgq/i3ach2mS9uIDpeNT1GKSy/ZkRNFWr/wvf5R3m0bfAf
nYx6Tmfmv6TwAOAbihKy2aZNjaWLuRBjRP5mOMN8PgUzEGnHggIy/cynidr+xH2b
e6RlYHh3Wxr5fT35AoKV5JphZWNQ9zrS0bT+9vuJxIXCbxzPMPsFCXXP0cR4QWRN
7+Njq3bm8hu7xToOVc/gfA7JCyD5sk/r4OC0pJ0o/d5NUevd5NxIYDTldBCbLKi1
b62LwVkHR8hTWqEwsA6VxrPeDxlr60wi7Sn1RA5ithVR3cJd5Qn89dIP3nI1JBVV
qC9fyqURBnW0ueLBNH4rzOIrcKJ4M1/nwcS4cIZ2UgipjsTkI2xmcSqKubnZsFcN
LICIYr1iKlqYU95RKYY2VaSUXbG+OvUvWPX2xk2O3RGzk/2HsWzl8QzPiZ+KHQoJ
ofLfTiK0Vjan7P71l9pRtFWgMA7ixEEu0D2nm6aWv1iDfFrYwNu2tt3b/nGHlZRc
A33qtc8sKm1eqvehczgOLbYVTuCcF+XF/gZLPq8DESbqzLnZ/R00biE2xfzpBK5+
ajXR2usE6gqC9NRSEAQptkAhWtFG8Cs33NZOXHHzUnU0DyHRjaJpKf0rGCQgCl+b
BgiAAzrsIJNVTdsqmEo/zmNTUwZr2alQAIcp6/R1Fz2ogqLRKfM=
=nY/F
-----END PGP SIGNATURE-----

--bsg7w76kuxswidxj--

