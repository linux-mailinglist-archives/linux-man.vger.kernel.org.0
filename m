Return-Path: <linux-man+bounces-2763-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 33364A83313
	for <lists+linux-man@lfdr.de>; Wed,  9 Apr 2025 23:15:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 028E916E923
	for <lists+linux-man@lfdr.de>; Wed,  9 Apr 2025 21:15:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6E00D1E834E;
	Wed,  9 Apr 2025 21:15:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="g+zxgHJS"
X-Original-To: linux-man@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6933319CD07
	for <linux-man@vger.kernel.org>; Wed,  9 Apr 2025 21:15:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744233328; cv=none; b=e7P1pj6PoLmwlEw/46CxT30W3y+VXHIlzPUBxYvkpff3xUkCTJ6Mpzp+bqKaafxSvb7arIKOm5p6aOiYGM+jVArIYkwwa8RTPYiFXmW6fb19U1A2QExsFfy2PFbYyJn9h43Q1M8BGl4s6AeDS50Dvmprvs+I+e7AarpWZ0D0RG4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744233328; c=relaxed/simple;
	bh=qCF2wXHKLW991AVhW+3VecKoifSeF2cgLrYFzmSC2BI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ej0cWuyQfzBQeeeRYHeC9CeVQjrhFxZG+SvwSMVs3w7YURw8JiRLJuLKcmCxM6OqRIhF8WQVNpUqJB2s4NgYxS2YEaSuxYLPVcNqBd22AeXXIZbFcUjkPbgFW+LJxK2hlgswBaPoMQe3NqH8FPrL39l+iJTl3jS/1IrvndIovms=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=g+zxgHJS; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1744233325;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=Vlzas4YYWPFnvGlxiDAGbnD3+GHfH4adVF22giFh3R0=;
	b=g+zxgHJSId8PNf3yvJsXrp1xCQBgULozJq1tj9FCTmMwG97FhcAwWstaxwZiGTPIBZAeW5
	vQ55QTQmFEUo7rt0z+k45t1Ouk53IdUlPEU3hxzOQLEtKtebZR/4eaMWwyAbfI+OlV6Nq1
	UdnPsVoSN6Qwae4B+e3x0yN2QkM+WF8=
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com
 [209.85.222.198]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-8-n5z7NIPYMpiPj3C2tHWpcQ-1; Wed, 09 Apr 2025 17:15:23 -0400
X-MC-Unique: n5z7NIPYMpiPj3C2tHWpcQ-1
X-Mimecast-MFC-AGG-ID: n5z7NIPYMpiPj3C2tHWpcQ_1744233323
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7c579d37eeeso32050385a.0
        for <linux-man@vger.kernel.org>; Wed, 09 Apr 2025 14:15:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744233323; x=1744838123;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Vlzas4YYWPFnvGlxiDAGbnD3+GHfH4adVF22giFh3R0=;
        b=bOVrKgjRRHEVX/6RV86xydK+xGHF2B6BcEvBv5pqgFrXq4XqNFWaRRXhlngHgICCKz
         ak+Gfq1UdwLLJPAUlbK9k8aRkXnHkAPLHBB8WXt2KqzgurQ1SILDOteGWHHGgzg3MIb9
         vdmb5Fat/wMU8Ipeq5BubU9XuqrHe0Er3VO1iuiqnc0tvlDhmWELKPQLuesE9Fbp6jfn
         I8ZL+1odOIXaU2MpGeVqOm7hQu/O/FrN8haoD1nzD2c1lE2E8Z7BufDPpBN3lG2ttXtJ
         nyPWYQHRKza7+HFP2GatIzWhJ3ATyqrDHY5dDkSQpUyQwlS5u/mwZPIfDph5MBtA0x4C
         dj3A==
X-Gm-Message-State: AOJu0YxOcfv5GX4GJRodTGZ54TtyZ80bfKEqUIQMLA3ky/a6MWXk5KZA
	IIRsX0guyu7cHTg2l73gUxESTHtO5typah6D26oF3zZ4qD0yZQMgNQef9Mc3huNcB7KzD2myY7K
	iLcpPolT3SJOQ/YRUfpuMPn4XwilFOCOH/uPE0AmUpG1XUbT+YI6LtMarqw==
X-Gm-Gg: ASbGncuMNeqsUQn2NU2+7uIRR4/Hs+3Z3BKndyU1m82f0pjoBiVi9HcsNBk4CBBwZRz
	L5b8QBsGZv4aLubzG4vooQR7nqAlUmD6e/u2MPCb4p5/UC0+3eMUgZrh/jXljz762ouTJhptKU2
	QFpXfdzAxZukXrSEY7Un2X/ioiEkuqMSt6glbSS2d6DaKI6TN0HQdFOxHwNyylBZvoCYH8o7gzS
	4FEmOWSiA2CLUp8vus8rS8FqffD031cS6Xh1SM/k4wL0rWwy66WO7kNxyl4ryxwNGZ1M+O8DfJi
	fASrYUsvFIEr
X-Received: by 2002:a05:620a:2995:b0:7c5:6396:f161 with SMTP id af79cd13be357-7c7a76d28f9mr50398485a.49.1744233323104;
        Wed, 09 Apr 2025 14:15:23 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGr7/1YAOYD4Or0YfY+LCQz6nZHJlK3LI2qKNvMvctH16jmSSCz4P3DXB7XzneikHFPIyFOaQ==
X-Received: by 2002:a05:620a:2995:b0:7c5:6396:f161 with SMTP id af79cd13be357-7c7a76d28f9mr50395485a.49.1744233322841;
        Wed, 09 Apr 2025 14:15:22 -0700 (PDT)
Received: from [192.168.0.241] ([198.48.244.52])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-7c7a11c88b3sm117832685a.73.2025.04.09.14.15.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 09 Apr 2025 14:15:22 -0700 (PDT)
Message-ID: <856467f3-73b4-4b45-a2c4-f7b4f44b1de2@redhat.com>
Date: Wed, 9 Apr 2025 17:15:21 -0400
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Removing in-source contribution records contributer
To: Alejandro Colomar <alx@kernel.org>,
 Eugene Syromyatnikov <evgsyr@gmail.com>
Cc: linux-man@vger.kernel.org,
 "G. Branden Robinson" <g.branden.robinson@gmail.com>,
 Amit Pinhas <amitpinhass@gmail.com>
References: <cover.1739389071.git.amitpinhass@gmail.com>
 <c45f3d934ec20ec5fc813400a4a56079c2241ed1.1739389071.git.amitpinhass@gmail.com>
 <wwjzzwjpbh2ayydhorwgs4jhycjgwhxfzlk5tfym7dxx4w7kll@yaspehl62eik>
 <20250212230210.3kkixsk7bi3cdc4d@illithid>
 <lvhwk4czikqmx4acydi5t5q3nshvgdipedz6xkt7auvz5mnmwp@auuzri4hvsrn>
 <CACGkJdsEQENG1ZOQ14iueMzh4p5ywDenYp5eaN-itvrFfK+kmg@mail.gmail.com>
 <37qabjc65x7co7f3oiibpgwtvhnigk5z7tpmmzgrjhisi4nqmz@ypx33dbbltdn>
Content-Language: en-US
From: Carlos O'Donell <carlos@redhat.com>
Autocrypt: addr=carlos@redhat.com; keydata=
 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
 O0FatDMfJw==
Organization: Red Hat
In-Reply-To: <37qabjc65x7co7f3oiibpgwtvhnigk5z7tpmmzgrjhisi4nqmz@ypx33dbbltdn>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 4/8/25 5:25 PM, Alejandro Colomar wrote:
> Hi Eugene,
> 
> On Tue, Apr 08, 2025 at 08:00:19PM +0200, Eugene Syromyatnikov wrote:
>>>>> Every now and then, I consider if I should just remove all of those
>>>>> lines, to avoid confusing people.  If anyone is interested in the
>>>>> history before git(1), one can certainly look at those lines in old
>>>>> versions of the pages.  Anyone reading the mailing list opposes
>>>>> removing those lines?  (I'll ask again before removing anything, with
>>>>> a proper subject line.)
>>>
>>> Okay, time has come to open this melon.  :)
>>
>> In strace, FWIW, we have the following:
>>   * the copyright notice looks like "Copyright (c) <year>-<year> The
>> strace developers.";
> 
> Hmmm, interesting.  And actually, it's more accurate than the usual
> copyright lines.

The value of the line "Copyright (c) The Foo Developers" is to indicate
that the works are copyrighted, and it avoids anyone who infringes from
arguing they "didn't know." It is in itself not a copyright statement.

What value is there in maintaining the year?

Note:
Copyright Notices in Open Source Software Projects (Steve Winslow)
https://www.linuxfoundation.org/blog/blog/copyright-notices-in-open-source-software-projects

-- 
Cheers,
Carlos.


