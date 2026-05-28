Return-Path: <linux-man+bounces-5615-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8NgcEHUoGGrneggAu9opvQ
	(envelope-from <linux-man+bounces-5615-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Thu, 28 May 2026 13:35:17 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D36D45F1573
	for <lists+linux-man@lfdr.de>; Thu, 28 May 2026 13:35:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 28BA6301D017
	for <lists+linux-man@lfdr.de>; Thu, 28 May 2026 11:35:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3E9423E3DA6;
	Thu, 28 May 2026 11:35:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CgiImtAX"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D87703D45DC
	for <linux-man@vger.kernel.org>; Thu, 28 May 2026 11:35:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779968113; cv=none; b=GgAtmjwQPsM4y+J31YHqe8nDP8BPONRPPCRt8Cju8+xb0xqaDdbywIZxID+i4sFZM8yFjBoGHDCYvXp7Lreo1nLRxE3/WC2DJIF/HFTZffckYRvoVT7l2Zvfrc5znIHoJrJQw5J4VNPzvnicz68d2AFGpGXYW66OE2LPI34l1UU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779968113; c=relaxed/simple;
	bh=A6l9jupAOmvUmYPOysd/fDglcZngtoSFD4aIznfsZ2w=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=DumnupFL4LETd+oYB943TmrXGa17Qf7srlm+EV5UA0xfrJw4gcu/zmTFCThAxd+xlegXYGKJ/s6f79L4dM5JJTKnJSytTkHoKoQZfq2qv/QuZZAwswFgFVPof9TbDilIth1CTzEIxKZIz0R9OzE7MBFqjaTOOTxWKi/+ScVWsgM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CgiImtAX; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C7E0A1F000E9;
	Thu, 28 May 2026 11:35:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779968111;
	bh=ruFpPhXsGQIJ/UMg9Z/s1s8Xp6FcTk0KT+S0MJ952Es=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=CgiImtAXkdhz2HvATBTeMMypfjO7poAFeP3qCLX7fxpYqV9+F98ee2HkX+i0EEFO/
	 pr7CiVUim3+xa3htEU4eM/SIPYC6w+8S1aHxcdUhFFcgkV0Vp1q/xPQPIyrSd66qVY
	 Ygv6a+RKB/uYxT5nr51RLoqlBvtkGPOhAkW85yGZUca5YWY6msvhbxv3Kb26IiuB7J
	 pIwKycCK4TKx7nMEMIhRXvvp4dTUVKx0VZ36vQMNm2kxJVKg+gnnPAW8sqVW1JFP7o
	 7hm3iefDTsQoHEgolsXy6g6dQrCN3PLsxSdGFOJoeiygjjCTaAhYs27l07IrbLDxsb
	 VUaWpBXl2ajZA==
Date: Thu, 28 May 2026 13:35:06 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Kiryl Shutsemau <kirill@shutemov.name>
Cc: linux-man@vger.kernel.org, linux-mm@kvack.org, 
	akpm@linux-foundation.org, rppt@kernel.org, peterx@redhat.com, david@kernel.org, 
	kernel-team@meta.com, Kiryl Shutsemau <kas@kernel.org>
Subject: Re: [PATCH v2 2/6] UFFDIO_RWPROTECT.2const: New page
Message-ID: <ahgoSq87Hbk5e0J8@devuan>
References: <20260526134149.2831720-1-kirill@shutemov.name>
 <20260526134149.2831720-3-kirill@shutemov.name>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="azoyzbjhbeoj3i73"
Content-Disposition: inline
In-Reply-To: <20260526134149.2831720-3-kirill@shutemov.name>
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-5615-lists,linux-man=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,alejandro-colomar.es:url]
X-Rspamd-Queue-Id: D36D45F1573
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--azoyzbjhbeoj3i73
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Kiryl Shutsemau <kirill@shutemov.name>
Cc: linux-man@vger.kernel.org, linux-mm@kvack.org, 
	akpm@linux-foundation.org, rppt@kernel.org, peterx@redhat.com, david@kernel.org, 
	kernel-team@meta.com, Kiryl Shutsemau <kas@kernel.org>
Subject: Re: [PATCH v2 2/6] UFFDIO_RWPROTECT.2const: New page
Message-ID: <ahgoSq87Hbk5e0J8@devuan>
References: <20260526134149.2831720-1-kirill@shutemov.name>
 <20260526134149.2831720-3-kirill@shutemov.name>
MIME-Version: 1.0
In-Reply-To: <20260526134149.2831720-3-kirill@shutemov.name>

Hi Kiryl,

On 2026-05-26T14:41:45+0100, Kiryl Shutsemau wrote:
> Document the UFFDIO_RWPROTECT ioctl (since Linux 7.2). It installs or
> removes read-write protection on a range that was registered with
> UFFDIO_REGISTER_MODE_RWP, and is also how a handler resolves an
> UFFD_PAGEFAULT_FLAG_RWP notification.
>=20
> Cover the two mode bits (UFFDIO_RWPROTECT_MODE_RWP and
> UFFDIO_RWPROTECT_MODE_DONTWAKE, mutually exclusive), the populated-
> pages-only semantics, the anon vs file-backed reclaim behaviour, the
> explicit-drop list (MADV_DONTNEED, hole-punch, truncation), and the
> EINVAL/EAGAIN/ENOENT/EFAULT errors returned by the kernel.
>=20
> Signed-off-by: Kiryl Shutsemau <kas@kernel.org>
> Acked-by: Mike Rapoport (Microsoft) <rppt@kernel.org>

Thanks!  I've applied the patch (with a few minor tweaks).


Have a lovely day!
Alex

> ---
>  man/man2const/UFFDIO_RWPROTECT.2const | 122 ++++++++++++++++++++++++++
>  1 file changed, 122 insertions(+)
>  create mode 100644 man/man2const/UFFDIO_RWPROTECT.2const
>=20
> diff --git a/man/man2const/UFFDIO_RWPROTECT.2const b/man/man2const/UFFDIO=
_RWPROTECT.2const
> new file mode 100644
> index 000000000000..42654a834cd5
> --- /dev/null
> +++ b/man/man2const/UFFDIO_RWPROTECT.2const
> @@ -0,0 +1,122 @@
> +.\" Copyright, the authors of the Linux man-pages project
> +.\"
> +.\" SPDX-License-Identifier: Linux-man-pages-copyleft
> +.\"
> +.TH UFFDIO_RWPROTECT 2const (date) "Linux man-pages (unreleased)"
> +.SH NAME
> +UFFDIO_RWPROTECT
> +\-
> +read-write-protect or un-protect a userfaultfd-registered memory range
> +.SH LIBRARY
> +Standard C library
> +.RI ( libc ,\~ \-lc )
> +.SH SYNOPSIS
> +.nf
> +.BR "#include <linux/userfaultfd.h>" "  /* Definition of " UFFD* " const=
ants */"
> +.B #include <sys/ioctl.h>
> +.P
> +.BI "int ioctl(int " fd ", UFFDIO_RWPROTECT, struct uffdio_rwprotect *" =
argp );
> +.P
> +.B #include <linux/userfaultfd.h>
> +.P
> +.fi
> +.EX
> +.B struct uffdio_rwprotect {
> +.BR "    struct uffdio_range  range;" "  /* Range to change RWP on */"
> +.BR "    __u64                mode;" "   /* Mode flags */"
> +.B };
> +.EE
> +.SH DESCRIPTION
> +Read-write-protect or un-protect a userfaultfd-registered memory range
> +registered with mode
> +.BR UFFDIO_REGISTER_MODE_RWP .
> +.P
> +The following mode bits are supported:
> +.TP
> +.B UFFDIO_RWPROTECT_MODE_RWP
> +When this mode bit is set,
> +the ioctl installs read-write protection
> +on every page present in the range specified by
> +.IR range .
> +Otherwise the ioctl removes read-write protection from the range,
> +which is also how a fault handler resolves an
> +.B UFFD_PAGEFAULT_FLAG_RWP
> +notification.
> +.TP
> +.B UFFDIO_RWPROTECT_MODE_DONTWAKE
> +When this mode bit is set,
> +do not wake up any thread
> +that waits for page-fault resolution after the operation.
> +This can be specified only if
> +.B UFFDIO_RWPROTECT_MODE_RWP
> +is not specified.
> +.P
> +Read-write protection only affects pages
> +that are currently populated in the range;
> +unmapped addresses are left untouched.
> +For anonymous mappings,
> +protection is preserved across page reclaim
> +(the marker rides on the swap entry)
> +and migration.
> +For shmem and file-backed mappings,
> +protection is dropped when the backing page is reclaimed.
> +Callers must also re-arm a range with
> +.B UFFDIO_RWPROTECT
> +after any operation that explicitly drops the underlying page:
> +.B MADV_DONTNEED
> +on anonymous memory,
> +hole-punch on shmem,
> +truncation of a file mapping.
> +.SH RETURN VALUE
> +On success,
> +0 is returned.
> +On error, \-1 is returned and
> +.I errno
> +is set to indicate the error.
> +.SH ERRORS
> +.TP
> +.B EINVAL
> +The
> +.I start
> +or the
> +.I len
> +field of the
> +.I uffdio_range
> +structure was not a multiple of the system page size;
> +or
> +.I len
> +was zero;
> +or the specified range was otherwise invalid;
> +or an invalid mode bit was specified;
> +or
> +.B UFFDIO_RWPROTECT_MODE_DONTWAKE
> +was specified together with
> +.BR UFFDIO_RWPROTECT_MODE_RWP .
> +.TP
> +.B EAGAIN
> +The process was interrupted;
> +retry this call.
> +.TP
> +.B ENOENT
> +The range specified in
> +.I range
> +is not valid.
> +For example, the virtual address does not exist,
> +or part of the range is not registered with
> +.BR UFFDIO_REGISTER_MODE_RWP .
> +.TP
> +.B EFAULT
> +Encountered a generic fault during processing.
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

--azoyzbjhbeoj3i73
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmoYKGkACgkQ64mZXMKQ
wqk+2BAAl3LZrDJYQbpJXu9NCgWxCQB1upmmlNwbVz1ZRo63QMxR26snfRM98hUH
elXYppn3Oe7wmLuwzPu6EAhJCc/DBXRictit79NTRfOgIiXwPy7dfndI2Sfoqk4o
zDwJ6WjQCz8pqIIjKodcHK04x0chYnnz24+tu6bmTTKMWEVnDPgb57QuB/o5yoaV
p2UhGpBddPKWrDcbhqZTzx0v6KjcjT30kdv2y5W/O2U3ruNh/90M2z5xHS9L/y92
ahcR4DBtEEKDW1VNSGO3oSELJmFRL7uX9b/jLCFxroG5DDHhdUASbHQfmBlxpw4+
Ywn0t/lm7ArQF7yWFJ7hBzkpWMBfTFr+/u5G9WW4gexd6gySl7YKefyzIsdT3H6x
QZsaiETkxlC3qYz8wM2+YjnquKef4DRaM3m0KCLqnSjbCPJaazMLnZjK24wTZj4K
oh6s578mPayPFMYsWNlUSjh9NQvGxHJQPUNqMLALgm1B+E5y4OjaMgGeImrZtfaf
qRf1VGDW5TRFOxiiZJ18w3ND5hn5bY11Rog8SFF5UbKasqPvg72fUm9N7AsYhO1L
YQ+pqHO0c68QInJZC+m6yBRPS4L6e7lxAkJJ+rwfCkf4KnRHRp3l/gduyMHGN2ym
FGRzMUXIDud753oPo2STb3qyPXit4dv3KuqLB+OGM58iEB1MVyY=
=DZ0D
-----END PGP SIGNATURE-----

--azoyzbjhbeoj3i73--

