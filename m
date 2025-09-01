Return-Path: <linux-man+bounces-3821-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 46016B3EC61
	for <lists+linux-man@lfdr.de>; Mon,  1 Sep 2025 18:39:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 04E582083B3
	for <lists+linux-man@lfdr.de>; Mon,  1 Sep 2025 16:39:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 69CD8324B18;
	Mon,  1 Sep 2025 16:38:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="Gdrq/NAM"
X-Original-To: linux-man@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10847320A3C
	for <linux-man@vger.kernel.org>; Mon,  1 Sep 2025 16:38:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756744703; cv=none; b=XWIPPfcMtqV1WJ5XxjZmtGzgBKVM3+3rtOyvjQR3WvCz7ayWCeqgVC2nNgWAwUE3rzvdjbYWaUMObPyFGjMqEDiluObD9udyBzynDqz1dMS1rhREjllr8oet8cdICR6PW2KJW8MNyyzbTcX7YrXPigBKWiDxNnchJzPMAUNnRq4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756744703; c=relaxed/simple;
	bh=o6Wt4q8t8BzCkbS11p1+Xyo2GnuBLQDTwPelc4NxHBg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=rC6SFayT7EDrcly8jgiapN1saU1GZ3B5+ArTmux3Bk1zPk9Y0lm1q1XZl7vpjg2u9xhvTyXwCiexwSH/KNDUsXfM0oY8ZEXljUx5nxuwN8lmpLHcTC2zYQnB0/V8NCrvLOsY9fhS5mEkuahY/apRbe90RJGrgHkumvdP79NO37U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=Gdrq/NAM; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1756744700;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=KGD4+G4xtwbfuqlgzRFhcmGPPZGW6E4MGbypJKU7mdU=;
	b=Gdrq/NAMvRu6TpQQsBX32TjajuLB2byCIQiWq1BcEkaiHsmwWlTvy39pMZbmAchgvyBy27
	PtSiAJ0IzgO0oSQJ1f5C0ETOIr5gnY/++mWlotIuUCmeFEUnWa0gasHFYAcNTWOgxg0eoM
	cn6XL/KIN/MpagYVequ/ndf6LjJpYbE=
Received: from mail-wm1-f69.google.com (mail-wm1-f69.google.com
 [209.85.128.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-584-b-MEs2dBNv2QjyguANJGGw-1; Mon, 01 Sep 2025 12:38:19 -0400
X-MC-Unique: b-MEs2dBNv2QjyguANJGGw-1
X-Mimecast-MFC-AGG-ID: b-MEs2dBNv2QjyguANJGGw_1756744698
Received: by mail-wm1-f69.google.com with SMTP id 5b1f17b1804b1-45b89ef1c05so12185315e9.0
        for <linux-man@vger.kernel.org>; Mon, 01 Sep 2025 09:38:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756744698; x=1757349498;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KGD4+G4xtwbfuqlgzRFhcmGPPZGW6E4MGbypJKU7mdU=;
        b=GwZuhMIJSGb23Qf/gpihHKMG2LmGvNNXOLSoAwrt7LRvoQezN/XPIfKA7dUmoI8g+j
         oLk88XxNzCUpoNvvkdBo5kIKv5cxpaULzSKab1UEVsKXiiTylKYllRRR2os1RotvDC21
         HW7SI5aK234bnrcMFY0W6J/ZpW1W0egp3PCoKenYt1/NSwiHB1TojerKFODq0WRq8qwT
         19V/EdVRTF8XpBs/mLf1Y71Qv0EEuz735TFDZMz9VboK7VkaNqu+UsZOT05571MbNeUQ
         Oxy7b5DW45+cX1ENIuir/T9DrXeVEcjHgxdX2kCgKXw4hbHLn7287eAGI0gUVAKdWvya
         0CJA==
X-Gm-Message-State: AOJu0YyLa3vV+5WzV+THpUHpWx8r8/CwbqMgwo7DRrnWljpeiHO4yL3u
	cRUyTV5gc2xUjgkp2z51wEPfIP/5g2gZKxi/QOxKtTFsKDpK9CctXZIFt+PPAFpo3NY83qugAWH
	OpLY4QGQUL8RLq9VD9hSfg3TLuXL0nRXwiYhGJL5Ci6Ymb1yMJtzJMtPx1sc3Nw==
X-Gm-Gg: ASbGnctFCoHMrg88ZtAI7vVrV1ofAeKEcDPqLV0f8rtCgxyc8Po8Oz+0ZwT9903PeEM
	jTytaU/OmXZnNkAtqQjEZw8arpBF82e+z1K9y0++cpZBdao6ZudfzVmDvS9RVfRmkEy04j8DFPF
	PiPPp5h2/2aZ0Z2dEyoBdBddlzr8zMK9pHe0NRG1MbVpvccVCg0HF+o8DW2IRJinJSHuLnhxaRu
	BCjwDUZwPlaZ+DW4jwMHyFEDrGJ/Ym5jK1+szO7GmHyBhbjvva3y/VLe8HaftBDl4/MhDXsQ8I/
	XYoDuMeQiU1n/pX3xyDxez7oUWb7a+ncMSYQVyjlgGaMOWEhy/y92SIErTfTtYiYKVDLx2e5AzK
	scvQB7IV4nJYEQcyhAIWgfy3Jem5jVcfSC0otNHPdpCzRtf1c+08QtfgY2GDlBRzIUTQ=
X-Received: by 2002:a05:6000:2dc2:b0:3d1:6748:65fd with SMTP id ffacd0b85a97d-3d1df34f1e8mr6313697f8f.58.1756744697791;
        Mon, 01 Sep 2025 09:38:17 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFjGs99y2BcGfbpSUDaE3IPM1NK1YJH3J1B2SDEVblZM4ksIUFIbr30PH9m5f2WOns75dBJtQ==
X-Received: by 2002:a05:6000:2dc2:b0:3d1:6748:65fd with SMTP id ffacd0b85a97d-3d1df34f1e8mr6313676f8f.58.1756744697379;
        Mon, 01 Sep 2025 09:38:17 -0700 (PDT)
Received: from ?IPV6:2003:d8:2f37:2b00:948c:dd9f:29c8:73f4? (p200300d82f372b00948cdd9f29c873f4.dip0.t-ipconnect.de. [2003:d8:2f37:2b00:948c:dd9f:29c8:73f4])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45b81a9e971sm156314105e9.18.2025.09.01.09.38.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 01 Sep 2025 09:38:16 -0700 (PDT)
Message-ID: <5af4b427-c07d-46d5-91a5-3b4616ef01ea@redhat.com>
Date: Mon, 1 Sep 2025 18:38:15 +0200
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] PR_*ET_THP_DISABLE.2const: document addition of
 PR_THP_DISABLE_EXCEPT_ADVISED
To: Usama Arif <usamaarif642@gmail.com>, alx@kernel.org
Cc: linux-man@vger.kernel.org, lorenzo.stoakes@oracle.com,
 hannes@cmpxchg.org, baohua@kernel.org, shakeel.butt@linux.dev,
 ziy@nvidia.com, laoar.shao@gmail.com, baolin.wang@linux.alibaba.com,
 Liam.Howlett@oracle.com, linux-kernel@vger.kernel.org, kernel-team@meta.com
References: <20250901160903.2801339-1-usamaarif642@gmail.com>
 <d45bfc2d-91da-4a70-90d2-4e0319c5241c@gmail.com>
From: David Hildenbrand <david@redhat.com>
Content-Language: en-US
Autocrypt: addr=david@redhat.com; keydata=
 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
 qIws/H2t
In-Reply-To: <d45bfc2d-91da-4a70-90d2-4e0319c5241c@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 01.09.25 18:18, Usama Arif wrote:
> 
> 
> On 01/09/2025 17:09, Usama Arif wrote:
>> PR_THP_DISABLE_EXCEPT_ADVISED extended PR_SET_THP_DISABLE to only provide
>> THPs when advised. IOW, it allows individual processes to opt-out of THP =
>> "always" into THP = "madvise", without affecting other workloads on the
>> system. The series has been merged in [1].
>>
>> This patch documents the changes introduced due to the addition of
>> PR_THP_DISABLE_EXCEPT_ADVISED flag:
>> - PR_GET_THP_DISABLE returns a value whose bits indicate how THP-disable
>>    is configured for the calling thread (with or without
>>    PR_THP_DISABLE_EXCEPT_ADVISED).
>> - PR_SET_THP_DISABLE now uses arg3 to specify whether to disable THP
>>    completely for the process, or disable except madvise
>>    (PR_THP_DISABLE_EXCEPT_ADVISED).
>>
>> [1] https://lore.kernel.org/all/20250815135549.130506-1-usamaarif642@gmail.com/
>>
>> Signed-off-by: Usama Arif <usamaarif642@gmail.com>
>> ---
>>   man/man2/madvise.2                      |  4 +-
>>   man/man2const/PR_GET_THP_DISABLE.2const | 18 ++++++---
>>   man/man2const/PR_SET_THP_DISABLE.2const | 52 +++++++++++++++++++++----
>>   3 files changed, 61 insertions(+), 13 deletions(-)
>>
> 
> I am not sure what the right time is to send the mandoc changes.
> The patches have been merged into mm-new for more than 2 weeks.
> We can still review it and I can resend if needed after the kernel release if that
> is a more appropriate time?

Probably good to revive once it's in Linus' tree.

-- 
Cheers

David / dhildenb


