Return-Path: <linux-man+bounces-3024-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 37C1AAC4D61
	for <lists+linux-man@lfdr.de>; Tue, 27 May 2025 13:30:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D001C3A5DB8
	for <lists+linux-man@lfdr.de>; Tue, 27 May 2025 11:30:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2134919C546;
	Tue, 27 May 2025 11:30:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="MmvcdorA"
X-Original-To: linux-man@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4196617B418
	for <linux-man@vger.kernel.org>; Tue, 27 May 2025 11:30:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748345418; cv=none; b=VlpPiqciVVu9GR8K3O4JVezpdkTMvUxgXUQWSY2GL63lSKHA08d23NBlUjPtRDxRrqBS9iuG2jySJIoqrcMGVtFDUt4cHDhRDHeIFr3XdE/hpY+L3NUjYEsOCBh0q+NGz7eWFg6jhaKCwX1Krk+iDwCl+GXSrhNjIYXGvjMTi2c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748345418; c=relaxed/simple;
	bh=RbmRL8Ub7pRv5XeUP3gX1vW0BwkREFMp+oEyCdY7ldA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=hLLKGrJlbTwzNoRgvF+rN+CGwMwYTWfjDGCjRcd4sTPUz9iC9BOAitT7DNI5YfmMmh4CacP3k++G6ImMQjj4qeydAetPs8NOcZy4S1ej7f/x6IxgtEjpAIRcGQLHUKSdcuW9PB26PWMi6xO1LlwksWrtSjwP29ZfLMD29J5O1ZA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=MmvcdorA; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1748345415;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=Ey5bzigfqHsu3QQz21O2obiIk6jtjpNk90kWid0bYlQ=;
	b=MmvcdorAtQZLH/RHn3YxaC+Bt0d0gcgSdgE04QhEY5TaiuJLhC7XAMJBzBJIRCMA1T9Wbs
	Q1sVQY6MeiByALSOsm9DlWEIX+DtIRZZre4i6p2ROQXaoc0UTIJbsfuHdnu+UrLmcQTriR
	so/SDhmD+ScGQzV86tBU9KhOvXMGlNc=
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com
 [209.85.219.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-649-wbCAc4yTOrGLkeTMsitNUQ-1; Tue, 27 May 2025 07:30:13 -0400
X-MC-Unique: wbCAc4yTOrGLkeTMsitNUQ-1
X-Mimecast-MFC-AGG-ID: wbCAc4yTOrGLkeTMsitNUQ_1748345413
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-6faa443fb86so25654346d6.3
        for <linux-man@vger.kernel.org>; Tue, 27 May 2025 04:30:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748345413; x=1748950213;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Ey5bzigfqHsu3QQz21O2obiIk6jtjpNk90kWid0bYlQ=;
        b=P+JkrZQTb/ccyrzqrBFRd9uibtqn9CarF6l2Ffrha4j0rcCF1gG3oSngm/8rIF6rRh
         5f3e+ROjsXYMGmM/UDRq+e/e7c61ONjbNrZZYOaMb5Cj+GQDDkjVrS56hlz1T+M6S+sQ
         Mh3wUSOaSvQrtw3srvR3hpplrjIIQO92LYGFEjgQrXAyhkHc1no/ssX9YJ6zD/skqoT9
         Itiw3kbrdDw7f44SdkqDr2Wja/g3h6UKSUusEAceZwMyimbyhVUy4K3j7NzP+P2hBjrB
         jKFH9p8OaPagIi76BdsK5lqAx9ELR0v4RdhVCSg1Z6l6N1qT2uPvw0G/KOrbvG7LIWdQ
         rIfg==
X-Gm-Message-State: AOJu0Yyzn0yyhSVVwH669bBivYLVaGzzXhQ/lqFyunS3hBkmjEy5go1B
	QLztglh3pyPbjTbx01lvYfCdFvucJmEWTVr3pKuhL0zdGenyWpIBIrgFbpcLhETamXVcn0eGBe6
	5yessbRSIzCU1g/Xd/6ntWLXtYqXPjwwc2ZuyBIX3TINcMOmzOFI60gtvgSPeJg==
X-Gm-Gg: ASbGncvn5T/Lz8u0aEYkezTI06Rkw5i47qD9Rfk1kvJklMtybzef2VdyD4hwcllEVfN
	nYfxyrM75ZtoS+pVc5AKYu0eCI22DnDatk3xFL6J51IpCRej4P4RFJsHgEBnK1HrJ3Y4ej6YvYH
	EFqY0W/aZ88g6J2w9PA/csaR1+5Lv1P4XMmzSN/L2WjM29P+3oT8BBTzLSt0l7dOKRUL4yZc8ye
	eNlXxE7P4cEsbfdoSeAQlLDjpdC5H5522u3b2yUtTasiW/bzsLcn0LSX9NyaAma7ehgZ+q1IX4p
	PTpFSdhx4AHa
X-Received: by 2002:a05:6214:21a3:b0:6f4:cfb3:9de1 with SMTP id 6a1803df08f44-6fa9d2b4a7bmr231151566d6.40.1748345413192;
        Tue, 27 May 2025 04:30:13 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFDp134piW4I2Vn+3DzCGl7Rw3k/L1qTxXb59wpYaDTah1XKtQ8QWzgP/FVysdv81Y/tynODA==
X-Received: by 2002:a05:6214:21a3:b0:6f4:cfb3:9de1 with SMTP id 6a1803df08f44-6fa9d2b4a7bmr231150946d6.40.1748345412760;
        Tue, 27 May 2025 04:30:12 -0700 (PDT)
Received: from [192.168.0.241] ([198.48.244.52])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-6faa80b98e9sm30839196d6.125.2025.05.27.04.30.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 May 2025 04:30:12 -0700 (PDT)
Message-ID: <8b77ea67-2662-411a-83c8-e0e23755244f@redhat.com>
Date: Tue, 27 May 2025 07:30:09 -0400
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: bug in futex.2, FUTEX_CMP_REQUEUE
To: =?UTF-8?B?SuKCkeKCmeKCmyBHdXN0ZWR0?= <jens.gustedt@inria.fr>,
 Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
References: <20250527115303.3304206e@inria.fr>
Content-Language: en-US
From: Carlos O'Donell <carlos@redhat.com>
Autocrypt: addr=carlos@redhat.com; keydata=
 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
 O0FatDMfJw==
Organization: Red Hat
In-Reply-To: <20250527115303.3304206e@inria.fr>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 5/27/25 5:53 AM, Jₑₙₛ Gustedt wrote:
> Hello Alex and everybody,
> I stumbled upon this confusing text in the futex man page
> 
>    Typical values to specify for `val` are `0` or `1`.  (Specifying
>    `INT_MAX` is not useful, because it would make the
>    `FUTEX_CMP_REQUEUE` operation equivalent to `FUTEX_WAKE`.)  The
>    limit value specified via `val2` is typically either `1` or
>    `INT_MAX`.  (Specifying the argument as `0` is not useful, because
>    it would make the `FUTEX_CMP_REQUEUE` operation equivalent to
>    `FUTEX_WAIT`.)
> 
>    The `FUTEX_CMP_REQUEUE` operation was added as a replacement for the
>    earlier `FUTEX_REQUEUE`.  The difference is that the check of the
>    value at `uaddr` can be used to ensure that requeueing happens only
>    under certain conditions, which allows race conditions to be avoided
>    in certain use cases.
> 
> 
> This has several issues, the most severe beeing the word `FUTEX_WAIT`.
> 
> - How can an operation that only does wakes, ever be equivalent to a
>    wait?

My opinion is that the text is correct.

The operation can WAKE tasks.

The operation can also cause tasks to WAIT in a *different* queue.

If zero tasks are woken (val==0), and all tasks moved to WAIT on a
different queue, then the operation has WAIT semantics on the
new and distinct queue.

Since there is no concept of MOVING in the futex, you could
conceptually discuss this as a linked WAKE/WAIT sequence i.e.
REQUEUE, which is what the operation does.

> But then, even if we assume that both subphrases mean to talk about
> `FUTEX_WAKE`, the assumption that this can ever be equivalent is
> bogus. In fact `FUTEX_CMP_REQUEUE` checks for `val3` still being
> pressent in the memory location, which `FUTEX_WAKE` doesn't.

Both subphrases are not meant to talk about FUTEX_WAKE.

> So I think that specifying any of the values that are pointed out in
> this paragraph can make sense, because of the added comparison to
> `val3`.
> 
> I suggest to change to something along
> 
>    The limit value specified via `val2` is typically either `1` or
>    `INT_MAX`. Specifying the argument as `0` makes the
>    `FUTEX_CMP_REQUEUE` operation equivalent to `FUTEX_WAKE`, only that
>    the operation then also ensures an atomic check for `*uaddr ==
>    val3`.  Typical values to specify for `val` are `0`, `1` or
>    `INT_MAX`.
> 
> 
>    The `FUTEX_CMP_REQUEUE` operation was added as a replacement for the
>    earlier `FUTEX_REQUEUE`.  The difference is that the check of the
>    value at `uaddr` can be used to ensure that requeueing happens only
>    under certain conditions, which allows race conditions to be avoided
>    in certain use cases.  In particular, a combination of `val == 1`
>    and `val2 == 0` is similar to the operation of `pthread_cond_signal`
>    with an additional check for `val3`; `val == 1` and `val2 ==
>    INT_MAX` is similar to `pthread_cond_broadcast` with such a check.

Does my clarification above obviate the need to make any changes?

Or do you think the text needs further clarification?

-- 
Cheers,
Carlos.


