Return-Path: <linux-man+bounces-1470-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AC6093184C
	for <lists+linux-man@lfdr.de>; Mon, 15 Jul 2024 18:14:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0D8FD1F223EC
	for <lists+linux-man@lfdr.de>; Mon, 15 Jul 2024 16:14:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 215AA1BC41;
	Mon, 15 Jul 2024 16:13:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MKAt2+eb"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D643C208A7
	for <linux-man@vger.kernel.org>; Mon, 15 Jul 2024 16:13:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721060007; cv=none; b=WnG5VD2M3bL+PlJZBr4zCrqrFQoDX/+ua4ELwYze8toa/WKf4NnuuuUsZnfZGlcuh3ZNEhNf6IZ8PSoto3YEKrK9HeRrAyyd7DUqzBWHBmBztn/wbr1EwjkxtfKTkuqizNfq4TXFxI3pN9QxLM3VcMfBULccCHnnkwp3Gl44PBA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721060007; c=relaxed/simple;
	bh=o1fmIg2DajjRAq2iHdT0MNKg+iweB+3mGRDNtvTvsv8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=IT/yXD9B7EHaZNBjIuvpsJ/Zk3Fz5poAWfztdO+SHaQP8CGQF20DkZpjIV4z7ZnKumvpNeHtlq4miBsI/lfClAn6GHuVe3+mnIWZiH+ozl79W2mqXlgIDqDzWzdcbUeHtfI/+U8RFsHo5A2yrUcj/1doUBQ62mo79+YXWw+fEJo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MKAt2+eb; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C1DA4C4AF0D;
	Mon, 15 Jul 2024 16:13:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721060007;
	bh=o1fmIg2DajjRAq2iHdT0MNKg+iweB+3mGRDNtvTvsv8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=MKAt2+eb70PLAIS689fBT1rg5nQkdwnITcyBxudTzG8dvXXyQ/3x/NUf9f9urIp9I
	 61AVqIqslHw5UejHmu9Oh5LsWjs9/EYLLNC+RNYzgCk15izbKcnstqQv49oveGLoIS
	 61o2HQiATybWvxVN3jXsjxDGIyUDgZw8vBY0XmDKdPL27ho5J308Q2+toGvRnnyswH
	 o9QiY2HiL6cKXKEhRylwFhNIPViSESKR9ZwRBJXUkTTkYY2AmAABZ8p+E9n48acytl
	 kI2SdWcq4KYsCVIza98HNDKKC7ufLIikoO3KckSeJmHq79UV67aAJsVA4/S0taIPu/
	 37x1W9mZxYkeg==
Date: Mon, 15 Jul 2024 18:13:24 +0200
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?Q?G=C3=BCnther?= Noack <gnoack@google.com>
Cc: Konstantin Meskhidze <konstantin.meskhidze@huawei.com>, 
	=?utf-8?Q?Micka=C3=ABl_Sala=C3=BCn?= <mic@digikod.net>, linux-man@vger.kernel.org
Subject: Re: [PATCH 1/5] landlock.7, landlock_*.2: Wording improvements
Message-ID: <bdtipbpybyunclnmnw5o6si6ojkp4wht35cnnu3i4b5keg2lnk@m6bn5i2xr7fl>
References: <20240715155554.2791018-1-gnoack@google.com>
 <20240715155554.2791018-2-gnoack@google.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ibxphxrfbxmsx365"
Content-Disposition: inline
In-Reply-To: <20240715155554.2791018-2-gnoack@google.com>


--ibxphxrfbxmsx365
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?Q?G=C3=BCnther?= Noack <gnoack@google.com>
Cc: Konstantin Meskhidze <konstantin.meskhidze@huawei.com>, 
	=?utf-8?Q?Micka=C3=ABl_Sala=C3=BCn?= <mic@digikod.net>, linux-man@vger.kernel.org
Subject: Re: [PATCH 1/5] landlock.7, landlock_*.2: Wording improvements
References: <20240715155554.2791018-1-gnoack@google.com>
 <20240715155554.2791018-2-gnoack@google.com>
MIME-Version: 1.0
In-Reply-To: <20240715155554.2791018-2-gnoack@google.com>

Hi G=C3=BCnther,

> Subject: Re: [PATCH 1/5] landlock.7, landlock_*.2: Wording improvements

s/Wording improvements/wfix/

On Mon, Jul 15, 2024 at 03:55:50PM GMT, G=C3=BCnther Noack wrote:
> * Various wording fixes
> * List the same error code multiple times,
>   if it can happen for multiple reasons.
>=20
> Cc: Micka=C3=ABl Sala=C3=BCn <mic@digikod.net>
> Signed-off-by: G=C3=BCnther Noack <gnoack@google.com>
> ---
>  man/man2/landlock_add_rule.2       |  9 +++++++--
>  man/man2/landlock_create_ruleset.2 |  6 +++---
>  man/man2/landlock_restrict_self.2  | 11 ++++++-----
>  man/man7/landlock.7                |  6 ++++--
>  4 files changed, 20 insertions(+), 12 deletions(-)
>=20
> diff --git a/man/man2/landlock_add_rule.2 b/man/man2/landlock_add_rule.2
> index d4ae8f2f6..fa0b1f109 100644
> --- a/man/man2/landlock_add_rule.2
> +++ b/man/man2/landlock_add_rule.2
> @@ -60,7 +60,9 @@ struct landlock_path_beneath_attr {
>  .in
>  .IP
>  .I allowed_access
> -contains a bitmask of allowed filesystem actions for this file hierarchy
> +contains a bitmask of allowed filesystem actions,
> +which can be applied on the given
> +.I parent_fd
>  (see
>  .B Filesystem actions
>  in
> @@ -92,7 +94,10 @@ Landlock is supported by the kernel but disabled at bo=
ot time.
>  .TP
>  .B EINVAL
>  .I flags
> -is not 0, or the rule accesses are inconsistent (i.e.,
> +is not 0.
> +.TP
> +.B EINVAL
> +The rule accesses are inconsistent (i.e.,
>  .I rule_attr\->allowed_access
>  is not a subset of the ruleset handled accesses).
>  .TP
> diff --git a/man/man2/landlock_create_ruleset.2 b/man/man2/landlock_creat=
e_ruleset.2
> index 618d54f37..871b91dcb 100644
> --- a/man/man2/landlock_create_ruleset.2
> +++ b/man/man2/landlock_create_ruleset.2
> @@ -23,7 +23,8 @@ Standard C library
>  A Landlock ruleset identifies a set of rules (i.e., actions on objects).
>  This
>  .BR landlock_create_ruleset ()
> -system call enables creating a new file descriptor identifying a ruleset.
> +system call creates a new file descriptor
> +which identifies a ruleset.
>  This file descriptor can then be used by
>  .BR landlock_add_rule (2)
>  and
> @@ -45,8 +46,7 @@ struct landlock_ruleset_attr {
>  .in
>  .IP
>  .I handled_access_fs
> -is a bitmask of actions that is handled by this ruleset and
> -should then be forbidden if no rule explicitly allows them
> +is a bitmask of handled filesystem actions
>  (see
>  .B Filesystem actions
>  in
> diff --git a/man/man2/landlock_restrict_self.2 b/man/man2/landlock_restri=
ct_self.2
> index d4e5e753c..f044c6b31 100644
> --- a/man/man2/landlock_restrict_self.2
> +++ b/man/man2/landlock_restrict_self.2
> @@ -20,7 +20,7 @@ Standard C library
>  .SH DESCRIPTION
>  Once a Landlock ruleset is populated with the desired rules, the
>  .BR landlock_restrict_self ()
> -system call enables enforcing this ruleset on the calling thread.
> +system call enforces this ruleset on the calling thread.
>  See
>  .BR landlock (7)
>  for a global overview.
> @@ -38,10 +38,11 @@ with multiple independent rulesets coming from differ=
ent sources
>  built-in application policy).
>  However, most applications should only need one call to
>  .BR landlock_restrict_self ()
> -and they should avoid arbitrary numbers of such calls because of the
> -composed rulesets limit.
> -Instead, developers are encouraged to build a tailored ruleset thanks to
> -multiple calls to
> +and they should avoid arbitrary numbers of such calls
> +because of the composed rulesets limit.
> +Instead,
> +developers are encouraged to build a single tailored ruleset
> +with multiple calls to
>  .BR landlock_add_rule (2).
>  .P
>  In order to enforce a ruleset, either the caller must have the
> diff --git a/man/man7/landlock.7 b/man/man7/landlock.7
> index 4a98f6549..f7bb37cba 100644
> --- a/man/man7/landlock.7
> +++ b/man/man7/landlock.7
> @@ -58,7 +58,7 @@ and
>  .BR landlock_create_ruleset (2)
>  for more context.
>  .P
> -A file can only receive these access rights:
> +The following access rights apply only to files:
>  .TP
>  .B LANDLOCK_ACCESS_FS_EXECUTE
>  Execute a file.
> @@ -87,6 +87,9 @@ or
>  .BR open (2)
>  with
>  .BR O_TRUNC .
> +.IP
> +This access right is available since the third version of the Landlock A=
BI.
> +.P

Did you really want a P here?  Or maybe an IP?

>  Whether an opened file can be truncated with
>  .BR ftruncate (2)
>  is determined during
> @@ -97,7 +100,6 @@ using
>  .B LANDLOCK_ACCESS_FS_READ_FILE
>  and
>  .BR LANDLOCK_ACCESS_FS_WRITE_FILE .
> -This access right is available since the third version of the Landlock A=
BI.
>  .P
>  A directory can receive access rights related to files or directories.
>  The following access right is applied to the directory itself,
> --=20
> 2.45.2.993.g49e7a77208-goog

Other than that, LGTM.

Cheers,
Alex

--=20
<https://www.alejandro-colomar.es/>

--ibxphxrfbxmsx365
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmaVSqQACgkQnowa+77/
2zLziA/+LtPIt0GsGCx1cvtH4rllinClQQzhP/W9a5DqhWjnZ++ss9xVjSoPUuYg
t/zlT78ephe22R3ycFJRF9lucNJfImnZW7OpBTK4bGm6BhtUZhNJzYmgG3XQfIJg
6RhTIcX+5PZUcujJP9PjHYidwLfOmjRJ2+5ESpCUv4jB9dM4zCQwoQQmdYSR7KeB
YgtB+T5ULlR+sop3XnQgv24x3j0CfiWbTcBuPrpa5pxIeFJLd2U3RYQsQ74mZ//k
fv5PLPiRWCp6oI/1tODazZxCXAqdI7ZDnmnfVpbs9Wdc1CKnKW/Pt5y9HCEpEk+2
iWN7cDlf+z4J4Uhkp/HECtMRHZVBVn/qSUrOLkMnC+RLxH7Tj80O4/ZQKqBc3kL7
ixCTpJQX/cvqBa/TECq0mvDZ7tnKVp89qsXHVl/KTq9JNPisuzQ269g48W8Pcqid
vC9IRztLp8uY9JidJWhEA5YOwu+Ooy/LkUWm0MjwjRYgyD2d/G0g3vJxeVuMI8Tk
6djGnz2s29dVT/qh4PBsXqDlMy8flXtbmh8wjKz56WVMQx39HeA/X+UEHQK5VGpw
rPV0DtZo5Y5bJ1xGQmJq6/BA49ZWciiQph+kIxvoadE2k69Z2PeQprkYxLUTuZw4
GnL+WfE07bEz9CTBcH9orOJSup/p9kNZs0fYnZ345XeSRxGtTr4=
=tYpE
-----END PGP SIGNATURE-----

--ibxphxrfbxmsx365--

