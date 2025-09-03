Return-Path: <linux-man+bounces-3830-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C712B412C6
	for <lists+linux-man@lfdr.de>; Wed,  3 Sep 2025 05:08:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0C86D1A82E33
	for <lists+linux-man@lfdr.de>; Wed,  3 Sep 2025 03:09:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C669728504C;
	Wed,  3 Sep 2025 03:08:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Mu8Xx6xu"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pg1-f177.google.com (mail-pg1-f177.google.com [209.85.215.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E558723AB8B
	for <linux-man@vger.kernel.org>; Wed,  3 Sep 2025 03:08:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756868927; cv=none; b=embDcQQJFNI00Vm7K0FpLVRdoJgXZqcMRImeaRDmz18F9te21pK6ablA/bHH2PY6txSMTb75J+TadAI/j9HE1Un0QLPBH9sMCjnNGpeCvCU37ULclrpdmmRt+CX//QEWq/4uXXg7ignKt2Sg8Y249DVBuf+tkGzzr5kG34FGgMA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756868927; c=relaxed/simple;
	bh=yrUoZNSfU4AKJx39blckR6npp8sj8ATTD9PgwBO7lKc=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=Tyzp3Prr4sl2ggz7GctQcq0wRpYZrkjZ4Y+hqXC2xt1NHd00h5EjG+cyUg0aD/WjL6+tkxA9IE4zEu9bInQIOJpuV2OlzOqqlga3kmnmuAdIP7KWrLBdbA6jz4ijB4luHf6nMtfhxqeo8ljymqq9x3cpvoVNabtMMS1YnmaC08s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Mu8Xx6xu; arc=none smtp.client-ip=209.85.215.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pg1-f177.google.com with SMTP id 41be03b00d2f7-b4d5886f825so3749154a12.0
        for <linux-man@vger.kernel.org>; Tue, 02 Sep 2025 20:08:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1756868925; x=1757473725; darn=vger.kernel.org;
        h=mime-version:message-id:date:user-agent:references:in-reply-to
         :subject:cc:to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=4BurEsytwkujuGHViVFwrM1EDCwd3JWJbJ3MMattTLE=;
        b=Mu8Xx6xunlOIRaBeNsVSMiybfuNe96pOu9hBliJKc5Wp2Npzsea8E5OGAMeLErkN5J
         DCfYEiS0FFnjv8nK72FX2VMoc9aVtCxq+7M8K5Dmkk7xA51eE/6DNEECDG835KzKUjXq
         G6xku/4sKEkMYQwhhNYNlsj2NjnZ42ygyzOuOjlHOYEeA2SSTtur9jOFTU1O2xho/IqW
         8ANKHW2VXhF7HUgHBTurgeQsgIo3G7sXWLBs75dfORNM9K1Cu5bE/SBIyPBp+m8hyQoX
         f92VqBHfoTpLJlLfDC8ZbkXpryc8G0nXNkPNT2tBanFFA479JLWoe8itMbPD3ClQ7M5U
         7OPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756868925; x=1757473725;
        h=mime-version:message-id:date:user-agent:references:in-reply-to
         :subject:cc:to:from:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4BurEsytwkujuGHViVFwrM1EDCwd3JWJbJ3MMattTLE=;
        b=T9Eddzg3E4WkWPf1ZYU9ZUJXR6I+AlgrKQdGaTPiQcNElGKlNz8NuHmIA70xFA9tNp
         K0ht48kh81gr07ZSmfGa6p6wggcO9gfqYhCfrHrzBlEKmPBhgjGIWeHsDwzrmEOdS1gh
         7brpgMHJPHIblJFxf04tjIKpPSMeugKgmVrhMG8/j5bxJfHBkhr4JQHSc0bHvWOErJLc
         wHanUHlwS3tRaBabxXrQ9+/sPrggy14B5lCC5AKBG0FMBGBr+WGH6sic9wjhej7YZrw9
         QRR9VJxMnpCcfqHpgx1yVb4ApPFTbYn04fnj9P+0xeXoD4x3ycA+oAQOvLN3JCqsBFmR
         W01Q==
X-Forwarded-Encrypted: i=1; AJvYcCV6gaQGpuowNwPu1CcV0MIQQ/6FdXRVkE1vAWEmOO8AXVe8906tfkPn/k3XCro3pQ1ruEDTH+5hGxA=@vger.kernel.org
X-Gm-Message-State: AOJu0Yygu6LHDYL10KHNU1T6ssuscmAtRxKpf52YJJxfYWKy6kApCXlf
	LE5p+jXwlGoYeDJN0bh2dpVLU6jPgncxzGoRLhWoJI4WAip6KVe/qyZM8jIohicFMJA=
X-Gm-Gg: ASbGncu5vj0y3Cs8I8qHHjhqpwYj8SNXzdWKEOvawA/r3AAO/0EUEFDeOVVcnb7KP+7
	BQUSWzskn3FiacQ4R5UhTv912tSsbc1Hf5XMe+rbW2QzFPHzntKKlZsMl5A0dkrf4VmYXj2cCLh
	SLt66/AKNCyinopjd9VM0VzESHenVU8FxC679d1QO8OK7d7vjG+OG5oKZVWd48n2hvQFIGr0EtK
	CzIhEuCO24mCEaogjdehRTgDTWx8wx3//TJP4RDVmihWpx2bz8K5D77kVeT8GAGqPO4bU28vLS5
	dcpXqfh143nqzHwZoj7Pm6zOe7gGdbKQAzqbAMe3D7fVbgZMx+RD3ELoopqbmE6U0+K5v/I8HxT
	+oOi9/ZaRuBfbqDRPDO9nfEUR4sxaL2U=
X-Google-Smtp-Source: AGHT+IHZw+nG/DXeKK8jTdyM0Ry4F9DNbcMxZzLxWZQ5GMBWJlIu0cCgIP7FleuX+ixNBMBgBEot+Q==
X-Received: by 2002:a17:903:240c:b0:240:a222:2312 with SMTP id d9443c01a7336-24944b3c3e3mr166188805ad.44.1756868925072;
        Tue, 02 Sep 2025 20:08:45 -0700 (PDT)
Received: from localhost ([2804:14d:7e39:88d6:93d3:2d0:e5b8:fc31])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7722a2b362dsm15147628b3a.32.2025.09.02.20.08.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Sep 2025 20:08:44 -0700 (PDT)
From: Thiago Jung Bauermann <thiago.bauermann@linaro.org>
To: Carlos O'Donell <carlos@redhat.com>
Cc: Alejandro Colomar <alx@kernel.org>,  linux-man@vger.kernel.org
Subject: Re: [PATCH] man/man2/sigaction.2: Update si_code list with Linux v6.16
In-Reply-To: <66a84774-0c5b-4dc1-af25-1e6d35e3e5ef@redhat.com> (Carlos
	O'Donell's message of "Fri, 29 Aug 2025 07:56:07 -0400")
References: <20250828210752.619435-1-thiago.bauermann@linaro.org>
	<66a84774-0c5b-4dc1-af25-1e6d35e3e5ef@redhat.com>
User-Agent: mu4e 1.12.11; emacs 30.1
Date: Wed, 03 Sep 2025 00:08:41 -0300
Message-ID: <87h5xkgrly.fsf@linaro.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain

Hello,

Carlos O'Donell <carlos@redhat.com> writes:

> On 8/28/25 5:07 PM, Thiago Jung Bauermann wrote:
>> Update with missing si_code values from Linux v6.16's
>> include/uapi/asm-generic/siginfo.h.
>
> The top-level header would be "#include <linux/signal.h>"
>
> This header isn't used by a glibc-based userspace.
>
> I've added it to the list of known conflicts:
> https://sourceware.org/glibc/wiki/Synchronizing_Headers
>
> Instead /usr/include/bits/siginfo-consts.h (glibc) provides
> constants that meet the language and platform requirements.
>
> While it is possible to use the Linux kernel's signal.h directly,
> that isn't recommended if you're trying to achieve any level of
> language or runtime conformance.
>
> You certainly cannot use "#include <signal.h>" and expect all that
> you have written below to work.

I used the kernel's siginfo.h file as a reference of what a process can
potentially see in the si_code field when it gets a signal.

> I am reviewing those entries which work and those which don't.
>
> If we want the other values to work then someone needs to do the
> harder work of either:

To be honest, my motivation to write this patch was just to fix the fact
that SEGV_CPERR was not mentioned. Then I noticed that other constants
were missing too, and thought it would be easy enough to add them as
well...

>  (a) Adding the constants to C libraries in a conformant way.
>
>  (b) Cleaning up the UAPI header to be conforming and work with
>      the existing C libraries to include it indirectly.
>
>  (c) Cleaning up both headers to allow dual inclusion with
>      additional constants showing up as needed.
>
> In summary:
>
>  - This patch contains 2 constants that don't work today in a glibc-based
>    userspace.
>
>  - The existing man page documents 1 constants that doesn't work today
>    with the standard #include <signal.h>.

As you suggested (thanks!), I sent a patch to the glibc mailing list
adding the si_codes it's missing to its siginfo-conts.h header: 

https://inbox.sourceware.org/libc-alpha/20250903024151.3030839-1-thiago.bauermann@linaro.org/

If that one is accepted, hopefully this patch can go in?

>> +.TP
>> +.BR TRAP_PERF " (since Linux 5.13)"
>> +Perf event with sigtrap=1.
>
> Not present in glibc.
>
> Suggest sending a patch to libc-alpha@sourceware.org to patch
> glibc/sysdeps/unix/sysv/linux/bits/siginfo-consts.h with the
> added constant.
>
> Not directly usable by glibc-based userspace.

Added in the glibc patch I just sent.

>> @@ -850,6 +883,20 @@ signal:
>>   Triggered by a
>>   .BR seccomp (2)
>>   filter rule.
>
> ^^^^ the existing discussed SYS_SECCOMP is not exposed either and thus
> is a documentation issue with this man page.

Added in the glibc patch I just sent.

>> +.TP
>> +.BR SYS_USER_DISPATCH  " (since Linux 5.11)"
>> +Syscall user dispatch triggered.
>
> Not present in glibc.
>
> Not directly usable by glibc-based userspace.

Added in the glibc patch I just sent.

> Suggest sending a patch to libc-alpha@sourceware.org to patch
> glibc/sysdeps/unix/sysv/linux/bits/siginfo-consts.h with the
> added constant along with SYS_SECCOMP which is missing.
>
> This along with the other changes would bring userspace in line with
> the kernel constants.
>
> Note: glibc accepts DCOd contributions.
> https://sourceware.org/glibc/wiki/Contribution%20checklist

Thank you for the suggestions. They were very helpful.

-- 
Thiago

