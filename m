Return-Path: <linux-man+bounces-5346-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MNxWFdo05WlvfQEAu9opvQ
	(envelope-from <linux-man+bounces-5346-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Sun, 19 Apr 2026 22:02:34 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id AD54D425604
	for <lists+linux-man@lfdr.de>; Sun, 19 Apr 2026 22:02:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1B144301588F
	for <lists+linux-man@lfdr.de>; Sun, 19 Apr 2026 20:02:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 585D0175A6D;
	Sun, 19 Apr 2026 20:02:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mlJNeNZu"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D1853009D6
	for <linux-man@vger.kernel.org>; Sun, 19 Apr 2026 20:02:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776628945; cv=none; b=XINwFCjzPDthKK2KeNET0yaPw1oK9LOPVLYzNdc2COuJ1yn8IpRaIXl+kO18XTkePBb4rXapL4VKpCJOToXNNfFZFMKATWwbd/2ub2KZtYVoNEC/FDapTKy2q4qbs85tyraZQkW3LGnurgffs+UrGv67pXVFFzqJCqcppM23M2U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776628945; c=relaxed/simple;
	bh=8GXlMuUy3yzvm95d5puLTDyE2j7EMOAkxK6IKt8gCMg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Enhwhx9PtvKkxH2/gG6t41n4Y98qqiliJfFdTBiLs3L6GLcpI4O5R4qqqMJgw4PBe6obD33WgUw9KkINxVsJo/S2fdz8d+uVwWL3oyM1f9fe6Hr1l3AfY2EmoizLA+eMDQ++rnsv4b22ZTTgzTvJMMWqCPcnjmZ3iX+NpF8VkBE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mlJNeNZu; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D90A0C2BCAF;
	Sun, 19 Apr 2026 20:02:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776628944;
	bh=8GXlMuUy3yzvm95d5puLTDyE2j7EMOAkxK6IKt8gCMg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=mlJNeNZuhe1WHdaG+QeSKflrSoy3N0V5Jz+iPlzKa3pb2lfzTh0/lRTWSu1ielUqR
	 tCP3S2zbAiWF3gQBH9RyEnQEKG1Uxl2H2EwMoSYflVEIA5+70BWWPAHsIQcJWtjlER
	 Zln7JC1wYdyXzvgr03d8gYbb2Dm2fiZ4lCPgb7qESneJZACz9js0kf5AWEX3pnjbLV
	 9uRee3njS9I7RUX+IQtf/HXhzRWTWq/ZIigj7IfbZxqjXn8opPuHrrplLGts1DYs+f
	 UJGzgey+t2WcWtQNtuvfj9aYhjXshCPyWG8cmVQQ1zOPp/UxZckqx3errhnoTg3xSc
	 UMxt09XeHdZ0A==
Date: Sun, 19 Apr 2026 22:02:21 +0200
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?Q?G=C3=BCnther?= Noack <gnoack3000@gmail.com>
Cc: =?utf-8?Q?Micka=C3=ABl_Sala=C3=BCn?= <mic@digikod.net>, 
	linux-man@vger.kernel.org
Subject: Re: [PATCH 1/4] man/man2/landlock_create_ruleset.2: Clarify default
 Landlock ABI
Message-ID: <aeU0tudCNr_WhN_P@devuan>
References: <20260413193446.24328-2-gnoack3000@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="snkbgj5moalk42lp"
Content-Disposition: inline
In-Reply-To: <20260413193446.24328-2-gnoack3000@gmail.com>
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5346-lists,linux-man=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[alejandro-colomar.es:url,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: AD54D425604
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--snkbgj5moalk42lp
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?Q?G=C3=BCnther?= Noack <gnoack3000@gmail.com>
Cc: =?utf-8?Q?Micka=C3=ABl_Sala=C3=BCn?= <mic@digikod.net>, 
	linux-man@vger.kernel.org
Subject: Re: [PATCH 1/4] man/man2/landlock_create_ruleset.2: Clarify default
 Landlock ABI
Message-ID: <aeU0tudCNr_WhN_P@devuan>
References: <20260413193446.24328-2-gnoack3000@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20260413193446.24328-2-gnoack3000@gmail.com>

Hi G=C3=BCnther,

On 2026-04-13T21:34:44+0200, G=C3=BCnther Noack wrote:
> The documented Landlock features are not all available since ABI v1.
> We are mentioning it explicitly when features require specific
> Landlock ABI versions.
>=20
> Signed-off-by: G=C3=BCnther Noack <gnoack3000@gmail.com>

I've applied this patch.  Thanks!


Have a lovely night!
Alex

> ---
>  man/man2/landlock_create_ruleset.2 | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)
>=20
> diff --git a/man/man2/landlock_create_ruleset.2 b/man/man2/landlock_creat=
e_ruleset.2
> index 5425ed59878b..7bca831cbd65 100644
> --- a/man/man2/landlock_create_ruleset.2
> +++ b/man/man2/landlock_create_ruleset.2
> @@ -125,8 +125,10 @@ is 0, then the returned value is the highest support=
ed Landlock ABI version
>  This version can be used for a best-effort security approach,
>  which is encouraged when user space is not pinned to a specific kernel
>  version.
> -All features documented in these man pages are available with the version
> -1.
> +.IP
> +Unless noted otherwise,
> +all features documented in these man pages are available with the
> +version 1.
>  .SH RETURN VALUE
>  On success,
>  .BR landlock_create_ruleset ()
> --=20
> 2.53.0
>=20
>=20

--=20
<https://www.alejandro-colomar.es>

--snkbgj5moalk42lp
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmnlNM0ACgkQ64mZXMKQ
wqn7rhAAumnj780pYNTnJX7QfijJiekEmGID39KdosgHqjmhWLOUR65+AddV1OpK
niiZ9TrW1o5jtnkLqW26EMEtnqXVAwMq1Vi/ARwa21+1F7bJp/5q40iFxfI86GFb
shbF66n9Ho/1nDGY4QiNJY0K18Q/HKUiWkzezm1WuyLahksdEeS8ULkiyC/Ycz9t
SDdxFa2EFs5croQf+Z5c+3QL1dfn71G9Z9vm2QOvqFecfgsIAAWOKKcVpCnXSOf7
ZEye5EGY37f3Hir8M4ucHwJGRvwEA5aZ75gTwLWpN+8Xv9ulgduR1+x9idbYDaRm
VrfLkeJUj7AK0rG6MtkY/yYkGiHJ5RkDJQU8UxtBBYYs+h8KibhrgdhSviLwPQy9
RLODrWKMFk8eMfAHzSBT/d7rcXV/fxJ+VVZbLIIKmijVRibtQph1yhf0dYsxMO4k
ztAPIB1YeHRQKhQagXqAu8gaAMbVkK1sW9l+6zMiCkn+a8i8uyjusU7qNlZ6piTi
l9uUBLpU2EC+HrolRMnTNrjmK1+qbsfC7tR6mbXsGvAH+usQVhmW4TDSxWd0pwbk
UJzlKMGoQHJ8u2bKFIqVyjfYqWZEG3VwG9PRFoHWP9QAiRwYEbNf0z5NyK2sdhO9
Kcqhit6HKcHW8pHP/MvC1TFXumJ5bU+Nf22OB3msqS4BqB7hgHA=
=4eqb
-----END PGP SIGNATURE-----

--snkbgj5moalk42lp--

