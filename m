Return-Path: <linux-man+bounces-3136-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id B774DAD5A25
	for <lists+linux-man@lfdr.de>; Wed, 11 Jun 2025 17:19:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E7C6C1BC7245
	for <lists+linux-man@lfdr.de>; Wed, 11 Jun 2025 15:13:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6384A19FA92;
	Wed, 11 Jun 2025 15:11:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=locrian.net header.i=@locrian.net header.b="cFDof+7y";
	dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b="K2iQxsFX"
X-Original-To: linux-man@vger.kernel.org
Received: from fhigh-b7-smtp.messagingengine.com (fhigh-b7-smtp.messagingengine.com [202.12.124.158])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04E19195808
	for <linux-man@vger.kernel.org>; Wed, 11 Jun 2025 15:11:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=202.12.124.158
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749654717; cv=none; b=Oh02fGav4ZM21su14JVT+OD9J2Tknc0vod6vPbqEOPjcjbkpLgcyvlPw+moUErm3tKr/aXrF18ToKOQclAxSC8YzMLe59iUSNVP18Z4FFo6aorytIql2SmK860wjMsTU7StLBXWb+ZFhFaXwh63OaUcagy7Z0NkcC58ouwVfp58=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749654717; c=relaxed/simple;
	bh=+GBGEah8uhG1qfwZVU+Exe8U2x7OX50EE7sMUOVpC1c=;
	h=MIME-Version:Date:From:To:Cc:Message-Id:In-Reply-To:References:
	 Subject:Content-Type; b=fNNDvE+RvDXaSf3xOnEjaBn4WVwH7phaAycbwwFPLRA73kjx1pJu/gnxVcA3UEbsCV9fJEbd6aQ+XBwBVvJUo9e0FqNn+Ds5qP5gwZkmPD+5+b3w4w3q68OwqhJ9xVbgw67mFg96Nl1tDjpx4t1sKpqpXSPC5FYl6rDiRc0vLm0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=locrian.net; spf=pass smtp.mailfrom=locrian.net; dkim=pass (2048-bit key) header.d=locrian.net header.i=@locrian.net header.b=cFDof+7y; dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b=K2iQxsFX; arc=none smtp.client-ip=202.12.124.158
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=locrian.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=locrian.net
Received: from phl-compute-05.internal (phl-compute-05.phl.internal [10.202.2.45])
	by mailfhigh.stl.internal (Postfix) with ESMTP id 045EC25400EC;
	Wed, 11 Jun 2025 11:11:51 -0400 (EDT)
Received: from phl-imap-06 ([10.202.2.83])
  by phl-compute-05.internal (MEProxy); Wed, 11 Jun 2025 11:11:52 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=locrian.net; h=
	cc:cc:content-transfer-encoding:content-type:content-type:date
	:date:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to; s=fm2; t=1749654711;
	 x=1749741111; bh=wv4pLXop2n8rxvtbk0chKjgyahZfn9ESSduvuEkY1GM=; b=
	cFDof+7yN2zAe3pfnO278AEdzpaxnSNHGUBNSomvPJO/z2c0emp9g/VSu3wljuL1
	iXUhcsKL8bO7UmjrfhORmekAXWeLP1+bqy/xaF+Di3yNL1j1b/Dj+hllT8imFXIB
	wEcEQ8sBww2a7m3wGVjWF8VwY1BlS/hDWqJJC7bV0bci2YSvOkmUcEtccR1RTpeV
	nLiPnfEHGp0+TQR0b9HfiNFqH1CZtf9/AfgTNm3YbGqqKT7GXSKz5gXMlNE+PoIU
	zqAaSrM5pKnwwOFbTdsUsuIlj3gZZKh9wMqy02StSSD+3aO9++rMIesT06CHtzH0
	ObgdgIqVG5fI8/aB/f0WNg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:content-type:date:date:feedback-id:feedback-id
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=1749654711; x=
	1749741111; bh=wv4pLXop2n8rxvtbk0chKjgyahZfn9ESSduvuEkY1GM=; b=K
	2iQxsFXEDwKyjtibtsjFc+wx9aju9piT4+E/qpoXQYTCqoV7YJKN5alysz9iXW3P
	guUeD2dGG8h3aIBzeuDjZK0xvADR5s/oDd1wyoYn+JOs6vnGqdAQD+6PGvT4mwN7
	JBON8qes7a/vh1oyhI9KxBv2vB5Bvd/gC9YVpXxKXfTSFGT/FSE2F3fXzuvhW3mO
	pnMG7BWglUogvv9kIRbm0wyhx4hLR/fF1pCpQ28QXOPxI8aZ+W7hfMNGTCQj8/9z
	ZY6OYmoeEq0yVX+Ja1UZihC1yKyQgF0LOT5I/FAWB9dRve4efqTICfqjbnDrS7wW
	KrBOfI0Y/v5WbV0obI+Hg==
X-ME-Sender: <xms:t5xJaD1cXWfMU7cE-4Mo4IbPIeahFi86kFenClsGKXSVmGRflykr-g>
    <xme:t5xJaCEw0RmfEs0iahOUGttrDw6mGZxMZ39yaMKT54y8nJBKi4uyouReNGRE_tGye
    --MKcze6gElogylsg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtddugdduvdehvdcutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpggftfghnshhusghstghrihgsvgdp
    uffrtefokffrpgfnqfghnecuuegrihhlohhuthemuceftddtnecunecujfgurhepofggff
    fhvfevkfgjfhfutgfgsehtjeertdertddtnecuhfhrohhmpedfuegvnhhjrghmihhnucfr
    vghtvghrshhonhdfuceosggvnhhjrghmihhnsehlohgtrhhirghnrdhnvghtqeenucggtf
    frrghtthgvrhhnpefhgeejfffhtdfhfefhiefftefgffdvgeduhfduuefgudfhgfevfeej
    veffveeijeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhroh
    hmpegsvghnjhgrmhhinheslhhotghrihgrnhdrnhgvthdpnhgspghrtghpthhtohepvddp
    mhhouggvpehsmhhtphhouhhtpdhrtghpthhtoheprghlgieskhgvrhhnvghlrdhorhhgpd
    hrtghpthhtoheplhhinhhugidqmhgrnhesvhhgvghrrdhkvghrnhgvlhdrohhrgh
X-ME-Proxy: <xmx:t5xJaD58G-OMlqJmgKPiV35a7Yqh6NeiJGnS17AdF69NG3GWIoyQ4A>
    <xmx:t5xJaI0GX_ZqN3imSqPeuvX7DhsveD1-WANdp8AB56Q7GIIgh-BAdw>
    <xmx:t5xJaGE8mNKtGwuHSgkMNj7m_--_ydSDaKKGb2gJto2IKnJufDwKIQ>
    <xmx:t5xJaJ93Y7nJvUdwWU9XqLMots-GRkhxAovtXBEgOSG7JBo5CO2CCg>
    <xmx:t5xJaOXfbDd6052dC0XiSZUlTmlIWFsmcFclS5RXXvSTvfrNHFAwLafn>
Feedback-ID: icec1443c:Fastmail
Received: by mailuser.phl.internal (Postfix, from userid 501)
	id 9DACF2400082; Wed, 11 Jun 2025 11:11:51 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-ThreadId: Ta92fe39dd4279e0d
Date: Wed, 11 Jun 2025 08:11:31 -0700
From: "Benjamin Peterson" <benjamin@locrian.net>
To: "Alejandro Colomar" <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Message-Id: <9001cb44-db81-43d4-84e4-ab251cf19764@app.fastmail.com>
In-Reply-To: 
 <3scsdm6aatzielqmvpcfig3gbbjiiie676osamqcpkaj7uuauo@ywyohqmydps2>
References: <20250530165930.46548-1-benjamin@locrian.net>
 <3scsdm6aatzielqmvpcfig3gbbjiiie676osamqcpkaj7uuauo@ywyohqmydps2>
Subject: Re: [PATCH v1] man/man2/chmod.2: Document AT_SYMLINK_NOFOLLOW support
Content-Type: text/plain
Content-Transfer-Encoding: 7bit



On Wed, Jun 11, 2025, at 02:02, Alejandro Colomar wrote:
> Hi Benjamin,
>
> On Fri, May 30, 2025 at 09:59:30AM -0700, Benjamin Peterson wrote:
>> Historically, Linux systems did not support the AT_SYMLINK_NOFOLLOW
>> flag to fchmodat.  glibc added userspace emulation support in version
>> 2.32, and Linux gained native support in 6.5.  See
>> glibc.git 6b89c385d8bd0700b25bac2c2d0bebe68d5cc05d ("io: Implement lchmod using fchmodat [BZ #14578]")
>> and
>> linux.git 09da082b07bbae1c11d9560c8502800039aebcea ("fs: Add fchmodat2()").
>
> Please use 12 characters for the hash.  Also, please include the commit
> date:
>
> 	glibc.git 6b89c385d8bd (2020-02-12; "io: Implement lchmod using 
> fchmodat [BZ #14578]")
> 	linux.git 09da082b07bb (2023-07-27; "fs: Add fchmodat2()")
>
> To generate those, I use a git alias:
>
> 	ref = show --no-patch --abbrev=12 --date=short \
> 		--format=tformat:'%C(auto)%h%C(reset) %C(dim white)(%cd%x3B 
> \"%C(reset)%C(auto)%s%C(reset)%C(dim white)\")%C(reset)'
>
> which I use as
>
> 	$ git ref 09da082b07bbae1c11d9560c8502800039aebcea
> 	09da082b07bb (2023-07-27; "fs: Add fchmodat2()")

I'll fix the message in v2.

It would be helpful to note the date guideline and maybe this git alias in CONTRIBUTING.d/patches/description. That's what I was trying to follow.

>
>> Signed-off-by: Benjamin Peterson <benjamin@locrian.net>
>
> Thanks for the patch!

Thanks for the review. I'll send v2 shortly.

