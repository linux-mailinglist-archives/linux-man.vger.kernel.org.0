Return-Path: <linux-man+bounces-5355-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id LspzIO7B5mkg0gEAu9opvQ
	(envelope-from <linux-man+bounces-5355-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Tue, 21 Apr 2026 02:16:46 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 155FE4350DF
	for <lists+linux-man@lfdr.de>; Tue, 21 Apr 2026 02:16:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id E8BAC30041F7
	for <lists+linux-man@lfdr.de>; Tue, 21 Apr 2026 00:16:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3B9D47082D;
	Tue, 21 Apr 2026 00:16:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="drBscELJ"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F41F140DFD8
	for <linux-man@vger.kernel.org>; Tue, 21 Apr 2026 00:16:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776730602; cv=none; b=STdbZPa38FMAWPmiX4f8iuAmUPCYBcjhhHDqdebDWO+9anFcMRRgkRcc/x+sg4mInvmZu1JGk2vmmCMxSQLBk+so5qcEeKaTMs/E4DwEQKQ+e9n/dvKIoiQqYcVXx8zvFr945sCUGAw0jnyO1UQS23m4bTYxsvcv0nSyL1hiolw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776730602; c=relaxed/simple;
	bh=C7qknQx7E3HwDHo7iLL6BPGMjBH5jSC05i38sk5kwx8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=IC/UCTqLxXz3D037ovGCYsiqYDz7V8cz56oSkCwo0RYia1uv38Xvv0aBQmUq1UTQMU1/bONGM07Klg076cpJKMTomBgh1EpGHtCQ2GI7zupTfxTA5JLwLql38kJnUg/fr9hDm0SvOWWi8f8arOJKrapgAu+ml8rNaizoOBg7cWA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=drBscELJ; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B1B98C19425;
	Tue, 21 Apr 2026 00:16:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776730601;
	bh=C7qknQx7E3HwDHo7iLL6BPGMjBH5jSC05i38sk5kwx8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=drBscELJ0JkyTReMns5oIRNBmWacJnxSkIPmbxgqa9X7w5nC/gVJW4w2lYiDECWeJ
	 njTaDD92+DVBL712L9jT5B58pMs6zso/45536T5q7bGhlTUsC/myGKrynP0GNVMV2O
	 P0Hk6o7RqRoyHV0XfteZw3OuExTi1OZTJ3P8zp8TlZLrEH82A45CNx58tz4RSV/H/r
	 07sdcbjWTteLS8CSx3HwlpYQUQ53pxEDIjA0NJmQNFTxbdaK+ySqvfdLCL3mB98fJ7
	 XULrIl97Hr3xhE7bcHWyAoRTec6GsldNW2ub4LGkahCQWQG5kn5vsnaxF6M4OnFE5H
	 mt0Q92AIHQh2w==
Date: Tue, 21 Apr 2026 02:16:38 +0200
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?Q?G=C3=BCnther?= Noack <gnoack3000@gmail.com>
Cc: =?utf-8?Q?Micka=C3=ABl_Sala=C3=BCn?= <mic@digikod.net>, 
	linux-man@vger.kernel.org
Subject: Re: [PATCH v2 2/4]
 man/man[27]/{landlock_create_ruleset.2,landlock.7}: Document
 LANDLOCK_CREATE_RULESET_ERRATA
Message-ID: <aebBYT2DKJGekGXe@devuan>
References: <20260420223517.8020-1-gnoack3000@gmail.com>
 <20260420223517.8020-3-gnoack3000@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="7woxrjkt7tggp64u"
Content-Disposition: inline
In-Reply-To: <20260420223517.8020-3-gnoack3000@gmail.com>
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-5355-lists,linux-man=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	FUZZY_RATELIMITED(0.00)[rspamd.com];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[linux-man];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,alejandro-colomar.es:url]
X-Rspamd-Queue-Id: 155FE4350DF
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--7woxrjkt7tggp64u
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?Q?G=C3=BCnther?= Noack <gnoack3000@gmail.com>
Cc: =?utf-8?Q?Micka=C3=ABl_Sala=C3=BCn?= <mic@digikod.net>, 
	linux-man@vger.kernel.org
Subject: Re: [PATCH v2 2/4]
 man/man[27]/{landlock_create_ruleset.2,landlock.7}: Document
 LANDLOCK_CREATE_RULESET_ERRATA
Message-ID: <aebBYT2DKJGekGXe@devuan>
References: <20260420223517.8020-1-gnoack3000@gmail.com>
 <20260420223517.8020-3-gnoack3000@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20260420223517.8020-3-gnoack3000@gmail.com>

Hi G=C3=BCnther,

On 2026-04-21T00:35:15+0200, G=C3=BCnther Noack wrote:
> Document the LANDLOCK_CREATE_RULESET_ERRATA flag, which returns a
> bitmask of fixed issues for the current Landlock ABI version.
>=20
> This mechanism was introduced in Linux 6.15, but backported to all
> older kernel releases where these errata fixes were backported to.
> On official Linux kernel releases, if landlock_create_ruleset() with
> LANDLOCK_CREATE_RULESET_ERRATA returns an error, this is equivalent to
> the case where none of the known errata have been fixed.
>=20
> Signed-off-by: G=C3=BCnther Noack <gnoack3000@gmail.com>
> ---
>  man/man2/landlock_create_ruleset.2 | 57 ++++++++++++++++++++++++++----
>  1 file changed, 51 insertions(+), 6 deletions(-)
>=20
> diff --git a/man/man2/landlock_create_ruleset.2 b/man/man2/landlock_creat=
e_ruleset.2
> index d4eb5d827656..a24a4dd6cbb3 100644
> --- a/man/man2/landlock_create_ruleset.2
> +++ b/man/man2/landlock_create_ruleset.2
> @@ -116,11 +116,7 @@ Otherwise,
>  can be set to:
>  .TP
>  .B LANDLOCK_CREATE_RULESET_VERSION
> -If
> -.I attr
> -is NULL and
> -.I size
> -is 0, then the returned value is the highest supported Landlock ABI vers=
ion

This fix (and the related changes below) should be done in a separate
patch.

Other than that, this patch LGTM.


Have a lovely night!
Alex

> +Return the highest supported Landlock ABI version
>  (starting at 1).
>  This version can be used for a best-effort security approach,
>  which is encouraged when user space is not pinned to a specific kernel
> @@ -129,11 +125,50 @@ version.
>  Unless noted otherwise,
>  all features documented in these manual pages are available with the
>  version 1.
> +.TP
> +.B LANDLOCK_CREATE_RULESET_ERRATA
> +Return a bitmask of fixed issues
> +for the current Landlock ABI version.
> +If bit N is set (i.e.,
> +.IR "errata & (1 << (N - 1))" ),
> +then erratum N has been fixed in the running kernel.
> +.IP
> +In addition to ABI versions,
> +Landlock's errata mechanism
> +tracks fixes for issues that
> +may affect backwards compatibility
> +or require userspace awareness.
> +.IP
> +Only check errata if your application specifically relies on behavior
> +that changed due to the fix.
> +.IP
> +The full list of Landlock errata is available at
> +.UR https:\://docs.kernel.org/userspace\-api/landlock.html#landlock\-err=
ata
> +.UE .
> +.IP
> +This flag is available on all Linux versions
> +where Landlock errata were fixed.
> +This specifically includes
> +all newest bugfix releases
> +of stable kernels
> +where Landlock is supported.
> +.P
> +If
> +.B LANDLOCK_CREATE_RULESET_VERSION
> +or
> +.B LANDLOCK_CREATE_RULESET_ERRATA
> +is set,
> +then
> +.I attr
> +must be NULL and
> +.I size
> +must be 0.
>  .SH RETURN VALUE
>  On success,
>  .BR landlock_create_ruleset ()
>  returns a new Landlock ruleset file descriptor,
> -or a Landlock ABI version,
> +a Landlock ABI version,
> +or a Landlock errata bitmask,
>  according to
>  .IR flags .
>  .P
> @@ -159,6 +194,16 @@ Unknown
>  or unknown access, or unknown scope, or too small
>  .IR size .
>  .TP
> +.B EINVAL
> +Non-NULL
> +.IR attr
> +or non-zero
> +.IR size
> +in combination with
> +.B LANDLOCK_CREATE_RULESET_VERSION
> +or
> +.BR LANDLOCK_CREATE_RULESET_ERRATA .
> +.TP
>  .B ENOMSG
>  Empty accesses (i.e.,
>  .I attr
> --=20
> 2.53.0
>=20

--=20
<https://www.alejandro-colomar.es>

--7woxrjkt7tggp64u
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmnmweUACgkQ64mZXMKQ
wqlBJBAAqijhaYXyHlQ7lExjHT8OEv54nUrF86t5mnF/nDGVhJGp/fhiAtlFYO9f
IWi/H2EJ34/s54vcqzG4sGm7P/t1ugZ4ldJvMTZncu+OG8Wo4rpzYMONwwhxjLQn
fYXDC4YeZQsW/qKxS7PM21FqKJV44/HSlj4OsfJmps35CYKoTi7pf4pyCVek+Ccs
wuxLtg2MxmSqVXHHEWBBBOFhtSkc4msVE5zKzQ5a+3pRuBYsQ9MZ+kwMnlZe0WF0
JGsjtbFKHZBOGkGYj+eyqsTKnhptX+1KIYm/eK3gpr8LDa0crQH9joh/3MNCjHXq
PctdYeS0cjbm1wM5fDqluyURJk8eLaluLaf0VeFLBTbFVDOEcYHZr+DwhzyWzxc0
q+smyBF198d4W5GABf/ux2TAyr6uV0pkMAFPcf3rL6g0o9aOFIyWpGMOBRzp9dAL
p+jUGsqlay/+5JsihNvTXjYf5tEV1zElGydzXWB3DZUkXuEbRcYrgpVTbUNrPXm7
73bjUb/OwZO1ic5ANSCgJluZgZQTnIpXX7iaNquKHQO25JdXqitssIRcFbhKDqM6
UgH24/UO8QjZ7T0qS3ayr5OK8Kkb7dzYn47novDYE1mPE+akZDjhq28Klk12pjtf
wJcBqrcvZ6nKXyQKhQO2zyOd+OF6hIxrGB1k60UvQhntBGlPc6U=
=lfWg
-----END PGP SIGNATURE-----

--7woxrjkt7tggp64u--

