Return-Path: <linux-man+bounces-3106-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id B2868ACF23F
	for <lists+linux-man@lfdr.de>; Thu,  5 Jun 2025 16:42:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 01C31188E726
	for <lists+linux-man@lfdr.de>; Thu,  5 Jun 2025 14:42:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6EFD51917FB;
	Thu,  5 Jun 2025 14:42:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="htSicnz4"
X-Original-To: linux-man@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60011184524
	for <linux-man@vger.kernel.org>; Thu,  5 Jun 2025 14:42:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749134526; cv=none; b=DGv5uPpmIHqGiNOYJh9HD3Ie3jsiZXYEwLx08zT+FTTQo/4aCZU3kbUtItUMccoXs9SVdMlJbEm38EM8vG27EDyugSMLS+8GlQvQ0U+5Nu+gpyzXk9tA8ZkPHzLNq8fQwqYDpe7ricFibkhKBVB01156Bc43MwV66CDiATk/58w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749134526; c=relaxed/simple;
	bh=q0mpL1+hUUritQDD1U8G5m/EeeOGsC4cofpwF7fZT9Y=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=fS68iaApTcWVkJE9kN0sWoFiYUkdS4eR7Hragk72ZRbBU0udVh0xgQd1tN+4jr2s1mTSQA6oCBbitST8S4zb5azRp3tskexU5TWWKWU4+PlYxvcjxfGVn06ZPHeXfxEVyd6PJOI/JbPuLhkInAVHNoWJsPlpexO1dC+85n0stB8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=htSicnz4; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1749134523;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=AZ3Y//3o9ts/OOAzI7feJbR5TjfvW5KrWdW45zpG0tU=;
	b=htSicnz4Z59Wa7/SNTO9W/M1q54V9H46muyad+Hv9LvF+SPJY3fe1Lrdn8opz18U0JgY/v
	bRioj4ydwvgeIY9SIqwlavbkkqqr8ALWmqtniKCDcz2yaZU932ILDUPXg29aVQpHhaqi3n
	2D5ZWAsQ8gN6IJ5q9UbTh5fV7jviJvY=
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com
 [209.85.222.197]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-227-9ydwFuuvM3K8iRZVDEwp8Q-1; Thu, 05 Jun 2025 10:42:02 -0400
X-MC-Unique: 9ydwFuuvM3K8iRZVDEwp8Q-1
X-Mimecast-MFC-AGG-ID: 9ydwFuuvM3K8iRZVDEwp8Q_1749134521
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7cd06c31ad6so335138085a.0
        for <linux-man@vger.kernel.org>; Thu, 05 Jun 2025 07:42:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749134521; x=1749739321;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AZ3Y//3o9ts/OOAzI7feJbR5TjfvW5KrWdW45zpG0tU=;
        b=fC/q9lCeLG6q6Y6ao/HeNf8pFVAgTrXiz0wMUUMUpTPP0l4hZEWHS56IAfm9K6xTtR
         Ou2gGUQBwQ5rRD7Iv3tUdk0D0R7ntbIEpFyPnKD/eHJRNLowllUtS1jiQ1Llx1PD4C5p
         1gHd6XOJ4ys23QpuJY+vmZIJ3mECi2HHfBvi3k9VARZxvWWcEztRPUHFhn5Oo55vJAgb
         cZFXujwoW3CE6orVopvJBgjvu6gCvpzTdAaoBn3ctd3+0452JpS5mb9tou2yZ82uiYI3
         kibfmPhQxqLNdcJu46XaxHD1rlFjQEAU4xETJprz273uqkQ+BVHRea4xlTnD0LK03qqt
         ouJA==
X-Gm-Message-State: AOJu0Yxgg5wFPpU6RcmpS6LMHtrYKFmp8zlWzOLSptETRAKMG5H25iRm
	ifyF86/hMc72WcUKNmxxi2BXBSpa2G5CQ1NCYHtQEY8a2a938quEEbhk2dlBZmKXh+CjTfgLdFY
	W7bwFeWBOVdN7zniweng5PoafwifcwbR8dG6ayYhK1Rf4hQjMon+WJ/ySGAqZQw==
X-Gm-Gg: ASbGncutljo/6ZXmuyDnWtiEslr/v9NhQ9myjPFLCDgSLofrwUe0TiAsm+C3Ihx+kjL
	dLxQ7vDgJSVn+isIISlEjYsoCz+pF4WlGkioUaGTGIP+yXLsG+GFyXTeIF2Te0tkSu9EEaFrHOT
	WqkeGEL14y+XoAiD1N6rri7GPPgN1E+/aNKCeZ3X9zxyQQRKAaiH7VzNICJoC/fXUAPgQ1njxlR
	M8vfHV6AN2L5oN6N68Tdu+/E06GghN11Vt+B6r5hyRhonTxznSw1tg0QjcmSBDGWy0E54XksWdA
	7F1qv3oYLudM
X-Received: by 2002:a05:620a:2894:b0:7ce:e8d6:37d7 with SMTP id af79cd13be357-7d2223a6ea4mr593131485a.4.1749134521412;
        Thu, 05 Jun 2025 07:42:01 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHl8SfcwJ69Y1SNMC5aBgorJlg3LWxRM5fO0ODSUYcUSP0NSA8533xp4XSuXN1PbsKbAv64rg==
X-Received: by 2002:a05:620a:2894:b0:7ce:e8d6:37d7 with SMTP id af79cd13be357-7d2223a6ea4mr593127885a.4.1749134521050;
        Thu, 05 Jun 2025 07:42:01 -0700 (PDT)
Received: from [192.168.0.241] ([198.48.244.52])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-7d09a1bb2desm1268104785a.117.2025.06.05.07.42.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Jun 2025 07:42:00 -0700 (PDT)
Message-ID: <fc73559f-e6bb-49b6-8ba1-b431b31d542d@redhat.com>
Date: Thu, 5 Jun 2025 10:41:59 -0400
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] man/man1/iconv.1: Mention that -c does not change exit
 status
To: Florian Weimer <fweimer@redhat.com>, Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
References: <87msamxso9.fsf@oldenburg.str.redhat.com>
Content-Language: en-US
From: Carlos O'Donell <carlos@redhat.com>
Autocrypt: addr=carlos@redhat.com; keydata=
 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
 O0FatDMfJw==
Organization: Red Hat
In-Reply-To: <87msamxso9.fsf@oldenburg.str.redhat.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 6/5/25 8:46 AM, Florian Weimer wrote:
> And that input decoding failures are treated as errors.
> 
> Exiting with status 0 is a POSIX conformance issue that was fixed
> in glibc 2.41.
> 
> Signed-off-by: Florian Weimer <fweimer@redhat.com>

Confirmed 6cbf845fcdc76131d0e674cee454fe738b69c69d is the correct glibc
git commit for this fix.

Confirmed it was fixed in glibc 2.41 along with several other iconv fixes.

Confirmed issue 8 contains the same language for -c and exit status must not change.

Reviewed-by: Carlos O'Donell <carlos@redhat.com>

> ---
>   man/man1/iconv.1 | 7 ++++++-
>   1 file changed, 6 insertions(+), 1 deletion(-)
> 
> diff --git a/man/man1/iconv.1 b/man/man1/iconv.1
> index 2c8ae0d29..111ff9e89 100644
> --- a/man/man1/iconv.1
> +++ b/man/man1/iconv.1
> @@ -55,6 +55,8 @@ is appended to
>   .IR to-encoding ,
>   characters that cannot be converted are discarded and an error is
>   printed after conversion.
> +(Characters that cannot be decoded are treated as an error with
> +or without this flag.)
>   .IP
>   If the string
>   .B //TRANSLIT
> @@ -73,8 +75,11 @@ transliterated are replaced with a question mark (?) in the output.
>   List all known character set encodings.
>   .TP
>   .B \-c
> -Silently discard characters that cannot be converted instead of
> +Discard characters that cannot be converted instead of
>   terminating when encountering such characters.
> +.\" glibc commit 6cbf845fcdc76131d0e674cee454fe738b69c69d
> +POSIX requires that this option does not change
> +the exit status of the program.
>   .TP
>   .BI \-\-output= outputfile
>   .TQ
> 
> base-commit: 3c2e9ebe2d5ea15a47c1669f75b280cea42a6f8b
> 
> 


-- 
Cheers,
Carlos.


