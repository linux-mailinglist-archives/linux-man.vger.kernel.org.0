Return-Path: <linux-man+bounces-5372-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eMtYO5T/6Gl5SgIAu9opvQ
	(envelope-from <linux-man+bounces-5372-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Wed, 22 Apr 2026 19:04:20 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E08A9449225
	for <lists+linux-man@lfdr.de>; Wed, 22 Apr 2026 19:04:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 546C8300602C
	for <lists+linux-man@lfdr.de>; Wed, 22 Apr 2026 17:04:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E8950383C79;
	Wed, 22 Apr 2026 17:04:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H1DpzBHm"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ABD6938238F;
	Wed, 22 Apr 2026 17:04:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776877449; cv=none; b=H+sh/rEBge/heDqqthWz/OH1Al1xTmJ+hP45yOK84f8q3tPuYI0obDFP9RfrPYl82YIom4YYkePrQmyeIpJBMc0A3qokKq6xy7zS7PzOtdnqpwI44tQZl1daHdU2UZZ6q6gH/VJ07NgbqpzOym7N0ZYlWnUTg3DbHw1nC+j0cXw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776877449; c=relaxed/simple;
	bh=WN4++GZzedWt8KWBFQNN7PvPJc5i06L9DJHYqC/gdGA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=sIyX/a4MasILd1sg1ZEbWMfrfC/OfO5WeFJga7/w13XoaR4mJOLrR8Obbfg1i9G1xNhTvYPiKzMFl+AdMD6jRaDhXtsrlPiMA9aj+mN4ux94lSTI8oNKgbm8kFBZsI5zE4P9AViKl/Dd6IdQTcMIdo217t5E8+/J/FtNXihYd1I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H1DpzBHm; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6BABCC19425;
	Wed, 22 Apr 2026 17:04:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776877449;
	bh=WN4++GZzedWt8KWBFQNN7PvPJc5i06L9DJHYqC/gdGA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=H1DpzBHm13lJJKQf3puh8DWgleHiak18U/2K2GMx7HeYd6B6XMNYcRS5eD5AI3fdU
	 UmEKVX7iKdsTc12hqMoZMGu3w9AdJUwGcznGPj6HgRRL/MX0vh2r1pQULnvvxX8OmV
	 id58n0+E4KmdFJm5a56onDE7x4iLo6uIe0btFe/MXJa7hxMO1LlZmSVIfWdLks8gjG
	 o4dXK0CenSWnhskWcxIjQzD3xCvt4B8+MLotTo5Nrxli9LRDGVsBmsrNkeV/nElume
	 xWszNeCJzs4hSrnzG2og68WT+9Br4iKmgkC/tmblhbHf/BA+urHEBHclSmx+ey9fH7
	 DweUPQBpr3wvQ==
Date: Wed, 22 Apr 2026 19:04:05 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Cheng-Yang Chou <yphbchou0911@gmail.com>
Cc: linux-man@vger.kernel.org, sched-ext@lists.linux.dev, 
	Tejun Heo <tj@kernel.org>, David Vernet <void@manifault.com>, 
	Andrea Righi <arighi@nvidia.com>, Changwoo Min <changwoo@igalia.com>, 
	Ching-Chun Huang <jserv@ccns.ncku.edu.tw>, Chia-Ping Tsai <chia7712@gmail.com>
Subject: Re: [PATCH] man7, man2: document SCHED_EXT policy
Message-ID: <aej-qt0anWLqaSFK@devuan>
References: <20260412181743.276652-1-yphbchou0911@gmail.com>
 <aejvcpOKmAxCnJQV@devuan>
 <20260423003214.G1987@cchengyang.duckdns.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="emnodr3iolwnld5b"
Content-Disposition: inline
In-Reply-To: <20260423003214.G1987@cchengyang.duckdns.org>
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.linux.dev,kernel.org,manifault.com,nvidia.com,igalia.com,ccns.ncku.edu.tw,gmail.com];
	TAGGED_FROM(0.00)[bounces-5372-lists,linux-man=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	MAILSPIKE_FAIL(0.00)[2600:3c15:e001:75::12fc:5321:query timed out];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[linux-man];
	RCPT_COUNT_SEVEN(0.00)[9];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,alejandro-colomar.es:url]
X-Rspamd-Queue-Id: E08A9449225
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--emnodr3iolwnld5b
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Cheng-Yang Chou <yphbchou0911@gmail.com>
Cc: linux-man@vger.kernel.org, sched-ext@lists.linux.dev, 
	Tejun Heo <tj@kernel.org>, David Vernet <void@manifault.com>, 
	Andrea Righi <arighi@nvidia.com>, Changwoo Min <changwoo@igalia.com>, 
	Ching-Chun Huang <jserv@ccns.ncku.edu.tw>, Chia-Ping Tsai <chia7712@gmail.com>
Subject: Re: [PATCH] man7, man2: document SCHED_EXT policy
Message-ID: <aej-qt0anWLqaSFK@devuan>
References: <20260412181743.276652-1-yphbchou0911@gmail.com>
 <aejvcpOKmAxCnJQV@devuan>
 <20260423003214.G1987@cchengyang.duckdns.org>
MIME-Version: 1.0
In-Reply-To: <20260423003214.G1987@cchengyang.duckdns.org>

Hi Cheng-Yang,

On 2026-04-23T00:46:44+0800, Cheng-Yang Chou wrote:
> Hi Alejandro,
>=20
> On Wed, Apr 22, 2026 at 06:02:49PM +0200, Alejandro Colomar wrote:
> > What's the reason for this weird formatting of the source code?  At this
> > point I wonder if this was generated by AI.
> >=20
> > Please take into account 'CONTRIBUTING.d/ai'.
>=20
> Okay, after reading the AI policy doc carefully, I've decided to drop=20
> this patch. I used AI to help with the formatting since I'm not familiar
> with the rules here.
>=20
> I didn't realize this was strictly forbidden here, my apologies :/
> Sorry for the noise, and thanks for your time!

No problem.  If you write it from scratch again, I'd welcome the patch.
If you follow the surrounding style, it shouldn't be too difficult.
It's intimidating at first, but the language is quite simple.  If you
don't understand much the man(7) language even after trying, I can help
format it myself with a decent draft.  Just let me know what you want to
do.


Cheers,
Alex

>=20
> --=20
> Cheers,
> Cheng-Yang
>=20

--=20
<https://www.alejandro-colomar.es>

--emnodr3iolwnld5b
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmno/4QACgkQ64mZXMKQ
wql7Tg/+OjGzYzsObDCdyskRpmCTjb+LHmaUQUJhblQg5352Y64pHQ/dpRxnUhZ9
uNyP1X2rue2+fucR3JbpBQxQ2t2rsraCrii5NlXYctn3HQqfl2DGoj/Q5m0J4+uR
QcTcw2X4pTuqmTsdlvMABYQoeAgHHv17BpZXlZ9MYyx08hpV1KOkoaqlxEzFJdkc
R6cCve+8QqQ7y5NjE0oC7Vn14mo0UyC2pmg0/ZKclCN8ibxw9QZ0eBT2sSdQwaja
NrPg5ZwN3JjZJDP2j293W2vEUxs/8K4iMVCIOfT/q/pEJh8MrX/mNa2mh0ogtyc9
mw7I+N+5dJaTfRY6jZA8ScRlbeC7i2QGni6Cdp4LzC7NeVIk+jTwddyeeGiBorvJ
68z8YlXnjjJu618AowwGSRyxCYQHuvseL1xagym6T+s6rrgRRmEGZKteIZg79uAZ
EurenVDgUhRulHiszJePIhrbeyOwTd3d2j/8Vi7X03igL2Sd4FDZqi+pCrlhjShT
TmihrK1jWfqXeDWHV4bb38+s0OEGB3HlJyKFagOa/QDNfOSGhJdb/N2H21d7ihbz
42l2uzmhmZZRVoZhRD1D9IK/0CDxQFU3TObIVkM5pmf/ULULWeMdF0LZDhM6vIa+
r0w38eDoCp4ErCheVSlWyvcnbB136Vc8nnCqG7DDf3R3kMCr3bk=
=/J+W
-----END PGP SIGNATURE-----

--emnodr3iolwnld5b--

