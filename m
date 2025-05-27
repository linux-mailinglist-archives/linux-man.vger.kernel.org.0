Return-Path: <linux-man+bounces-3026-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B9625AC4E86
	for <lists+linux-man@lfdr.de>; Tue, 27 May 2025 14:17:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 93C3E3BBE21
	for <lists+linux-man@lfdr.de>; Tue, 27 May 2025 12:14:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 687081E520F;
	Tue, 27 May 2025 12:12:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="ClzbvxbU"
X-Original-To: linux-man@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CBB2267B73
	for <linux-man@vger.kernel.org>; Tue, 27 May 2025 12:12:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748347968; cv=none; b=E7L2EsjK2xQ/aXPwBDBr8XygTSxmsF6F2IKmtg1ocNnBlwMRPU0xmXC4FaWEox8ugzWCdBoINPFO6u5uV74L1WS2fFjgMp30WO1wLQCHBsMbK1vsy1Ig85c1inQhDbbJYcmu3G5u8iPdoBDnbQ+bRvQkEYD+QrZLUyTzGL6uamY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748347968; c=relaxed/simple;
	bh=GQim2D1uzJbsRGs71OFgGxp2Kd7flAR22kP+oG6+Rp8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=hqfRC2vP3dL5Ln+BbsnYY3k8AiqM/6R2f4SR3cUceOKLWcPSZGUVxpAJLU1GJAK4Dbn029PCA/Gu2YImxcbtFXkYrtS2k/rBh6fRYumBBm0RE94mZIR732JlhtRPxruMKBty8qgqfEG7WuUTKJwkF0Smv0oiuruPiUoqFFxtgGQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=ClzbvxbU; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1748347964;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=YXN27afcgL0XUATMQI6ylUC5y0C5+hyJCMefowN41HI=;
	b=ClzbvxbUhEfpVtNZ3mu3VZrws3kQxVTXqx5JLk814ssWUUkp7IfTheZ5+TqbdJVHtL0tQd
	8qGWWXOmeLr+zamphb1raOxNkFXzOK/kkYLKLlDIa2oeqxhOg4NPGROZ9eubzcnW6AnniC
	cnAMb/K/522IX9DEyZk5JdAqiz5ezq4=
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com
 [209.85.219.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-684-GbcUDyUWMluYfXjeba_fDw-1; Tue, 27 May 2025 08:12:43 -0400
X-MC-Unique: GbcUDyUWMluYfXjeba_fDw-1
X-Mimecast-MFC-AGG-ID: GbcUDyUWMluYfXjeba_fDw_1748347963
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-6f8e23d6657so54177046d6.2
        for <linux-man@vger.kernel.org>; Tue, 27 May 2025 05:12:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748347963; x=1748952763;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YXN27afcgL0XUATMQI6ylUC5y0C5+hyJCMefowN41HI=;
        b=LNRGYy/2H/OfRphBpGGGp+jvKByS3QnipVqy9Hfl1mqLHq2fLHPJXk24gP+uKNFVj1
         0FDKVEyNDTkp/ch/UNx03SeNMnAVIcTihfzbJsIOZkGalKwFiEZpNpUckxwRsn57aeai
         3UNum6nsuC9Mnd9akl94HnO9rRPKLma2DyfZU9pG2eLV1EN3xlA24rQ+F+eZrddnQ+re
         ZAMfRQIFlyB2ZtnkXP2odwZ3Kc9CuiUo0xIUsQN1N4JKKb5sS9KOtcMaIe9QuoiBxIQE
         dTsy9Gv7tiMMyLgamEmwmqjk2nA0nhJZOVckBtxKYeONW6eEoyj48Fr2qfZqbXFIIpyM
         dUHA==
X-Forwarded-Encrypted: i=1; AJvYcCW6CuBDEn9pgDJ8XnWEiebYmsmZQNQztv8oieaF3HpAodaNA5Av2rpBrbtLFj3WGyEqSmBgYTwNdb0=@vger.kernel.org
X-Gm-Message-State: AOJu0YxkC22leMiQY936uA77gRBkZzICUaDpPU9Oo4R2bsyAhh3gk1xP
	Xmqwyqtho7AZaRI9G46EeFjgB17bRFpvLQ0HSAuzxsTrxMIbV2ISzfwYaorbTQcDVczYCUYXfF2
	wUIMvTFIekxjAUBgS1svtdwy7udoXI/uNk6F94AwxGUxZ+KyDZTAZr0bsGI02LQ==
X-Gm-Gg: ASbGncsQKLpWDMbTwL9WbZQcqRBEpSBpr9zk+crXAHGCqFYGX2WCNDCcLTU4whKvte0
	tG5+rK833vDb7/zaTtyAV5YNNxjCGjd7zQTXLETNoSU4DXDByTHU1w2HTGujrqJzaV++ofSlPnK
	YKQi8YGOV4qhaxS+8z0BgsQ52LnO1qSl44kG6srYHDLuIj+ULaLrUFn1PcDExjSxxVhVeRThgPA
	vNfKt54fSAnKzg2fIkX3ChXIN7V0U2po4fj45/2e6eWVtwSrlfnV30r5iKo04YzySCTmkE0Ks2v
	dw1k62extYkD
X-Received: by 2002:ad4:42ce:0:b0:6fa:a0c2:c384 with SMTP id 6a1803df08f44-6faa0c2c3c8mr141493296d6.4.1748347963046;
        Tue, 27 May 2025 05:12:43 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEfUEBa2Wg8qt8F+FfDQRA2CsjnChj3twgRngATIFotScRYuIjOkG9uQ8lONedNfQCghXhrNA==
X-Received: by 2002:ad4:42ce:0:b0:6fa:a0c2:c384 with SMTP id 6a1803df08f44-6faa0c2c3c8mr141493106d6.4.1748347962701;
        Tue, 27 May 2025 05:12:42 -0700 (PDT)
Received: from [192.168.0.241] ([198.48.244.52])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-6faa050c0b8sm46709376d6.74.2025.05.27.05.12.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 May 2025 05:12:42 -0700 (PDT)
Message-ID: <7d4c29a5-6836-48bd-a6c8-009264be000c@redhat.com>
Date: Tue, 27 May 2025 08:12:41 -0400
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: bug in futex.2, FUTEX_CMP_REQUEUE
To: Alejandro Colomar <alx@kernel.org>, =?UTF-8?B?SuKCkeKCmeKCmyBHdXN0ZWR0?=
 <jens.gustedt@inria.fr>
Cc: Michael Kerrisk <mtk.manpages@gmail.com>, linux-man@vger.kernel.org,
 Ulrich Drepper <drepper@redhat.com>, Ingo Molnar <mingo@kernel.org>,
 Todd Lewis <todd.lewis@gs.com>, Alexandre Oliva <aoliva@redhat.com>
References: <20250527115303.3304206e@inria.fr>
 <s5ec3atfffzxdetxbkjgkdiarnuk2yucnpi5j3h3ppqr72mxna@ml6zpucwnbz6>
Content-Language: en-US
From: Carlos O'Donell <carlos@redhat.com>
Autocrypt: addr=carlos@redhat.com; keydata=
 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
 O0FatDMfJw==
Organization: Red Hat
In-Reply-To: <s5ec3atfffzxdetxbkjgkdiarnuk2yucnpi5j3h3ppqr72mxna@ml6zpucwnbz6>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 5/27/25 8:01 AM, Alejandro Colomar wrote:
> [Added a few people to CC]
> 
> Hi Jens,
> 
> On Tue, May 27, 2025 at 11:53:03AM +0200, Jₑₙₛ Gustedt wrote:
>> Hello Alex and everybody,
>> I stumbled upon this confusing text in the futex man page
>>
>>    Typical values to specify for `val` are `0` or `1`.  (Specifying
>>    `INT_MAX` is not useful, because it would make the
>>    `FUTEX_CMP_REQUEUE` operation equivalent to `FUTEX_WAKE`.)  The
>>    limit value specified via `val2` is typically either `1` or
>>    `INT_MAX`.  (Specifying the argument as `0` is not useful, because
>>    it would make the `FUTEX_CMP_REQUEUE` operation equivalent to
>>    `FUTEX_WAIT`.)
>>
>>    The `FUTEX_CMP_REQUEUE` operation was added as a replacement for the
>>    earlier `FUTEX_REQUEUE`.  The difference is that the check of the
>>    value at `uaddr` can be used to ensure that requeueing happens only
>>    under certain conditions, which allows race conditions to be avoided
>>    in certain use cases.
>>
>>
>> This has several issues, the most severe beeing the word `FUTEX_WAIT`.
>>
>> - How can an operation that only does wakes, ever be equivalent to a
>>    wait?
> 
> That seems to be a typo.  It seems to me that it would be equivalent to
> FUTEX_WAKE (just like a few sentences before).

As noted in my earlier response, this is not a typo?

> <https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/commit/?h=contrib&id=74aa7971e5148f67d5def9977ed87cced638016a>
> 
> 	commit 74aa7971e5148f67d5def9977ed87cced638016a
> 	Author: Alejandro Colomar <alx@kernel.org>
> 	Date:   Tue May 27 13:07:19 2025 +0200
> 
> 	    man/man2/futex.2: tfix
> 	
> 	    Fixes: 3dfcc11d4630 (2015-12-15; "futex.2: Expand description of FUTEX_CMP_REQUEUE")
> 	    Fixes: 8297383e9eeb (2015-12-15; "futex.2: Clean-ups and FIXME removeal after feedback from Thomas Gleixner")
> 	    Reported-by: Jens Gustedt <jens.gustedt@inria.fr>
> 	    Signed-off-by: Alejandro Colomar <alx@kernel.org>
> 
> 	diff --git a/man/man2/futex.2 b/man/man2/futex.2
> 	index 128612ee1..9a15a0fdb 100644
> 	--- a/man/man2/futex.2
> 	+++ b/man/man2/futex.2
> 	@@ -501,7 +501,7 @@ .SS Futex operations
> 	 (Specifying the argument as 0 is not useful, because it would make the
> 	 .B FUTEX_CMP_REQUEUE
> 	 operation equivalent to
> 	-.BR FUTEX_WAIT .)
> 	+.BR FUTEX_WAKE .)

This is incorrect.

A value of zero means no tasks are woken.

The key question here is how do you define or document the semantics
of the linked WAKE/WAIT that puts the tasks in the new queue.

-- 
Cheers,
Carlos.


