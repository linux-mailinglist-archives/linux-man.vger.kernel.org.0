Return-Path: <linux-man+bounces-5462-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wAJNDoOZ+GkAxAIAu9opvQ
	(envelope-from <linux-man+bounces-5462-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Mon, 04 May 2026 15:05:07 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 450614BD679
	for <lists+linux-man@lfdr.de>; Mon, 04 May 2026 15:05:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 859D930056D3
	for <lists+linux-man@lfdr.de>; Mon,  4 May 2026 13:03:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 10B243D6476;
	Mon,  4 May 2026 13:03:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q/KsH8AV"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C83063D47BB
	for <linux-man@vger.kernel.org>; Mon,  4 May 2026 13:03:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777899823; cv=none; b=LFBLnYVeogK//CJNV+VmofFg1R3fuZEqOTHivfyLkq17hoHOwNlTZ6ajsDYsumuuVxDoUaReaS3VXAhtXJ9qVUEW4JuB0wkOGA2gNR1XlXljuchJxFTFkn/rs4Pxbrsb1O5ppf6JZIGPa5N70oWd0l++u192MFIWOULXX4XcjmA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777899823; c=relaxed/simple;
	bh=9TerBu+zMGoH6L+ZncQs4Q8o50cyiZRVKzx41GLp+3I=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Nac/JVyE9n76lCxq1C3tl7ekYiNdI6Xsag2L8HPYvsns9Oz1zK8Gipj7EqSJJJwdLDSd/UZ5gap2W1MEbv7FpdtYmsCCs4JzKI/G3bPAIOZ20LspqonbNbpI5M2+p4Bawg3Qfm6ZW/5whYXTsqvf1AHQHZkds6TqFF7YUNasuaA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q/KsH8AV; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A8780C2BCB9;
	Mon,  4 May 2026 13:03:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777899823;
	bh=9TerBu+zMGoH6L+ZncQs4Q8o50cyiZRVKzx41GLp+3I=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=q/KsH8AVD5gKXCBUUJ2pvWKTIbe0Yx/uX75+BTuxj39Npu5YOXCBpFu1zVBhbRpy7
	 5xqhfzY+zXJ3BhtD5/t8z5LKp3zroab/7uUVgQKRgp1MXXJ+9LUCWjC7ir5E9oKV5V
	 wT2497Ncei48HlhA+BGikA3EUb4ltmXH4BoyTNTlzvZXGRgKNQRyzHNUVhGc/QeliF
	 oSGg/qwkOEKmddU5R7gfnlAq6Qy5lyZJIorwj6xK7QMW9cs8i4BQX9lP6EQt22iXza
	 WgDE1h4txsHYMBZPwXGhfuwuQ7BnFDoQiTrgjP8KOT/aGp0HC5OuiNs3YU0SI3qheb
	 GRTy+fLeyngyQ==
Date: Mon, 4 May 2026 15:03:40 +0200
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?Q?G=C3=BCnther?= Noack <gnoack3000@gmail.com>
Cc: =?utf-8?Q?Micka=C3=ABl_Sala=C3=BCn?= <mic@digikod.net>, 
	linux-man@vger.kernel.org
Subject: Re: [PATCH v4 0/2] Update Landlock docs to Landlock ABI v8
Message-ID: <afiY-vIzayaFx2MP@devuan>
References: <20260422192330.7623-1-gnoack3000@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="jiugrigsycillkps"
Content-Disposition: inline
In-Reply-To: <20260422192330.7623-1-gnoack3000@gmail.com>
X-Rspamd-Queue-Id: 450614BD679
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
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
	TAGGED_FROM(0.00)[bounces-5462-lists,linux-man=lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]


--jiugrigsycillkps
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?Q?G=C3=BCnther?= Noack <gnoack3000@gmail.com>
Cc: =?utf-8?Q?Micka=C3=ABl_Sala=C3=BCn?= <mic@digikod.net>, 
	linux-man@vger.kernel.org
Subject: Re: [PATCH v4 0/2] Update Landlock docs to Landlock ABI v8
Message-ID: <afiY-vIzayaFx2MP@devuan>
References: <20260422192330.7623-1-gnoack3000@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20260422192330.7623-1-gnoack3000@gmail.com>

Hi G=C3=BCnther!

On 2026-04-22T21:23:28+0200, G=C3=BCnther Noack wrote:
> Hello!
>=20
> Thanks for the review!  Here's the fourth round of the patch set, this
> time just adding the missing ABI version information.  Added another
> small patch in the same style for the adjacent Landlock man page where
> it applies.  (The third Landlock manpage, landlock_create_ruleset.2,
> doesn't need it because one flag is available since the start and the
> errata flag is available where needed and backported everywhere, as
> previously discussed.)
>=20
> Kept the cover letter title as is, to reduce confusion (but the part
> where Landlock ABI v8 gets described is already submitted).
>=20
> =E2=80=93G=C3=BCnther

I've applied the both patches of the patch set.  Thanks!


Have a lovely day!
Alex

>=20
> P.S.: I have a half-finished commit for the upcoming Linux 7.1 release
> as well; I can send this one soon, I assume it's OK to send these
> slightly before the release, given that the code is already on Linux
> master?
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

--jiugrigsycillkps
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmn4mSsACgkQ64mZXMKQ
wqmtUg//SnZmF15ZnZI9p/tUwLCzU8Q0p9wlfKxUUzwwEMpZGmuSl5n0crDcrjUX
q6oi/hw5XenUJyCABRXGvPq7ownqP6Hh1Gy06Ij3/4yRUaG2SvpjfQCuD43t2G8D
st8zW1w+9FVl84wtnRKDbiP5t26bFsO22ZU8vfxGtGq56cf3OE5opG7RltwFl16q
OmEW19h2L0gmBQwQYQzbB/JHUBT5/qQbjKaEQkeZFJiU3OGDTsCC8x8oJWnSBlGK
lvi+ItXwjV4rQLug+UxinF8GHm0AB2pREeeXAoWWbmEQG6SlLVv6VWDT8kfxctQY
Ny4wyNCd7K4MkTOwW9JQJ+it/qXmFvHquIU3BgEzCtG7pEQHs0WVCbFb/CZF0qd6
KvPTQS3GvsRwha6pIIz7SBktiijjTDpXzKjV5pPb3jU3PTBbfFzOT1A7zn5Ab4lN
BYmauHUmDo061GqAtuVLCtdfKA21flIj25KNEGga1xvgV73A/Ue2gdlaJgJm90Dm
cr0MpFEDmZkDlCM5+0T84s9nC2X/Ptx0Tz1G/YTTrt02B2CkhIayphF5NqVbnpLk
UDS6rHwDew4euIhFjsaMrYv1ZvJ8rL+EogATR6JcI56Eg4Juwmlwt0rvBcwgWmbo
DTQa1XNgn+PH9kjB4LzEjXa2KYvZI/dMnoHD+2LhQYGHtJaA0Rg=
=TpPd
-----END PGP SIGNATURE-----

--jiugrigsycillkps--

