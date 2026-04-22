Return-Path: <linux-man+bounces-5366-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eCx+BT6q6GnEOQIAu9opvQ
	(envelope-from <linux-man+bounces-5366-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Wed, 22 Apr 2026 13:00:14 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 7277C4450E5
	for <lists+linux-man@lfdr.de>; Wed, 22 Apr 2026 13:00:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3365A301D69E
	for <lists+linux-man@lfdr.de>; Wed, 22 Apr 2026 10:59:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 01B8F330B2D;
	Wed, 22 Apr 2026 10:59:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qJdO9aHd"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B6E4E3C13FD
	for <linux-man@vger.kernel.org>; Wed, 22 Apr 2026 10:59:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776855541; cv=none; b=DTnEycmUI2y33QQ8GW1A7gYp1YKMwwVsJRk0AmB6EC0OOkgzMY6R9+JTEC4z9oZ+q5KjAAcYzFABJH4X5HZIhlOutZbOIrk3tD2QeJomZzPooEMpRKwnHiEIx1gaH07gxiDammXrOQkDp4KokoWTkCZveMUFggAxabKOCqRQjoY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776855541; c=relaxed/simple;
	bh=jgxBNB+5qVYDOpvsiyV27gj78IFcbYCwKoO5EiHPNDU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=WpJVabBY7s9NLg+x3nFleWCWJjp2gf8ZIKt1BJZ79x8MBCK8pALR4i9+6cR2IRKONfu4koYdSScPBrEEYBYQ5rUKV/IPoh7L7HnoZg482vuF0wuYvbdpIuFeY60VzZ1LA8PvD7mIWmF3LdiJA04kY5KQQwr/m+ove118L5sBWDo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qJdO9aHd; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C3FC4C2BCB4;
	Wed, 22 Apr 2026 10:59:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776855541;
	bh=jgxBNB+5qVYDOpvsiyV27gj78IFcbYCwKoO5EiHPNDU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=qJdO9aHdfKZlRtL+0ysyO5AFj17ohgDCGjRGb57Z4LnIf0f45w/HpCrrLznGxSKPS
	 HKmWuAeenVFuBfXcgpAjWUDOINt4czU876Tkw3X9o5jRSU0mBgL06LvQUSoNoUC5M8
	 F9hpbwWcrN0T80yqMhTiqpCmPIpbWT6WVq0cbnS64IMlXLGU2OUkNELT4lCRx+V3NO
	 v/wgt2+eeIouPJh1XWw3kN98u4gc1RSBcqYLHiQCglQXtxcYH6mMV+XSrid03PU0vf
	 UXdeDu8Jqa5Dw0bWq/hzeJmavar/Ez0Q9jaCm6KwSF/+N9UZTDExxDPgHZLl0zkaqf
	 AUsZBggidjNDQ==
Date: Wed, 22 Apr 2026 12:58:57 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Zeno Endemann <zeno.endemann@mailbox.org>
Cc: linux-man@vger.kernel.org, Theodore Ts'o <tytso@mit.edu>
Subject: Re: Inaccurate description of statx(2) stx_blksize field?
Message-ID: <aeipj1_-xaB9Q-7y@devuan>
References: <c088a5a9-f415-4cd1-a12e-ca72910a9ac2@mailbox.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="r56ld6h3i3ksz6xr"
Content-Disposition: inline
In-Reply-To: <c088a5a9-f415-4cd1-a12e-ca72910a9ac2@mailbox.org>
X-Spamd-Result: default: False [-2.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	SUBJECT_ENDS_QUESTION(1.00)[];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-5366-lists,linux-man=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCPT_COUNT_THREE(0.00)[3];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[linux-man];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 7277C4450E5
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--r56ld6h3i3ksz6xr
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Zeno Endemann <zeno.endemann@mailbox.org>
Cc: linux-man@vger.kernel.org, Theodore Ts'o <tytso@mit.edu>
Subject: Re: Inaccurate description of statx(2) stx_blksize field?
Message-ID: <aeipj1_-xaB9Q-7y@devuan>
References: <c088a5a9-f415-4cd1-a12e-ca72910a9ac2@mailbox.org>
MIME-Version: 1.0
In-Reply-To: <c088a5a9-f415-4cd1-a12e-ca72910a9ac2@mailbox.org>

[CC +=3D Ted]

Hi,

On 2026-04-22T12:37:43+0200, Zeno Endemann wrote:
> Hi,
>=20
> Currently, the documentation of stx_blksize in statx says:
>=20
> > The "preferred" block size for efficient filesystem I/O.
> > (Writing to a file in smaller chunks may cause an
> > inefficient read-modify-rewrite.)
>=20
> I believe this is misleading; For ext4 this field is set
> to the ext4 block size, but in that context "block size"
> refers to the "smallest allocation unit" (which is chosen
> at file system creation time, see the mkfs.ext4 -b option)
> and not the most efficient I/O size that avoids the need
> for read-modify-rewrite.
>=20
> At least to my understanding, to avoid such a read-modify-
> rewrite you rather want to do writes in multiples of the
> page size (i.e. sysconf(PAGESIZE)), since that is the unit
> the page cache operates on.
>=20
> While in many cases ext4 will have a block size equal to
> the page size, I think it is strictly better to use the
> page size directly for that purpose. Or am I mistaken?

I don't know.  You should CC someone expert about file systems when
asking fs questions.


Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es>

--r56ld6h3i3ksz6xr
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmnoqeoACgkQ64mZXMKQ
wqliPA//d+pVCUsCrOUVWX1fnhmWq9wN6HMqny6z79xPO05bTivhnjL7mNjXorqf
EHnPGxhiE0D8quBz6vkgw0TVU44ipgayRcLeKcbeYEGXfX8AFPZBr6FB9fKRvZ0F
6RQkVXSGrPaWZtnltu/C2MNxKlTrB+OEzlPZy0mbnc+oDN2B+YsqsF5KGuOanX5b
dMc1yrjEpYJyVAsX+AC+L/vshtZYFXKd5jppcShgKaoD/CWfgK0/8L4jnYys9TdR
6UgI7cuQRQo8iNcge0HljQ8lexwZ2o5P0ZZhJqyY09X2JkY7IuEC21Yiy1aa5T6u
KyHqii1EoOJGq3lvKIRoVPFLvXMjB/HfA9btiaOJO9jWqX4R05CdftfZvNy2D18z
iuCq5MAb7L7JqInqAPYoMfiIfre5MlMPkxTqRP1iYsBryBKGvOgIf66Pv4XDvwmp
cwHtZogudU5RPwuJKZ2TH5brvZo8sw7lTAYUQYGOuvYQgsceQZETCyAupPf3iJmx
90HP1TWn+3ntWYUkMYO4yrRgAeZfOPRNSgVLKjJA3JPBANXG8PAcE2oBPVlbZDHg
QLD6rls5xBk5rjCZxE/eWUkSz2kF+HdDgV9biyqxxr4pLKJkEDhX3MAKgntYAyLt
pxX/GiwHhvFt/zFWzSNiXUTBYI4b/c9Pl1mbDOPpB1ZOdD6Z85E=
=PsNJ
-----END PGP SIGNATURE-----

--r56ld6h3i3ksz6xr--

