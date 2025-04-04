Return-Path: <linux-man+bounces-2745-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 78E06A7BFBB
	for <lists+linux-man@lfdr.de>; Fri,  4 Apr 2025 16:41:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 47F4217B807
	for <lists+linux-man@lfdr.de>; Fri,  4 Apr 2025 14:40:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CD7261F3FE5;
	Fri,  4 Apr 2025 14:40:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eF8LMw38"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8CE8B1F3FD3
	for <linux-man@vger.kernel.org>; Fri,  4 Apr 2025 14:40:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743777646; cv=none; b=hzID8Z/Nz70JHc9nEu6BSSzO4GO0AKSQMSscghAot1t3gG3hUup0ij2rIs1MPxE5482ylxZBZoyZGJoKMQ2O2rt/2h6t7AXcwOYmRKpPvI5EirgaQ7NzFQn8hyt7/R5EKJKgiTS61BqWYNrVociSmUjdu5GXwzwXbwhIYwiR1Zs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743777646; c=relaxed/simple;
	bh=ekT7q32gBgmVRrPxyHflhTvjCdD94jeY45okhZRJcuc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=cURMOd/onmcn3/fmQSzuoqDVMSTxVzYSlP2wlf0v4oN5uWJsfWPVVdwjn8FU7KUSLpf6kPx+rjEcr3zbaA8Q11x+WRH4vP666MwcqUpwe87fhuW5uYirOZirglSfK4f9NMfcc3elkRf/qVmdQHY5O4K0kOjvuw6zQsZk/1Xbki0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eF8LMw38; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3298EC4CEDD;
	Fri,  4 Apr 2025 14:40:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743777646;
	bh=ekT7q32gBgmVRrPxyHflhTvjCdD94jeY45okhZRJcuc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=eF8LMw38iIE+Xe7CPXRFSvKENHpj3ClKwG9h7gGwXdvntbozYtSLHaCREh2UgnxSI
	 Yi4ltGdEjMExXaHixatfVjwfYyILtDwRKkivKINtH63nCxZI/+/18s8/B3sDLEl7p+
	 aLmyI6wGfuksxgwBeCbVW88hMSuog635NTevXJwVKOif/pAfnvtcEqTUXE2wQSRt8/
	 vZ1XlW3sDt2T4abfcQudfZ8mt21XyxHWk5nLlT/Yan05MUrSASz36QgsxxxmTPrL0C
	 tyg3BPX/wfmEPv42QrZjJrBehnN68viZxrazlEdRG1U4DWZJTTN0dGZar3kLXjujp5
	 b3DZOZYnZD6Iw==
Date: Fri, 4 Apr 2025 16:40:42 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Amir Goldstein <amir73il@gmail.com>
Cc: Jan Kara <jack@suse.cz>, linux-man@vger.kernel.org
Subject: Re: [RESEND PATCH v3 2/2] fanotify: Document mount namespace events
Message-ID: <j7tvkh7zng66klagg6zz5sbsvqbmzpcnkub6vcniqrudlzli67@n2xkv4wjvzp5>
References: <20250404104723.1709188-1-amir73il@gmail.com>
 <20250404104723.1709188-2-amir73il@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="3oofvzgc2mp724xm"
Content-Disposition: inline
In-Reply-To: <20250404104723.1709188-2-amir73il@gmail.com>


--3oofvzgc2mp724xm
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

Should we use wording more consistent with other paragraphs introducing
FAN_REPORT_* flags?

	$ grep -n -B1 -A3 '^\.BR FAN_REPORT_.*since' man/man2/fanotify_init.2=20
	134-.TP
	135:.BR FAN_REPORT_TID " (since Linux 4.20)"
	136-.\" commit d0a6a87e40da49cfc7954c491d3065a25a641b29
	137-Report thread ID (TID) instead of process ID (PID)
	138-in the
	--
	160-.TP
	161:.BR FAN_REPORT_FID " (since Linux 5.1)"
	162-.\" commit a8b13aa20afb69161b5123b4f1acc7ea0a03d360
	163-This value allows the receipt of events which contain additional infor=
mation
	164-about the underlying filesystem object correlated to an event.
	--
	201-.TP
	202:.BR FAN_REPORT_DIR_FID " (since Linux 5.9)"
	203-.\" commit 83b7a59896dd24015a34b7f00027f0ff3747972f
	204-Events for fanotify groups initialized with this flag will contain
	205-(see exceptions below) additional information about a directory object
	--
	234-.TP
	235:.BR FAN_REPORT_NAME " (since Linux 5.9)"
	236-.\" commit 929943b38daf817f2e6d303ea04401651fc3bc05
	237-Events for fanotify groups initialized with this flag will contain add=
itional
	238-information about the name of the directory entry correlated to an eve=
nt.
	--
	298-.TP
	299:.BR FAN_REPORT_TARGET_FID " (since Linux 5.17, 5.15.154, and 5.10.220)"
	300-.\" commit d61fd650e9d206a71fda789f02a1ced4b19944c4
	301-Events for fanotify groups initialized with this flag
	302-will contain additional information about the child
	--
	333-.TP
	334:.BR FAN_REPORT_MNT " (since Linux 6.14)"
	335-.\" commit 0f46d81f2bce970b1c562aa3c944a271bbec2729
	336-This value allows the receipt of events which contain additional infor=
mation
	337-about the underlying mount correlated to an event.
	--
	353-.TP
	354:.BR FAN_REPORT_PIDFD " (since Linux 5.15 and 5.10.220)"
	355-.\" commit af579beb666aefb17e9a335c12c788c92932baf1
	356-Events for fanotify groups initialized with this flag will contain
	357-an additional information record alongside the generic
	--
	388-.TP
	389:.BR FAN_REPORT_FD_ERROR " (since Linux 6.13 and 6.12.4 and 6.6.66)"
	390-.\" commit 522249f05c5551aec9ec0ba9b6438f1ec19c138d
	391-Events for fanotify groups initialized with this flag may contain
	392-an error code that explains the reason for failure to open a file desc=
riptor.

> +about the underlying mount correlated to an event.
> +An additional record of type
> +.B FAN_EVENT_INFO_TYPE_MNT
> +encapsulates the information about the mount and is included alongside t=
he
> +generic event metadata structure.
> +The use of
> +.BR FAN_CLASS_CONTENT ,
> +.BR FAN_CLASS_PRE_CONTENT,

Missing space.

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

Lines should be shorter than 80 columns.


Cheers,
Alex

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

--3oofvzgc2mp724xm
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmfv72oACgkQ64mZXMKQ
wqmc/g//a/WPfCAWF/TBS5W5+dwBy164+U86tbxYvHugidt5o259vJ+vuqRluHwp
I28h9ELWjpl88f+erGGsmZosBBWY1joJu+pSZz6DTpakzH0HZgiKcSIFs0cmBYvZ
86xtjwY3UpkGcDIKpraoNPQzoPf54u2JIlRqmGu/ghVI4dZpuwhNauffOtEsbG3P
y/4Ey/W+4SDgJUwFyPVzOOwZFeZmZATJLHAeT5wfF1Hx+rMizhxbM+Hb0B8ZgE3+
RDQZHeP3sdbsxwd5LfS1ZNnwQ5xUE6o8oX3BIwVRt4RVSBc62aQTabM2NfWd4GpE
1VNdvHlOuC8M465XZARgVlJ5uxqNB7Mo42UNemT1FwDwYPuQLk2+iAPhfHq9lnh9
BcyJ6cdfbjx2O91umeWWYgr+MXvbavVHPty/7EcX16ls4A6o/KmzHzx2Jwy6ewKC
4ZPAyCnWBHfn+4e1o+BFVVsudgCDJXr3p6HaM3y4lvevngwRJkA/O53zHBbMqqb7
fZSnHsHl7Yupl4xP33c2DWMI+o1qA+lIYJFdJTMwQAwyWo6kcedAdEJvzOTxG8ET
eIkd9kTGiw3ZaTIhHFS/+BIngQ1/s8dTG9Xq38LMzblZWI/YtifHmnnhdfb1xYeF
elc3LARqZdPLLL3wEblqnyuLGdHXO+sai8gNCwUF0UFtXH2N9iM=
=pkTt
-----END PGP SIGNATURE-----

--3oofvzgc2mp724xm--

