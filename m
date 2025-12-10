Return-Path: <linux-man+bounces-4395-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 49452CB3E9B
	for <lists+linux-man@lfdr.de>; Wed, 10 Dec 2025 21:05:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 8D3C230088D8
	for <lists+linux-man@lfdr.de>; Wed, 10 Dec 2025 20:05:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 82A373254B4;
	Wed, 10 Dec 2025 20:05:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=wanadoo.fr header.i=@wanadoo.fr header.b="JbAQJQlg"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.smtpout.orange.fr (smtp-73.smtpout.orange.fr [80.12.242.73])
	(using TLSv1.2 with cipher AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C85D1329384
	for <linux-man@vger.kernel.org>; Wed, 10 Dec 2025 20:05:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=80.12.242.73
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765397141; cv=none; b=gs9wgtJe6wVYmHOSz4ZRBna39ahmFlSiwuymkXrU/vYno+yQ4a/8R09yLK8nyQikxFQiwkzHVHx6oL7QF78Wjn2VYj1YG07m+21ToTLy3ToIvAEnbQw6LxAZ/79mM4lbp8tXCvbeFiNDZTWUJh0F+5q1TBZh+2xOAMXvITsoHsM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765397141; c=relaxed/simple;
	bh=K5wofDpTl6gwWACf4wcDXddIJA2UkxN77Rnr2bLUPOI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=sljYwqMsMIk2cxGLMqW3gESaUG5toaoVXrZfi680nKNHouMoPz5WlSXoUUqpoz/+2Xb69isvaLQfarSABwa2opBxa+o8FHFXOZiuCacqRpEUjn74OUpbzLO5hg/wnDORU54f5GRsoloocTw0ExiYECOwhBFRzj9czmTrdjf8LMk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=wanadoo.fr; spf=pass smtp.mailfrom=wanadoo.fr; dkim=pass (2048-bit key) header.d=wanadoo.fr header.i=@wanadoo.fr header.b=JbAQJQlg; arc=none smtp.client-ip=80.12.242.73
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=wanadoo.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=wanadoo.fr
Received: from [IPV6:2a01:cb15:8545:7700:62cf:84ff:fe81:caec]
 ([IPv6:2a01:cb15:8545:7700:62cf:84ff:fe81:caec])
	by smtp.orange.fr with ESMTPA
	id TQRAvl4uuznq3TQRAvDXXW; Wed, 10 Dec 2025 21:05:25 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wanadoo.fr;
	s=t20230301; t=1765397125;
	bh=tayopIZUVtFcwldeVxU1wF3VvxUR0R3+XdJ3G/mf4to=;
	h=Message-ID:Date:MIME-Version:Subject:To:From;
	b=JbAQJQlgqREkbJvbSb8DDR87ueqIthvzdeL5r/i/+uLnsxLfa0uUfzs1QLZq0ynPW
	 TZPek0DgE7T9Ue9tKiGHlBBpETSra+gyVJw1SIOjfbZLMHXw25X2By1nGI0i8MBvgx
	 4B4DeEHG3z9UEFmpchMC+ZVJYGFMPL9wKFl4zoLfK42lOHTHFOJlnafDA/7fn7KLO+
	 8gwuQ0muiWZJY5o4OsGMT9j4z3TyS2cxHDrZFUYAoIEHyobEQiWiT0dtUI68W0GuWT
	 DyfcgwIJc42E6NbF73lGgiVte+RxADKv457GkEDLxwQkZHTWsP2tbROYP1Yo31Y3Eb
	 TtwjLJDPYYbeQ==
X-ME-Helo: [IPV6:2a01:cb15:8545:7700:62cf:84ff:fe81:caec]
X-ME-Auth: cGpmbG95ZEB3YW5hZG9vLmZy
X-ME-Date: Wed, 10 Dec 2025 21:05:25 +0100
X-ME-IP: 2a01:cb15:8545:7700:62cf:84ff:fe81:caec
Message-ID: <e73fa6f1-bd09-402e-ad7f-3bf951bbfed8@wanadoo.fr>
Date: Wed, 10 Dec 2025 21:05:24 +0100
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Clarifying usage of aligned_alloc(3)
To: Alejandro Colomar <alx@kernel.org>, Seth McDonald <sethmcmail@pm.me>
Cc: "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>,
 John Scott <jscott@posteo.net>, DJ Delorie <dj@redhat.com>
References: <Zsttg7ycASHZGAmi3wMIXwZn3rW6VO4fpAJlFLAbHxKxUf1JlNALFpZcyiOtz1rzd-45ixj0JFtNxzZSYhHbBAE3wsmbxGQGQz74LMR1xCQ=@pm.me>
 <bmdhuhnnoewm3w5h5l5shm2req73o4kodrjus73j3uiy2h4jtk@nfbxlkajnl6a>
Content-Language: en-US
From: Paul Floyd <pjfloyd@wanadoo.fr>
In-Reply-To: <bmdhuhnnoewm3w5h5l5shm2req73o4kodrjus73j3uiy2h4jtk@nfbxlkajnl6a>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit


On 2025-12-10 12:51, Alejandro Colomar wrote:
> On Wed, Dec 10, 2025 at 08:24:03AM +0000, Seth McDonald wrote:
>> Hello all,
> Hi Seth,
>
>> Reading the GNU/Linux manual pages for aligned_alloc(3), I think the
>> documentation is ambiguous about the function's usage requirements in two ways.
>> As of man-pages 6.16, the relevant description states:
>>
>>> The obsolete function memalign() allocates size bytes and returns a pointer
>>> to the allocated memory. The memory address will be a multiple of alignment,
>>> which must be a power of two.
>>>
>>> aligned_alloc() is the same as memalign(), except for the added restriction
>>> that alignment must be a power of two.
>> First, I am unsure how the man page is attempting to distinguish
>> aligned_alloc() from memalign(). The stated difference - alignment must be a
>> power of two - is also said to be required of memalign().
> Agree; the current text is self-inconsistent.


My comments are based on the glibc 2.42 code on elixir.bootlin.com. If 
there have been more changes or my reading of the code is wrong please 
ignore me.

aligned_alloc will fail and set errno to EINVAL if the alignment is not 
a power of two.

memalign will bump up the alignment to the next highest power of 2 if is 
isn't already a power of 2.

Both will fail if alignment is above SIZE_MAX / 2 + 1.


>> It is possible this
>> is a typo or copy-paste error, but I cannot tell what the intended distinction
>> is. It would be beneficial if this was fixed/clarified in the document.
> The text was changed in
>
> 	commit 7fd1e0f2be216a5e7f7aef0d03304bdf81bca9e0
> 	Author: DJ Delorie <dj@redhat.com>
> 	Date:   Mon May 8 20:43:35 2023 -0400
>
> 	    posix_memalign.3: Update aligned_alloc(3) to match C17
> 	
> 	    Link: <https://sourceware.org/pipermail/libc-alpha/2023-May/147810.html>
> 	    Link: <https://patchwork.sourceware.org/project/glibc/patch/33ec9e0c1e587813b90e8aa771c2c8e6e379dd48.camel@posteo.net/>
> 	    Link: <https://lore.kernel.org/linux-man/d79b505c-5b19-331c-5b25-d40adc9cc843@wanadoo.fr/>
> 	    Cc: John Scott <jscott@posteo.net>
> 	    Cc: Paul Floyd <pjfloyd@wanadoo.fr>
> 	    Signed-off-by: DJ Delorie <dj@redhat.com>
> 	    Signed-off-by: Alejandro Colomar <alx@kernel.org>
>
> 	diff --git a/man3/posix_memalign.3 b/man3/posix_memalign.3
> 	index 9bc6eb9a4..88e4a8b63 100644
> 	--- a/man3/posix_memalign.3
> 	+++ b/man3/posix_memalign.3
> 	@@ -91,9 +91,8 @@ .SH DESCRIPTION
> 	 is the same as
> 	 .BR memalign (),
> 	 except for the added restriction that
> 	-.I size
> 	-should be a multiple of
> 	-.IR alignment .
> 	+.I alignment
> 	+must be a power of two.
> 	 .PP
> 	 The obsolete function
> 	 .BR valloc ()
>
> Following the links in that commit message, it seems the commit was
> wrong.  It should have just removed the exception entirely.
> C17 lifted the restriction.
>
> I propose the following fix:
>
> 	commit 90f18b452a7113f42ea4e222f819257e692ce57b
> 	Author: Alejandro Colomar <alx@kernel.org>
> 	Date:   Wed Dec 10 12:14:01 2025 +0100
>
> 	    man/man3/posix_memalign.3: Remove confusing exception
> 	
> 	    This is already a requirement of memalign(3).  aligned_alloc(3)
> 	    is indeed exactly equivalent to memalign(3), since ISO C17.
> 	
> 	    Fixes: 7fd1e0f2be21 (2023-05-20; "posix_memalign.3: Update aligned_alloc(3) to match C17")
> 	    Reported-by: Seth McDonald <sethmcmail@pm.me>
> 	    Signed-off-by: Alejandro Colomar <alx@kernel.org>
>
> 	diff --git a/man/man3/posix_memalign.3 b/man/man3/posix_memalign.3
> 	index 397f65aec..9c4a0bff9 100644
> 	--- a/man/man3/posix_memalign.3
> 	+++ b/man/man3/posix_memalign.3
> 	@@ -83,10 +83,7 @@ .SH DESCRIPTION
> 	 .P
> 	 .BR aligned_alloc ()
> 	 is the same as
> 	-.BR memalign (),
> 	-except for the added restriction that
> 	-.I alignment
> 	-must be a power of two.
> 	+.BR memalign ().
> 	 .P
> 	 The obsolete function
> 	 .BR valloc ()

I think that exact opposite is the case.

memalign and aligned_alloc used to be the same (aligned_alloc was a weak 
alias for memalign).

Now aligned_alloc is a separate function. It does a power-of-two check 
on the alignment and then calls _mid_memalign, which is also the 
implementation function for memalign.

Regards

Paul


