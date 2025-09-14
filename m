Return-Path: <linux-man+bounces-3863-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DEC7B567F1
	for <lists+linux-man@lfdr.de>; Sun, 14 Sep 2025 13:37:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CA85F161EFB
	for <lists+linux-man@lfdr.de>; Sun, 14 Sep 2025 11:37:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C5DF8226D1D;
	Sun, 14 Sep 2025 11:37:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U9V+Bvk5"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 85B2F2745C
	for <linux-man@vger.kernel.org>; Sun, 14 Sep 2025 11:37:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757849843; cv=none; b=MCrmk7G5KRAAogNJ/1QO08ATDCEe78WWcn2Rem0E1LPHFLAgA9IZN5CJtZFHODvoGiGsFiysYIjSpzgpXzTQ52EDEKVi5jehRNSlCrw0591zVRosr7fwW66b+lBmCLYcELWI8cXiQi6HbYH5Y8x514CbDXCMT5wR59ZVTbDa7i8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757849843; c=relaxed/simple;
	bh=H/KYXa3xRG4R4hft5iCD6qGU2m0G97pf1HAma70OR9I=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=lUMgcIo06ocp3nSJ1gl2zR/bjB/2bpncbe0jBfdkXrz/hcgb/qswO9x/FUBRTk5/VQVMMTj56Tlo5lmmtjaHxHgiD+oXG5dE2sv9fEKJFfbGV3+U7037FmdE5w4gxCB0Pke9Uflq/JH/TdXYrScvnz5sKwlMlER4f1/ktrc2V/4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U9V+Bvk5; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9106BC4CEF0;
	Sun, 14 Sep 2025 11:37:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757849840;
	bh=H/KYXa3xRG4R4hft5iCD6qGU2m0G97pf1HAma70OR9I=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=U9V+Bvk5d9JV7jXU/iApUsjuuqjn+Pl+eR4Alhew6KiNKKT4mwOcogzZXMzh2oUGi
	 hMwJJsCOV1svXNSlgLxwvsMX5bCfOviDrG1Ju+67yi5X4THBXODj+ziPLEvcxrecc6
	 lL2SVjBzX6ybQZbfrgkBAvyt0WobQDKaEUAR+AnUMSj5KfVyhg/eA/1ACnlDxVaUhl
	 UB8Z2+iK289Fe2H4sshqd+gdWgyQjE6OscinQaEaFDfPF+HpzyrhrhetL99Dmn+GFY
	 nnYpoi7XyxRuiuqz8yJPQKyznkBSWDrvLSDuwfpKWGqdwe0ESUVWzXrrbKHmeVyf8s
	 CLXegGA2vwQ7w==
Date: Sun, 14 Sep 2025 13:37:15 +0200
From: Alejandro Colomar <alx@kernel.org>
To: trillian <trillian@r9.pm>
Cc: linux-man@vger.kernel.org, Jan Kara <jack@suse.cz>
Subject: Re: [PATCH v2] man/man2/: Document quotactl_fd syscall
Message-ID: <ahc36eabnwhb52pmjsvgxwg4aog5zrmhgs5hycbzf6bqlfbbyy@s7vy3zqkje7e>
References: <22e61e8f6c198c6a6c0468bb97b2d2add1fa0aec.1757076139.git.trillian@r9.pm>
 <d89a3f923f2954d161a8d60e3002e1496d3327d5.1757174497.git.trillian@r9.pm>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="4hd66zxd2jpysb23"
Content-Disposition: inline
In-Reply-To: <d89a3f923f2954d161a8d60e3002e1496d3327d5.1757174497.git.trillian@r9.pm>


--4hd66zxd2jpysb23
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: trillian <trillian@r9.pm>
Cc: linux-man@vger.kernel.org, Jan Kara <jack@suse.cz>
Subject: Re: [PATCH v2] man/man2/: Document quotactl_fd syscall
References: <22e61e8f6c198c6a6c0468bb97b2d2add1fa0aec.1757076139.git.trillian@r9.pm>
 <d89a3f923f2954d161a8d60e3002e1496d3327d5.1757174497.git.trillian@r9.pm>
MIME-Version: 1.0
In-Reply-To: <d89a3f923f2954d161a8d60e3002e1496d3327d5.1757174497.git.trillian@r9.pm>

Hi Trillian,

On Sat, Sep 06, 2025 at 07:01:37PM +0300, trillian wrote:
> I based these changes on kernel commits [1], [2]. Man-page wording
> changes inspired by [3]. Rationale for the syscall itself is from [4].
>=20
> [1] linux.git 9dfa23c8de925041b7b45637a1a80a98a22f19dd
> ("quota: Add mountpath based quota support")
> [2] linux.git 64c2c2c62f92339b176ea24403d8db16db36f9e6
> ("quota: Change quotactl_path() systcall to an fd-based one")
> [3] <https://lore.kernel.org/all/20210304123541.30749-4-s.hauer@pengutron=
ix.de/>
> [4] <https://lwn.net/Articles/859679/>
>=20
> Reviewed-by: Jan Kara <jack@suse.cz>
> Signed-off-by: trillian <trillian@r9.pm>
> ---
>=20
> Alejandro,
>=20
> Changes from previous version:
> * I tried to make the newlines a bit more semantic, as you requested.
> * Also, I changed my use of the word "syscall" to "system call", as this
>   seems to be the wording other manpages use. (Should this perhaps be
>   added to the "preferred terms" section in man-pages(7)?)
>=20
> Regarding your comment on the previous version:
>=20
> > > +The
> > > +.BR quotactl_fd ()
> > > +variant of this syscall ignores the
> > > +.IR addr
> > > +and
> > > +.IR id
> > > +arguments, so the
> >=20
> > Are these ignored for all operations, or only for this operation?
> > I guess only for this operation, right?
>=20
> Indeed they are only ignored for Q_QUOTAON. I thought it was clear
> enough from the sentence being in the section about Q_QUOTAON, but if
> you want, I can try to reword it to be more explicit.

Nah, it was just to confirm.  All's good.

>=20
> Let me know if there's anything else I should change :)
> ~trillian

Thanks!  I've applied the patch.


Have a lovely day!  :)
Alex

>=20
>  man/man2/quotactl.2    | 78 +++++++++++++++++++++++++++++++++++++++---
>  man/man2/quotactl_fd.2 |  1 +
>  2 files changed, 74 insertions(+), 5 deletions(-)
>  create mode 100644 man/man2/quotactl_fd.2
>=20
> diff --git a/man/man2/quotactl.2 b/man/man2/quotactl.2
> index 126426b8a..dcc0aeab9 100644
> --- a/man/man2/quotactl.2
> +++ b/man/man2/quotactl.2
> @@ -4,7 +4,7 @@
>  .\"
>  .TH quotactl 2 (date) "Linux man-pages (unreleased)"
>  .SH NAME
> -quotactl \- manipulate disk quotas
> +quotactl, quotactl_fd \- manipulate disk quotas
>  .SH LIBRARY
>  Standard C library
>  .RI ( libc ,\~ \-lc )
> @@ -17,7 +17,19 @@ Standard C library
>  .P
>  .BI "int quotactl(int " op ", const char *_Nullable " special ", int " i=
d ,
>  .BI "             caddr_t " addr );
> +.P
> +.BR "#include <sys/syscall.h>" "    /* Definition of " SYS_* " constants=
 */"
> +.B #include <unistd.h>
> +.P
> +.BI "int syscall(SYS_quotactl_fd, int " fd ", int " op ", int " id \
> +", caddr_t " addr );
>  .fi
> +.P
> +.IR Note :
> +glibc provides no wrapper for
> +.BR quotactl_fd (),
> +necessitating the use of
> +.BR syscall (2).
>  .SH DESCRIPTION
>  The quota system can be used to set per-user, per-group, and per-project=
 limits
>  on the amount of disk space used on a filesystem.
> @@ -31,7 +43,14 @@ after this, the soft limit counts as a hard limit.
>  .P
>  The
>  .BR quotactl ()
> -call manipulates disk quotas.
> +and
> +.BR quotactl_fd ()
> +calls manipulate disk quotas.
> +The difference between these functions is
> +the way the filesystem being manipulated is specified,
> +see description of the arguments below.
> +See NOTES for why one variant might be preferred over the other.
> +.P
>  The
>  .I op
>  argument indicates an operation to be applied to the user or
> @@ -56,11 +75,21 @@ The
>  .I subop
>  value is described below.
>  .P
> -The
> +For
> +.BR quotactl (),
> +the
>  .I special
>  argument is a pointer to a null-terminated string containing the pathname
>  of the (mounted) block special device for the filesystem being manipulat=
ed.
>  .P
> +For
> +.BR quotactl_fd (),
> +the
> +.I fd
> +argument is a file descriptor (which may be opened with the
> +.B O_PATH
> +flag) referring to a file or directory on the filesystem being manipulat=
ed.
> +.P
>  The
>  .I addr
>  argument is the address of an optional, operation-specific, data structu=
re
> @@ -118,6 +147,18 @@ field returned by the
>  .B Q_GETINFO
>  operation.
>  .IP
> +The
> +.BR quotactl_fd ()
> +variant of this system call ignores the
> +.IR addr
> +and
> +.IR id
> +arguments, so the
> +.B Q_QUOTAON
> +operation of
> +.BR quotactl_fd ()
> +is only suitable for work with hidden system inodes.
> +.IP
>  This operation requires privilege
>  .RB ( CAP_SYS_ADMIN ).
>  .TP
> @@ -350,10 +391,14 @@ where the format number will be stored.
>  .TP
>  .B Q_SYNC
>  Update the on-disk copy of quota usages for a filesystem.
> -If
> +For
> +.BR quotactl (),
> +if
>  .I special
>  is NULL, then all filesystems with active quotas are sync'ed.
> -The
> +.RB ( quotactl_fd ()
> +always sync's only one filesystem.)
> +In both cases, the
>  .I addr
>  and
>  .I id
> @@ -770,6 +815,7 @@ but there is no ID greater than or equal to
>  .I id
>  that has an active quota.
>  .SH NOTES
> +.SS Alternative XFS header
>  Instead of
>  .I <xfs/xqm.h>
>  one can use
> @@ -797,6 +843,28 @@ constants for the available quota types, but their v=
alues are the same as for
>  constants without the
>  .B XQM_
>  prefix.
> +.SS quotactl() versus quotactl_fd()
> +The original
> +.BR quotactl ()
> +variant of this system call requires specifying
> +the block device containing the filesystem to operate on.
> +This makes it impossible to use
> +in cases where the filesystem has no backing block device (e.g. tmpfs).
> +Even when the block device does exist, it might be difficult to locate
> +(requires scanning
> +.I /proc/self/mounts
> +and even some filesystem-specific parsing in the case of e.g. bcachefs).
> +.BR quotactl_fd ()
> +instead works on the mount point,
> +which avoids this limitation and is simpler to use
> +(since the filesystem to manipulate is typically specified by its mount
> +point anyway).
> +.SH STANDARDS
> +Linux.
> +.SH HISTORY
> +.TP
> +.BR quotactl_fd ()
> +Linux 5.14.
>  .SH SEE ALSO
>  .BR quota (1),
>  .BR getrlimit (2),
> diff --git a/man/man2/quotactl_fd.2 b/man/man2/quotactl_fd.2
> new file mode 100644
> index 000000000..5f63187c6
> --- /dev/null
> +++ b/man/man2/quotactl_fd.2
> @@ -0,0 +1 @@
> +.so man2/quotactl.2
> --=20
> 2.51.0
>=20

--=20
<https://www.alejandro-colomar.es>
Use port 80 (that is, <...:80/>).

--4hd66zxd2jpysb23
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmjGqOsACgkQ64mZXMKQ
wqm90BAAnvlnEqQnPGMCpK7CZdcGJMJ2koDb66KaB8y/w/lCZXqA1TmzFxAAu6hX
yjctjwwgSm1UAPGsuksGpUEfxv8AFgELjy9jXFxNGlc3stlyn4N1/DVMYlhHm9lE
onGXFaLfD4J9dn4J54oVnzGMnKjc2pBrXOQKXDgg/YgJV0QG9fqwsH9w9fGAmSz6
2VV1sI5kLDzj9NF5/RADhBXIqxE/SQL7MLcwrbyY+RjuksaHY6XhM2iWRC1AjSNU
ypwpREXWkUT7unh4LwdOo9ZJEd8fODmpfvqYgDokOwYOST9xZEcbxwmuS8jix5TA
FFonLVRxjX8sgMG50zliGHHe6iqZMdfzSNWGgwdWPhps/MzahHiAY6Yedb6Nq0Rg
N0TcelJwcmKJ1e89JtL6KViuu6ulm3XVElno6QD1415Fpog6UYZka9qxjKMdTX6J
8r3oXKBFAkDB/cmbAaciRcT5csB4ZapUl0UGLHvVbFHJAcPTKGPneilL1YUbYxBL
vcS2k3MxnV+FnvhkehB25vto6TiXGNCtCqCu2o8jeG6uqxbLHrahtRBpXkQiklc+
2rt5c/gDV2c5Jm88tU8r8hWoNm14caLTLOkKkCZpGgRWF3X/YTQqeOI0cv2fwgcR
slY27CEaV1KApjd4ybCvAyoOywvxzaPesFPIzmuui6kvGNO0juM=
=64yy
-----END PGP SIGNATURE-----

--4hd66zxd2jpysb23--

