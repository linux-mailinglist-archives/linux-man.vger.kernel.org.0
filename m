Return-Path: <linux-man+bounces-5379-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cPS6CFQi6Wn2UgIAu9opvQ
	(envelope-from <linux-man+bounces-5379-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Wed, 22 Apr 2026 21:32:36 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BF0044A308
	for <lists+linux-man@lfdr.de>; Wed, 22 Apr 2026 21:32:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 855A230073C2
	for <lists+linux-man@lfdr.de>; Wed, 22 Apr 2026 19:32:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DBD0836F437;
	Wed, 22 Apr 2026 19:32:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oGy0zYT2"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 884C02D8DC4
	for <linux-man@vger.kernel.org>; Wed, 22 Apr 2026 19:32:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776886353; cv=none; b=Ns6+7KmYcz2kRMrKFf0kxSNtF3Kkn4Uk2qc06vvgnwIEDgTb5vI79rhwiSIK+Qj3FJ9D4LLRvHQRTQVXuBpnLo/mDvEh7EGHUOaQsD+MAQKZNWcFVFpBDhLuCEL+ujO2UEdbFATedU+Y3Yuo2EFcve9KkaaLMyVOOvKgO96D1VE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776886353; c=relaxed/simple;
	bh=5xLSdsNTh+ZmrOD1SXvziyI/OdOAfaPe/KD1jb0WZYg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=lf4zoSJkmLbXWZ8gl+WF6yCGdF5e/4wxFwTMIpuDpwMl55IqojKdQYLAubz/rXsNGeLRq6sBSOAW2I3UyQ/WJn85VsGWTMQugh4UZh4oPoRkcnxQLMQjxR+Ghswt76u8gXij1wdy49fX3AP195HvOQRSX2pUXRi6o+vkmLC7koE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oGy0zYT2; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 38D2FC19425;
	Wed, 22 Apr 2026 19:32:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776886353;
	bh=5xLSdsNTh+ZmrOD1SXvziyI/OdOAfaPe/KD1jb0WZYg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=oGy0zYT2ZOtckOViYQtrGttp/ijK0fQUm8eC6z0Rl4rVJYcaOEQv+Q0xdLe6NwuoJ
	 rcWOQ+W3DVIRc3wz+AfVZFzX25JI5Cp7KXurct5Zhl5POF2M+4Pp8PPZoNKDFBgYIN
	 URCJD5k7KL55Jkr8wbwMRyriP4a3YVFfdBIChOrNbkceI/op4tMeLYFtNtRO0+DkIc
	 85Y0ZTCfSU7iGNkdtNI2rTEsktZo7RVzx1M66YN8AfOXHt8xBb9RfIKaY6aJCEtOjX
	 V5H6b2AG3hwztwZFPS92GucvyEyUzdgdeTz3d6d+4h/NCck51c/hkfWLAGpY9UJ2WX
	 vEnHJsxsqmJyg==
Date: Wed, 22 Apr 2026 21:32:29 +0200
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?Q?G=C3=BCnther?= Noack <gnoack3000@gmail.com>
Cc: =?utf-8?Q?Micka=C3=ABl_Sala=C3=BCn?= <mic@digikod.net>, 
	linux-man@vger.kernel.org
Subject: Re: [PATCH v4 0/2] Update Landlock docs to Landlock ABI v8
Message-ID: <aekh8O3sOyudHw44@devuan>
References: <20260422192330.7623-1-gnoack3000@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="aclqq62iyzgmchgu"
Content-Disposition: inline
In-Reply-To: <20260422192330.7623-1-gnoack3000@gmail.com>
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5379-lists,linux-man=lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 8BF0044A308
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--aclqq62iyzgmchgu
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?Q?G=C3=BCnther?= Noack <gnoack3000@gmail.com>
Cc: =?utf-8?Q?Micka=C3=ABl_Sala=C3=BCn?= <mic@digikod.net>, 
	linux-man@vger.kernel.org
Subject: Re: [PATCH v4 0/2] Update Landlock docs to Landlock ABI v8
Message-ID: <aekh8O3sOyudHw44@devuan>
References: <20260422192330.7623-1-gnoack3000@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20260422192330.7623-1-gnoack3000@gmail.com>

On 2026-04-22T21:23:28+0200, G=C3=BCnther Noack wrote:
> Hello!

Hello!

> Thanks for the review!  Here's the fourth round of the patch set, this
> time just adding the missing ABI version information.  Added another
> small patch in the same style for the adjacent Landlock man page where
> it applies.  (The third Landlock manpage, landlock_create_ruleset.2,
> doesn't need it because one flag is available since the start and the
> errata flag is available where needed and backported everywhere, as
> previously discussed.)

Thanks!

> Kept the cover letter title as is, to reduce confusion (but the part
> where Landlock ABI v8 gets described is already submitted).

You may want to use --in-reply-to instead, so that all revisions are
subthreads of the same thread (v1).  But thanks!

>=20
> =E2=80=93G=C3=BCnther
>=20
> P.S.: I have a half-finished commit for the upcoming Linux 7.1 release
> as well; I can send this one soon, I assume it's OK to send these
> slightly before the release, given that the code is already on Linux
> master?

Yup, that's fine.


Have a lovely night!
Alex

>=20
>=20
> Change Log
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>=20
> v4:
>   - mention ABI versions for flags next to the tagged paragraph title
>     where they are described
>     - 1/2: do that in landlock_restrict_self.2 (based on v3's patch 4)
>     - 2/2: do that in landlock_add_rule.2 as well
>   - earlier patches 1,2,3 from v3 were already merged
>=20
> v3:
>   - split the size/attr clarifications from the "errata" patch into a
>     separate commit
>   - earlier patch from v2 about the "scoped" EINVAL error was already
>     merged
>  =20
> v2:
>   - landlock_create_ruleset.2: added a tiny patch to add a missing
>     mention of "scoped" in the errors list.
>   - landlock_create_ruleset.2: various reformulations for errata
>   - earlier patch from v1 about the default ABI version assumption was
>     already merged (thanks!)   =20
>=20
> G=C3=BCnther Noack (2):
>   man/man2/landlock_restrict_self.2: Document ABI requirement for
>     logging flags
>   man/man2/landlock_add_rule.2: mention ABI version for
>     LANDLOCK_RULE_NET_PORT
>=20
>  man/man2/landlock_add_rule.2      | 2 +-
>  man/man2/landlock_restrict_self.2 | 6 +++---
>  2 files changed, 4 insertions(+), 4 deletions(-)
>=20
> --=20
> 2.53.0
>=20

--=20
<https://www.alejandro-colomar.es>

--aclqq62iyzgmchgu
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmnpIk0ACgkQ64mZXMKQ
wqnBpBAAgM5VA1Anm2dfYy1E258pLBLHyouh4spa31UEw7tPHkTh5RAvrbelH5Bv
fjZwtkDcWsR83Y4o/yjCFVRUJMf+9LoC7DXLiYUf1ys+QLr6D+eYkX8dCiNjak/L
9B04aLXgZmKYZ2wP4fgbJvfTg+Df/mkvMN9mA0J+ODa6LSqJGPDU1h0Kxcf/2tCK
6SdR9QAq5X6Lym7NFmAErQEaa9zOPOmwK0yeeH6dXSEIjnFfuV0JaklaMue3/ZkF
q7m6R0Oewzy4bC0lQnZDqMHi/7Qn1rd4k7rfblMFDxTikkwZ24gYSx+OVD+HpKnJ
0HibbdWA428U4m2UJ067/r/bciZUOrE/OzTGXxW0uetDZtsIDpZ9gBvcPqIjo8pt
MoCBWZWAlLdhyWQ6x78CfTv1OLDfSzyD3mJgVp6kHv2JlZu+eiA1/FWwOkX9Kq5W
lhG1jAf1h6mmF1WsMeRvgEF60HSdGBzrh2FrME8ziiuawjdXQdnLCy2eMHTZtrOQ
zTJNZnSx+jZMTZbZf9SGBH99VBDsW27N8Iaj89Sxs8anHRFre78rb+rhM5E/4moG
GY0swBS1o19wDRffa6lP8rY88LR/iOvSHW3vPFdAJGId9cYTm0Skh4Vv63d4cM5j
ZsWQz2gCDxDCL2P/rTHEsD3aiyWpZsPt+XL1N8vvcKAXHZzPiXI=
=2OMr
-----END PGP SIGNATURE-----

--aclqq62iyzgmchgu--

