Return-Path: <linux-man+bounces-3332-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id EB200B1B8E4
	for <lists+linux-man@lfdr.de>; Tue,  5 Aug 2025 19:01:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0AA6E17A5BA
	for <lists+linux-man@lfdr.de>; Tue,  5 Aug 2025 17:01:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0A1262F37;
	Tue,  5 Aug 2025 17:01:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iy4F5UZd"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF7051A238C
	for <linux-man@vger.kernel.org>; Tue,  5 Aug 2025 17:01:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754413296; cv=none; b=J4Q5Fa5WO0R2Mxe0Xn05zUtiS+a78+/IcRVvxiufnX8umycd5BAS5pUWo7Cfq2lRZSOXDGPKOQGVIiwjI5HJb3+lbYxM20vpc9potcxAS9kyingYcEYfFyHDIy57mgfMf5wAWq9MWtGHjCRjHt9xgx4k7a4MP8e3213Clz45Vtk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754413296; c=relaxed/simple;
	bh=q/rs6VnegtMGqSKg6GtjLcGvE9ZyZYQ4UxiKPaDY5WE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=m0uc1ttk7GUGQAal9rS77vCI9FtjtvmQQtsxO1XwNTlxFEU6WXihA7yld6ryqG6B9ev+zjj2jlWNSXxPhZE76nmqkkkhPJYLCs/yqeBmtBzEDX1LSs35i7XbjSWMAOMyBnx91d2I95or7iD38lvIqO1I4ge/2HUAkFdub0fGevY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iy4F5UZd; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D8D15C4CEF0;
	Tue,  5 Aug 2025 17:01:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754413296;
	bh=q/rs6VnegtMGqSKg6GtjLcGvE9ZyZYQ4UxiKPaDY5WE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=iy4F5UZd7mCEBo35EBx0bdZzm6nke6JF5jxgk1eQpZAMA5flrHjloqGe7K9ysLs27
	 QsvxeHAxP3E3Sv+8U6UwQwIBGSDg1JuSXVHh+Ag8h8xGLXuj29TguXMZIzTi7XtzK8
	 nhfBLsD/zQweKaiQN73W9qDcRefstud28QxMycHIET5agrgrULKEnfykNWgg/Mji03
	 GyKbYdXPUaup4VaN21Nt9XgB13BT5whV18CAU5DBuG0fCOlTjbc9leOY/Lbh5RgNQr
	 lm6M1477Ma5jSj0YOv0EhabjRfKw90HuZgT4EcLXcv5+6CYsLOZpYSKmOr+SUUVHWP
	 ZnY1jikYgJQDw==
Date: Tue, 5 Aug 2025 19:01:29 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Aleksa Sarai <cyphar@cyphar.com>
Cc: "Michael T. Kerrisk" <mtk.manpages@gmail.com>, 
	linux-man@vger.kernel.org, Alexander Viro <viro@zeniv.linux.org.uk>, 
	Jan Kara <jack@suse.cz>, David Howells <dhowells@redhat.com>, 
	Christian Brauner <brauner@kernel.org>
Subject: Re: [PATCH 02/10] mount_setattr.2: move mount_attr struct to
 mount_attr.2type
Message-ID: <lt47z3kplkm7g2stof7vey4fnh2r3eqr4o5vkmjep5fppcrdzs@nx2r24g4mdsj>
References: <20250806-new-mount-api-v1-0-8678f56c6ee0@cyphar.com>
 <20250806-new-mount-api-v1-2-8678f56c6ee0@cyphar.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="6jxp5mqkp2fqztlb"
Content-Disposition: inline
In-Reply-To: <20250806-new-mount-api-v1-2-8678f56c6ee0@cyphar.com>


--6jxp5mqkp2fqztlb
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Aleksa Sarai <cyphar@cyphar.com>
Cc: "Michael T. Kerrisk" <mtk.manpages@gmail.com>, 
	linux-man@vger.kernel.org, Alexander Viro <viro@zeniv.linux.org.uk>, 
	Jan Kara <jack@suse.cz>, David Howells <dhowells@redhat.com>, 
	Christian Brauner <brauner@kernel.org>
Subject: Re: [PATCH 02/10] mount_setattr.2: move mount_attr struct to
 mount_attr.2type
References: <20250806-new-mount-api-v1-0-8678f56c6ee0@cyphar.com>
 <20250806-new-mount-api-v1-2-8678f56c6ee0@cyphar.com>
MIME-Version: 1.0
In-Reply-To: <20250806-new-mount-api-v1-2-8678f56c6ee0@cyphar.com>

Hi Aleksa,

On Wed, Aug 06, 2025 at 02:25:47AM +1000, Aleksa Sarai wrote:
> As with openat2(2type), it makes sense to move this to a separate man

I guess you meant open_how(2type) instead of openat2(2type).

	$ find man/man2type/
	man/man2type/
	man/man2type/open_how.2type

> page. In addition, future man pages added in this patchset will want to

Please use two spaces after period in commit messages.  See:

$ cat CONTRIBUTING.d/patches/description | grep -A5 Style.guide
    Style guide
	URIs should always be enclosed in <>.

	The correct inter-sentence space amount is two.  See some
	history about this:
	<https://web.archive.org/web/20171217060354/http://www.heracliteanriver.co=
m/?p=3D324>

> reference mount_attr(2type).
>=20
> Signed-off-by: Aleksa Sarai <cyphar@cyphar.com>
> ---
>  man/man2/mount_setattr.2      | 16 +++---------
>  man/man2type/mount_attr.2type | 58 +++++++++++++++++++++++++++++++++++++=
++++++
>  2 files changed, 62 insertions(+), 12 deletions(-)
>=20
> diff --git a/man/man2/mount_setattr.2 b/man/man2/mount_setattr.2
> index b8ddc3e22aef..e863be64deb5 100644
> --- a/man/man2/mount_setattr.2
> +++ b/man/man2/mount_setattr.2
> @@ -116,18 +116,10 @@ The
>  .I attr
>  argument of
>  .BR mount_setattr ()
> -is a structure of the following form:
> -.P
> -.in +4n
> -.EX
> -struct mount_attr {
> -    __u64 attr_set;     /* Mount properties to set */
> -    __u64 attr_clr;     /* Mount properties to clear */
> -    __u64 propagation;  /* Mount propagation type */
> -    __u64 userns_fd;    /* User namespace file descriptor */
> -};
> -.EE
> -.in
> +is a pointer to a
> +.I mount_attr
> +structure, described in
> +.BR mount_attr (2type).
>  .P
>  The
>  .I attr_set
> diff --git a/man/man2type/mount_attr.2type b/man/man2type/mount_attr.2type
> new file mode 100644
> index 000000000000..733dbc3c8cdb
> --- /dev/null
> +++ b/man/man2type/mount_attr.2type
> @@ -0,0 +1,58 @@
> +
> +.\" Copyright, the authors of the Linux man-pages project
> +.\"
> +.\" SPDX-License-Identifier: Linux-man-pages-copyleft
> +.\"
> +.TH mount_attr 2type (date) "Linux man-pages (unreleased)"
> +.SH NAME
> +mount_attr \- what mount properties to set and clear
> +.SH LIBRARY
> +Linux kernel headers
> +.SH SYNOPSIS
> +.EX
> +.B #include <sys/mount.h>
> +.P
> +.B struct mount_attr {
> +.BR "    __u64 attr_set;" "     /* Mount properties to set */"
> +.BR "    __u64 attr_clr;" "     /* Mount properties to clear */"
> +.BR "    __u64 propagation;" "  /* Mount propagation type */"
> +.BR "    __u64 userns_fd;" "    /* User namespace file descriptor */"
> +    /* ... */
> +.B };
> +.EE
> +.SH DESCRIPTION
> +Specifies which mount properties should be changed with
> +.BR mount_setattr (2).
> +.P
> +The fields are as follows:
> +.TP
> +.I attr_set

Please use .member syntax.  This is the convention we're using for new
documentation.  I'll slowly add consistency to the existing docs.  So:

	.I .attr_set

> +This field specifies which
> +.B MOUNT_ATTR_*

Please use

	.BI MOUNT_ATTR_ *

The variable part should be in italics.

> +attribute flags to set.
> +.TP
> +.I attr_clr
> +This fields specifies which
> +.B MOUNT_ATTR_*

Same here.

> +attribute flags to clear.
> +.TP
> +.I propagation
> +This field specifies what mount propagation will be applied.
> +The valid values of this field are the same propagation types described =
in
> +.BR mount_namespaces (7).
> +.TP
> +.I userns_fd
> +This fields specifies a file descriptor that indicates which user namesp=
ace to
> +use as a reference for ID-mapped mounts with
> +.BR MOUNT_ATTR_IDMAP .
> +.SH VERSIONS
> +Extra fields may be appended to the structure, with a zero value in a ne=
w field

Please use semantic newlines.  That is, break after the comma.  See
man-pages(7):

$ MANWIDTH=3D72 man man-pages | sed -n '/Use semantic newlines/,/^$/p'
   Use semantic newlines
       In the source of a manual page, new sentences should be  started
       on  new  lines,  long  sentences  should  be split into lines at
       clause breaks (commas, semicolons, colons, and so on), and  long
       clauses  should be split at phrase boundaries.  This convention,
       sometimes known as "semantic newlines", makes it easier  to  see
       the effect of patches, which often operate at the level of indi=E2=
=80=90
       vidual sentences, clauses, or phrases.


Have a lovely day!
Alex

> +resulting in the kernel behaving as though that extension field was not
> +present.
> +Therefore, a user
> +.I must
> +zero-fill this structure on initialization.
> +.SH STANDARDS
> +Linux.
> +.SH SEE ALSO
> +.BR mount_setattr (2)
>=20
> --=20
> 2.50.1
>=20
>=20

--=20
<https://www.alejandro-colomar.es/>

--6jxp5mqkp2fqztlb
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmiSOOkACgkQ64mZXMKQ
wqnjQQ//XFT9Ogccba1/hI+MQ7AzsjjHDBWxlBHanvuonOZlyc3ddOabMySOCMA4
JyQFi6GcaUSJPvtCk4vZGKcn+LK0YfWegc6GmW9ftzIvwDJMoF6GmtXhAvLnQa47
KyIRLDrhOt0Lu3fGnX89HMz+MW+i/UvI6lj30v22/JcMMRBJNTva54VQHEwEdHpG
vOV+QUaS0024QjGBrakxCBAOuzXRg1+fFYRcM8/I4THtTxSWDUWTC3VRg//HXldR
Xzr4KbQARKxNBwk1yncSblBPtntbsmN36po8vAc2+hoBwqNlo0Sr6/mIidgpHfgt
1P/O4YuJho+3OXmtGz9roHye7/yNdcJ4JTwnndJ8ZLQ/nRR9M/GJHPX5wfkHyfrH
GGbgqUM4ZSroMaKq7zzdZuNwINrjyciiHppIfd4YiQLmcg8RLOiOAbEl+Cmmjk0A
Yw0LnBjDWRU0cO37V3gh6HtznPweqFsYKNJE6J5yN8hLEfXVb8ONOlKzem5Lktxi
v0jkqh46Pytm3QXkrD9tbK50LhBlF3ZUUB8FjWTQayqOLU1yJRLPWkO0rwXz0piM
QFR8qPU4rPAV4lvDMimPtgWDqJKv66rcr+qV9R+PI+nkwJyDrge4aEYwIvd8tgCs
NJ4jnKm4f6ctEF2bgxXtBf4kUkhPZbfNuwDwpuUjKtg20UrqHLE=
=N1xb
-----END PGP SIGNATURE-----

--6jxp5mqkp2fqztlb--

