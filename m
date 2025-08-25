Return-Path: <linux-man+bounces-3728-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 06D57B34B4E
	for <lists+linux-man@lfdr.de>; Mon, 25 Aug 2025 22:01:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id DB28C189B6D5
	for <lists+linux-man@lfdr.de>; Mon, 25 Aug 2025 20:01:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D9AB81F09BF;
	Mon, 25 Aug 2025 20:01:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="CJLNC2Ky"
X-Original-To: linux-man@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52E991991D2
	for <linux-man@vger.kernel.org>; Mon, 25 Aug 2025 20:01:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756152067; cv=none; b=qot1xGA9ofJxxsfgYfq2jB/5g5v5jYPteto25UGAg83cMm/s59xrxAG6h5ZxyImSscXBRgPFs/GrNLPanXr0DEWYlukBdGCcwg8CRSgvi+18Xuc+U1O08EsuFlaxG2Cb83vDvnVcwtR+dTfa+DfW9TT6GimEfcf3UKjJTC7ur8M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756152067; c=relaxed/simple;
	bh=N2+DhZdDkgUto4AM4vECtJ1+1dCYgd6W5nZedISaDi8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=F8KTVfb1txe5fpuyx6wCrV7RNSiGawbziX5srPIaroMRYCazkVF8EmRioA0X2tk/j0uM6N2e0rJo39hQ2GaqAVZCkqy8XBDobNx4hE3dEgx5cITQkwNx24t8xP0QY4h8AHa6aUcqqm8YwZq1r5zyz46HKaTrr1x1XYzAMe3L27E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=CJLNC2Ky; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1756152063;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=0T0529EYnkTTR7g3FUi8CckUDvEMwXVpfO/7idOXUrM=;
	b=CJLNC2Ky9dW5P7oy5au8gNE1/Zu4uBsxdWKwAQNRsmsyuDPR4yg0IznFbpztFpajwP2LFZ
	PssZ9l5d/owUIraFyDAnNEcD0wriEZn8Y4eS4wNk8WSmjm/kgrx+yaFlf7Rqs3yLrlpxpZ
	EPKV6wduSbjzvFCxT+kBK/wHp7iPR4A=
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com
 [209.85.219.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-52-toH4CGefNEuyt094icphHA-1; Mon, 25 Aug 2025 16:01:01 -0400
X-MC-Unique: toH4CGefNEuyt094icphHA-1
X-Mimecast-MFC-AGG-ID: toH4CGefNEuyt094icphHA_1756152061
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-70d9f5bdf6aso67134776d6.0
        for <linux-man@vger.kernel.org>; Mon, 25 Aug 2025 13:01:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756152061; x=1756756861;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:from:references:cc:to:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=0T0529EYnkTTR7g3FUi8CckUDvEMwXVpfO/7idOXUrM=;
        b=bPE02FIjUxPpy47ODV/iMxxXb3IO+xfl6q7u1s5epdgk98Qnbtm8D+I3orOf5Ky1EQ
         IC3d8jVBGJgThlTBuhcl5xRSKFsTxwtpLhA6NBwqz4fHOUpBEGxzzNG3Z/c4GUaYTL2W
         hXBNlM5BC687ySfgp7cQQzqf5SH1Z+7VusTo0lE4oN/x82DhHLs+Ia2lJhG9WrFCAI7j
         U8jyobqwUfxF8S31bk1tUP4hAZ8xx7vsUny8d7kCtgF08STiax5oSv2N1kyv/cEUPe85
         4NBb7N4fYgOfZwBLT2em/bYRDFTbrKi0ok0G9pL5DnET1IWxioeL3gRKmfkjrUWjVZwh
         SsmA==
X-Forwarded-Encrypted: i=1; AJvYcCVTCb4AD+3wXgLaPh7D3WcAUanYB4v8t1NEJTqe6xxvSUjVo4DII2UVDA2NCBxJegl7qwTeH+2ROzs=@vger.kernel.org
X-Gm-Message-State: AOJu0Yy0DlP46EcYx1ADAKrVlOJtRoHmIdMkvdpWVeaWEJIasoaJgFpQ
	fSQcox7lVWpLHt7pzmW9obtuqsxDzWipfTlYHoooWqL92Khr9Yq54f5YEGHbFY/YXmUD0j9sdRR
	Pnqo7wpvX3+3S262DJsG4MsoH3VafvStjBZC+gLypFdn8fvesDV5D1G3aS90lWA==
X-Gm-Gg: ASbGncvpypfC70DLpMKnOmZi1flQCF3FtrXSYnt5dldQDrnrpZwblctoAjZXvddNUSF
	ehdMN/963IL1xdUkeKeiZ3+RmGZf7oBDg2QhQnFenWspa9GLFfnW1lW7sMYoUaqoDEKBDoL9qK4
	lDxZgMy9liSiPlv3+DI8BKfryBoMvP/wzNYFPwaszC0FmqtHuB8pOEz3vSD79Qsqu72uB/LEr4P
	8sX4QspkvJnT68R9pve1Vj3tCY501bRRrqUNwQw0uGfK7I4YR2OERTjAohILOgvk2YW0HD7172k
	0cjkxGaJUc6k0uLru567SrbLsw4EgnXM0+TGnNc6
X-Received: by 2002:a05:6214:21c5:b0:70d:c107:20fe with SMTP id 6a1803df08f44-70dc1072708mr49686806d6.51.1756152061105;
        Mon, 25 Aug 2025 13:01:01 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHp5efeUdJTRWZ9hAOAvciN2qlodFp93NdBp89uIP+JFR+MGaK6AhHK4JIGczNg14imAsV6Vg==
X-Received: by 2002:a05:6214:21c5:b0:70d:c107:20fe with SMTP id 6a1803df08f44-70dc1072708mr49686106d6.51.1756152060448;
        Mon, 25 Aug 2025 13:01:00 -0700 (PDT)
Received: from [192.168.0.241] ([198.48.244.52])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-70da7145f0csm52455666d6.9.2025.08.25.13.00.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 25 Aug 2025 13:00:59 -0700 (PDT)
Message-ID: <f076ae23-e4b2-4294-9038-8a234aa009a8@redhat.com>
Date: Mon, 25 Aug 2025 16:00:58 -0400
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Issue in man page PR_SET_SECUREBITS.2const
To: Alejandro Colomar <alx@kernel.org>
Cc: Helge Kreutzmann <debian@helgefjell.de>, mario.blaettermann@gmail.com,
 linux-man@vger.kernel.org
References: <aKsmUDWxV2eeCmmT@meinfjell.helgefjelltest.de>
 <lnh4f63q5onlj54wt7qg76unbcvu5apinualih4byiatrfvjpv@5r53xpupbjws>
 <8ed88109-2dd4-4d26-ba5d-32bbf7cb2906@redhat.com>
 <j2ramfsczn2lparyohabohs5lslb2neyxgp73c23bq6vzqsn6w@t7hw5mdvt4q4>
From: Carlos O'Donell <carlos@redhat.com>
Content-Language: en-US
Autocrypt: addr=carlos@redhat.com; keydata=
 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
 m/A+1AHg4g==
Organization: Red Hat
In-Reply-To: <j2ramfsczn2lparyohabohs5lslb2neyxgp73c23bq6vzqsn6w@t7hw5mdvt4q4>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 8/25/25 3:41 PM, Alejandro Colomar wrote:
> Hi Carlos,
> 
> On Mon, Aug 25, 2025 at 01:52:03PM -0400, Carlos O'Donell wrote:
>> On 8/24/25 3:21 PM, Alejandro Colomar wrote:
>>> Hi Helge,
>>>
>>>> Subject: Re: Issue in man page PR_SET_SECUREBITS.2const
>>>
>>> You probably meant PR_SET_THP_DISABLE.2const.  The text you quoted is
>>> there:
>>>
>>> 	$ grep -rn THP.disable
>>> 	man/man2const/PR_SET_THP_DISABLE.2const:9:set the state of the "THP disable" flag for the calling thread
>>> 	man/man2const/PR_SET_THP_DISABLE.2const:21:Set the state of the "THP disable" flag for the calling thread.
>>> 	man/man2const/PR_SET_THP_DISABLE.2const:32:The setting of the "THP disable" flag is inherited by a child created via
>>> 	man/man2const/PR_GET_THP_DISABLE.2const:9:get the state of the "THP disable" flag for the calling thread
>>> 	man/man2const/PR_GET_THP_DISABLE.2const:22:the "THP disable" flag for the calling thread:
>>>
>>> On Sun, Aug 24, 2025 at 02:48:48PM +0000, Helge Kreutzmann wrote:
>>>> Without further ado, the following was found:
>>>>
>>>> Issue:    malloc → B<malloc>(3) ?
>>>
>>> Maybe, but we should probably add a reference to malloc_hook(3) instead?
>>
>> In a modern system you care about malloc not malloc_hook.
>>
>> The hooks have been removed and glibc has directly integrated THP usage in malloc instead.
>>
>> https://sourceware.org/glibc/manual/2.42/html_node/Memory-Allocation-Tunables.html
> 
> Thanks!  Do we need a more thorough rewrite of this page is needed?
> Or just replace malloc by malloc(3)?

Yes, the existing text is only correct for < 2.34 glibc system.

A > 2.34 system has THP support with the tunable to support THP (for legacy libhugetlbfs users).

And a glibc == 2.34 system lacks this feature and doesn't support such hook + interposer deployments.

The quickest fix is to reference malloc(3) for now.

-- 
Cheers,
Carlos.


