Return-Path: <linux-man+bounces-5614-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id RSFyIO5/F2o3HQgAu9opvQ
	(envelope-from <linux-man+bounces-5614-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Thu, 28 May 2026 01:36:14 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E04B65EAF21
	for <lists+linux-man@lfdr.de>; Thu, 28 May 2026 01:36:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id B9264301DECE
	for <lists+linux-man@lfdr.de>; Wed, 27 May 2026 23:36:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E688338F92A;
	Wed, 27 May 2026 23:36:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Epdc4Nt1"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B5EA347533
	for <linux-man@vger.kernel.org>; Wed, 27 May 2026 23:36:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779924969; cv=none; b=e1g4Uw35OW7UMFi0bpTpIZ0SujcR7sbEvDs9dvibYAa8TVqEww8oIZwnB1ybnv9wwP0bBGX7vThzIwwDlQyv0fZRV2lW38ka/wFh290k96baXT7JcXLwdSpy5FHYyqZgvXiBe7eWXdYBXK3V5VOlA9bE98lFNpU5hin2O44gUZs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779924969; c=relaxed/simple;
	bh=aGrbCS+8FQHZ7MjAN7Re9w4LxuQ2M1Ffq5/LofkIo8Y=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=gz/UiY0Rv7OfcHJWQgyoMgitPQrtJPSyXIsPrPVCDR3VIqB4dZ1PtI6QfPEL/+smLgOtOFvXTLRZkNvNRxdbOJLxd1jl71X7+poz1APpaj61DttL8iAuZi0i8kFfOecMnb6ex9jsw/fOTAhO3f94gEgrCt4LFP4sNPsJUwzTXs0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Epdc4Nt1; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 410701F000E9;
	Wed, 27 May 2026 23:36:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779924968;
	bh=0HNc//f34RGpf1xRoUDqB2Pe9sWQRQuDT1VMPSc2QAk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=Epdc4Nt1cEEp6ormzb3dkYzCJZGnzJ+1WQvzVkrM8u/8QSCmR/lzbkqfXy1OTTtdY
	 lu17jCm3GgvQ9uXscUszVXWnsFOfb9xctu3Brr/yKbzMlYCUZflmzAfnpd1F4awmAz
	 2KWYNq0R8nbcj/2fbfQQEiuTIUfa5eqa518EYsrRYgBErsGWXaiQ0xR750BIB/l/k8
	 k+QZSdzeA+BN5ZwbUyWFRM44bZUb3zjY1Nc9zm5F3zefJg7YDGo9fQRpkVxDtDkCTG
	 fpILxd5l5CjSi41hIPjRmnEaq94w076qaayNNaunQ0lnFumxRj0TTRntEy0AUCl7Xs
	 0G2GiYH4/pfRw==
Date: Thu, 28 May 2026 01:36:04 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Kiryl Shutsemau <kirill@shutemov.name>
Cc: linux-man@vger.kernel.org, linux-mm@kvack.org, 
	akpm@linux-foundation.org, rppt@kernel.org, peterx@redhat.com, david@kernel.org, 
	kernel-team@meta.com, "Kiryl Shutsemau (Meta)" <kas@kernel.org>
Subject: Re: [PATCH v2 1/6] userfaultfd.2: Add read-write-protect mode
Message-ID: <ahd_zRgOsMwpalcR@devuan>
References: <20260526134149.2831720-1-kirill@shutemov.name>
 <20260526134149.2831720-2-kirill@shutemov.name>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="qbucw4jjnpokprpx"
Content-Disposition: inline
In-Reply-To: <20260526134149.2831720-2-kirill@shutemov.name>
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
	TAGGED_FROM(0.00)[bounces-5614-lists,linux-man=lfdr.de];
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
X-Rspamd-Queue-Id: E04B65EAF21
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--qbucw4jjnpokprpx
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Kiryl Shutsemau <kirill@shutemov.name>
Cc: linux-man@vger.kernel.org, linux-mm@kvack.org, 
	akpm@linux-foundation.org, rppt@kernel.org, peterx@redhat.com, david@kernel.org, 
	kernel-team@meta.com, "Kiryl Shutsemau (Meta)" <kas@kernel.org>
Subject: Re: [PATCH v2 1/6] userfaultfd.2: Add read-write-protect mode
Message-ID: <ahd_zRgOsMwpalcR@devuan>
References: <20260526134149.2831720-1-kirill@shutemov.name>
 <20260526134149.2831720-2-kirill@shutemov.name>
MIME-Version: 1.0
In-Reply-To: <20260526134149.2831720-2-kirill@shutemov.name>

Hi Kiryl,

On 2026-05-26T14:41:44+0100, Kiryl Shutsemau wrote:
> From: "Kiryl Shutsemau (Meta)" <kas@kernel.org>
>=20
> Read-write protect mode (UFFDIO_REGISTER_MODE_RWP) is supported starting
> from Linux 7.2. It traps every access -- read or write -- to a present
> page within a registered range. The matching UAPI consists of:
>=20
>   - UFFDIO_REGISTER_MODE_RWP   registration-mode bit
>   - UFFD_FEATURE_RWP           capability bit
>   - UFFD_FEATURE_RWP_ASYNC     async (in-kernel) fault resolution
>   - UFFDIO_RWPROTECT           install / remove RWP on a range
>   - UFFDIO_SET_MODE            runtime sync/async toggle
>   - UFFD_PAGEFAULT_FLAG_RWP    new pagefault.flags bit
>=20
> Document the new registration-mode entry, the "Userfaultfd read-write
> protect mode" section, the new pagefault flag, and a VERSIONS line.
>=20
> Signed-off-by: Kiryl Shutsemau <kas@kernel.org>
> Acked-by: Mike Rapoport (Microsoft) <rppt@kernel.org>

Thanks!  I've applied the patch.


Have a lovely night!
Alex

> ---
>  man/man2/userfaultfd.2 | 174 ++++++++++++++++++++++++++++++++++++++++-
>  1 file changed, 170 insertions(+), 4 deletions(-)
>=20
> diff --git a/man/man2/userfaultfd.2 b/man/man2/userfaultfd.2
> index 6d56085f1534..c395bf9bb332 100644
> --- a/man/man2/userfaultfd.2
> +++ b/man/man2/userfaultfd.2
> @@ -111,6 +111,32 @@ .SH DESCRIPTION
>  until user-space write-unprotects the page using an
>  .B UFFDIO_WRITEPROTECT
>  ioctl.
> +.TP
> +.BR UFFDIO_REGISTER_MODE_RWP " (since Linux 7.2)"
> +When registered with
> +.B UFFDIO_REGISTER_MODE_RWP
> +mode,
> +user space will receive a page-fault notification on any access
> +\[em]read or write\[em]
> +to a page present within the range.
> +By default,
> +the faulted thread will be stopped from execution
> +until user space removes the protection using a
> +.B UFFDIO_RWPROTECT
> +ioctl;
> +if
> +.B UFFD_FEATURE_RWP_ASYNC
> +was negotiated,
> +the kernel restores access in place
> +and the faulted thread continues without blocking.
> +.IP
> +.B UFFDIO_REGISTER_MODE_RWP
> +and
> +.B UFFDIO_REGISTER_MODE_WP
> +cannot be combined on the same range;
> +attempting to register with both bits set fails with
> +.BR EINVAL .
> +See the "Userfaultfd read-write-protect mode" section below.
>  .P
>  Multiple modes can be enabled at the same time for the same memory range.
>  .P
> @@ -192,6 +218,24 @@ .SS Usage
>  kicking the faulted thread to continue.
>  For more information,
>  please refer to the "Userfaultfd write-protect mode" section.
> +.P
> +Since Linux 7.2,
> +userfaultfd can do read-write-protection tracking,
> +which traps every access
> +(read or write)
> +to a page present within a registered range.
> +One should check against the feature bit
> +.B UFFD_FEATURE_RWP
> +before using this feature,
> +and optionally negotiate
> +.B UFFD_FEATURE_RWP_ASYNC
> +to have the kernel auto-restore page permissions on fault
> +without delivering a notification.
> +This mode is intended for working-set tracking
> +by VM memory managers and similar callers;
> +cold pages can then be evicted using independent kernel interfaces.
> +For more information,
> +please refer to the "Userfaultfd read-write-protect mode" section.
>  .\"
>  .SS Userfaultfd operation
>  After the userfaultfd object is created with
> @@ -387,6 +431,113 @@ .SS Userfaultfd minor fault mode (since Linux 5.13)
>  Minor fault mode supports only hugetlbfs-backed (since Linux 5.13)
>  and shmem-backed (since Linux 5.14) memory.
>  .\"
> +.SS Userfaultfd read-write-protect mode (since Linux 7.2)
> +Since Linux 7.2,
> +userfaultfd supports read-write-protect mode.
> +Unlike write-protect mode,
> +every access
> +\[em]read or write\[em]
> +to a protected page generates a userfaultfd notification.
> +It works on anonymous, shmem, and hugetlbfs mappings.
> +.P
> +The user needs to first check availability of this feature using the
> +.B UFFDIO_API
> +ioctl against the feature bit
> +.B UFFD_FEATURE_RWP
> +before using this mode.
> +See
> +.BR UFFDIO_API (2const)
> +for the recommended discovery sequence.
> +.P
> +To register with userfaultfd read-write-protect mode,
> +the user needs to initiate the
> +.B UFFDIO_REGISTER
> +ioctl with mode
> +.B UFFDIO_REGISTER_MODE_RWP
> +set.
> +.B UFFDIO_REGISTER_MODE_RWP
> +cannot be combined with
> +.BR UFFDIO_REGISTER_MODE_WP ;
> +however it can be combined with
> +.B UFFDIO_REGISTER_MODE_MISSING
> +when the caller also wants notifications for fresh page populations.
> +.P
> +After registration,
> +the user can read-write-protect any existing memory within the range usi=
ng the
> +.B UFFDIO_RWPROTECT
> +ioctl where
> +.I uffdio_rwprotect.mode
> +is set to
> +.BR UFFDIO_RWPROTECT_MODE_RWP .
> +Read-write protection only affects pages
> +that are currently populated in the range;
> +unpopulated addresses remain unpopulated
> +and fall through to the normal missing-page path on first access.
> +.P
> +For anonymous mappings,
> +protection is preserved across page reclaim
> +(the marker rides on the swap entry)
> +and migration.
> +For shmem and file-backed mappings,
> +protection is dropped when the backing page is reclaimed
> +and must be re-armed by the caller.
> +Protection is also
> +.I not
> +preserved across operations that explicitly drop the underlying page:
> +.B MADV_DONTNEED
> +on anonymous memory,
> +hole-punch on shmem,
> +truncation of a file mapping.
> +Callers must re-arm the range with
> +.B UFFDIO_RWPROTECT
> +after any such operation.
> +.P
> +When an access fault happens against a protected page,
> +user space will receive a page-fault notification whose
> +.I uffd_msg.pagefault.flags
> +field has the
> +.B UFFD_PAGEFAULT_FLAG_RWP
> +bit set.
> +.P
> +To resolve a read-write-protect page fault,
> +the user initiates another
> +.B UFFDIO_RWPROTECT
> +ioctl whose
> +.I uffdio_rwprotect.mode
> +has the
> +.B UFFDIO_RWPROTECT_MODE_RWP
> +flag cleared.
> +This restores the original VMA permissions on the affected pages
> +and wakes any blocked threads
> +(unless
> +.B UFFDIO_RWPROTECT_MODE_DONTWAKE
> +is also set).
> +.P
> +If
> +.B UFFD_FEATURE_RWP_ASYNC
> +was negotiated alongside
> +.BR UFFD_FEATURE_RWP ,
> +the kernel resolves access faults in place
> +without delivering a notification:
> +page permissions are restored automatically
> +and the faulting thread continues.
> +Callers can later reconstruct which pages were touched
> +by inspecting the
> +.B PAGE_IS_ACCESSED
> +bit returned by the
> +.B PAGEMAP_SCAN
> +ioctl described in
> +.BR ioctl_userfaultfd (2)
> +and
> +.IR Documentation/admin\-guide/mm/pagemap.rst
> +in the Linux kernel source.
> +.P
> +The async mode can be toggled at runtime using the
> +.B UFFDIO_SET_MODE
> +ioctl,
> +which lets a single userfaultfd switch between async detection
> +and synchronous eviction without re-registering the range.
> +.\"
>  .SS Reading from the userfaultfd structure
>  Each
>  .BR read (2)
> @@ -531,13 +682,17 @@ .SS Reading from the userfaultfd structure
>  .B UFFD_PAGEFAULT_FLAG_MINOR
>  If this flag is set, then the fault was a minor fault.
>  .TP
> +.BR UFFD_PAGEFAULT_FLAG_RWP " (since Linux 7.2)"
> +If this flag is set, then the fault was a read-write-protect fault.
> +.TP
>  .B UFFD_PAGEFAULT_FLAG_WRITE
>  If this flag is set, then the fault was a write fault.
>  .P
> -If neither
> -.B UFFD_PAGEFAULT_FLAG_WP
> -nor
> -.B UFFD_PAGEFAULT_FLAG_MINOR
> +If none of
> +.BR UFFD_PAGEFAULT_FLAG_WP ,
> +.BR UFFD_PAGEFAULT_FLAG_MINOR ,
> +or
> +.B UFFD_PAGEFAULT_FLAG_RWP
>  are set, then the fault was a missing fault.
>  .RE
>  .TP
> @@ -640,6 +795,17 @@ .SH HISTORY
>  .P
>  Support for hugetlbfs and shared memory areas and
>  non-page-fault events was added in Linux 4.11
> +.P
> +Read-write-protect mode
> +.RB ( UFFDIO_REGISTER_MODE_RWP ,
> +.BR UFFD_FEATURE_RWP ,
> +.BR UFFDIO_RWPROTECT )
> +was added in Linux 7.2,
> +together with
> +.B UFFD_FEATURE_RWP_ASYNC
> +and the
> +.B UFFDIO_SET_MODE
> +runtime mode toggle.
>  .SH NOTES
>  The userfaultfd mechanism can be used as an alternative to
>  traditional user-space paging techniques based on the use of the
> --=20
> 2.54.0
>=20
>=20

--=20
<https://www.alejandro-colomar.es>

--qbucw4jjnpokprpx
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmoXf+MACgkQ64mZXMKQ
wqn99Q//aRTYKv3/sGG0tLUJrP26/WR/9/GY/yJgmDbt32sC6Jj8IFACrtmPS4Ub
qQP/Sp2E0PaATkWbh5XN33UQpVdZ5CmB2dOBn4SmJo+veXPJMHYtbUY9mZaSbWk8
Ei/i0NvWtQaGa9q7A/B2jpfuJDj24CWe+nSxLux6AyEnR2xsh+EwZuz79sGqZB2A
DsvKBeAwJTYNRTXzE2+JfBSzHxRIlNtgvV7Z4BpidQFxcgwDY2sdKcWZVx6IxKYN
FZG1I9ChQoyoinPg3ruC/MiHLNTX3vaD0PFXGbItAxuQLp37phPFkKx5+TwSTWFB
mvcXsMhkJ6WrESwptypKAqljeGayxEJZC3p9HlXp/KfRaTEOM97CbYHmkS+PYP7E
sB6Fh9qPs9O7BiFImvBpTnadxGnzrbstTuSAaC/O/Cr/9p/IvZmvNFs/rJMEYrtx
4kIRAm5Lg5R4xlp0knw3n7zonxNyyg5SuryYVwMa9HoJ6xhb6odj09/8MJhOPZcY
b0uCo5lWeDePpaodROisAgnKBT4Y69hXPwMLOBzmrl7Ql+DM500Nj7Y/xcpuXu0o
t4IvfXiDQxuY5yMrsx5/WBBUTsIPyKBYIbNvFpedF0hhI4bYts9/ZL9NbTX4fS5Z
11SOF+v9ix5U7CrOf8PCZbOT7Lf79m1G20pKpMEGLec1DzaATm4=
=WYBA
-----END PGP SIGNATURE-----

--qbucw4jjnpokprpx--

