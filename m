Return-Path: <linux-man+bounces-3758-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 24513B3C21A
	for <lists+linux-man@lfdr.de>; Fri, 29 Aug 2025 19:55:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DAE3F586247
	for <lists+linux-man@lfdr.de>; Fri, 29 Aug 2025 17:55:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 749AA340DAD;
	Fri, 29 Aug 2025 17:55:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="hCJJrXud"
X-Original-To: linux-man@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ACBFF33769B
	for <linux-man@vger.kernel.org>; Fri, 29 Aug 2025 17:55:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756490111; cv=none; b=OugqKLlQczqFXyKAacRKPX3u0Ee0JkVbDdufwB4f/I5ggb2JJzrmncLLcrxat7/ac8nZWjk2os5M2BW2JcxRGZG9pUUBlL+GfilIRhK6USLeyhp3brZhpWoDQQuot5cn73VkHdkze/WlzjnWMIY5ndZaUcafsLAjm1utLR8+Ix8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756490111; c=relaxed/simple;
	bh=Uwfk0eHlwy8uZBuSLQVz0BnRvrohIY9rbFsbOsDSybo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=JUvPZch+fmRQ5QhnyUyXWDr4zau6XchIxewkLJgIFvBUEcDhVr0IB/1ZoAkoQSWUeHeDcve1bRIWlUxky2dogUu6tbzpQpftkC/1Wj4AWNS9eVj7cuuR7jhmXe05nWnoqKYCUsqr4Ma9ma9KaU844v0LYEDhsehLCgv4hvQO6vA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=hCJJrXud; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1756490108;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=jyzU+Xmz+mrM28lik6eJAvyGeC0q+6spzdXmD+VryPk=;
	b=hCJJrXudxA8T+5iGLmLU8MVl/eDqmWPvaTncUE/yunFZDldNn3lP8DJ29n+u0xgpM00u7U
	r3lT603KqRk/08np8dNC4OLhARNjXAnHomUMgxRNUBytpnGPTgOcYQXrDu9r8MtO92gtu7
	n1EQBPlfy/T3ofBU797vhqlAuVG2sIE=
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com
 [209.85.219.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-591-w6baCgj3OaKCqMJOSWHODA-1; Fri, 29 Aug 2025 13:55:01 -0400
X-MC-Unique: w6baCgj3OaKCqMJOSWHODA-1
X-Mimecast-MFC-AGG-ID: w6baCgj3OaKCqMJOSWHODA_1756490101
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-70dd6d25609so56149386d6.0
        for <linux-man@vger.kernel.org>; Fri, 29 Aug 2025 10:55:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756490101; x=1757094901;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:from:references:cc:to:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=jyzU+Xmz+mrM28lik6eJAvyGeC0q+6spzdXmD+VryPk=;
        b=C4uNafzmzQyV42pmuTAP8s1dU7skfn60pRe96qv5vwt7QOWr06OKVy0j8OaDCcYhmG
         9cFrSIDuCoSd8Ct3QeqN5p2SGDNmKnRrPUejN4AENeGJfnTJUeyMWCAj21r9S92pcfND
         RjKepDoS99xX6ku8CNidfmZJU51gzpyfC/6kLC415+t5LYHRo9u1O//jN/mw3GzxlsyR
         eqbqrRizAB0iLyrPDEwOIBFZ+8+7hxljON9c2qfICuGjEK/rQi5wrOdPKGF+CklHvDKg
         ZFmR18VUopDm7rUoSCNsHCCtthCd8HMzyimMyn9a3vkTgA5Ib7+tB1EXOTGp1P2UwIa1
         ppSQ==
X-Forwarded-Encrypted: i=1; AJvYcCXperbSz0Vwsvjcer2sI/I+b8nGfrOrAomSNe95XeJ0Ltp5plEa4jdWrL6JzI7lJcOfHyvwjqEq694=@vger.kernel.org
X-Gm-Message-State: AOJu0YwuGKLmLSU4+PMB2WztIyo/qhGJ4u0qn/++63KzYIlkHkZwB8+i
	f4GP9J63cgKJzxEj0rjIbP2vWtTM+yMlBTHYF5/C3dnfjrt+ytMkTbOJ+JsCEoWK/qqjW8Fp2QS
	SWANFlbxM+8b4O2gEf6S8onNHKfsEbUF7qvGqpVdSY/Nu7hJxKvhIlvpkTGXo8Q==
X-Gm-Gg: ASbGnctR+eNnjm3g37RcSonVhxY34hLfHQkrT2OL4GX5epuMGGflaExbcmt4huorYUw
	JjZfqJVEXvR6aHAZ2PWHMc6irzAMXFfXksMikp22sFlsS9h9iUtRry6c9mWFKm35nWH0iuiOpwj
	20IgvcdWi59x4a5mVg5TwbTWmQpKrcbqLa2x24ZulI0hLGNbPothUPA/aakji02Ufk7DRW6k2H4
	tZdWSyh3fUUDdtRLLBXXUPa0wWR5AauyX/oY5IdKLNU0h6jf4iDHJfHGfH6Kup2KvYquaKpNZV9
	29rCWLkquSosOw8CiDJsjIa5uNeLzkSi+Yn/4dxS
X-Received: by 2002:a05:6214:1c48:b0:70d:c11c:a3db with SMTP id 6a1803df08f44-70dc11ca50bmr198796806d6.40.1756490101028;
        Fri, 29 Aug 2025 10:55:01 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGQ60N52NE9MsMKOUYhrxRpFVIMIApl2YHvF2jXFyrCBGlXMOIM4upwu4noHWLIqcnjg2FqRQ==
X-Received: by 2002:a05:6214:1c48:b0:70d:c11c:a3db with SMTP id 6a1803df08f44-70dc11ca50bmr198796476d6.40.1756490100517;
        Fri, 29 Aug 2025 10:55:00 -0700 (PDT)
Received: from [192.168.0.241] ([198.48.244.52])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-70e6250cc5dsm19769566d6.54.2025.08.29.10.54.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 29 Aug 2025 10:54:59 -0700 (PDT)
Message-ID: <710e8f05-b0b3-489a-9e89-8967cf6a9e70@redhat.com>
Date: Fri, 29 Aug 2025 13:54:58 -0400
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/4] man/man2/futex.2: Recycle two gmane URLs
To: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Cc: linux-kernel@vger.kernel.org, linux-man@vger.kernel.org,
 Alejandro Colomar <alx@kernel.org>, =?UTF-8?Q?Andr=C3=A9_Almeida?=
 <andrealmeid@igalia.com>, Darren Hart <dvhart@infradead.org>,
 Davidlohr Bueso <dave@stgolabs.net>, Ingo Molnar <mingo@redhat.com>,
 Juri Lelli <juri.lelli@redhat.com>, Peter Zijlstra <peterz@infradead.org>,
 Thomas Gleixner <tglx@linutronix.de>,
 Valentin Schneider <vschneid@redhat.com>, Waiman Long <longman@redhat.com>
References: <20250829160200.756194-1-bigeasy@linutronix.de>
 <20250829160200.756194-4-bigeasy@linutronix.de>
 <1ced3c16-1534-4e43-8025-2301c134bbdd@redhat.com>
 <20250829173928.K82VGvOw@linutronix.de>
From: Carlos O'Donell <carlos@redhat.com>
Content-Language: en-US
Autocrypt: addr=carlos@redhat.com; keydata=
 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
 m/A+1AHg4g==
Organization: Red Hat
In-Reply-To: <20250829173928.K82VGvOw@linutronix.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 8/29/25 1:39 PM, Sebastian Andrzej Siewior wrote:
> On 2025-08-29 12:43:26 [-0400], Carlos O'Donell wrote:
>>> index 69df4036ada7f..027e91b826bf1 100644
>>> --- a/man/man2/futex.2
>>> +++ b/man/man2/futex.2
>>> @@ -6,10 +6,10 @@
>>>    .\"
>>>    .\" FIXME Still to integrate are some points from Torvald Riegel's mail of
>>>    .\" 2015-01-23:
>>> -.\"       http://thread.gmane.org/gmane.linux.kernel/1703405/focus=7977
>>> +.\"       https://lore.kernel.org/lkml/1422037788.29655.0.camel@triegel.csb
>>
>> Wrong link?
>>
>> Should be this link:
>> https://lore.kernel.org/lkml/1422037145.27573.0.camel@triegel.csb/
>>
>> Where the discussion is about the unresolved constraint to guarantee FIFO order.
> 
> I thought it is the longer email, the second that day, where he made
> three points. Didn't read it (yet)…

Given the dates and the disjoint set of topics, my suggestion is the link above.

> Now FIFO ordering you say. Is it glibc's side or kernel side? The kernel
> sorts the futex waiters according their (task's) priority. It is not
> FIFO unless the tasks are of equal priority.

The FIFO order question was a kernel-side question wrt futex semantics.
At least that's how I read the thread. And the issue was resolved, but possibly
not documented. Documentation might include stating "FIFO ordering over all
waiters, or even a subset of waiters (at the same priority level) is not
guaranteed."

Torvald was right that for POSIX condition variables we would naturally want
a FIFO wake order so earlier sleepers are woken first.

> So a futex requeue will take the task with the highest priority from
> uaddr1 and move it to uaddr2.

Right.

-- 
Cheers,
Carlos.


