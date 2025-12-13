Return-Path: <linux-man+bounces-4407-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id D1FEACBB25A
	for <lists+linux-man@lfdr.de>; Sat, 13 Dec 2025 19:59:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 16A35300ACC9
	for <lists+linux-man@lfdr.de>; Sat, 13 Dec 2025 18:59:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D55802F291B;
	Sat, 13 Dec 2025 18:59:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=alyssa.is header.i=@alyssa.is header.b="IaWrjVO4";
	dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b="ZO2l4oId"
X-Original-To: linux-man@vger.kernel.org
Received: from fout-a6-smtp.messagingengine.com (fout-a6-smtp.messagingengine.com [103.168.172.149])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0F511D7E42;
	Sat, 13 Dec 2025 18:59:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=103.168.172.149
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765652356; cv=none; b=fWAxrYdC9WHnRvhZDPYRBNebR7noMwdIDtwGvcz5sx4SH94Pwmrz/AAIZHrpSSwzAMD5nKkzoSdpZX06q+Ws6TW1iIzzVbOmamIZdWVLZ6NLkeOEKdwZRVH/kcvMJH0akW7ht/jgFZv2MbR3vOXAd8MYs5ELUlaWJP5eTdKN+ic=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765652356; c=relaxed/simple;
	bh=nEYWSEAFqCI2UwhGaCknLnmjcQ7vTDYrcr0mSh1Rs3I=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=V64FcE5+FIIdKuTz3QjSDT44Ref5UZsm4mBSXZ4u2YOfoPXouN2VzF6Mx9TrdoR86sq8nDk5IJkSEZ8FqgPsz7kawHC/CRiYqrLoemE9gNOq+O3yXcjsVAXSbHrAyiM54OoIWtvuZWlGerUGl4AqvOE4sR9yxWZtswsLX4V5ZSE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=alyssa.is; spf=pass smtp.mailfrom=alyssa.is; dkim=pass (2048-bit key) header.d=alyssa.is header.i=@alyssa.is header.b=IaWrjVO4; dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b=ZO2l4oId; arc=none smtp.client-ip=103.168.172.149
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=alyssa.is
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=alyssa.is
Received: from phl-compute-06.internal (phl-compute-06.internal [10.202.2.46])
	by mailfout.phl.internal (Postfix) with ESMTP id E24F8EC05ED;
	Sat, 13 Dec 2025 13:59:12 -0500 (EST)
Received: from phl-mailfrontend-01 ([10.202.2.162])
  by phl-compute-06.internal (MEProxy); Sat, 13 Dec 2025 13:59:12 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alyssa.is; h=cc
	:cc:content-type:content-type:date:date:from:from:in-reply-to
	:in-reply-to:message-id:mime-version:references:reply-to:subject
	:subject:to:to; s=fm3; t=1765652352; x=1765738752; bh=kGAV9jcJrp
	GQU/cXq7dAuTTO+KE/V8gEtFxHYPQfwBs=; b=IaWrjVO4IMCNdX7aOVFgFPmjV5
	dllQQENPP7E/mBYD1Ek4ItgWdBr8ocrAmV7DVLAxyuc41dPr9EcW+9WV1+KCusTL
	0uluYKCRu8bRjO5YfcIbRZ9CGKiUKKW4KmT/g5e0T9jSAm6iCrZmZfpCXuz2Ip2U
	mwIhESgeneigLS/U0zazo1014ZT/EaIYg53DDNmK9EgChRWyfrs+e2OWnSCgseIa
	wCzVYEL+vn6rjMp/r8M3ipt7KQDjEu5LqDgv6RkB08mWRHN+tAZakLYGoJRZfJ3M
	S0fra+MXUOJcVwCaBxeM03+W00839aCQQS7cjPsklwvl7enyd5ziwC5eiG+Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:subject:subject:to
	:to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=
	1765652352; x=1765738752; bh=kGAV9jcJrpGQU/cXq7dAuTTO+KE/V8gEtFx
	HYPQfwBs=; b=ZO2l4oId4BJcyKQxGk3nWobGNcr+s+xIiAhuuMaVpapWET2j6eW
	LT9/Y7dNBllUkg9QLEY7QCZ7vrpgfNyyXNPXme2AoEfhYedT05EyziFcj3xCtdTb
	KQI30qi+lcnDgfdiw7XO3QKVqYZj38SDB/YklIgQ3YiXGP+TbSPUvIy0I9sr9BEp
	W/OU9A59Z9kToZ6DC7OXLF7efslifiQHPWRRWTkuzQL3WKfA1eUqcBPUiwySSyQ8
	OoL3BAX2ycpsvP8l6jLwhCKDHURU1eARroYJ+d2j+bWg2lvQJqHdbUKWUg0iHhlU
	1B1kL0/8vLU0M1U2ELELPdv+FdoZEuN8AfQ==
X-ME-Sender: <xms:gLc9aZL3k8ySWm5aLRBRAiBss0btp3oX-AbVmBp7jLj6qdmSPDpgLA>
    <xme:gLc9aY3WdtkGaHrQAyjyfZVe6ibQoJCF2tUextApREjR87X-CboVLKy8FyoppWVwH
    7AzQCDGq_2FQUpMENsxFYWtB0L14YAMm0K01a__-uCrnVdmkbfj8Q>
X-ME-Received: <xmr:gLc9abhiG7VOLWAqnM2rVmVd7Ikd3GdZ8YaBgsfhh8ohA8wiYo9sI0obJjpfMQm7fA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefgedrtddtgdefudekgecutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpuffrtefokffrpgfnqfghnecuuegr
    ihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjug
    hrpefhvfevufgjfhffkfggtgesghdtreertddttdenucfhrhhomheptehlhihsshgrucft
    ohhsshcuoehhihesrghlhihsshgrrdhisheqnecuggftrfgrthhtvghrnhepieduffeuie
    elgfetgfdttddtkeekheekgfehkedufeevteegfeeiffetvdetueevnecuvehluhhsthgv
    rhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhephhhisegrlhihshhsrgdrih
    hspdhnsggprhgtphhtthhopeehpdhmohguvgepshhmthhpohhuthdprhgtphhtthhopegr
    lhigsehkvghrnhgvlhdrohhrghdprhgtphhtthhopegsrhgruhhnvghrsehkvghrnhgvlh
    drohhrghdprhgtphhtthhopehlihhnuhigqdhkvghrnhgvlhesvhhgvghrrdhkvghrnhgv
    lhdrohhrghdprhgtphhtthhopehlihhnuhigqdhmrghnsehvghgvrhdrkhgvrhhnvghlrd
    horhhgpdhrtghpthhtohepvhhirhhoseiivghnihhvrdhlihhnuhigrdhorhhgrdhukh
X-ME-Proxy: <xmx:gLc9aRXI5yw5hXm3Tcauaca53ZBDfqzyX9a9xaPwt0lzygQIZoQ8Fw>
    <xmx:gLc9aSXeRGwlZeyMrQkV29LmXd6FRZBXbqSxTvhtkfopEL6Xpbzgog>
    <xmx:gLc9aZjyM2jGNCb8L49Es4135MzEtg0hfdZCB4hzoBqiQlOYpaJP5w>
    <xmx:gLc9aVZRO4wxDFN0LNBX1FQzL40jQxHfSS4yGjVqvUKNyR5xunqLlg>
    <xmx:gLc9adCse4xp3sznAs9mAI2fd2WJclCUzGdYvENlkSKiBLXPxmsw0uLC>
Feedback-ID: i12284293:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sat,
 13 Dec 2025 13:59:12 -0500 (EST)
Received: by fw12.qyliss.net (Postfix, from userid 1000)
	id EC40578F6F74; Sat, 13 Dec 2025 19:59:05 +0100 (CET)
From: Alyssa Ross <hi@alyssa.is>
To: Alejandro Colomar <alx@kernel.org>
Cc: Christian Brauner <brauner@kernel.org>, Al Viro
 <viro@zeniv.linux.org.uk>, linux-kernel@vger.kernel.org,
 linux-man@vger.kernel.org
Subject: Re: [PATCH] man/man2/setns.2: clarify type of nsfs fd required
In-Reply-To: <iddnfcdrppivtq53zrajuiidfmg6sw6bxdg57j2ielnnor4mlk@i7ddvvhfu7dm>
References: <20251213175853.555517-1-hi@alyssa.is>
 <iddnfcdrppivtq53zrajuiidfmg6sw6bxdg57j2ielnnor4mlk@i7ddvvhfu7dm>
Date: Sat, 13 Dec 2025 19:59:04 +0100
Message-ID: <87qzsy5htz.fsf@alyssa.is>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-=";
	micalg=pgp-sha512; protocol="application/pgp-signature"

--=-=-=
Content-Type: text/plain

Alejandro Colomar <alx@kernel.org> writes:

> Hi Alyssa,
>
> On Sat, Dec 13, 2025 at 06:58:53PM +0100, Alyssa Ross wrote:
>> I was surprised to discover than an O_PATH file descriptor was
>> insufficient.
>
> How did you discover it?  Could you please link to relevant information
> (or kernel sources)?

By trying it!

Presumably it's the fd_empty() check at the beginning of the syscall
implementation in nsproxy.c.

>> Since the mode of nsfs files is always 0444, tell
>> callers to always a file descriptor opened for reading.
>
> Missing 'use'?

Yes.  Feel free to add it.

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEARYKAB0WIQQGoGac7QfI+H5ZtFCZddwkt31pFQUCaT23eAAKCRCZddwkt31p
FbScAQDIsOCpRdX43v6dqChYFvnSEgc2YAZNxVxR5JdmDFQNgAD+KbmE3vT6ie9o
2h6Wcc9KTs89L+OblOUfg/wqDYCsUw0=
=qkaZ
-----END PGP SIGNATURE-----
--=-=-=--

