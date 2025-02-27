Return-Path: <linux-man+bounces-2527-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 907B5A4798C
	for <lists+linux-man@lfdr.de>; Thu, 27 Feb 2025 10:52:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 45D917A1474
	for <lists+linux-man@lfdr.de>; Thu, 27 Feb 2025 09:51:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 526C5227E9B;
	Thu, 27 Feb 2025 09:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=juszkiewicz.com.pl header.i=@juszkiewicz.com.pl header.b="20YDhTF/";
	dkim=pass (2048-bit key) header.d=juszkiewicz.com.pl header.i=@juszkiewicz.com.pl header.b="Bj0DkJ1s"
X-Original-To: linux-man@vger.kernel.org
Received: from haruka.juszkiewicz.com.pl (haruka.juszkiewicz.com.pl [185.243.53.191])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75B82270024
	for <linux-man@vger.kernel.org>; Thu, 27 Feb 2025 09:52:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.243.53.191
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740649943; cv=none; b=Dq7Is0+nH1pkNcTX1Ts9j8/zbecv8e3W36hzdsqihYZ4L6Ei/YogIIQypvBhW5eC4eiEDmwd3OCXZp1yglNu+1qa826YOgNp24zrofORmN+8A51P/g+h1v2xaI0aLTqfME0kOtIn0SyVhrXli1q5YgL+4mMoDV8gCSx+I/GRaAQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740649943; c=relaxed/simple;
	bh=6znyGCVk3E9eUqlxFTwXiuErz+RYTkjE9keIcg5ZG8g=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Nms24QYNVSG7/9uvW5jL8tY7PuKL/aCnZkfgDYtizf+3CCFxNZ7bbKlna4Uej1amsTPfcQjgw8dZyF6BR/wwLRtXavPYLp25QQu1IbqzzEYLClH8awyYZak36WLQMEyiY+h3JQEy0BuuFBDrURdowv7LAJi/Q8VkDsHeTSsPUcU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=juszkiewicz.com.pl; spf=pass smtp.mailfrom=juszkiewicz.com.pl; dkim=pass (2048-bit key) header.d=juszkiewicz.com.pl header.i=@juszkiewicz.com.pl header.b=20YDhTF/; dkim=pass (2048-bit key) header.d=juszkiewicz.com.pl header.i=@juszkiewicz.com.pl header.b=Bj0DkJ1s; arc=none smtp.client-ip=185.243.53.191
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=juszkiewicz.com.pl
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=juszkiewicz.com.pl
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=juszkiewicz.com.pl;
	s=mail; t=1740649939;
	bh=6znyGCVk3E9eUqlxFTwXiuErz+RYTkjE9keIcg5ZG8g=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=20YDhTF/SsRmBgTX+Su6Rmd3h2mc5R64R+DfppoD8xXdf+QhhBcLBhiU19qwarHVf
	 KmIzjYlUnnsyhw6yenbF+vfaE6IN6+81MT6Picf/tiaJfpSGeHkfj1nFH51WSVWCOo
	 CexC3EKxoLnaVYl22dB+75gdO7qsCGDa1ACDQXnMAEWrGQEts0Y/RVxdsYPuaI10+y
	 pGS99XCAZeUoQcmUfL1vhe5Y39sGUBGe+rySRmIRg3e2ln3vuRTsgwbdSkEdMpfoVX
	 O26Lix4M5dp+ps5ScHvSq2JcdY4d1JEt9FwCQNoyPIl8BHLMWitB+f5C6KE4KkMSj+
	 5wSBWNbw8VLyA==
Received: from utena.juszkiewicz.com.pl (utena.juszkiewicz.com.pl [158.101.208.177])
	by haruka.juszkiewicz.com.pl (Postfix) with ESMTPSA id 421FD22ABB;
	Thu, 27 Feb 2025 10:52:19 +0100 (CET)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id F4239420F5;
	Thu, 27 Feb 2025 10:52:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=juszkiewicz.com.pl;
	s=mail; t=1740649938;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=+jGFsewu6ooeAJ9leLVHc/HpopN62EVUo24rtd53cMo=;
	b=Bj0DkJ1syV3NI2+vs7APow4eqXQ1JBLIwelR1dskq/Kc26YhGUE34CQrZlOGs+ltqN7jlO
	0De/PsrSaGpZQ6K74s0T8moGUlZeCeuhN3Sc5db5b2NJCRtrI/0w8PKaIuuk5HykVk4JvK
	OQCAhJQaZm0o7w8aHTl1IErc3fiTnh1s9VAp1Wgm3sAITIQBREsYY2UmZ7MyliaWNNya6j
	5OaCK2el5FD2qXI6yHXZyzUD5e5m7FTNYQN3s0sQVn74FhDEpgNQzGDHcepN6GlMxsFau4
	gG8jp/GOYShAwx6jf+7Slegcalzwohs+tqZPa3ui/o/SIUWb5Lm/fuRyepW5Bg==
Message-ID: <31a9437f-3a30-410c-8456-10e19e0674f9@juszkiewicz.com.pl>
Date: Thu, 27 Feb 2025 10:52:16 +0100
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] add time64 copies of system calls
To: Alejandro Colomar <alx@kernel.org>
Cc: Carlos O'Donell <carlos@redhat.com>, linux-man@vger.kernel.org
References: <fb722cc1be40a2f74e204a23d5c11944c167d55c.1731957032.git.marcin@juszkiewicz.com.pl>
 <fb722cc1be40a2f74e204a23d5c11944c167d55c.1731957032.git.marcin@juszkiewicz.com.pl>
 <20241118225148.fgrvxxg2p6on4nl3@devuan>
 <5778beee-a1c0-45cf-93fa-8d36501911f9@juszkiewicz.com.pl>
 <fb5d9a20-9937-4cf7-b8e0-99710d88f4bc@redhat.com>
 <e2496012-6e25-4e85-ad27-0104dad7463a@juszkiewicz.com.pl>
 <spyqfjxpxqpg5uotsadzacxsxwret4topf6nrmzcfakpujabbv@k5n3cjbo74qm>
From: Marcin Juszkiewicz <marcin@juszkiewicz.com.pl>
Content-Language: pl-PL, en-GB
In-Reply-To: <spyqfjxpxqpg5uotsadzacxsxwret4topf6nrmzcfakpujabbv@k5n3cjbo74qm>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Last-TLS-Session-Version: TLSv1.3

W dniu 26.02.2025 o 16:23, Alejandro Colomar pisze:
> On Wed, Feb 26, 2025 at 03:48:19PM +0100, Marcin Juszkiewicz wrote:

>> diff --git a/man/man2/adjtimex.2 b/man/man2/adjtimex.2
>> index 7a87ac654..6dde493aa 100644
>> --- a/man/man2/adjtimex.2
>> +++ b/man/man2/adjtimex.2
>> @@ -10,7 +10,7 @@
>>   .\"
>>   .TH adjtimex 2 (date) "Linux man-pages (unreleased)"
>>   .SH NAME
>> -adjtimex, clock_adjtime, ntp_adjtime \- tune kernel clock
>> +adjtimex, clock_adjtime, clock_adjtime64, ntp_adjtime \- tune kernel clock
>>   .SH LIBRARY
>>   Standard C library
>>   .RI ( libc ,\~ \-lc )
>> @@ -22,6 +22,8 @@ .SH SYNOPSIS
>>   .P
>>   .BI "int clock_adjtime(clockid_t " clk_id, " struct timex *" "buf" );
>>   .P
>> +.BI "int clock_adjtime64(clockid_t " clk_id, " struct timex *" "buf" );
>> +.P
> 
> I'd move it to the bottom of the SYNOPSYS, and add a comment above
> saying it's only available on 32-bit systems (if there are exact macros
> that define those platforms, it would be interesting to use that):

It is on all 32-bit architectures supported by Linux 5.1+ so probably 
there is no point in listing them in man page.

Now they are: arm/armoabi, i386, powerpc, s390, arc, csky, hexagon, 
m68k, microblaze, mips64n32/mipso32, nios2, openrisc, parisc, riscv32, 
sh, sparc and xtensa.

https://gpages.juszkiewicz.com.pl/syscalls-table/syscalls.html shows all 
system calls and allows to disable/reorder columns. Everything from 
'avr32' to the right is no longer present in Linux kernel.

> 	// Only in 32-bit systems:
> 	...;
> 
> or
> 
> 	#if (...)
> 	...;
> 	#endif
> 
>>   .BI "int ntp_adjtime(struct timex *" buf );
>>   .fi
>>   .SH DESCRIPTION
>> @@ -557,6 +559,10 @@ .SH STANDARDS
>>   .P
>>   The preferred API for the NTP daemon is
>>   .BR ntp_adjtime ().
>> +.SH HISTORY
>> +Linux 5.1 added
>> +.BR clock_adjtime64()
>> +call on 32-bit architectures as part of handling Y2038 problem.
> 
> For a start, this should be enough.  We can later add some more details
> if needed.  I also don't want to waste much space in the manual pages
> about these.  Maybe we could have a generic description for xxx64() APIs
> elsewhere, which clarifies what all of these are. 

Thanks.

 > Maybe a new Y2038(7) manual page would be a good place for that.

Good idea.

