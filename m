Return-Path: <linux-man+bounces-2055-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id BDDA89D4402
	for <lists+linux-man@lfdr.de>; Wed, 20 Nov 2024 23:40:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 52BDBB238D2
	for <lists+linux-man@lfdr.de>; Wed, 20 Nov 2024 22:40:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 017D51AA1DC;
	Wed, 20 Nov 2024 22:40:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="d+IeHVdC"
X-Original-To: linux-man@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 407CE1865E5
	for <linux-man@vger.kernel.org>; Wed, 20 Nov 2024 22:40:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732142421; cv=none; b=MOErNHUC4QhnDWZU9OmphRB/OVWd/l4rx6zaDpPUqqSbiyJx5CVX4da9kl/X/g3WRzgIdUvrFvB5ianguVeAjRDW9nUVYi5xZCNaKDHuZa4w+NUEmALzyq1eUorrttcHrtCgSmcGTzvCKdbpohq72ZkwCP3UvBPCqE/o+RGsGeA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732142421; c=relaxed/simple;
	bh=xyIcZyh5UFf4Nlh4/WzYNHYKbECCJCHeO8fTlDEFfoA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=VDnjyjyVO/y+lVuJ9YiyXF9odZEHNVnFhtMpGPIG36QnLuXQrr5b/FeXAr1XQkhmmkJ2zeCLsYsl2RMwafifC3MTyDsVTbf5pwZ2MqCZsAbSfkQhLfCR2xVB6rNM8CCx/A8V2jCTxBMc9bg8MwufG4/s8U1h8UocrHCchZGUeyI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=d+IeHVdC; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1732142419;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=bLPtaX+nuI9zE4XTERdLiKqtlfRfDBRNY7ch60czIp8=;
	b=d+IeHVdCOZ60AbdyFlARCYgBQF2DmXwSVwPMvKFqMdCAIEVXl1cUxKow49YSicBpV7BZ2N
	uHlUuv98iiBuRxwItk/ZO5lYma3m91ay+Ni0LuNhIsfmBJ86WELr8PTpISNcEB4jieg0Oo
	MQSIsDj5vAk+CGYSmmvRDtnAeV5yLR0=
Received: from mail-yw1-f200.google.com (mail-yw1-f200.google.com
 [209.85.128.200]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-643-a4XXZ2ieMsm27iYZtN6ulg-1; Wed, 20 Nov 2024 17:40:17 -0500
X-MC-Unique: a4XXZ2ieMsm27iYZtN6ulg-1
X-Mimecast-MFC-AGG-ID: a4XXZ2ieMsm27iYZtN6ulg
Received: by mail-yw1-f200.google.com with SMTP id 00721157ae682-6eeb9152b2cso3528927b3.1
        for <linux-man@vger.kernel.org>; Wed, 20 Nov 2024 14:40:17 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732142417; x=1732747217;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bLPtaX+nuI9zE4XTERdLiKqtlfRfDBRNY7ch60czIp8=;
        b=rBvRIHv2224gWm6+TD93idJ+CSvJWKPG27DSUY1nDFi/xqADyUALrnJfFChgst/5Wo
         JaQlyKqruioN29OPYSlj5255ElOg7d4Sq0wB40Ho4FP/ENRhTHABHYxFs5xMGjByQfSY
         YFnsrWpaxRaFa12mCebfuESUsZSoZx0TKQPY63SHKCF3Rk4HBeu4vAvhKbOqeu+hQfsc
         6zZ/3/YETfdMQw79oB8ZlVGZbuMSoj8/fH4JrxFS8AfXtlDbHh4xD/dqxPhf3Z/EY0Fe
         D+7mxS84QmUaB0yd+rmGsu3fTsdLOwCOlQ/jmd3T57jKLNLmRR1kUhTqs6O3XBbj94NT
         ZkEA==
X-Gm-Message-State: AOJu0YyLPQke+CrMZ0AR+22jbepnE3jXxqMZLzVsTmvB8209VmsOBlRg
	JuFodN/tsgrosLpIKpGQF6JgOu1+fscTNOUE5/Zz33qvJ6WljSIMurgZBN1CA5CkOwZSK6xQmdN
	IwyLsCUJ7lBnaP8xc5wNpNEaHMiVq/qt90XTbkC1080eL/DRGVwjaltZZCg==
X-Received: by 2002:a05:690c:4a09:b0:6e3:3275:8e5e with SMTP id 00721157ae682-6eebd2a006dmr51045777b3.33.1732142417133;
        Wed, 20 Nov 2024 14:40:17 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEMxFLE1eghH1sENc4+zZxGHs4UZMpddhrOiUkNCdK16AuBXQiOEAghgup29sDSqRpotu2iuw==
X-Received: by 2002:a05:690c:4a09:b0:6e3:3275:8e5e with SMTP id 00721157ae682-6eebd2a006dmr51045647b3.33.1732142416912;
        Wed, 20 Nov 2024 14:40:16 -0800 (PST)
Received: from [192.168.0.241] ([198.48.244.52])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-6d4380d8b6bsm15729936d6.34.2024.11.20.14.40.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 20 Nov 2024 14:40:16 -0800 (PST)
Message-ID: <fb5d9a20-9937-4cf7-b8e0-99710d88f4bc@redhat.com>
Date: Wed, 20 Nov 2024 17:40:15 -0500
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] add time64 copies of system calls
To: Marcin Juszkiewicz <marcin@juszkiewicz.com.pl>,
 Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
References: <fb722cc1be40a2f74e204a23d5c11944c167d55c.1731957032.git.marcin@juszkiewicz.com.pl>
 <fb722cc1be40a2f74e204a23d5c11944c167d55c.1731957032.git.marcin@juszkiewicz.com.pl>
 <20241118225148.fgrvxxg2p6on4nl3@devuan>
 <5778beee-a1c0-45cf-93fa-8d36501911f9@juszkiewicz.com.pl>
Content-Language: en-US
From: Carlos O'Donell <carlos@redhat.com>
Autocrypt: addr=carlos@redhat.com; keydata=
 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
 O0FatDMfJw==
Organization: Red Hat
In-Reply-To: <5778beee-a1c0-45cf-93fa-8d36501911f9@juszkiewicz.com.pl>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

On 11/19/24 3:23 AM, Marcin Juszkiewicz wrote:
> W dniu 18.11.2024 o 23:51, Alejandro Colomar pisze:
>> Hi Marcin,
>>
>> On Mon, Nov 18, 2024 at 08:16:24PM +0100, Marcin Juszkiewicz wrote:
>>> During work on y2038 problem several time related system calls got "64"
>>> or "_time64" copies. It happened only on 32-bit architectures as there
>>> was no problem on 64-bit ones.
>>>
>>> Signed-off-by: Marcin Juszkiewicz <marcin@juszkiewicz.com.pl>
>>
>> This only adds link pages, but doesn't add any documentation for them.
>> Should we add anything?  Maybe to the SYNOPSIS and VERSIONS (or HISTORY)?
> 
> Will look into it.
 
We absolutely can and should add documentation for the kernel syscalls since they are
unique syscalls that take 64-bit time_t variants for a 32-bit userspace.

These syscalls are the 64-bit time_t variants to allow userspace to build 32-bit targets
that have 64-bit time_t e.g. alternate ABI i686 with 64-bit time_t.

The userspace interfaces are hidden behind a 64-bit time_t though and shouldn't change
(though the ABI changes).

-- 
Cheers,
Carlos.


