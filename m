Return-Path: <linux-man+bounces-3833-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E104B45857
	for <lists+linux-man@lfdr.de>; Fri,  5 Sep 2025 14:59:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C80EB3AE950
	for <lists+linux-man@lfdr.de>; Fri,  5 Sep 2025 12:59:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C466835083F;
	Fri,  5 Sep 2025 12:59:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B2KUBjz2"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 841553451AF
	for <linux-man@vger.kernel.org>; Fri,  5 Sep 2025 12:59:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757077145; cv=none; b=cLqqWmnSOOYhQ3Rgl9S1W3jYSlAR7SkUNMvHZkNMjYvOT069DohTmgVF4p+rXR2Mx4YfBCsjBepcgO1UaJd0moHcQXgJ+R5WwLCJAgUwoiqmcKFfR5DarzfL4qxBDNmdXxstKIdbGU2ZEIUvkLC7wVZ0hzFihcZh/4ydqKtHu00=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757077145; c=relaxed/simple;
	bh=G95HCqw3TF01E/4sG6M3+HFnEFWdfpzjt0mej2EdDTQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Weaz5s2XMqclpuJy9lv181yZcagwlW1jhNBitiAnTz2Hi/dHCeX8DhDRrSTdTXhkEKugWNpC3ld0Cn4ZGI2WXAM555tDEHMnafRBC44gOoX7OtOszYjUvjzmiNOCZFbUpDDiujA3idIJzZ+apH+lSU3aKLZrBlMRX57WGTQ/HpE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B2KUBjz2; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 91EFFC4CEF1;
	Fri,  5 Sep 2025 12:59:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757077145;
	bh=G95HCqw3TF01E/4sG6M3+HFnEFWdfpzjt0mej2EdDTQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=B2KUBjz29f7sO3qv2zK+cn7v6m1auwaS6f7LFDmVr40bHDuGYaBsgy6GuIPezBj44
	 zLDLV/VMbBykOwX3EPCotX/38I6VUFAs8QXyCEwbJUaYt41u0nGecPE+5038d3gFqo
	 YNInoqp3IOMAsq64GptQ0ExtCkdX7lhivXrhKdS3d79wqc1JsQ5xUUQBJ66XaWGz8P
	 0xMmqyfvjsZylttbSvvXbeifp4XC91cQBkI2yEJ+TclbmdVDNzWBX1ES0U6IB7RiLk
	 YB3rY/lpbO+fr/+FFNJkubFgTPaWOcj91hf9WQkycfeDqx3ZBDY9J9mFrFrFwn5yo2
	 nu6vwyoEy4CoQ==
Date: Fri, 5 Sep 2025 14:59:00 +0200
From: Alejandro Colomar <alx@kernel.org>
To: trillian <trillian@r9.pm>
Cc: Jan Kara <jack@suse.com>, linux-man@vger.kernel.org
Subject: Re: [PATCH] man/man2/: Document quotactl_fd syscall
Message-ID: <sfrfgv7nx3gc4fe4kmdipr3crxr4pvog7iwvuowgyskbnrn3x7@5bw4zilelhf7>
References: <kcgr45epiqdxxfg3wwqvfifudaz23ten3tuwdnn4o5rp2pj7ta@27jsmwb26cze>
 <22e61e8f6c198c6a6c0468bb97b2d2add1fa0aec.1757076139.git.trillian@r9.pm>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="nfd5r6qydnyfrlxo"
Content-Disposition: inline
In-Reply-To: <22e61e8f6c198c6a6c0468bb97b2d2add1fa0aec.1757076139.git.trillian@r9.pm>


--nfd5r6qydnyfrlxo
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: trillian <trillian@r9.pm>
Cc: Jan Kara <jack@suse.com>, linux-man@vger.kernel.org
Subject: Re: [PATCH] man/man2/: Document quotactl_fd syscall
References: <kcgr45epiqdxxfg3wwqvfifudaz23ten3tuwdnn4o5rp2pj7ta@27jsmwb26cze>
 <22e61e8f6c198c6a6c0468bb97b2d2add1fa0aec.1757076139.git.trillian@r9.pm>
MIME-Version: 1.0
In-Reply-To: <22e61e8f6c198c6a6c0468bb97b2d2add1fa0aec.1757076139.git.trillian@r9.pm>

Hi Trillian,

On Fri, Sep 05, 2025 at 03:42:19PM +0300, trillian wrote:
> Based on the earlier discussion in the linux-man list.
>=20
> A few remaining questions regarding formatting:
>=20
> is it enough to mention "since Linux 5.14" in the HISTORY section or
> should it be mentioned elsewhere too?

That would be enough, in principle.

> Does the discussion of quotactl() vs quotactl_fd() belong in NOTES or
> should it be moved somewhere else?

You could put it in NOTES for a start.  If I change my mind later, I can
move the text elsewhere.

> (Also, I've CC'd Jan Kara as the maintainer of the quota subsystem.

Thanks!

> Should I be CC'ing anyone else too?)

I guess Jan should be enough.

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

Thanks for the references!


Have a lovely day!
Alex

>=20
> Signed-off-by: trillian <trillian@r9.pm>
> ---
>  man/man2/quotactl.2    | 76 +++++++++++++++++++++++++++++++++++++++---
>  man/man2/quotactl_fd.2 |  1 +
>  2 files changed, 72 insertions(+), 5 deletions(-)
>  create mode 100644 man/man2/quotactl_fd.2
>=20
> diff --git a/man/man2/quotactl.2 b/man/man2/quotactl.2
> index 126426b8a..8e04e93c5 100644
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
> @@ -31,7 +43,13 @@ after this, the soft limit counts as a hard limit.
>  .P
>  The
>  .BR quotactl ()
> -call manipulates disk quotas.
> +and
> +.BR quotactl_fd ()
> +calls manipulate disk quotas.
> +The difference between these functions is the way the filesystem being
> +manipulated is specified, see description of the arguments below.

Please use semantic newlines.  See man-pages(7):

$ MANWIDTH=3D72 man man-pages | sed -n '/Use semantic newlines/,/^$/p'   Us=
e semantic newlines
       In the source of a manual page, new sentences should be  started
       on  new  lines,  long  sentences  should  be split into lines at
       clause breaks (commas, semicolons, colons, and so on), and  long
       clauses  should be split at phrase boundaries.  This convention,
       sometimes known as "semantic newlines", makes it easier  to  see
       the effect of patches, which often operate at the level of indi=E2=
=80=90
       vidual sentences, clauses, or phrases.

That means, essentially, that breaking after punctuation (such as after
comma) is preferable than breaking at random places in a sentence.

> +See NOTES for why one variant might be preferred over the other.
> +.P
>  The
>  .I op
>  argument indicates an operation to be applied to the user or
> @@ -56,11 +74,21 @@ The
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
> @@ -118,6 +146,18 @@ field returned by the
>  .B Q_GETINFO
>  operation.
>  .IP
> +The
> +.BR quotactl_fd ()
> +variant of this syscall ignores the
> +.IR addr
> +and
> +.IR id
> +arguments, so the

Are these ignored for all operations, or only for this operation?
I guess only for this operation, right?

> +.B Q_QUOTAON
> +operation of
> +.BR quotactl_fd ()
> +is only suitable for work with hidden system inodes.
> +.IP
>  This operation requires privilege
>  .RB ( CAP_SYS_ADMIN ).
>  .TP
> @@ -350,10 +390,14 @@ where the format number will be stored.
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
> @@ -770,6 +814,7 @@ but there is no ID greater than or equal to
>  .I id
>  that has an active quota.
>  .SH NOTES
> +.SS Alternative XFS header
>  Instead of
>  .I <xfs/xqm.h>
>  one can use
> @@ -797,6 +842,27 @@ constants for the available quota types, but their v=
alues are the same as for
>  constants without the
>  .B XQM_
>  prefix.
> +.SS quotactl() versus quotactl_fd()
> +The original
> +.BR quotactl ()
> +variant of this syscall requires specifying the block device containing =
the
> +filesystem to operate on.
> +This makes it impossible to use in cases where the filesystem has no
> +backing block device (e.g. tmpfs).
> +Even when the block device does exist, it might be difficult to locate
> +(requires scanning
> +.I /proc/self/mounts
> +and even some filesystem-specific parsing in the case of e.g. bcachefs).
> +.BR quotactl_fd ()
> +instead works on the mount point, which avoids this limitation and is
> +simpler to use (since the filesystem to manipulate is typically specified
> +by its mount point anyway).
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

It looks quite good to me.  Thanks!


Have a lovely day!
Alex

> --=20
> 2.51.0
>=20

--=20
<https://www.alejandro-colomar.es>
Use port 80 (that is, <...:80/>).

--nfd5r6qydnyfrlxo
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmi63oQACgkQ64mZXMKQ
wqktiA/+L/TVlmjAS6HF66T7g6xJy8k6BMfy9hYGEhKIS2sfS2sMIa/RPqVa6fru
DxGIHwtFkXyzxMShHtEeAulnF7s/Ehi9iU/63Wdq+uW1JFw+h5inLN9QJgTTGR4R
P9ZZXwYlUezfUM3p41yQZDDYLbLOb4ecu+b0KzXibni3G1rt9LBUf6j9Oj/aPd5z
bd7Y5U3+Dg0Rry43+v6Uck4rJlotK9O1jGz27cAJTIZcjO5i3jpw+bPQMhiv5aAS
yl8FdBGkHVWuo2YkT1vMmfZi5KIxCuznO18oddX/PnY+cOklkIstimdy1hp/xDQh
yh/Ea4HEfEZCgYONRMqrP49fJw5eTd8etxNg72kHano1cVayhrqAvPWqukrg7C3H
41cOXh2ZVD+Y7AhLmayhjGVZSU9CgWozcqHGfD5uFxKtPLCjSl0oSempw5f/egPT
nGntY5Xkes0TM/3WuLxO3CEqcNHOLpRvRje9emcCtbhacrahH8xcAypygeTBW0zF
3SZgJvwOPjwZrhGcA7OH5Ry1av27WQ8MoBy5GXO65bJHLJOB4x5MU4RHKslYwaTA
NZyFyfQ/hZel6hhujN65ZiNEBkgTpF1s9o3Eu4ty1FcUM9AyaLaTlIs4IYv048DH
irlT1QEp+GkxTKgR6CK14A9rPGy60EtyOpc88qXNlmrCrXgPhnM=
=r73I
-----END PGP SIGNATURE-----

--nfd5r6qydnyfrlxo--

