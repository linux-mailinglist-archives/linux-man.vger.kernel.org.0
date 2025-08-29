Return-Path: <linux-man+bounces-3748-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 750CAB3BA56
	for <lists+linux-man@lfdr.de>; Fri, 29 Aug 2025 13:56:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 98E2A1CC1299
	for <lists+linux-man@lfdr.de>; Fri, 29 Aug 2025 11:56:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8540F3043CA;
	Fri, 29 Aug 2025 11:56:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="SIJ7cuz3"
X-Original-To: linux-man@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9555B2D12E4
	for <linux-man@vger.kernel.org>; Fri, 29 Aug 2025 11:56:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756468577; cv=none; b=KQCFDz4J0Z5KRQaie7ToEFUSwqR7BAK0errZD3+PyFr4t60coRnqDvtrclrYwN7KmDmb1FeAZpr3eSk/7IbTI6Wm8nelJZafl/hjCiW/owxqtECY85LECnqN5mT0cqtVKIqoG4t41GThTVjFtS1TbiCRFe2v74LIZON4h3b0gYs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756468577; c=relaxed/simple;
	bh=YDYLxDaIrFXiKLnvWVPPVpdVRB9gVdEoKlCFiUb3Pi4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=iWDmjN95D4jQoxRmZ9UNUyRJz5hkiv/8Npu8LkxvAJ7Z3X0vlS/TAKjCtCRnuzBsZc7IBT7HjREeXQDg8Zw55SOy+TFHM3oX+thKYwhJ57NfzsAf9nNZnU6moclsojw5afy+Ux+LWk5dmj/SAV+lilzqh73ut2ZuZ1aXtJaQuI4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=SIJ7cuz3; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1756468573;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=59R7B+GH41kOCiT+cjZ7fQgBwvB+cdH+UrDHWgFCFkw=;
	b=SIJ7cuz3mYdk519pH2X237fFOFgWFUcspVCiA9LoKfcLnnEmgIbDc4EfJApwmSsS6cBCSZ
	hamPDLoZuv0KUIfi43snx9W0fs+LZk6voWDZ46rmZ5tpBs3DAiwjCCfN+IPxrMEdvLsIFx
	/eQ4Bji8FBA8sdlcwky2om2+bbv/SRY=
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com
 [209.85.160.200]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-483-6WTLd_v5PLK-2a35yq7njQ-1; Fri, 29 Aug 2025 07:56:12 -0400
X-MC-Unique: 6WTLd_v5PLK-2a35yq7njQ-1
X-Mimecast-MFC-AGG-ID: 6WTLd_v5PLK-2a35yq7njQ_1756468571
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4b2f7851326so52996201cf.1
        for <linux-man@vger.kernel.org>; Fri, 29 Aug 2025 04:56:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756468570; x=1757073370;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:from:references:cc:to:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=59R7B+GH41kOCiT+cjZ7fQgBwvB+cdH+UrDHWgFCFkw=;
        b=sp/obsF6++MbC5vSXyUgXxAQP0zmxusNyoDFxDruJkO7poFy5xaChH/068jqFn+t+o
         V+DfMVuoL1Jkz2tR+QT4CuqR7aH5MMQtL/alBb2F5AnNA9CH7iUE/PrdG8tHvrmhO0Li
         M88CJGhrbRR7eJTH5/c5IKYzCDNEQOgSX2+/uY/OAjpnV8tjzsuB101qNO3XJ/KxHcCH
         kjY1XDfMoRitmbnr/uNxvgXaBw4u/9VSjbTkTuX9xyYEJ0t8eI3R7xSfpxbfIwFZQYjE
         C9VYRXLpXFB9Twp9ON7P/vnCbpYmMliRw8DMTtTpIYLV/iTxmY74hf5EKR8jGNCsBXGq
         VMDg==
X-Gm-Message-State: AOJu0Yytzqb3xo938dEEvXvAYZhbfJZ7aa46tr+7TvkxIYz8vp2wjZ1+
	yvky4Bbs/v6G9eCwB7rVcJ8u92d55fN8b/qpxJagd0Jw+FPnWm/PbAThQ6T6AWdxUxBb7ohYQJv
	wVGenEFfgaHF3GgpCo0Qb5oO2CKffIQYyoVmIOwlforxcM2VgV6JFHoE+e8HK6skzEtOV2Q==
X-Gm-Gg: ASbGncvk3TXhoR3Mn02z6zEW3CAdLLRo0D+Xsv6mvP8s8pN2ZN6wBK2LjWHo482RvyQ
	e0uROEGD3nz5625OkK6uS5/EVdd05LZ0lY2sDYyDNdmg6sRB8ptjCj1Nqty6qmyuQ8BAEiV9xCs
	g8NZcGuKMoyA27ECcSSuaeemdPkoQ5fD4Oa1Jg2PmZrrWVMq8t5iiE1S//thgHgIdCfF82vkb+9
	+w669RhUejQJeDQg11xXl+JEMZnRXTaK0h3bo2nRyW+zqVJr4Use4hpa6dXNG0jcYXCY5aAOmjY
	Jj/bBOsqt2dS4nDs/lO3kbSmUcti8pVzZOSvuBPP
X-Received: by 2002:a05:622a:189d:b0:4b2:8ac4:ef85 with SMTP id d75a77b69052e-4b2aab4c666mr292428891cf.84.1756468570342;
        Fri, 29 Aug 2025 04:56:10 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFckTJ+msQZwBfMNE99VH5FI+y7S7CenDjIoR1D+9+yNFlViTMosSY6OHSFCWuMO5TQpbSPFw==
X-Received: by 2002:a05:622a:189d:b0:4b2:8ac4:ef85 with SMTP id d75a77b69052e-4b2aab4c666mr292428661cf.84.1756468569692;
        Fri, 29 Aug 2025 04:56:09 -0700 (PDT)
Received: from [192.168.0.241] ([198.48.244.52])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-7fc16341f1asm158905585a.65.2025.08.29.04.56.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 29 Aug 2025 04:56:09 -0700 (PDT)
Message-ID: <66a84774-0c5b-4dc1-af25-1e6d35e3e5ef@redhat.com>
Date: Fri, 29 Aug 2025 07:56:07 -0400
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] man/man2/sigaction.2: Update si_code list with Linux
 v6.16
To: Thiago Jung Bauermann <thiago.bauermann@linaro.org>,
 Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
References: <20250828210752.619435-1-thiago.bauermann@linaro.org>
From: Carlos O'Donell <carlos@redhat.com>
Content-Language: en-US
Autocrypt: addr=carlos@redhat.com; keydata=
 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
 m/A+1AHg4g==
Organization: Red Hat
In-Reply-To: <20250828210752.619435-1-thiago.bauermann@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 8/28/25 5:07 PM, Thiago Jung Bauermann wrote:
> Update with missing si_code values from Linux v6.16's
> include/uapi/asm-generic/siginfo.h.

The top-level header would be "#include <linux/signal.h>"

This header isn't used by a glibc-based userspace.

I've added it to the list of known conflicts:
https://sourceware.org/glibc/wiki/Synchronizing_Headers

Instead /usr/include/bits/siginfo-consts.h (glibc) provides
constants that meet the language and platform requirements.

While it is possible to use the Linux kernel's signal.h directly,
that isn't recommended if you're trying to achieve any level of
language or runtime conformance.

You certainly cannot use "#include <signal.h>" and expect all that
you have written below to work.

I am reviewing those entries which work and those which don't.

If we want the other values to work then someone needs to do the
harder work of either:

  (a) Adding the constants to C libraries in a conformant way.

  (b) Cleaning up the UAPI header to be conforming and work with
      the existing C libraries to include it indirectly.

  (c) Cleaning up both headers to allow dual inclusion with
      additional constants showing up as needed.

In summary:

  - This patch contains 2 constants that don't work today in a glibc-based
    userspace.

  - The existing man page documents 1 constants that doesn't work today
    with the standard #include <signal.h>.

> 
> Signed-off-by: Thiago Jung Bauermann <thiago.bauermann@linaro.org>
> ---
>   man/man2/sigaction.2 | 49 +++++++++++++++++++++++++++++++++++++++++++-
>   1 file changed, 48 insertions(+), 1 deletion(-)
> 
> diff --git a/man/man2/sigaction.2 b/man/man2/sigaction.2
> index 8d08a8c409d9..1e8ae0b41ea7 100644
> --- a/man/man2/sigaction.2
> +++ b/man/man2/sigaction.2
> @@ -652,6 +652,9 @@ or
>   .\" SI_DETHREAD is defined in Linux 2.6.9 sources, but isn't implemented
>   .\" It appears to have been an idea that was tried during 2.5.6
>   .\" through to Linux 2.5.24 and then was backed out.
> +.TP
> +.B SI_ASYNCNL
> +Async name lookup completion.

OK. Present since a992f506ff7 (2016) in glibc, and kernel and glibc constants match.

>   .RE
>   .P
>   The following values can be placed in
> @@ -716,6 +719,12 @@ Floating-point invalid operation.
>   .TP
>   .B FPE_FLTSUB
>   Subscript out of range.
> +.TP
> +.B FPE_FLTUNK " (since Linux 4.17)"
> +Undiagnosed floating-point exception.

OK. Present since 89983cb37c9 (2018) in glibc, and kernel and glibc constants match.

> +.TP
> +.B FPE_CONDTRAP " (PARISC only)"
> +Trap on condition.

OK. Likewise.

>   .RE
>   .P
>   The following values can be placed in
> @@ -742,6 +751,24 @@ See
>   .BR pkeys (7).
>   The protection key which applied to this access is available via
>   .IR si_pkey .
> +.TP
> +.B SEGV_ACCADI " (since Linux 4.17, SPARC only)"
> +Application Data Integrity not enabled for mapped object.
> +.TP
> +.B SEGV_ADIDERR " (since Linux 4.17, SPARC only)"
> +Disrupting Memory Corruption Detection error.
> +.TP

OK. Present since 89983cb37c9 (2018) in glibc.

> +.B SEGV_ADIPERR " (since Linux 4.17, SPARC only)"
> +Precise Memory Corruption Detection exception.
> +.TP

OK. Likewise.

> +.B SEGV_MTEAERR " (since Linux 5.10, ARM only)"
> +Asynchronous Memory Tagging Extension error.
> +.TP
> +.B SEGV_MTESERR " (since Linux 5.10, ARM only)"
> +Synchronous Memory Tagging Extension exception.
> +.TP

OK. Present since 3016596a819 (2021) in glibc.

> +.B SEGV_CPERR " (since Linux 6.10)"
> +Control protection fault.

OK. Present since ac79930498d (2023) in  glibc.

>   .RE
>   .P
>   The following values can be placed in
> @@ -785,6 +812,12 @@ Process taken branch trap.
>   .TP
>   .BR TRAP_HWBKPT " (since Linux 2.4, IA64 only)"
>   Hardware breakpoint/watchpoint.
> +.TP
> +.BR TRAP_UNK " (since Linux 4.18)"
> +Undiagnosed trap.

OK. Present since 89983cb37c9 (2018) in glibc.

> +.TP
> +.BR TRAP_PERF " (since Linux 5.13)"
> +Perf event with sigtrap=1.

Not present in glibc.

Suggest sending a patch to libc-alpha@sourceware.org to patch
glibc/sysdeps/unix/sysv/linux/bits/siginfo-consts.h with the
added constant.

Not directly usable by glibc-based userspace.

>   .RE
>   .P
>   The following values can be placed in
> @@ -839,7 +872,7 @@ High priority input available.
>   Device disconnected.
>   .RE
>   .P
> -The following value can be placed in
> +The following values can be placed in

OK.

>   .I si_code
>   for a
>   .B SIGSYS
> @@ -850,6 +883,20 @@ signal:
>   Triggered by a
>   .BR seccomp (2)
>   filter rule.

^^^^ the existing discussed SYS_SECCOMP is not exposed either and thus
is a documentation issue with this man page.

> +.TP
> +.BR SYS_USER_DISPATCH  " (since Linux 5.11)"
> +Syscall user dispatch triggered.

Not present in glibc.

Not directly usable by glibc-based userspace.

Suggest sending a patch to libc-alpha@sourceware.org to patch
glibc/sysdeps/unix/sysv/linux/bits/siginfo-consts.h with the
added constant along with SYS_SECCOMP which is missing.

This along with the other changes would bring userspace in line with
the kernel constants.

Note: glibc accepts DCOd contributions.
https://sourceware.org/glibc/wiki/Contribution%20checklist

> +.RE
> +.P
> +The following value can be placed in
> +.I si_code
> +for a
> +.B SIGEMT

OK. Present in glibc as an architecture-specific signal (very old).

> +signal:
> +.RS 4
> +.TP
> +.BR EMT_TAGOVF " (SPARC only)"

OK. Present since a992f506ff7 (2016) at least though likely earlier.

> +Tag overflow.
>   .RE
>   .SS Dynamically probing for flag bit support
>   The
> 
> base-commit: c7e6c703f8c41d16630dfeb289de6bb45228d8d8
> 


-- 
Cheers,
Carlos.


