Return-Path: <linux-man+bounces-5297-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iS8ZE0z60mllcwcAu9opvQ
	(envelope-from <linux-man+bounces-5297-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Mon, 06 Apr 2026 02:11:56 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 961D83A0D30
	for <lists+linux-man@lfdr.de>; Mon, 06 Apr 2026 02:11:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 1539F3004258
	for <lists+linux-man@lfdr.de>; Mon,  6 Apr 2026 00:11:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 457EA4A07;
	Mon,  6 Apr 2026 00:11:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nSEjUReq"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 072701367
	for <linux-man@vger.kernel.org>; Mon,  6 Apr 2026 00:11:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775434313; cv=none; b=VmkrijZWsmp4OtFtya9aZGXExgFOP7jmAY0Vwjdxn6zmazTYu1TVm2lHEglME3A74Q0U10/XPfx5d0FtgK8XgJUQeKn3C77bUmLtUuk1wfoqYfwzvShqfULBB+SEEVo997F8KMGeV3AQf0jND8OPdhNiSSZQg1eQiCxzjlQK3Sk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775434313; c=relaxed/simple;
	bh=xRkY5MUXLia859bAiZ3X2b0nsGpRkA08nDlsur/15xM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=sR8Pp0Yld+rkX/+nU2wQgi0M381DoOpydFmDFmVzs31QdkG7r89dOaR6ZzGd/zPBjfneFLy2BLMIFx1+iAgXwB3yBjBg2BvECUaztX5hI+uOaM3dSBDaVAlrubzfl/2ehzkyigtl63p/Ol3QfmAa5zWgnr1eUKBbycr+1HtjrTk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nSEjUReq; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0E223C116C6;
	Mon,  6 Apr 2026 00:11:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775434312;
	bh=xRkY5MUXLia859bAiZ3X2b0nsGpRkA08nDlsur/15xM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=nSEjUReq2AR+gEsnrgSHrfNHlxQbjRH3VjlrS3w4P7jLfvsfaUAgF2tU7y7twnWjG
	 U73FTbA5pkyYOIXICSTqiZmjLvSmROVDAR7STgvdTZcLoZiDq/jLoIRDXoIXqmkXMN
	 C1fRKmPFK2fBIOGbB4WBFwLnEsYCymanHlrDf5vxDsd5Rt5S+ncJhKPFBGjxcHLriy
	 suHjrO/MvELAMoDT+f0qoWKgCMvwddoXfZpBtRpzujqemA9P7IF5zQY8Tv9E0RD44V
	 1WvQDIq1ADRglGWdRU4PP1PpLMBn/WahdFumufGoAPJIzPO66w5daDJIVsUSow3I3K
	 axP3zO9sjqV9w==
Date: Mon, 6 Apr 2026 02:11:47 +0200
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?Q?G=C3=BCnther?= Noack <gnoack3000@gmail.com>
Cc: =?utf-8?Q?Micka=C3=ABl_Sala=C3=BCn?= <mic@digikod.net>, 
	linux-man@vger.kernel.org
Subject: Re: [PATCH 3/3] man/man2/landlock_restrict_self.2,
 man/man7/landlock.7: Document audit logging (ABI v7)
Message-ID: <adL41g1HDqiFMQzA@debian>
References: <20260329124815.92502-2-gnoack3000@gmail.com>
 <20260329124815.92502-5-gnoack3000@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="l4x6se65y7ch2j4k"
Content-Disposition: inline
In-Reply-To: <20260329124815.92502-5-gnoack3000@gmail.com>
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5297-lists,linux-man=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[linux-man];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,digikod.net:email]
X-Rspamd-Queue-Id: 961D83A0D30
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--l4x6se65y7ch2j4k
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?Q?G=C3=BCnther?= Noack <gnoack3000@gmail.com>
Cc: =?utf-8?Q?Micka=C3=ABl_Sala=C3=BCn?= <mic@digikod.net>, 
	linux-man@vger.kernel.org
Subject: Re: [PATCH 3/3] man/man2/landlock_restrict_self.2,
 man/man7/landlock.7: Document audit logging (ABI v7)
Message-ID: <adL41g1HDqiFMQzA@debian>
References: <20260329124815.92502-2-gnoack3000@gmail.com>
 <20260329124815.92502-5-gnoack3000@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20260329124815.92502-5-gnoack3000@gmail.com>

Hi G=C3=BCnther,

I've applied patches 1/3 and 2/3.  However, I've tried reading this
a few times and still don't understand it well.

On Sun, Mar 29, 2026 at 02:48:16PM +0200, G=C3=BCnther Noack wrote:
> * Document the flags LANDLOCK_RESTRICT_SELF_LOG_SUBDOMAINS_OFF,
>   LANDLOCK_RESTRICT_SELF_LOG_SAME_EXEC_OFF and
>   LANDLOCK_RESTRICT_SELF_LOG_NEW_EXEC_ON.
> * List these flags in the compatibility table in landlock.7
>=20
> The documentation text is copied from the kernel documentation,
> originally authored by Micka=C3=ABl Sala=C3=BCn in [1] and [2].
>=20
> Link[1]: <https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.=
git/commit/include/uapi/linux/landlock.h?id=3Dead9079f75696a028aea886078777=
0c80eddb8f9>
> Link[2]: <https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.=
git/commit/include/uapi/linux/landlock.h?id=3D12bfcda73ac2cf3083c9d6d05724a=
f92da3a4b4b>
> Cc: Micka=C3=ABl Sala=C3=BCn <mic@digikod.net>
> Signed-off-by: G=C3=BCnther Noack <gnoack3000@gmail.com>
> ---
>  man/man2/landlock_restrict_self.2 | 67 ++++++++++++++++++++++++++++++-
>  man/man7/landlock.7               |  6 ++-
>  2 files changed, 70 insertions(+), 3 deletions(-)
>=20
> diff --git a/man/man2/landlock_restrict_self.2 b/man/man2/landlock_restri=
ct_self.2
> index 530ef9a4cd25..9e80a40ee4a4 100644
> --- a/man/man2/landlock_restrict_self.2
> +++ b/man/man2/landlock_restrict_self.2
> @@ -68,8 +68,71 @@ is a Landlock ruleset file descriptor obtained with
>  and fully populated with a set of calls to
>  .BR landlock_add_rule (2).
>  .P
> -.I flags
> -must be 0.
> +By default,
> +denied accesses originating from programs that sandbox themselves
> +are logged via the audit subsystem.
> +Such events typically indicate unexpected behavior,
> +such as bugs or exploitation attempts.
> +However, to avoid excessive logging,
> +access requests denied by a domain not created by the originating program
> +are not logged by default.
> +The rationale is that programs should know their own behavior,
> +but not necessarily the behavior of other programs.

If I understand this correctly, the default is to log after fork(2) or
execve(2), but not before.  Is that correct?

> +This default configuration is suitable for most programs
> +that sandbox themselves.
> +For specific use cases,
> +the following flags allow programs to modify this default logging behavi=
or.
> +.P
> +The
> +.B LANDLOCK_RESTRICT_SELF_LOG_SAME_EXEC_OFF
> +and
> +.B LANDLOCK_RESTRICT_SELF_LOG_NEW_EXEC_ON
> +flags apply to the newly created Landlock domain.
> +.TP
> +.B LANDLOCK_RESTRICT_SELF_LOG_SAME_EXEC_OFF
> +Disables logging of denied accesses
> +originating from the thread creating the Landlock domain,
> +as well as its children,
> +as long as they continue running the same executable code
> +(i.e., without an intervening
> +.BR execve (2)
> +call).

And if I understood this well, this changes the behavior so that fork(2)
is ignored, so that logging will only be enabled at execve(2) but not at
fork(2).

> +This is intended for programs that execute unknown code
> +without invoking
> +.BR execve (2),
> +such as script interpreters.
> +Programs that only sandbox themselves should not set this flag,
> +so users can be notified of unauthorized access attempts
> +via system logs.
> +.TP
> +.B LANDLOCK_RESTRICT_SELF_LOG_NEW_EXEC_ON
> +Enables logging of denied accesses after an
> +.BR execve (2)
> +call,

But this is the part that makes me think my previous understanding was
wrong.  I had understood that execve(3) already triggered logging.  So
what does this enable that wasn't enabled already?


Have a lovely night!
Alex

> +providing visibility into unauthorized access attempts
> +by newly executed programs within the created Landlock domain.
> +This flag is recommended only when all potential executables
> +in the domain are expected to comply with the access restrictions,
> +as excessive audit log entries could make it more difficult
> +to identify critical events.
> +.TP
> +.B LANDLOCK_RESTRICT_SELF_LOG_SUBDOMAINS_OFF
> +Disables logging of denied accesses
> +originating from nested Landlock domains created by the caller
> +or its descendants.
> +This flag should be set according to runtime configuration,
> +not hardcoded, to avoid suppressing important security events.
> +It is useful for container runtimes or sandboxing tools
> +that may launch programs which themselves create Landlock domains
> +and could otherwise generate excessive logs.
> +Unlike
> +.BR LANDLOCK_RESTRICT_SELF_LOG_SAME_EXEC_OFF ,
> +this flag only affects future nested domains,
> +not the one being created.
> +It can also be used with a
> +.I ruleset_fd
> +value of \-1 to mute subdomain logs
> +without creating a domain.
>  .SH RETURN VALUE
>  On success,
>  .BR landlock_restrict_self ()
> diff --git a/man/man7/landlock.7 b/man/man7/landlock.7
> index 05664b3d7cba..bcf06ea30ad4 100644
> --- a/man/man7/landlock.7
> +++ b/man/man7/landlock.7
> @@ -445,7 +445,7 @@ users should query the Landlock ABI version:
>  box;
>  ntb| ntb| lbx
>  nt| nt| lbx.
> -ABI	Kernel	Newly introduced access rights
> +ABI	Kernel	Newly introduced constants
>  _	_	_
>  1	5.13	LANDLOCK_ACCESS_FS_EXECUTE
>  \^	\^	LANDLOCK_ACCESS_FS_WRITE_FILE
> @@ -472,6 +472,10 @@ _	_	_
>  _	_	_
>  6	6.12	LANDLOCK_SCOPE_ABSTRACT_UNIX_SOCKET
>  \^	\^	LANDLOCK_SCOPE_SIGNAL
> +_	_	_
> +7	6.15	LANDLOCK_RESTRICT_SELF_LOG_SAME_EXEC_OFF
> +\^	\^	LANDLOCK_RESTRICT_SELF_LOG_NEW_EXEC_ON
> +\^	\^	LANDLOCK_RESTRICT_SELF_LOG_SUBDOMAINS_OFF
>  .TE
>  .P
>  Users should use the Landlock ABI version rather than the kernel version
> --=20
> 2.53.0
>=20

--=20
<https://www.alejandro-colomar.es>
Use port 80 (that is, <...:80/>).

--l4x6se65y7ch2j4k
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmnS+jwACgkQ64mZXMKQ
wqlZcg/+NPjSwsQxqO8/jPn49v+m7OX1+/2IyY1DFh/DQvoQKVHzglPqVuM+aFwW
bvyHPCDaETkmKd/VQLoF9fjrpmKzNgcL4GKqnmxpHDaxeck3Wn4SLoP/tzp3/4L1
fdYCuVRPlfCpsmct86hdFythRvuyvnZx/vI8xSYuy+cVlwRL1eI3+HGjs8vQHm+R
GDT4vpvKO/FwUseObjY2op8UYoM2t3O814ssNz/5+FT9H//aTP9O7za3c2ViEeUL
cYLd2QgH1zZs2b68T818C/b9xumSQ+gc0mtMGwN+kDOVlGdfV2jFcy9FtS+KwFIk
ya56Em5xjn5mYNTdU++SAe861rVKOh77BlhN49o3RKOquxhX5dlPJOKTvV6xsUUA
zGBpAHSemujuLczQk5n3vSAT8h1fO84u4euJo+GBVbLX/RN6sofF0OLtwoXbaTRj
588C2xyBOF59re4q1l+hDkFphu85NeMCRQ23Ke16cLlGrLm7EqDZh7KU13LK7fj6
R68xkGU1F/IWVO8KB+UP/CACGWdlGgDiG5lcyUPQOtRvWKrHCWSaqW1JMcg/4Mfc
E+SQOvy+MKm3Ef+D0JKfQb4NwtD3GDefBLEUxPU1QOg/OwTqFynOuHzfZ8dajlxE
WkXDL0UyzHDi1CMdwt6TL9C2jH4FJDuFgBLhP+hAs/y/yKai0lQ=
=fRvo
-----END PGP SIGNATURE-----

--l4x6se65y7ch2j4k--

