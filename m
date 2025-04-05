Return-Path: <linux-man+bounces-2749-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E1C8A7C91B
	for <lists+linux-man@lfdr.de>; Sat,  5 Apr 2025 14:48:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DDDF817AAF8
	for <lists+linux-man@lfdr.de>; Sat,  5 Apr 2025 12:48:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 52D1F1CEAA3;
	Sat,  5 Apr 2025 12:48:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kuT6KPJn"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 082721E505
	for <linux-man@vger.kernel.org>; Sat,  5 Apr 2025 12:48:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743857294; cv=none; b=nf0cn2uFKQRqGOtumOXRMD1iuuv4mL2URUob58685ExAL7pNqWLpyYpYCogHBL2BHrTSjob0aP6IrkwSkSXo3a0yMQxJf9zUx3MyWTGWU05PO7PXTBdJRQHiZCxN1hcoSZqd7iexXsQR4pcUUXzz0nGyA4ssugiiz8U9pa9ZOuQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743857294; c=relaxed/simple;
	bh=HCb8qRXBwv1zki14fkJ2/dwgHry27AN9zSkgY2up3Iw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=u1OUQpzpHcZhK+zb55mrBCb9rLQEntgScRk8nzDHcGxqW4er0SfA7Co+zcVOFUxZEBSd751Yqjt7GpSzwpXWYPuc01proLXew2TC6P9EwbRU3Rb3k0gQbB5GG3PGE0KVmrnK0bhCht/FvTafSqVaFecJiVfLfYXpdUCtP00ZYIo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kuT6KPJn; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9B904C4CEE4;
	Sat,  5 Apr 2025 12:48:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743857293;
	bh=HCb8qRXBwv1zki14fkJ2/dwgHry27AN9zSkgY2up3Iw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=kuT6KPJn58ewGfoIZ+2vscpxiOB6nbgPu3NHJeryyDZ+rTxMJz/AypTXfNKNRxAAU
	 oqbAixVbzxMgIgtuby8Qkx8tJXyy/mthpp6kVVxgH6AHejDP4PhlPlsEeC5ehkgXzl
	 o1Qmt0v7fIeTFzfL9V+QNgRVMly2ewMtyjZfyy/oLXAk8sX+0Y9NE9BaDvuiDgQHB2
	 qnf9pTU0h4fVVk4dXVUXfRyLvjNVCLvayiCz73BR59l2mhDL1R4PIBGTupejICOpST
	 3t5r11GhBuOq2kvluGY4YbOauk7loLbJcr3LsMWgMRUEQAy/Y/XbGoNPegKG+v3v+7
	 nPlhVWkz6NsXg==
Date: Sat, 5 Apr 2025 14:48:10 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Amir Goldstein <amir73il@gmail.com>
Cc: Jan Kara <jack@suse.cz>, linux-man@vger.kernel.org
Subject: Re: [RESEND PATCH v3 2/2] fanotify: Document mount namespace events
Message-ID: <fudngc7oycfhqc275vgpy6br3kvj7v4ocpaoabkvyiptg5h7ix@ykxm64zwnu45>
References: <20250404104723.1709188-1-amir73il@gmail.com>
 <20250404104723.1709188-2-amir73il@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="gonle545llzcgaoc"
Content-Disposition: inline
In-Reply-To: <20250404104723.1709188-2-amir73il@gmail.com>


--gonle545llzcgaoc
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Amir Goldstein <amir73il@gmail.com>
Cc: Jan Kara <jack@suse.cz>, linux-man@vger.kernel.org
Subject: Re: [RESEND PATCH v3 2/2] fanotify: Document mount namespace events
References: <20250404104723.1709188-1-amir73il@gmail.com>
 <20250404104723.1709188-2-amir73il@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20250404104723.1709188-2-amir73il@gmail.com>

Hi Amir,

On Fri, Apr 04, 2025 at 12:47:23PM +0200, Amir Goldstein wrote:
> Used to subscribe for notifications for when mounts
> are attached/detached from a mount namespace.
>=20
> Reviewed-by: Jan Kara <jack@suse.cz>
> Reviewed-by: Miklos Szeredi <mszeredi@redhat.com>
> Reviewed-by: Christian Brauner <brauner@kernel.org>
> Signed-off-by: Amir Goldstein <amir73il@gmail.com>

Thanks!  I've applied the patch.  I've amended with the following edits
(plus some edits to the subject lines).
<https://www.alejandro-colomar.es:8443/src/alx/linux/man-pages/man-pages.gi=
t/commit/?h=3Dcontrib&id=3D4c4d9f0f5148caf1271394018d0f7381c1b8b400>

	diff --git i/man/man2/fanotify_init.2 w/man/man2/fanotify_init.2
	index 93887b875..7038845bf 100644
	--- i/man/man2/fanotify_init.2
	+++ w/man/man2/fanotify_init.2
	@@ -337,11 +337,11 @@ .SH DESCRIPTION
	 about the underlying mount correlated to an event.
	 An additional record of type
	 .B FAN_EVENT_INFO_TYPE_MNT
	-encapsulates the information about the mount and is included alongside the
	-generic event metadata structure.
	+encapsulates the information about the mount
	+and is included alongside the generic event metadata structure.
	 The use of
	 .BR FAN_CLASS_CONTENT ,
	-.BR FAN_CLASS_PRE_CONTENT,
	+.BR FAN_CLASS_PRE_CONTENT ,
	 or any of the
	 .B FAN_REPORT_DFID_NAME_TARGET
	 flags along with this flag is not permitted
	diff --git i/man/man2/fanotify_mark.2 w/man/man2/fanotify_mark.2
	index 2c9d6e9b9..5bd3cb2ab 100644
	--- i/man/man2/fanotify_mark.2
	+++ w/man/man2/fanotify_mark.2
	@@ -103,10 +103,10 @@ .SH DESCRIPTION
	 .BR FAN_MARK_MNTNS " (since Linux 6.14)"
	 .\" commit 0f46d81f2bce970b1c562aa3c944a271bbec2729
	 Mark the mount namespace specified by
	-.IR pathname .
	-If the
	-.I pathname
	-is not a path that represents a mount namespace (e.g.
	+.IR path .
	+If
	+.I path
	+does not represent a mount namespace (e.g.
	 .IR /proc/ pid /ns/mnt ),
	 the call fails with the error
	 .BR EINVAL .
	@@ -414,7 +414,9 @@ .SH DESCRIPTION
	 .TQ
	 .BR FAN_MNT_DETACH " (both since Linux 6.14)"
	 .\" commit 0f46d81f2bce970b1c562aa3c944a271bbec2729
	-Create an event when a mount was attached to or detached from a marked mo=
unt namespace, respectively.
	+Create an event when
	+a mount was attached to or detached from a marked mount namespace,
	+respectively.
	 An attempt to set this flag on an inode, mount, or filesystem mark
	 will result in the error
	 .BR EINVAL .
	diff --git i/man/man7/fanotify.7 w/man/man7/fanotify.7
	index de0ea8e55..b4f65f8a0 100644
	--- i/man/man7/fanotify.7
	+++ w/man/man7/fanotify.7
	@@ -230,8 +230,9 @@ .SS Reading fanotify events
	 .P
	 In cases where an fanotify group is initialized with
	 .BR FAN_REPORT_MNT ,
	-event listeners should expect to receive the below
	-information record object alongside the generic
	+event listeners should expect to receive
	+the below information record object
	+alongside the generic
	 .I fanotify_event_metadata
	 structure within the read buffer.
	 This structure is defined as follows:
	@@ -460,10 +460,10 @@ .SS Reading fanotify events
	 .RB ( O_RDONLY )
	 was closed.
	 .TP
	-.BR FAN_MNT_ATTACH
	+.B FAN_MNT_ATTACH
	 A mount was attached to mount namespace.
	 .TP
	-.BR FAN_MNT_DETACH
	+.B FAN_MNT_DETACH
	 A mount was detached from mount namespace.
	 .TP
	 .B FAN_FS_ERROR


Cheers,
Alex

> ---
>  man/man2/fanotify_init.2 | 20 ++++++++++++++++++
>  man/man2/fanotify_mark.2 | 37 ++++++++++++++++++++++++++++++++-
>  man/man7/fanotify.7      | 45 ++++++++++++++++++++++++++++++++++++++++
>  3 files changed, 101 insertions(+), 1 deletion(-)
>=20
> diff --git a/man/man2/fanotify_init.2 b/man/man2/fanotify_init.2
> index b90e91707..93887b875 100644
> --- a/man/man2/fanotify_init.2
> +++ b/man/man2/fanotify_init.2
> @@ -331,6 +331,26 @@ that the directory entry is referring to.
>  This is a synonym for
>  .RB ( FAN_REPORT_DFID_NAME | FAN_REPORT_FID | FAN_REPORT_TARGET_FID ).
>  .TP
> +.BR FAN_REPORT_MNT " (since Linux 6.14)"
> +.\" commit 0f46d81f2bce970b1c562aa3c944a271bbec2729
> +This value allows the receipt of events which contain additional informa=
tion
> +about the underlying mount correlated to an event.
> +An additional record of type
> +.B FAN_EVENT_INFO_TYPE_MNT
> +encapsulates the information about the mount and is included alongside t=
he
> +generic event metadata structure.
> +The use of
> +.BR FAN_CLASS_CONTENT ,
> +.BR FAN_CLASS_PRE_CONTENT,
> +or any of the
> +.B FAN_REPORT_DFID_NAME_TARGET
> +flags along with this flag is not permitted
> +and will result in the error
> +.BR EINVAL .
> +See
> +.BR fanotify (7)
> +for additional details.
> +.TP
>  .BR FAN_REPORT_PIDFD " (since Linux 5.15 and 5.10.220)"
>  .\" commit af579beb666aefb17e9a335c12c788c92932baf1
>  Events for fanotify groups initialized with this flag will contain
> diff --git a/man/man2/fanotify_mark.2 b/man/man2/fanotify_mark.2
> index a6d80ad68..2c9d6e9b9 100644
> --- a/man/man2/fanotify_mark.2
> +++ b/man/man2/fanotify_mark.2
> @@ -67,7 +67,8 @@ contains
>  all marks for filesystems are removed from the group.
>  Otherwise, all marks for directories and files are removed.
>  No flag other than, and at most one of, the flags
> -.B FAN_MARK_MOUNT
> +.BR FAN_MARK_MNTNS ,
> +.BR FAN_MARK_MOUNT ,
>  or
>  .B FAN_MARK_FILESYSTEM
>  can be used in conjunction with
> @@ -99,6 +100,20 @@ If the filesystem object to be marked is not a direct=
ory, the error
>  .B ENOTDIR
>  shall be raised.
>  .TP
> +.BR FAN_MARK_MNTNS " (since Linux 6.14)"
> +.\" commit 0f46d81f2bce970b1c562aa3c944a271bbec2729
> +Mark the mount namespace specified by
> +.IR pathname .
> +If the
> +.I pathname
> +is not a path that represents a mount namespace (e.g.
> +.IR /proc/ pid /ns/mnt ),
> +the call fails with the error
> +.BR EINVAL .
> +An fanotify group that was initialized with flag
> +.B FAN_REPORT_MNT
> +is required.
> +.TP
>  .B FAN_MARK_MOUNT
>  Mark the mount specified by
>  .IR path .
> @@ -395,6 +410,26 @@ Create an event when a marked file or directory itse=
lf has been moved.
>  An fanotify group that identifies filesystem objects by file handles
>  is required.
>  .TP
> +.B FAN_MNT_ATTACH
> +.TQ
> +.BR FAN_MNT_DETACH " (both since Linux 6.14)"
> +.\" commit 0f46d81f2bce970b1c562aa3c944a271bbec2729
> +Create an event when a mount was attached to or detached from a marked m=
ount namespace, respectively.
> +An attempt to set this flag on an inode, mount, or filesystem mark
> +will result in the error
> +.BR EINVAL .
> +An fanotify group that was initialized with flag
> +.B FAN_REPORT_MNT
> +and the mark flag
> +.B FAN_MARK_MNTNS
> +are required.
> +An additional information record of type
> +.B FAN_EVENT_INFO_TYPE_MNT
> +is returned with the event.
> +See
> +.BR fanotify (7)
> +for additional details.
> +.TP
>  .BR FAN_FS_ERROR " (since Linux 5.16, 5.15.154, and 5.10.220)"
>  .\" commit 9709bd548f11a092d124698118013f66e1740f9b
>  Create an event when a filesystem error
> diff --git a/man/man7/fanotify.7 b/man/man7/fanotify.7
> index 68e930930..de0ea8e55 100644
> --- a/man/man7/fanotify.7
> +++ b/man/man7/fanotify.7
> @@ -228,6 +228,23 @@ struct fanotify_event_info_pidfd {
>  .EE
>  .in
>  .P
> +In cases where an fanotify group is initialized with
> +.BR FAN_REPORT_MNT ,
> +event listeners should expect to receive the below
> +information record object alongside the generic
> +.I fanotify_event_metadata
> +structure within the read buffer.
> +This structure is defined as follows:
> +.P
> +.in +4n
> +.EX
> +struct fanotify_event_info_mnt {
> +    struct fanotify_event_info_header hdr;
> +    __u64 mnt_id;
> +};
> +.EE
> +.in
> +.P
>  In case of a
>  .B FAN_FS_ERROR
>  event,
> @@ -442,6 +459,12 @@ A file or directory that was opened read-only
>  .RB ( O_RDONLY )
>  was closed.
>  .TP
> +.BR FAN_MNT_ATTACH
> +A mount was attached to mount namespace.
> +.TP
> +.BR FAN_MNT_DETACH
> +A mount was detached from mount namespace.
> +.TP
>  .B FAN_FS_ERROR
>  A filesystem error was detected.
>  .TP
> @@ -540,6 +563,8 @@ The value of this field can be set to one of the foll=
owing.
>  .B FAN_EVENT_INFO_TYPE_ERROR
>  .TQ
>  .B FAN_EVENT_INFO_TYPE_RANGE
> +.TQ
> +.B FAN_EVENT_INFO_TYPE_MNT
>  .RE
>  .IP
>  The value set for this field
> @@ -725,6 +750,26 @@ in case of a terminated process, the value will be
>  .BR \-ESRCH .
>  .P
>  The fields of the
> +.I fanotify_event_info_mnt
> +structure are as follows:
> +.TP
> +.I .hdr
> +This is a structure of type
> +.IR fanotify_event_info_header .
> +The
> +.I .info_type
> +field is set to
> +.BR FAN_EVENT_INFO_TYPE_MNT .
> +.TP
> +.I .mnt_id
> +Identifies the mount associated with the event.
> +It is a 64-bit unique mount id as the one returned by
> +.BR statx (2)
> +with the
> +.B STATX_MNT_ID_UNIQUE
> +flag.
> +.P
> +The fields of the
>  .I fanotify_event_info_error
>  structure are as follows:
>  .TP
> --=20
> 2.34.1
>=20

--=20
<https://www.alejandro-colomar.es/>
<https://www.alejandro-colomar.es:8443/>
<http://www.alejandro-colomar.es:8080/>

--gonle545llzcgaoc
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmfxJokACgkQ64mZXMKQ
wqnjOA//WS8wv0zg/0d5T+n4Ed4FKY4FpRbTgAqXYYD/eubT5/2NmT4pS8Vf3fAd
3qM/CZqVOsMWqoUPCXq+wSaMB4zVsoTjYw25c3DG39GsYnA5dE0NYz34GqEEUMrd
PYYSt3eiqSrLAJ5QyK+QXVroItpkyc8zDjENLF0iMrmqxDwLgDcmBt7AtoMVfmcR
7z07HvE+MvZN4DmLZGhpL/YKXQLHRgRHwaxSZlqhPGh3xJzROsYMWS9o0vRcuky+
xuAqRllUaEQ/rPqTLn3pdj60w5hDBPEE8NHLQwM79B0diMnXGK/CKvLU/n9jx7KT
V/5gx64IiFQEjI7vZHJOwFe4hdq3L1SDaorhaQNOER8rS4NS/NyqkQPCedYZ8sRe
9TwAJM2l3iuCTQQa2llyjkd+b1z7AGVJraNfg2SqhGPSDyCoRSuuCX5fYqws7i+g
W6jX3hZGeibRUJ8OMxGyAE+/EyK9yQujQdPpfuOM7OAeR1aUAatVKQI+RRFuXoF8
ynPr87thAPjeg/NIwQsGugZGLiGgEJ1u2feaVCjZvwZdzDCar9bNkXtu1T2P4b1E
sOfE3Tw9M+T1QWATZdON5NAMSTKisWAO+Wk6Q/KbX3m/hao/tMo3TFuzQAUUTIyr
Rey4lAgGvX+p3/Pxy6rvTveu7QKgzL+P6Ld3oA/HqfWM3E1QRMw=
=BPZN
-----END PGP SIGNATURE-----

--gonle545llzcgaoc--

