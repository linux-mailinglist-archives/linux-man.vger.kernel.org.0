Return-Path: <linux-man+bounces-5022-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SG60K0dSgmk8SQMAu9opvQ
	(envelope-from <linux-man+bounces-5022-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Tue, 03 Feb 2026 20:53:43 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 59F90DE46F
	for <lists+linux-man@lfdr.de>; Tue, 03 Feb 2026 20:53:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id DA9A53033AB8
	for <lists+linux-man@lfdr.de>; Tue,  3 Feb 2026 19:53:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6B81035CB70;
	Tue,  3 Feb 2026 19:53:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=alyssa.is header.i=@alyssa.is header.b="PHaB+n9x";
	dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b="saZPFIth"
X-Original-To: linux-man@vger.kernel.org
Received: from flow-a3-smtp.messagingengine.com (flow-a3-smtp.messagingengine.com [103.168.172.138])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 872287261C;
	Tue,  3 Feb 2026 19:53:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=103.168.172.138
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770148419; cv=none; b=OGMUOigWi2gNP4EiLlXRa5raPxxkhNU5qLb/z8CfGnEnwZXyQe/MLhOJt1Qa93J6YJETZBT7W6ea8ROaSVbpWr2KEGYEwmAPHuOliZk8kyh2iw/xhNivA/UIP+7Lh0TJ4+EasYjNLcwpyirctW/VSBGx9HN5AYd6MDs/9s3kh2g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770148419; c=relaxed/simple;
	bh=mJCmDWAy6ppJ/J5xNj9UozjIidu03a8sGhbWt7WDkcw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=lIfL6yMB9xv0sjXsEamHmsxekQqEosbI5QLKIR7I84q+tY+H0D9nkGfN/eKN5METyGVpazUaqZNnoA6RJwyISRsz6nWW7z+0Ku2JRWXXTyXq5DriubfgxuByH5r+bbf/5nib2fC1AgSkfzmbuyY4bNDuSCfkKALh+6VFWDYCjEc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=alyssa.is; spf=pass smtp.mailfrom=alyssa.is; dkim=pass (2048-bit key) header.d=alyssa.is header.i=@alyssa.is header.b=PHaB+n9x; dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b=saZPFIth; arc=none smtp.client-ip=103.168.172.138
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=alyssa.is
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=alyssa.is
Received: from phl-compute-08.internal (phl-compute-08.internal [10.202.2.48])
	by mailflow.phl.internal (Postfix) with ESMTP id C23BF138053B;
	Tue,  3 Feb 2026 14:53:36 -0500 (EST)
Received: from phl-frontend-04 ([10.202.2.163])
  by phl-compute-08.internal (MEProxy); Tue, 03 Feb 2026 14:53:36 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alyssa.is; h=cc
	:cc:content-type:content-type:date:date:from:from:in-reply-to
	:in-reply-to:message-id:mime-version:references:reply-to:subject
	:subject:to:to; s=fm2; t=1770148416; x=1770155616; bh=mJCmDWAy6p
	pJ/J5xNj9UozjIidu03a8sGhbWt7WDkcw=; b=PHaB+n9xJBLCsZarsIVbgAlHFT
	VzTqJSFvASHKV5ZnzESbThEOkpZU6ZaDcjB0fTI65QAeh9lk+obnvb/Dns109xeA
	oFvQVDUvShLmnwu8PCGTuhW/ydWImONdwKkHEExxv5k086SLP+8VzhoAgi9vZdhb
	2npBgJ/Un0ACzk52nBzK8mn8kvt3/QREPXZS4xDTetm0E1nt03Ma4vK7l8AB4WHL
	moh8STnVcGATakG8r8gkEmGrW1LqoNG5bz5kVSu1SNaoFSw6Cj9a21zePx0H/7y5
	QjoXPqgkwV0AXvXKkcJp5bK2Drik27eW3T2ckiLUFwws89AF2Fa8MOA10eOA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:subject:subject:to
	:to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=
	1770148416; x=1770155616; bh=mJCmDWAy6ppJ/J5xNj9UozjIidu03a8sGhb
	Wt7WDkcw=; b=saZPFIthe3wxPXQ4pgvtvDec2ouQ3YD4SHk50/wkDq6nHUsaMAb
	vCOKw1eTBInzfdEv5b2wBKcLdZ3+h55wHWvRu1W43cD0QPyc9VrimIZRq6Ztrzwt
	dcins3DfinM5iBS8zTsTc/xX6bg8Cbsg6XXAtdxZcHWL9TwiCvYZ5rgnCvFf4sTj
	uPeAhT2wtDsddDSGfaIPzBGbuCscg/uh5XLqlAsmIlighb6tSlM64FldR6J5y5Yu
	8TOyxfdl3WkLgDjXw+QSrqQg6pq6/O9EK/hDb8zfebHumdhNH4NvTCnRKc7YFg2e
	Y/9QllQLS+2S1NnYEL+yWfuqWOL/tJqh2nQ==
X-ME-Sender: <xms:QFKCaZely3KE0NND0-mYesipRZ1Wc33Wy2MzmFn3qQwe_eHlcg7oaQ>
    <xme:QFKCaWQmGP-icNluU6QjkvAVlqXHTdibXNuI9aX2Mzn6PM7OXNr-sn_T3qxDcLbyD
    uGGL7u1KAFDkgucAAyq41tY5F1pyKVE8Q-X9OrTYLgqejFGvRm9lg>
X-ME-Received: <xmr:QFKCaYvugv-0VFh1xKKhs9zAT-RYcJ-S63xh8LhesgehQHuDkkkd69unLnxfhHB0>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefgedrtddtgddukedtleefucetufdoteggodetrf
    dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceu
    rghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujf
    gurhepfffhvfevuffkfhggtggujgesghdttdertddtvdenucfhrhhomheptehlhihsshgr
    ucftohhsshcuoehhihesrghlhihsshgrrdhisheqnecuggftrfgrthhtvghrnhephfefge
    fghfdvjeekvdfggfelffdtheevheeuhfeuteduheelvdffudejvdejtedvnecuffhomhgr
    ihhnpegrrhgthhhlihhnuhigrdhorhhgpdhkvghrnhgvlhdrohhrghenucevlhhushhtvg
    hrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehhihesrghlhihsshgrrdhi
    shdpnhgspghrtghpthhtohepjedpmhhouggvpehsmhhtphhouhhtpdhrtghpthhtohepgi
    ihphhrohhnrdhglhhpkhesghhmgidruggvpdhrtghpthhtohepgihiuhhjihgrnhhfvghn
    gheshhhurgifvghirdgtohhmpdhrtghpthhtoheprghlgieskhgvrhhnvghlrdhorhhgpd
    hrtghpthhtohepnhhitgholhgrshdrsghouhgthhhinhgvthesohhsshdrtgihsggvrhdr
    ghhouhhvrdhfrhdprhgtphhtthhopeguhhhofigvlhhlshesrhgvughhrghtrdgtohhmpd
    hrtghpthhtoheplhhinhhugidqmhgrnhesvhhgvghrrdhkvghrnhgvlhdrohhrghdprhgt
    phhtthhopehlihhnuhigqdhsvggtuhhrihhthidqmhhoughulhgvsehvghgvrhdrkhgvrh
    hnvghlrdhorhhg
X-ME-Proxy: <xmx:QFKCafeQHVTWTjCqh1tyfvFFuf38nNapEvDVN2ZcO6w9Jl1CgvLGmQ>
    <xmx:QFKCaaYxx15VJxi_KhSbYkAmuoTPmwYAQIVtcNe3L_AYEBOjQDeCzA>
    <xmx:QFKCaZZFK-v0q8NbFLgFZSil_WCIjW1W_9DIe_bsvp7YY0BUfLYVhg>
    <xmx:QFKCaXK1_L74n0NQOMyv0DAuG_8Q6EXY7gJz8GvhCa_ZhRivC3qXbQ>
    <xmx:QFKCaXhQpanFjUpDyZNIj312riO7_sQDw6PI0hIXktIY69Ts__ifV71N>
Feedback-ID: i12284293:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Tue,
 3 Feb 2026 14:53:36 -0500 (EST)
Received: by mbp.qyliss.net (Postfix, from userid 1000)
	id 569E773D9A1F; Tue, 03 Feb 2026 20:53:33 +0100 (CET)
Date: Tue, 3 Feb 2026 20:53:33 +0100
From: Alyssa Ross <hi@alyssa.is>
To: Alejandro Colomar <alx@kernel.org>
Cc: Heinrich Schuchardt <xypron.glpk@gmx.de>, 
	David Howells <dhowells@redhat.com>, Nicolas Bouchinet <nicolas.bouchinet@oss.cyber.gouv.fr>, 
	Xiu Jianfeng <xiujianfeng@huawei.com>, linux-security-module@vger.kernel.org, linux-man@vger.kernel.org
Subject: Re: [PATCH] man/man7/kernel_lockdown.7: remove Secure Boot untruth
Message-ID: <aYJSDDwK1T9xxca1@mbp.qyliss.net>
References: <20260203195001.20131-1-hi@alyssa.is>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="bzvxaqhd2rk7ywxu"
Content-Disposition: inline
In-Reply-To: <20260203195001.20131-1-hi@alyssa.is>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[alyssa.is:s=fm2,messagingengine.com:s=fm3];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FREEMAIL_CC(0.00)[gmx.de,redhat.com,oss.cyber.gouv.fr,huawei.com,vger.kernel.org];
	DKIM_TRACE(0.00)[alyssa.is:+,messagingengine.com:+];
	DMARC_NA(0.00)[alyssa.is];
	TAGGED_FROM(0.00)[bounces-5022-lists,linux-man=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,messagingengine.com:dkim,archlinux.org:url,mbp.qyliss.net:mid];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[hi@alyssa.is,linux-man@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[linux-man];
	RCPT_COUNT_SEVEN(0.00)[7];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 59F90DE46F
X-Rspamd-Action: no action


--bzvxaqhd2rk7ywxu
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Subject: Re: [PATCH] man/man7/kernel_lockdown.7: remove Secure Boot untruth
MIME-Version: 1.0

On Tue, Feb 03, 2026 at 08:50:01PM +0100, Alyssa Ross wrote:
> This is true for Fedora, where this page was sourced from, but I don't
> believe it has ever been true for the mainline kernel, because Linus
> rejected it.
>
> Link: https://bbs.archlinux.org/viewtopic.php?pid=2088704#p2088704
> Link: https://lore.kernel.org/lkml/CA+55aFzYbpRAdma0PvqE+9ygySuKzNKByqOzzMufBoovXVnfPw@mail.gmail.com/
> Fixes: bb509e6fc ("kernel_lockdown.7: New page documenting the Kernel Lockdown feature")
> Signed-off-by: Alyssa Ross <hi@alyssa.is>

Just noticed there's a long-open bug for this as well, so additionally:

Closes: https://bugzilla.kernel.org/show_bug.cgi?id=213577

--bzvxaqhd2rk7ywxu
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRV/neXydHjZma5XLJbRZGEIw/wogUCaYJSPAAKCRBbRZGEIw/w
otIUAQDLIlj87OPwm/ytkiqG2Z+4Q9GiQd3+ILBDIfdzRnnd1AD+MTC8b8iuRVVP
KnJOAyWQd6U3YvSaCnck1rYiuCfnhAU=
=VOtB
-----END PGP SIGNATURE-----

--bzvxaqhd2rk7ywxu--

