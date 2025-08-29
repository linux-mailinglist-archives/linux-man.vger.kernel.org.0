Return-Path: <linux-man+bounces-3757-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F23FB3C206
	for <lists+linux-man@lfdr.de>; Fri, 29 Aug 2025 19:46:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C50141C84B0A
	for <lists+linux-man@lfdr.de>; Fri, 29 Aug 2025 17:47:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5A0E9343212;
	Fri, 29 Aug 2025 17:46:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="U/PhXOyL"
X-Original-To: linux-man@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 833403431FF
	for <linux-man@vger.kernel.org>; Fri, 29 Aug 2025 17:46:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756489588; cv=none; b=ZTAa4r7DOnMm/oVSdTX09YKc7LD+ejsjX/M7ScGLif5m6MhjqVQ//AhxOYYDdWbaABCBDiE38usSGZnWGXEfRYDJOaUZv7XhT/BBV79QxCkGfD6C+w6trOrYMLlrqlsMH92MQZmX0pfeOm4sjuY4a08RldrCrAGNkrW7dlj8z6g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756489588; c=relaxed/simple;
	bh=3G+k0yo5xGqxv8+xokTG3fyHeBHbRPcT0xV/+rZ1TLI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=PJz6bLt8mp5ius+uG3KdcXe40XzifnnZ33osnSIyMFdNXNKHWW02BuTaq7Jmrfuo48oDVjWnUNaAV+dTPUzJwYARaOnx7IwvzRkzQ2/IiRvQzVuIP+oYHYvTtyJa9SCBUCyzQ2NZHLV7NxS1U5VMF/Ps6d+vwfM+aTdA7XHIlmc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=U/PhXOyL; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1756489585;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=xpkyBl6jHkLUOO/9TmMsNVP2LbdDm9cULxNJSm9O18M=;
	b=U/PhXOyL2Ba7MUqIowb53HLEW+vUWx5liM1VIiohPqpwkOmy8eCzmTnKy+WqEG/u/mJ5fh
	y+P6G1KpmXrtiac55hIL2APYG2ZEgAbTQkgQUwqBio8HG1x/JHdMNHJft5V92yzw59kEMJ
	R/VraNs5/3wf0uv5WaBek7Juipk6DJw=
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com
 [209.85.219.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-36-MmTEDOBcMEufWM-NtZ4tQQ-1; Fri, 29 Aug 2025 13:46:23 -0400
X-MC-Unique: MmTEDOBcMEufWM-NtZ4tQQ-1
X-Mimecast-MFC-AGG-ID: MmTEDOBcMEufWM-NtZ4tQQ_1756489582
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-70ddb4037b2so61694406d6.3
        for <linux-man@vger.kernel.org>; Fri, 29 Aug 2025 10:46:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756489582; x=1757094382;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:from:references:cc:to:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=xpkyBl6jHkLUOO/9TmMsNVP2LbdDm9cULxNJSm9O18M=;
        b=EUTh/qrEGbapLYkVxDIvvhT7Ky9i+GkSPQZEywc7BGPARXsWCavr2cFqdeStkNPOm1
         jc6rgJgkuhoFVO5c63y+Gj88Q0jbxl++SK4Ymv1US/yT+fA/duKqyr2ljrrbM2R4mB37
         gIz6NfprcTT/58oUPa20oeVBLtfXOufxglfF2TJU7HOjjTChX5Bor6ArspMGCSEuGZKj
         zOabXDjCnMACcvNUbhynK6Dl+/DJjKerbKaqTputU9LvUqmV6J2RuORioNH1mcUDxQy+
         zNxSeQ1YC6kGLKEAlDdd8DucpYLPo+hZt4WaORjsHeMxm6AauV8Iyrt7lby0HXBwxl4m
         UrJw==
X-Forwarded-Encrypted: i=1; AJvYcCWuGw42xek0HmHYHC+nJm+2Ls/j7gjT6HfDsVt177FbmipcOnMKaxivfOJOyEkoJuQHR91zfvD8KLU=@vger.kernel.org
X-Gm-Message-State: AOJu0YwTsluwSkoq2ndR6YZbz1fVhq0+sza4aadpSRcSCy+zwMNlEL94
	vNZ6I6UmKNx0CK7FVZCaSXxrHdx2sRtQm4YV+kgWLmFyG4Y/X05kGPz20SMIiG5YWqdgzwWr3NG
	8csAm1CPLdLQmvyLDwYWGmi16+f0IuM/fjWAsIjvqp6y63+biOfGRACWS9RUuOg==
X-Gm-Gg: ASbGnctycWL2WYFbygUHgvnZdFJJcSXCIPres0DsaBjt3sqEw2trKGkmZgsmt1X9vyu
	LtnNllrPwxloCS7sh5n9z/7pfpM6370ZCLILQS2lgHA+VKHklJ9xO64Wlq2sS9IOzAcDAt+o7CO
	QWbqndFY0Ox2UuExzLOieua8rmVGkFFVp+8ymPf6qXuXPyMoLQ6feAs+6iM2j5Zth3pG5uwik3W
	Qm9j4uV6bX0reIGH6MSf9d8VMLSg3dA8DuQgYD+t+HpdRU3BR7fiMbg/6KMRM7YSCc9C8kJ/OB3
	peppsvNtLoyLJAwJf/p4xz7k019VxaBXPZ2RN0VA
X-Received: by 2002:a05:6214:e88:b0:70d:fa79:baeb with SMTP id 6a1803df08f44-70dfa79bd27mr69696676d6.41.1756489582399;
        Fri, 29 Aug 2025 10:46:22 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHn+O26Aut48rhtWglM+XHYnVAc3TmADm6Tzi9KKj+8etiso7nPi4wKnrZNKvnKfdyTFd8xhg==
X-Received: by 2002:a05:6214:e88:b0:70d:fa79:baeb with SMTP id 6a1803df08f44-70dfa79bd27mr69696346d6.41.1756489582004;
        Fri, 29 Aug 2025 10:46:22 -0700 (PDT)
Received: from [192.168.0.241] ([198.48.244.52])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-70e624d041asm20423936d6.48.2025.08.29.10.46.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 29 Aug 2025 10:46:20 -0700 (PDT)
Message-ID: <1b4b0a00-3e80-49a9-bee4-2c7a90e85941@redhat.com>
Date: Fri, 29 Aug 2025 13:46:19 -0400
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/4] man/man2/futex.2: Add a pointer to Linux'
 memory-barrier
To: Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 linux-kernel@vger.kernel.org, linux-man@vger.kernel.org
Cc: Alejandro Colomar <alx@kernel.org>, =?UTF-8?Q?Andr=C3=A9_Almeida?=
 <andrealmeid@igalia.com>, Darren Hart <dvhart@infradead.org>,
 Davidlohr Bueso <dave@stgolabs.net>, Ingo Molnar <mingo@redhat.com>,
 Juri Lelli <juri.lelli@redhat.com>, Peter Zijlstra <peterz@infradead.org>,
 Thomas Gleixner <tglx@linutronix.de>,
 Valentin Schneider <vschneid@redhat.com>, Waiman Long <longman@redhat.com>
References: <20250829160200.756194-1-bigeasy@linutronix.de>
 <20250829160200.756194-5-bigeasy@linutronix.de>
From: Carlos O'Donell <carlos@redhat.com>
Content-Language: en-US
Autocrypt: addr=carlos@redhat.com; keydata=
 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
 m/A+1AHg4g==
Organization: Red Hat
In-Reply-To: <20250829160200.756194-5-bigeasy@linutronix.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 8/29/25 12:02 PM, Sebastian Andrzej Siewior wrote:
> The "totally ordered with respect to concurrent operations" part refers
> to memory ordering/ atomic update and has nothing to do with the inner
> workings of the FUTEX code. It simply tries to express that the futex
> operation will compare the supplied argument with that is written in
> memory.
> 
> This might be a tad too verbose but then there is a fixme asking for
> details on the sychronisation. Maybe a pointer to the memory barriers is
> enough in terms of the required synchronisaton. Assuming this is related
> to the memory value and not the futex internal synchronisation.
> 
> Signed-off-by: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
> ---
>   man/man2/futex.2 | 8 +++-----
>   1 file changed, 3 insertions(+), 5 deletions(-)
> 
> diff --git a/man/man2/futex.2 b/man/man2/futex.2
> index 027e91b826bf1..fe4a239c3812c 100644
> --- a/man/man2/futex.2
> +++ b/man/man2/futex.2
> @@ -84,16 +84,14 @@ on the same futex word.
>   .\"     would be sufficient? Or perhaps for this manual, "serialized" would
>   .\"     be sufficient, with a footnote regarding "totally ordered" and a
>   .\"     pointer to the memory-barrier documentation?
> +Please see
> +.IR https://docs.kernel.org/\:next/\:core-api/\:wrappers/\:memory-barriers.html
> +for the definition of atomic operations and memory ordering.

This seems out of place with the flow of the rest of the text.

I suggest adding this as a foot note.

>   Thus, the futex word is used to connect the synchronization in user space
>   with the implementation of blocking by the kernel.
>   Analogously to an atomic
>   compare-and-exchange operation that potentially changes shared memory,
>   blocking via a futex is an atomic compare-and-block operation.
> -.\" FIXME(Torvald Riegel):
> -.\" Eventually we want to have some text in NOTES to satisfy
> -.\" the reference in the following sentence
> -.\"     See NOTES for a detailed specification of
> -.\"     the synchronization semantics.

I think it is acceptable to link to Documentation/memory-barriers.rst, but
the truth is that this document doesn't yet provide all the notes required
to answer the questions wrt a futex. Fundamentally we use spinlocks for futexes
(and some arches use more like parisc), and spinlocks are covered in
"Implicit Kernel Memory Barrires", there isn't any direct connection between
them in the text (and doing so would create a design requirement).

>   .P
>   One use of futexes is for implementing locks.
>   The state of the lock (i.e., acquired or not acquired)


-- 
Cheers,
Carlos.


