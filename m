Return-Path: <linux-man+bounces-5343-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QFaeNLl15GkXVgEAu9opvQ
	(envelope-from <linux-man+bounces-5343-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Sun, 19 Apr 2026 08:27:05 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 322BA4233D4
	for <lists+linux-man@lfdr.de>; Sun, 19 Apr 2026 08:27:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id DAC99301184C
	for <lists+linux-man@lfdr.de>; Sun, 19 Apr 2026 06:27:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9A68A309EEB;
	Sun, 19 Apr 2026 06:27:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nnJDuwBy"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DBA8A937
	for <linux-man@vger.kernel.org>; Sun, 19 Apr 2026 06:27:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776580022; cv=none; b=Y2nqK+AdnNkMm05hGnTf8fweOr/nHv00zm82cehN2PYzCIzCBzxKhjGiPo3WtWSfRCbQTWd7rE7ow09Y+e/nF6/kOgwe+R5E/EqpJ4wuukJPR5wV/oa42cbD0007uplGy0rA7ZJ/Uk6ZZpieJO2FxhnXzSVUf5tb33cklf/49pk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776580022; c=relaxed/simple;
	bh=uwjsF0iHwJBH84SkcpIg+j6+U+4qSyhwqMIOdBwrh1M=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=XPj40VOsZL31sE2OMk+Vly1l/2YtZ1EXXOD8tG2sW6xEGVf7rEHjB7DLQ3EOwMWVsWu/uvpp9ZA8ux9qwSXHRdHqE8358f+7zZIX3G7stLNRsIswG0Dykvc5mgVADILWQseBHslfjtTjllU1xb5aSMcQk3XiGnqG/mcvdVZdSSQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nnJDuwBy; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3F3F5C2BCAF;
	Sun, 19 Apr 2026 06:27:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776580022;
	bh=uwjsF0iHwJBH84SkcpIg+j6+U+4qSyhwqMIOdBwrh1M=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=nnJDuwBylv4yqx6mync+ldYN25UsBqD7elUoHiZ+7ecfomXqIeG+67NMnUJjFwnzS
	 NgoLnUbSHUBFBZSZvZQINQTfzeeHtNGmLTk/8Ga1E0kc3r0UYVNTKsaHMF+YBpsxjK
	 ympw+ONMQsdFdFM+Xh2PN68IRGCgbSXIT932qFO1ufbJyAQYX0QVYtglas99zCn10Q
	 cmnctOTCoVD1K+IOexfLqKf6IwzBrSBBnlXnYnUsR3oCQnJv5d5YczIsB4H1ndpOVI
	 PJw9zTHZjtZMQpXq4IVGX58jsdnC9L3xUZzmpdJjNIP1TjJ93teuToMrpCDtn5INz4
	 LgCw04UDYqN2w==
Date: Sun, 19 Apr 2026 08:26:58 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org, 
	"Dr. Tobias Quathamer" <toddy@debian.org>
Subject: Re: Example in mansectf(1) does not work in Debian unstable
Message-ID: <aeR03CiauIDQ0Lr-@devuan>
References: <aeRk4J-i7pnkrdke@meinfjell.helgefjelltest.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="zcok2oxabn7i5s4f"
Content-Disposition: inline
In-Reply-To: <aeRk4J-i7pnkrdke@meinfjell.helgefjelltest.de>
X-Spamd-Result: default: False [-2.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5343-lists,linux-man=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,vger.kernel.org,debian.org];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[linux-man];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 322BA4233D4
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--zcok2oxabn7i5s4f
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org, 
	"Dr. Tobias Quathamer" <toddy@debian.org>
Subject: Re: Example in mansectf(1) does not work in Debian unstable
Message-ID: <aeR03CiauIDQ0Lr-@devuan>
References: <aeRk4J-i7pnkrdke@meinfjell.helgefjelltest.de>
MIME-Version: 1.0
In-Reply-To: <aeRk4J-i7pnkrdke@meinfjell.helgefjelltest.de>

Hi Helge,

On 2026-04-19T05:15:12+0000, Helge Kreutzmann wrote:
> Hello Alex,
> while translating the man page, I noticed that the example does not
> work in Debian unstable:
>=20
> root@twentytwo:/# man -w strtol strtoul | xargs mansectf "NAME|SEE ALSO" =
| cat
> Binary file (standard input) matches
>=20
> (The first part works:
> root@twentytwo:/# man -w strtol strtoul
> /usr/share/man/man3/strtol.3.gz
> /usr/share/man/man3/strtoul.3.gz
> )

This is because Debian still compresses its pages, which is something
I urge everyone to reconsider in this decade.

We had this discussion a few months ago, and Colin hasn't said anything
yet: <https://lore.kernel.org/linux-man/aU1D0aL00gy1V-NX@devuan/>
I'll ping in that thread.


Have a lovely day!
Alex

>=20
> I put the Debian maintainer in CC, in case this is a Debian (only)
> bug, I could file a bug report there as well.
>=20
> Greetings
>=20
>          Helge
> --=20
>       Dr. Helge Kreutzmann                     debian@helgefjell.de
>            Dipl.-Phys.                   http://www.helgefjell.de/debian.=
php
>         64bit GNU powered                     gpg signed mail preferred
>            Help keep free software "libre": http://www.ffii.de/



--=20
<https://www.alejandro-colomar.es>

--zcok2oxabn7i5s4f
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmnkdasACgkQ64mZXMKQ
wqkIpRAAuDDYmXwtDP6Tiu9uVS2S/HRHX0ZLDYHQZvtae/7SBZrajgUMkNczZwIi
GYrU/0ZXVKZDrYh2fipWxNfu5u7NdaueA2v/0ugATYvNnWHAyTa/5/6vYaUv++z+
HdkgSCImdgbGHlODqirK+/w3Q/G+s8IkzQWpiOrktR68WG5u4cJaPTbSySii45uc
7pUwxvfiTolUyfJhmVcykjFXujN5nUUkNAsb8MhabzOuINzqtsed/yzOn20v3rwh
Ofk6qv/5X4asAAKShb+ezJyKoBvITn8vAas+FiTz6ex0+2mgLbtVu4TShQvjvaUp
roImXxR6eemeOFA1xIiojF28E7xEXVdP/rJuFu60tQ9FkZl5KtHJdPl9bPh444P2
JxvSxNNZLpdQpS6pHT4+ERGSKHbSxD++T1MvfYdPFQfdwE2uQz980Yswm77PUB5i
ZZo3cYlqQNLWzbwGINk6nuRKqP95EeGnzlbf+8IrJ5E6BssvRGHGC9wRvXcPy/fH
2qqd3JGxyWAns7/z6CfYsGaEHQv2dDvlS43mlWPpoVyZVZblYreWjysz4tzIOz2Q
WMELObQtmgB8BnzwjZppjrlWlmi9V7prX+JV83jM4W/DEviby9tW+0PTWAS9UNJH
2Cp5yyVwSOkk3RTnkOpR8LWIL3rm60EOMBPHb+EZb9te/u9/zpc=
=Rzhh
-----END PGP SIGNATURE-----

--zcok2oxabn7i5s4f--

