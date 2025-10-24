Return-Path: <linux-man+bounces-4189-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 92DEAC04DDB
	for <lists+linux-man@lfdr.de>; Fri, 24 Oct 2025 09:55:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E76F01894E0F
	for <lists+linux-man@lfdr.de>; Fri, 24 Oct 2025 07:56:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DBB592F39A7;
	Fri, 24 Oct 2025 07:55:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=dsp-crowd.com header.i=@dsp-crowd.com header.b="PuwJwBQz"
X-Original-To: linux-man@vger.kernel.org
Received: from mcgw-bbg-1-63.internet1.de (mcgw-bbg-1-63.internet1.de [188.64.63.70])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 649302F0C7C
	for <linux-man@vger.kernel.org>; Fri, 24 Oct 2025 07:55:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=188.64.63.70
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761292528; cv=none; b=CQjfb6nWunnIdCSJhBQB29TRE+MboM8bqQ5kxQxayNbAVKTkm4CwNTYCmM/EF5RbcniXIGcd33E4KqmzlMKivMcMWtuYGuUx2CEF0Ihr5pQnt4itYS7m16HtcJRRXGAPWyiwzlRWbOnbLpcLYe3ddgHeedJAnzgLUuXLMHZ2ZcA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761292528; c=relaxed/simple;
	bh=ewh+cdHlB+Bkrf/sd80uM+a90BpVXoAobBEmqiNnYwA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=YODwf4Q51bxdI0mphjdOJqk5shXZuINx0AVuNcbns+XFwNTfO+xvsv5y1ZGKTWmH1PvIVfsGrhQWhh06wTVXTr7+zDhI00wDinzIW5SrZzC69+y4UsZ3PAb2PwQ1Sv99D7fYeDe2ofENALdmpQpNMvhdcd8BWyu6vnqfWEXpzA8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=dsp-crowd.com; spf=pass smtp.mailfrom=dsp-crowd.com; dkim=pass (2048-bit key) header.d=dsp-crowd.com header.i=@dsp-crowd.com header.b=PuwJwBQz; arc=none smtp.client-ip=188.64.63.70
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=dsp-crowd.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=dsp-crowd.com
Received: from mcgw-bbg-2.internet1.de (localhost [127.0.0.1])
	by mcgw-bbg-2.internet1.de (Proxmox) with ESMTP id 3B343C3426;
	Fri, 24 Oct 2025 09:47:41 +0200 (CEST)
Received: from mcno-bbg-03.internet1.de (mcno-bbg-03.internet1.de [158.181.48.180])
	by mcgw-bbg-2.internet1.de (Proxmox) with SMTP;
	Fri, 24 Oct 2025 09:47:39 +0200 (CEST)
dkim-signature: v=1; a=rsa-sha256; d=dsp-crowd.com; s=key1;
	c=relaxed/relaxed; q=dns/txt; h=From:Subject:Date:Message-ID:To:CC:MIME-Version:Content-Type:Content-Transfer-Encoding:In-Reply-To:References;
	bh=TA8qiU8/y49+7PDiyk5IJcXv+U1SIjrOkKukQ1PZcU4=;
	b=PuwJwBQzGotIoemYZyKzj8zGgHpPpigBVmN6lBLVXtc1LQ4P5mi/nKBx/2XFnLRri/YN0PQZkIkg07zy/o/fXFa9eo2WWDrlmHnAHxf+DaJCfjvvHg2BeFICFVJxEXSo3zR7eQU4CqDyBNcH1q3vzPQe8H/T86wc3ATyA0dxFYAwwi8mT5i0T2C4RutFa5DUkFeFWD1yyXqiYnc5vUxkOmO+1/chaCqyGdMDLibEkNOOjdqBxMr1XBR5SV
	iGxv8r5AYgyoMr04KMDDoszmYH2W3FNmKxAhndXdNL+8IVebFhWxw3xBHcy5Ug0dbfdZDzHLfdibdNSlZrxG4k5a5QPA==
Received: from [IPV6:2a01:aea0:dd3:2ff:16db:b76:bd2a:71bc] (Unknown
 [2a01:aea0:dd3:2ff:16db:b76:bd2a:71bc]) by mcno-bbg-03.internet1.de with
 ESMTPSA (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128) ; Fri,
 24 Oct 2025 09:47:39 +0200
X-AuthUser: office@dsp-crowd.com
Message-ID: <16e2a563-37db-438f-a6af-9e3c904fceea@dsp-crowd.com>
Date: Fri, 24 Oct 2025 09:47:38 +0200
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: man page bug - write()
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
References: <780f1a31-08f8-484c-8811-8d22bea320ff@dsp-crowd.com> <yxcdsqauolqpo3aqguygzlgaacyp5rayw4fziymgbix3j5zeuf@2ijuokwiwlfa>
Content-Language: en-US
From: Johannes Natter <office@dsp-crowd.com>
In-Reply-To: <yxcdsqauolqpo3aqguygzlgaacyp5rayw4fziymgbix3j5zeuf@2ijuokwiwlfa>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-hMailServer-Reason-Score: 0

Hi Alex,

ok.

Shouldn't the function prototype be:

        ssize_t write(int fd, const void buf[count], size_t count);

instead of:

        ssize_t write(size_t count;
                      int fd, const void buf[count], size_t count);

?

That's my question. Maybe I am overseeing something.

lg, Joe

On 24.10.25 09:39, Alejandro Colomar wrote:
> On Fri, Oct 24, 2025 at 09:29:53AM +0200, Johannes Natter wrote:
>> Hi,
>>
>> this seems to be a bug a Bug. Should be:
>> ssize_t write(int fd, const void ...
> Hi Joe,
>
> Please don't send images in unsigned email; I won't open them.
> (I probably won't open images in signed email either, but there's at
>   least a chance.)
>
> I assume the image contains something like this:
>
>         ssize_t write(size_t count;
>                       int fd, const void buf[count], size_t count);
>
> That is correct (if we ignore the fact that arrays of void are
> disallowed.
>
> 	alx@debian:~/tmp$ cat write.c
> 	#include <sys/types.h>
>
> 	ssize_t my_write(size_t count;
> 	    int fd, const char buf[count], size_t count);
>
> 	int
> 	main(void)
> 	{
> 		char a[100] = "";
>
> 		my_write(1, a, 100);
> 	}
> 	alx@debian:~/tmp$ gcc -Wall -Wextra write.c
> 	alx@debian:~/tmp$
>
> Documentation for that language feature is here:
> <https://gcc.gnu.org/onlinedocs/gcc/Variable-Length.html>
>
>
> Have a lovely day!
> Alex
>



