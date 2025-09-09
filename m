Return-Path: <linux-man+bounces-3854-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EAB4DB50687
	for <lists+linux-man@lfdr.de>; Tue,  9 Sep 2025 21:44:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8EED74E2023
	for <lists+linux-man@lfdr.de>; Tue,  9 Sep 2025 19:44:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BD8D532BF35;
	Tue,  9 Sep 2025 19:44:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="Ag2u8X7I"
X-Original-To: linux-man@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F30C0225415
	for <linux-man@vger.kernel.org>; Tue,  9 Sep 2025 19:44:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757447053; cv=none; b=epWEXeBdxaI6N/SWHrHehF0CzSOk8ZyfMZNOJV7+etAtOUKhnzsfErcWicbm4xCVriw+IGZYUF/OxtbQAG9b6hdFK56hFq9+zbDEt86rXDb+0jNpgth+wvbOlxYeLWh/UKKw4NoLd5egMvEva/y/BaBvaFHKzQDl65vYhJfAypY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757447053; c=relaxed/simple;
	bh=/44hZ5TzLuuxYPtdSdQri6NP13aNWgNPHxvB9IYZ33g=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=nkUJIkQAIpHrPEmhhaoFJwnNs8hOPtqLDcKa4JXT8o2WyNKmWAX4bjYksT8QDEFooDpiUnN3xjscU/p57X8Dde+47UWQp+fMI6QCQ5hb+XzKV7HI3jPJPw1wG39TMEdihPUEr/3L+stTffCmkV8Pca5jj3SLS5ltC5jR8a4w8YM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=Ag2u8X7I; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1757447050;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=/vliMo5c8YXRugOgATuxMHB0nZ6NzeeSQq/kRj7hGRQ=;
	b=Ag2u8X7IPefMRlGSlHVwDtD0b8u07T1XoFU1/gKvjsgrwD2CILUBCGAR1jcdGeaPGXniwX
	5wR6k0wR/wXqSY2qZSjmtgV8bQcU5NlDYYuNKwXycmOhgW7ibB+nD6GLY+EYsCRvyhX5hs
	fXv1lr8SPzUru6XtHy94fUzzNOfxmUo=
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com
 [209.85.219.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-153-lTvdNT15Oy2HZ_LXdSereA-1; Tue, 09 Sep 2025 15:44:09 -0400
X-MC-Unique: lTvdNT15Oy2HZ_LXdSereA-1
X-Mimecast-MFC-AGG-ID: lTvdNT15Oy2HZ_LXdSereA_1757447049
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-7224cb09e84so129845256d6.1
        for <linux-man@vger.kernel.org>; Tue, 09 Sep 2025 12:44:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757447048; x=1758051848;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:from:references:cc:to:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=/vliMo5c8YXRugOgATuxMHB0nZ6NzeeSQq/kRj7hGRQ=;
        b=uQRnWJmjs8EUMjn7MguK3G813XpnWDwS+wkiNkrpmDTtvxq2jKyaghXy+3FTdZwFgU
         JXKsKWWhAyskIFoGlWayJqtFopuDgRm8pR+xwug6LRhzrQGsgUt5/Am1phjnlNARivL0
         f1jmsgDXg5rVGVEZZ+e2bfLqFyfyHSz55Y3fUqEUyCe+L/6Gjk6YeTCFltPgFx56xKyC
         A6yaqJWoxJonS1GgA2y12lebQpmQ8T8MDxfDyqXNfPqirxM4WfDzxJQzvYUnKESjnTSJ
         4OFM5YBUJE1axeTlPAzW3MmBZJwApKboMvdErB69c0vRGE+y7dYZrXZ/JOK9KBSWNGzZ
         3nxA==
X-Gm-Message-State: AOJu0YzcM02gDxcO3Tx2u+Tg52odHezJflPSdHJ/+6Dic0TeimJjckYe
	ChVHDH0dexAe+6MvkBcNwKqOaz/5ylWOCWYzqYE8fdxndM32qHXg/k9zVF0ukY7eBqO3eitefFm
	IYNd+cHObHxjJCEgpIzdAXBSSZ/kl2+qVx8NV3VLhiF8n5ixhUr542LgvHdeTpNjpvw257w==
X-Gm-Gg: ASbGncsIjhWt99MxpW0ykl9oz4FiKjXm+8RIv0vHGv4+odgIhi8LhmdzSXcbN5IYRjO
	4NEq019llvS9hMws0gJNSIucwx3FnnidF4no6uxIJcdT5gVhM/GdbXN49MI87LgDLDsucdnFAMq
	a6RGMuk7YNOWLRpml7jWnJZRizgGff8da9la4+25oAlBLC5pYxurOw+KiDRZBuISdbApQUTO3IL
	h0QGpBuyFeDMxBsSPRsgPDz6WwfQeKf+HjS4587crEv11/vqOcjO9Lj8bedqwiaTOLd2JFR+Jcd
	udZJxIhqu6gtknWNbXEB82SYP1InF/O4ddxILRt9
X-Received: by 2002:a0c:f096:0:20b0:71f:b221:9aa9 with SMTP id 6a1803df08f44-73a3dbf58a3mr126150596d6.29.1757447048537;
        Tue, 09 Sep 2025 12:44:08 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGX4PCNIKB/yYeW579ZCoRdqhqk9+v5tBx3jcJHlhQeyakBTISiG7ESl7W9BbMi31vV1HovFg==
X-Received: by 2002:a0c:f096:0:20b0:71f:b221:9aa9 with SMTP id 6a1803df08f44-73a3dbf58a3mr126150386d6.29.1757447048137;
        Tue, 09 Sep 2025 12:44:08 -0700 (PDT)
Received: from [192.168.0.241] ([198.48.244.52])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-74910ab06aesm49629856d6.17.2025.09.09.12.44.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 09 Sep 2025 12:44:07 -0700 (PDT)
Message-ID: <0dc0e482-1d1d-4a15-aea8-2f24ec7187a4@redhat.com>
Date: Tue, 9 Sep 2025 15:44:06 -0400
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] man/man2/sigaction.2: Update si_code list with Linux
 v6.16
To: Thiago Jung Bauermann <thiago.bauermann@linaro.org>,
 Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
References: <20250909191357.44951-1-thiago.bauermann@linaro.org>
From: Carlos O'Donell <carlos@redhat.com>
Content-Language: en-US
Autocrypt: addr=carlos@redhat.com; keydata=
 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
 m/A+1AHg4g==
Organization: Red Hat
In-Reply-To: <20250909191357.44951-1-thiago.bauermann@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 9/9/25 3:13 PM, Thiago Jung Bauermann wrote:
> Update with missing si_code values from Linux v6.16's
> include/uapi/asm-generic/siginfo.h.

LGTM.

Reviewed-by: Carlos O'Donell <carlos@redhat.com>

> Signed-off-by: Thiago Jung Bauermann <thiago.bauermann@linaro.org>
> ---
> 
> Changes in v2:
> - Make all the entries added by this patch that have parenthesized notes
>    use .BR. Some were erroneously using .B in v1.
> - Add "... and glibc 2.43" note to TRAP_PERF, SYS_SECCOMP and
>    SYS_USER_DISPATCH (suggested by Carlos and Alejandro).
> 
>   man/man2/sigaction.2 | 51 ++++++++++++++++++++++++++++++++++++++++++--
>   1 file changed, 49 insertions(+), 2 deletions(-)
> 
> diff --git a/man/man2/sigaction.2 b/man/man2/sigaction.2
> index 8d08a8c409d9..d6eced0761d7 100644
> --- a/man/man2/sigaction.2
> +++ b/man/man2/sigaction.2
> @@ -652,6 +652,9 @@ or
>   .\" SI_DETHREAD is defined in Linux 2.6.9 sources, but isn't implemented
>   .\" It appears to have been an idea that was tried during 2.5.6
>   .\" through to Linux 2.5.24 and then was backed out.
> +.TP
> +.B SI_ASYNCNL
> +Async name lookup completion.
>   .RE
>   .P
>   The following values can be placed in
> @@ -716,6 +719,12 @@ Floating-point invalid operation.
>   .TP
>   .B FPE_FLTSUB
>   Subscript out of range.
> +.TP
> +.BR FPE_FLTUNK " (since Linux 4.17)"
> +Undiagnosed floating-point exception.
> +.TP
> +.BR FPE_CONDTRAP " (PARISC only)"
> +Trap on condition.
>   .RE
>   .P
>   The following values can be placed in
> @@ -742,6 +751,24 @@ See
>   .BR pkeys (7).
>   The protection key which applied to this access is available via
>   .IR si_pkey .
> +.TP
> +.BR SEGV_ACCADI " (since Linux 4.17, SPARC only)"
> +Application Data Integrity not enabled for mapped object.
> +.TP
> +.BR SEGV_ADIDERR " (since Linux 4.17, SPARC only)"
> +Disrupting Memory Corruption Detection error.
> +.TP
> +.BR SEGV_ADIPERR " (since Linux 4.17, SPARC only)"
> +Precise Memory Corruption Detection exception.
> +.TP
> +.BR SEGV_MTEAERR " (since Linux 5.10, ARM only)"
> +Asynchronous Memory Tagging Extension error.
> +.TP
> +.BR SEGV_MTESERR " (since Linux 5.10, ARM only)"
> +Synchronous Memory Tagging Extension exception.
> +.TP
> +.BR SEGV_CPERR " (since Linux 6.10)"
> +Control protection fault.
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
> +.TP
> +.BR TRAP_PERF " (since Linux 5.13 and glibc 2.43)"
> +Perf event with sigtrap=1.

OK.

>   .RE
>   .P
>   The following values can be placed in
> @@ -839,17 +872,31 @@ High priority input available.
>   Device disconnected.
>   .RE
>   .P
> -The following value can be placed in
> +The following values can be placed in
>   .I si_code
>   for a
>   .B SIGSYS
>   signal:
>   .RS 4
>   .TP
> -.BR SYS_SECCOMP " (since Linux 3.5)"
> +.BR SYS_SECCOMP " (since Linux 3.5 and glibc 2.43)"

OK.

>   Triggered by a
>   .BR seccomp (2)
>   filter rule.
> +.TP
> +.BR SYS_USER_DISPATCH  " (since Linux 5.11 and glibc 2.43)"
> +Syscall user dispatch triggered.

OK.

> +.RE
> +.P
> +The following value can be placed in
> +.I si_code
> +for a
> +.B SIGEMT
> +signal:
> +.RS 4
> +.TP
> +.BR EMT_TAGOVF " (SPARC only)"
> +Tag overflow.
>   .RE
>   .SS Dynamically probing for flag bit support
>   The
> 
> base-commit: e86f9fd0c279f593242969a2fbb5ef379272d89d
> 


-- 
Cheers,
Carlos.


