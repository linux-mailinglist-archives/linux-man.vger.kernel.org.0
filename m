Return-Path: <linux-man+bounces-5594-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iOLxG1VUFGp2MgcAu9opvQ
	(envelope-from <linux-man+bounces-5594-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Mon, 25 May 2026 15:53:25 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id AD0CE5CB5FD
	for <lists+linux-man@lfdr.de>; Mon, 25 May 2026 15:53:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 893233007364
	for <lists+linux-man@lfdr.de>; Mon, 25 May 2026 13:53:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 23CB637FF6F;
	Mon, 25 May 2026 13:53:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OVFJ8wef"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8476F1CFBA
	for <linux-man@vger.kernel.org>; Mon, 25 May 2026 13:53:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779717201; cv=none; b=fS3frglSpRGCplgRzk2xw/Sv1fTVHizLu1pKdGsg7a4iAZpZ8U7csRvuiZY2j1EAohiVV0hfgeFaEthWv/flg7uzOAKrlezcHHtxidn8ZtLRxgODkA5qzW/Gnc5dRk5l4xbNkMJqyAD2wmKoN7jWHjKFGNwk0+uV/PD3Lh7MBJk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779717201; c=relaxed/simple;
	bh=zJyLUsvWccgxuIeHCBmWW28/pMX5taC6tmk/ko8q12A=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ZYbWRNJqP+8tzKgYcH6Jm3ttA1+TRLdVgJ/kj6rtZ91SBOBvfYn+epLxj7scf0e0idDx0OIWSyIPFEUkV9oHvVLCkqhCLTLsUVxUcnn3CqmAUbZ8XiM26WKk7OLQsJdds9hwSDJaZBdH0i/JICUoSpAqmjIIhQx06/+515UvpHc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OVFJ8wef; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0FD8E1F000E9;
	Mon, 25 May 2026 13:53:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779717200;
	bh=+JF/WiUWbktSKvTkm8E2dxKd/mlSjV3lWUPcFVG/YLs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=OVFJ8wefvVqAVoz8sPMNZmDAueuv8M4d5157TYa9OnFNH++odjs2GPpdmKhDkRfYx
	 d3dKfA1HVBrpJqxwjsnx76CcskAweZslHt5xq7EIFnJ6jUUB77xSWAovfdQzOyYk5b
	 QKX+neB6oe83zYsT3XpWkaq+Ib5Q1nP8lgBzNjsWu8CH7Rvsp6CzLn7Pyk0vofeIQZ
	 4o1585MeSjghgjrnJcgGgKR1J6Ce2My6weqgA6Fk2h+nfp8AXbBa4L7tpaXktSBMzf
	 GHO2ckkC1s4WqYTUZTBIKQdQ1AehVzZ0ycCxYG2ZL/wVtM31HFwG+pt7HkhSsHoAp2
	 4iFnTfkLanoKQ==
Date: Mon, 25 May 2026 15:53:15 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Kiryl Shutsemau <kirill@shutemov.name>
Cc: linux-man@vger.kernel.org, linux-mm@kvack.org, 
	akpm@linux-foundation.org, rppt@kernel.org, peterx@redhat.com, david@kernel.org, 
	kernel-team@meta.com, "Kiryl Shutsemau (Meta)" <kas@kernel.org>, 
	"G. Branden Robinson" <g.branden.robinson@gmail.com>
Subject: Re: [PATCH man-pages v1 1/6] userfaultfd.2: Add read-write protect
 mode
Message-ID: <ahRL3DldN7z58vDH@devuan>
References: <20260525122816.1956804-1-kirill@shutemov.name>
 <20260525122816.1956804-2-kirill@shutemov.name>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="uhxldcna4n6vmaqa"
Content-Disposition: inline
In-Reply-To: <20260525122816.1956804-2-kirill@shutemov.name>
X-Spamd-Result: default: False [-2.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	TAGGED_FROM(0.00)[bounces-5594-lists,linux-man=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,kvack.org,linux-foundation.org,kernel.org,redhat.com,meta.com,gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,alejandro-colomar.es:url]
X-Rspamd-Queue-Id: AD0CE5CB5FD
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--uhxldcna4n6vmaqa
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Kiryl Shutsemau <kirill@shutemov.name>
Cc: linux-man@vger.kernel.org, linux-mm@kvack.org, 
	akpm@linux-foundation.org, rppt@kernel.org, peterx@redhat.com, david@kernel.org, 
	kernel-team@meta.com, "Kiryl Shutsemau (Meta)" <kas@kernel.org>, 
	"G. Branden Robinson" <g.branden.robinson@gmail.com>
Subject: Re: [PATCH man-pages v1 1/6] userfaultfd.2: Add read-write protect
 mode
Message-ID: <ahRL3DldN7z58vDH@devuan>
References: <20260525122816.1956804-1-kirill@shutemov.name>
 <20260525122816.1956804-2-kirill@shutemov.name>
MIME-Version: 1.0
In-Reply-To: <20260525122816.1956804-2-kirill@shutemov.name>

Hi Kiryl,

On 2026-05-25T13:28:11+0100, Kiryl Shutsemau wrote:
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
> ---
>  man/man2/userfaultfd.2 | 152 +++++++++++++++++++++++++++++++++++++++--
>  1 file changed, 148 insertions(+), 4 deletions(-)
>=20
> diff --git a/man/man2/userfaultfd.2 b/man/man2/userfaultfd.2
> index 6d56085f1534..a179660f4105 100644
> --- a/man/man2/userfaultfd.2
> +++ b/man/man2/userfaultfd.2
> @@ -111,6 +111,28 @@ The faulted thread will be stopped from execution

Please have a look at the CONTRIBUTING file, and the CONTRIBUTING.d
directory.  In particular, it would be nice to see more useful hunk
contexts, which can be done following this documentation:

<https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/tree/CONTRIBUT=
ING.d/git#n11>

>  until user-space write-unprotects the page using an
>  .B UFFDIO_WRITEPROTECT
>  ioctl.
> +.TP
> +.BR UFFDIO_REGISTER_MODE_RWP " (since Linux 7.2)"
> +When registered with
> +.B UFFDIO_REGISTER_MODE_RWP
> +mode, user-space will receive a page-fault notification
> +on any access \(em read or write \(em to a present page within the range.

Please use \[em] instead of \(em, and use spaces around them as if they
were parentheses --like this--.

Also, please use semantic newlines.  See man-pages(7):

$ MANWIDTH=3D64 man man-pages | awk '/Use semantic newlines/,/^$/'
   Use semantic newlines
     In  the  source  of a manual page, new sentences should be
     started on new lines, long sentences should be split  into
     lines at clause breaks (commas, semicolons, colons, and so
     on),  and  long  clauses  should be split at phrase bound=E2=80=90
     aries.  This convention, sometimes known as "semantic new=E2=80=90
     lines", makes it easier to  see  the  effect  of  patches,
     which  often operate at the level of individual sentences,
     clauses, or phrases.

That would be:

	When registered with
	.B UFFDIO_REGISTER_MODE_RWP
	mode,
	user-space will receive a page-fault notification
	on any access
	\[em]read or write\[em]
	to a present page within the range.

BTW, about the last line, I think you may want to mean
s/present page/page present/, with inverted order of the words, that is,
the page is present within the range, right?

> +By default the faulted thread will be stopped from execution until

'By default' should be followed by a comma.  Also, because of semantic
newlines, I'd move 'until' to the next line.  Thus:

	By default,
	the faulted thread will be stopped from execution
	until user space removes the protection using a


> +user-space removes the protection using a

We say user space, as two words.  'user-space' is used when it works as
a compound adjective (usual English rules).

> +.B UFFDIO_RWPROTECT
> +ioctl;
> +if
> +.B UFFD_FEATURE_RWP_ASYNC
> +was negotiated, the kernel restores access in place and the faulted
> +thread continues without blocking.

Again semantic newlines:

	...
	was negotiated,
	the kernel restores access in place
	and the faulted thread continues without blocking.

A rule of thumb when separating lines semantically is that it should be
relatively easy to understand full lines without reading the surrounding
lines.

> +.IP
> +.B UFFDIO_REGISTER_MODE_RWP
> +and
> +.B UFFDIO_REGISTER_MODE_WP
> +cannot be combined on the same range; attempting to register with both

Please break the line after the ';' (semantic newlines).

> +bits set returns

s/returns/fails with/

I user space, we transform the return value to an errno code, and return
-1.

> +.BR EINVAL .
> +See the "Userfaultfd read-write protect mode" section below.

This should probably be read-write-protect mode, for consistency with
write-prtect mode.  Or maybe read/write-protect mode.

>  .P
>  Multiple modes can be enabled at the same time for the same memory range.
>  .P
> @@ -192,6 +214,21 @@ The user needs to resolve the page fault by unprotec=
ting the faulted page and
>  kicking the faulted thread to continue.
>  For more information,
>  please refer to the "Userfaultfd write-protect mode" section.
> +.PP

We changed to using .P some years ago.  It works exactly the same, and
is easier to type.

> +Since Linux 7.2, userfaultfd can do read-write protection tracking, which
> +traps every access (read or write) to a present page within a registered
> +range.
> +One should check against the feature bit
> +.B UFFD_FEATURE_RWP
> +before using this feature, and optionally negotiate
> +.B UFFD_FEATURE_RWP_ASYNC
> +to have the kernel auto-restore page permissions on fault without
> +delivering a notification.
> +This mode is intended for working-set tracking by VM memory managers and
> +similar callers; cold pages can then be evicted using independent kernel
> +interfaces.
> +For more information,
> +please refer to the "Userfaultfd read-write protect mode" section.

A lot of semantic newlines needed above.

>  .\"
>  .SS Userfaultfd operation
>  After the userfaultfd object is created with
> @@ -387,6 +424,99 @@ wakes up the faulting thread(s).
>  Minor fault mode supports only hugetlbfs-backed (since Linux 5.13)
>  and shmem-backed (since Linux 5.14) memory.
>  .\"
> +.SS Userfaultfd read-write protect mode (since Linux 7.2)
> +Since Linux 7.2, userfaultfd supports read-write protect mode.
> +Unlike write-protect mode, every access \(em read or write \(em to a

Same thing about \[em] and spacing.

> +protected present page generates a userfaultfd notification.
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
> +To register with userfaultfd read-write protect mode, the user needs to
> +initiate the
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
> +After registration, the user can read-write-protect any existing memory
> +within the range using the
> +.B UFFDIO_RWPROTECT
> +ioctl where
> +.I uffdio_rwprotect.mode
> +is set to
> +.BR UFFDIO_RWPROTECT_MODE_RWP .
> +Read-write protection only affects pages that are currently populated
> +in the range; unpopulated addresses remain unpopulated and fall through
> +to the normal missing-page path on first access.
> +.P
> +For anonymous mappings, protection is preserved across page reclaim
> +(the marker rides on the swap entry) and migration.
> +For shmem and file-backed mappings, protection is dropped when the
> +backing page is reclaimed and must be re-armed by the caller.
> +Protection is also
> +.I not
> +preserved across operations that explicitly drop the underlying page
> +.RB ( "MADV_DONTNEED " "on anonymous memory, hole-punch on shmem,"

Huh, this is weird.  Why did you write it this way?

> +truncation of a file mapping).
> +Callers must re-arm the range with
> +.B UFFDIO_RWPROTECT
> +after any such operation.
> +.P
> +When an access fault happens against a protected page, user-space will
> +receive a page-fault notification whose
> +.I uffd_msg.pagefault.flags
> +field has the
> +.B UFFD_PAGEFAULT_FLAG_RWP
> +bit set.
> +.P
> +To resolve a read-write-protect page fault, the user initiates another
> +.B UFFDIO_RWPROTECT
> +ioctl whose
> +.I uffdio_rwprotect.mode
> +has the
> +.B UFFDIO_RWPROTECT_MODE_RWP
> +flag cleared.
> +This restores the original VMA permissions on the affected pages and
> +wakes any blocked threads (unless
> +.B UFFDIO_RWPROTECT_MODE_DONTWAKE
> +is also set).
> +.P
> +If
> +.B UFFD_FEATURE_RWP_ASYNC
> +was negotiated alongside
> +.BR UFFD_FEATURE_RWP ,
> +the kernel resolves access faults in place without delivering a
> +notification: page permissions are restored automatically and the
> +faulting thread continues.
> +Callers can later reconstruct which pages were touched by inspecting the
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
> +ioctl, which lets a single userfaultfd switch between async detection
> +and synchronous eviction without re-registering the range.
> +.\"
>  .SS Reading from the userfaultfd structure
>  Each
>  .BR read (2)
> @@ -531,13 +661,17 @@ If this flag is set, then the fault was a write-pro=
tect fault.
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
> @@ -640,6 +774,16 @@ Linux 4.3.
>  .P
>  Support for hugetlbfs and shared memory areas and
>  non-page-fault events was added in Linux 4.11
> +.P
> +Read-write protect mode
> +.RB ( UFFDIO_REGISTER_MODE_RWP ", " UFFD_FEATURE_RWP ", "

This is weird again.  Please don't have more than one identifier per
line.


Have a lovely day!
Alex

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

--uhxldcna4n6vmaqa
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmoUVEAACgkQ64mZXMKQ
wqlU2xAAtUs3SkDf6rA2WBgkZgdfw3E4odZx2d4HMPOKk0o2Eoz+eQ0goe20njUg
EOJIr95mIhglsfPU4fE81TRzC1JLU0GByjM85OqIYbgiuW18amtGKC9FAojFP0Mv
FZa2ELKeeYxtWaS9krRBJXypbS7AFH2awHsUQXFOme88nlBMEZccNLERzHt5XdgL
plZJkbEfz9VFu/ccSvL5hayxwtm1GNejz+d5ueiBnCBIiDVKVemyDU/BMOg6RDy4
VdH2GlgK5+CwNwYfIszxarYqhbZuk95jkZvJfjZ0X8nyN2Bpib+TZbk5nIjDZNOF
mVkIm7G5qAGN/dr0PPGsUPJY0F6J/md/JoFuYzAWEPyojY+5TYgPFC/GpXBigfrM
BD84/CTePpygt7ZGLqVuACKyHepMKDtqafMSjjY/3V0yUt+2/Q7m2TxLm/emdosy
QAJ6daPE4UX3Blx2XZMbZs9bq3utaiktbj5hV9VesRq4VGc/6YJNRhbXQ5VFxOPo
VI0yfOZxsWGxHK2ikDomA5GU/EXevvPvwL3HIZhgzA292pxYY4yPCowsbkYR9AwN
2Ws1Y7JPZ8aNn/nq+za+Tjm6I+eYrX+4LuhlyEus7QzCWRE//L/cyFxqiDT5kJ6+
MTyoBXLrPuTTTExUDEGcQehC+Z6IyKhZKm0yklEI+iSLyvb/Ij0=
=1SBD
-----END PGP SIGNATURE-----

--uhxldcna4n6vmaqa--

