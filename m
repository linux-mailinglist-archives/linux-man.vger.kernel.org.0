Return-Path: <linux-man+bounces-5314-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4AinN2mY1mmHGggAu9opvQ
	(envelope-from <linux-man+bounces-5314-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Wed, 08 Apr 2026 20:03:21 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FB543BFEE3
	for <lists+linux-man@lfdr.de>; Wed, 08 Apr 2026 20:03:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id DCF1130063A4
	for <lists+linux-man@lfdr.de>; Wed,  8 Apr 2026 18:03:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 103A13D6CC2;
	Wed,  8 Apr 2026 18:03:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BkdS098q"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C73EE1A683C
	for <linux-man@vger.kernel.org>; Wed,  8 Apr 2026 18:03:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775671396; cv=none; b=l7cpikgBiYcnMAasOx4iSskTakOpJUbOoOXxCJi+0UjysUkT9Ls8pWMvsD5qPy+0mMrD9+Za60ZesALZ1NJmjPNVrG+mJqnFq5MoA3pUfLtG2kopEnlkBtPStCzpgyWOEaUcJDeug9uKb3InebTnjk8JE7aD16OrTsi6w3ApZuk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775671396; c=relaxed/simple;
	bh=Vh7vLpXVEgPBqfqkP6cuFQvjygdrsSjXy9RyabTz7+g=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=buyNZHUozU/t67D/Wyj0fyBnd0BZXOOA2jwL67WthPPD14vUi65QZsF+2d545lHUYNc1Z+ShFz3TEXZZ0aNiNrR88ncyHIjH9afE/B7MeWNIzPWI30Fr+NvKOWfK6gZsyCyY6QMCgkNX6wMj/fJfYBtjS1y/qMe9foWQjNyYhFw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BkdS098q; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CBF7CC19421;
	Wed,  8 Apr 2026 18:03:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775671396;
	bh=Vh7vLpXVEgPBqfqkP6cuFQvjygdrsSjXy9RyabTz7+g=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=BkdS098qhcLEXRSX/KWjfysqA0W7OuzhKQgzqVV7M+wEfw5pR+22ykouHdq/PPn0B
	 eYBCAPvJmQxvkyXKpB6lACcY/RCpeauhhqBj01XphZdMhEpB3aGbl1YfDWSKv0OZFi
	 QLK5v6L/AHWD5znT7Pl2rU94LB/gxpyx5wT2FnUQbkus9HXy628Ow0EC+M+dBVLM6J
	 89pv+/wdGM7y03o6urlUXtlmrac/KQWgsASvyaF4UbmeT6wQ2PjGQH7wlooZo0YLDz
	 3oK4UqWmLOEvYFan1JbG93Ult+8k67mfczkPzXZc6rPWk4Rz8XfVbS/4jn9hrwNAD7
	 m9X+txIc+UPhw==
Date: Wed, 8 Apr 2026 20:03:12 +0200
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?Q?G=C3=BCnther?= Noack <gnoack3000@gmail.com>
Cc: =?utf-8?Q?Micka=C3=ABl_Sala=C3=BCn?= <mic@digikod.net>, 
	linux-man@vger.kernel.org
Subject: Re: [PATCH 3/3] man/man2/landlock_restrict_self.2,
 man/man7/landlock.7: Document audit logging (ABI v7)
Message-ID: <adaYS4RasFpajuoo@debian>
References: <20260329124815.92502-2-gnoack3000@gmail.com>
 <20260329124815.92502-5-gnoack3000@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="fhk7r5kkgbpyed6w"
Content-Disposition: inline
In-Reply-To: <20260329124815.92502-5-gnoack3000@gmail.com>
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5314-lists,linux-man=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,alejandro-colomar.es:url]
X-Rspamd-Queue-Id: 2FB543BFEE3
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--fhk7r5kkgbpyed6w
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?Q?G=C3=BCnther?= Noack <gnoack3000@gmail.com>
Cc: =?utf-8?Q?Micka=C3=ABl_Sala=C3=BCn?= <mic@digikod.net>, 
	linux-man@vger.kernel.org
Subject: Re: [PATCH 3/3] man/man2/landlock_restrict_self.2,
 man/man7/landlock.7: Document audit logging (ABI v7)
Message-ID: <adaYS4RasFpajuoo@debian>
References: <20260329124815.92502-2-gnoack3000@gmail.com>
 <20260329124815.92502-5-gnoack3000@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20260329124815.92502-5-gnoack3000@gmail.com>

Hi!

On 2026-03-29T14:48:16+0200, G=C3=BCnther Noack wrote:
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

I've applied the patch.  Thanks!


Have a lovely day!
Alex

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

--fhk7r5kkgbpyed6w
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmnWmF8ACgkQ64mZXMKQ
wqkshg/+NLuJC5wVzVNtzMy9ztMkFsVs8r+LMJ26WVzRWhwjGtgsBQkmIkQ3k5m3
gerkTqe7108XHkiJT7okvzgV2SGPoAQxLDxcKgMFpY7FOkYKHjQH8v/PPO5+soRo
+lUUavgBmWqE8pU04jBEpJqOEl6CnQOXuP5gy88AKLdt0HeuYN6+WLSKul2BUY0P
6Jzt0MpRtWBhexToUPbixxR5q50pJD+xGkr706JX9TKvNO5yRfsX09+f6S3Tl8lO
TEmS1SmWji/FqMWF+x+Eocpb0jBHk8cwsG25Mc11fSgazG2Zi4nS0ZB2/H/qs6cm
mhy51uTJ10MdMP57GZNp4jZVs4p2KHT8htH8rKsTbdgSI6vHDuGlG7RdiR6SbUA4
az1CD0ju5GB4aZo8Ri3oHZUSPoRH8sL+o/EmOdQlPFYCK7gIlNyOMjtP40ZxYuAe
RRrXd9liEqQWSqBp5zt4eBVjs+w89AiosSbZcaTcWWP/NZ/yGtqVmYOe2m6+s92C
DhUXI5QczrDgv2BLxxYq04+VfqoRAGFSISs4BpMLaMI1x/ciXe0cJ6L1Gll/zbYg
TNdaaFoM/IxufI6P9cve3rtRLgeurfcvZlGJ7MXzT06Z/bYPNLPsFj6+ftswmkFw
oOiCYz3jahV19q4UeTft77xu6GQFJ6XW1XpXli7WgfNZfEWLr0I=
=qrzu
-----END PGP SIGNATURE-----

--fhk7r5kkgbpyed6w--

