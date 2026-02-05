Return-Path: <linux-man+bounces-5040-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QFCOIv7OhGk45QMAu9opvQ
	(envelope-from <linux-man+bounces-5040-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Thu, 05 Feb 2026 18:10:22 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id F1655F5AF4
	for <lists+linux-man@lfdr.de>; Thu, 05 Feb 2026 18:10:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2AF27301BF50
	for <lists+linux-man@lfdr.de>; Thu,  5 Feb 2026 17:06:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 87214423A6C;
	Thu,  5 Feb 2026 17:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aQ+XRIvi"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B82A22173D
	for <linux-man@vger.kernel.org>; Thu,  5 Feb 2026 17:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770311194; cv=none; b=UQYpcW3AtllHYPPWRrQVhi71BL0qNrlIOKne76fkBxdrpxiVvzJ/J1FZGqdrP5QFCNLkiQL0DSGnNeM1HjK/mHVZTl056ue3UDpRVX9LZMcVpXmac2YOAmB1dat4xTwmFeq9y7uj9S0e6lIWBMtnH0e15YHaNuz84WUtbh2EwOA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770311194; c=relaxed/simple;
	bh=c9lidM8PIJIn+Q24aD4GM3XTmPwQorfATqYZU6PcY4o=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=k6Pe8N4ghC31xG2PnLEK+hOS5Ny/Ki6bkpQL0HxZVxEMYm9/lXp9eysm2EPTp69jHXeomss0eXl+JQBiuppIlWn+rsuPqWkgLbhh3UDg4073bshxu38asFDkN0rqDX+Fwp2vOBjAU5mYN6hrPFZA0IPey3VPa5CLStM9XzxSlGc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aQ+XRIvi; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 43E48C4CEF7;
	Thu,  5 Feb 2026 17:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770311193;
	bh=c9lidM8PIJIn+Q24aD4GM3XTmPwQorfATqYZU6PcY4o=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=aQ+XRIviw7nZY+YgoOiM8uXT234IQYS08YGcYgKq8i2woADsA7NnAU0gFuxHDXf5S
	 wDToQ8EDGNG65P/EJ7sf6bpfU4YZiXfAX+7QrL1dsIg4iWQJkJpe94DLSZUu7AR/6o
	 yWAFvCg7AUjDKloYWxooF20NSK25wmFxU7MzpFlux1u/z91pYi0tgoipRud7o0dRMc
	 FKufQqQ/pUkk0zN21dvr9edd/aRkTUzwQ7vJ34Ps8FFS8EDnplaES47NGq8Onv4K38
	 ttzO+U+19274LWgBTeZ7njCe/yHH/Zvpo/bvNuWzFUs8kW1Yp57cWtiECgMgSeARqD
	 VACsalYva7Cmg==
Date: Thu, 5 Feb 2026 18:06:30 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Mark Harris <mark.hsj@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 1/2] man/man7/feature_test_macros.7: Add _ISOC23_SOURCE,
 _ISOC2X_SOURCE
Message-ID: <sbgelevvyalrfiev3jbmn46wlbgmpnxfj7p74yowroy3zpfhe2@hxlqwxq6faxf>
References: <c52b599edf72f3e536ff6a5b846232ab15bc83d7.1769581650.git.mark.hsj@gmail.com>
 <CAMdZqKHXSJE5ZfmJZcOZqEYx-6ZoE22tQji501o6Yyf-gHgogQ@mail.gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="4r4usqeyqho5r6xk"
Content-Disposition: inline
In-Reply-To: <CAMdZqKHXSJE5ZfmJZcOZqEYx-6ZoE22tQji501o6Yyf-gHgogQ@mail.gmail.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWO(0.00)[2];
	FREEMAIL_TO(0.00)[gmail.com];
	TAGGED_FROM(0.00)[bounces-5040-lists,linux-man=lfdr.de];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[linux-man];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,alejandro-colomar.es:url]
X-Rspamd-Queue-Id: F1655F5AF4
X-Rspamd-Action: no action


--4r4usqeyqho5r6xk
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Mark Harris <mark.hsj@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 1/2] man/man7/feature_test_macros.7: Add _ISOC23_SOURCE,
 _ISOC2X_SOURCE
Message-ID: <sbgelevvyalrfiev3jbmn46wlbgmpnxfj7p74yowroy3zpfhe2@hxlqwxq6faxf>
References: <c52b599edf72f3e536ff6a5b846232ab15bc83d7.1769581650.git.mark.hsj@gmail.com>
 <CAMdZqKHXSJE5ZfmJZcOZqEYx-6ZoE22tQji501o6Yyf-gHgogQ@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAMdZqKHXSJE5ZfmJZcOZqEYx-6ZoE22tQji501o6Yyf-gHgogQ@mail.gmail.com>

Hi Mark,

On Thu, Feb 05, 2026 at 09:01:34AM -0800, Mark Harris wrote:
> Ping on these 4 patches:

Yup; sorry.  I'm a bit busy with C Committee meetings and preparing the
next release for this or next week.  I'll be back to reviewing
non-trivial or non-urgent patches next week or so.


Have a lovely day!
Alex

>=20
> [PATCH 1/2] man/man7/feature_test_macros.7: Add _ISOC23_SOURCE, _ISOC2X_S=
OURCE
> [PATCH 2/2] man/man7/feature_test_macros.7: Drop _ISOC9X_SOURCE
> (https://lore.kernel.org/linux-man/c52b599edf72f3e536ff6a5b846232ab15bc83=
d7.1769581650.git.mark.hsj@gmail.com/T/)
>=20
> [PATCH v3 1/2] man/man3/timespec_get.3: Refactor to prepare for new time =
bases
> [PATCH v3 2/2] man/man3/timespec_get.3: Add ISO C23 time bases
> (https://lore.kernel.org/linux-man/ec8dfdc495cb8d58e945b370658c6945cb4243=
27.1769705123.git.mark.hsj@gmail.com/T/#u)
>=20
>=20
>  - Mark
>=20

--=20
<https://www.alejandro-colomar.es>
Use port 80 (that is, <...:80/>).

--4r4usqeyqho5r6xk
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmmEzgkACgkQ64mZXMKQ
wqlnsA//a/4m9nMAXZkpaKPMHeOxXs88mh+JEEeSqqBI6+X8WlzrvTsdoHKGC1Re
LOqN5nLxk4bNmDUuIbvfUJFx0zVRB/kZLHJqcn8YjCv12qkKiD0r58mWK4EoIqZT
r2ty4Dv1DuRb8EqtSWVM4DOTP1ZsGYt9I+YdPNbWOa+tkIhFhTZh14SOcTtF8jvo
6rv3BAwTeZQVzFjbDL3J7WoznfrjbVb4eX21c7/Zy18vOJWFsa4IYlTg2bEbfJJo
X7dF4Di44QipC3jZ62b5E0ldEN/fRZik8UvCIYQu8S/mv3nLT0nWHdM3gvjkTcbv
H1vFRTj1QJynGs8j5cWfeLreDBT1dOgF6te1eQOgQydSjEYLVDSyY6mBXqyF8x8/
U1p3CIv/SHAO4rsrHNf+c8jv2XUIEMTdx/6GaxpXZzYqP+dPSEqAz2UVo+IUyLTS
ZAKBfKUmFYtPzljLUDwUvNDAJqw+KnZsd0/nY15YEspgrDda7ccUd80+u9qB4bDA
m2OmrZvmFntpvWQl3cDIscN2+frcpQ4pIWhC4BV+Pynrp/CfOtBRBwq4Nlfvcin9
O/Nm1w1Tc7kTWJ3d1NwzzJeVFwO90MYCeOgDrMszq+4gN7SNj0+KXinvhpE3R8zu
Hk7PcrcKEwJuGX0/3OebUWV2xz/YkR5+gDNYXeZqY6uDAYHDwuk=
=sEbB
-----END PGP SIGNATURE-----

--4r4usqeyqho5r6xk--

