Return-Path: <linux-man+bounces-4132-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id D91ABBDBD9A
	for <lists+linux-man@lfdr.de>; Wed, 15 Oct 2025 01:59:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 9BA664EFCBB
	for <lists+linux-man@lfdr.de>; Tue, 14 Oct 2025 23:59:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6A9402E6CA1;
	Tue, 14 Oct 2025 23:59:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="BUZAdjer"
X-Original-To: linux-man@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53F8524A06A
	for <linux-man@vger.kernel.org>; Tue, 14 Oct 2025 23:59:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760486384; cv=none; b=gv8sc8uPlKqecMHT8Ff7LBQ9xZBLLyddqXYywufPneLQLuPiTFnh4wJ5GfH+T3iPJkND9LAkUdcM4eaNSOh8GZKBZC0uE02macpIpzIS0sCxX7jNe7m7O8WpTQjho9x54sHifopbaYAmCfUEmRAS/cAFz0TZb4JojgMXfwPiEwA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760486384; c=relaxed/simple;
	bh=e7C3//K9p4oP/AlOmkIdHsYK4D0lu7DTZgwjk76x3dM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=vCo99XG8VFa9uevf93nJP0yKRJe4M+V3K/4JBQCzVtM7ut4+0bfKUTTCJyAGmuEnI8nn1ZOOK2QwEfb+FmE+cnUjFDTgayOBkLofQQeufCLhcqo9T11KDnUF81xwUOwvfWhegJU/IF7Ir1/EV7WPTyedIyhRSl98ZaEVVJjRTnk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=BUZAdjer; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1760486381;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=qvSIVfBYClRKytwhNisv9vnfkgxV12qKiaQ+We7ELdE=;
	b=BUZAdjerIhjJrQK/pC4THVw+FjBUI+iO//cMoqPTf5OX/FjjSgJUWn8ReMU1+y3bZcOTDs
	pp+PcfhJS6BvrypBqt4Q8hhoOC84YExOtVfTm57AO2NTh1/0HkBiN0XDWIY6ZN00Jt5Af5
	mPK4Y8sispBZuXIqmp4oDTCxEdBBkKE=
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com
 [209.85.222.198]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-122-5Spi-Mw0NkmMVJYqlp2TEQ-1; Tue, 14 Oct 2025 19:59:39 -0400
X-MC-Unique: 5Spi-Mw0NkmMVJYqlp2TEQ-1
X-Mimecast-MFC-AGG-ID: 5Spi-Mw0NkmMVJYqlp2TEQ_1760486379
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-827061b4ca9so2685494685a.3
        for <linux-man@vger.kernel.org>; Tue, 14 Oct 2025 16:59:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760486379; x=1761091179;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:from:references:cc:to:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=qvSIVfBYClRKytwhNisv9vnfkgxV12qKiaQ+We7ELdE=;
        b=OrrXBX8SdhkLK1Hi6CeDOUTuI0jNmON6Ecbx+XKObOziNSVu3TdGp8NJpqAA2rR0cF
         DK4lRDYKD5dHUWV/kI0GAMT81EWXZ+wpWYiJjiLd+D9sacgsvdsMy8e7MDg9c4FiNy3D
         x2Bf9v2jyzzloSy20/ELUdHq1W4h/4tqQqQL0nf5T+sV5KAd7yaKnrXGJjZw7bPuZk7/
         T8W50vpTlWRlcRx6+WaB/5Z+1wTd9q5m1hMh9bRWC0xz4TPXrVYzlIc3PcJiGgLV/NSm
         ofwvrXWNKDhtiFZOJ9MYkxTf7KsxHyoICtpiE9RLzDEDlGEYNl1wdPbNSRvHMiETN+ct
         Nw1Q==
X-Forwarded-Encrypted: i=1; AJvYcCXPJXmsSZLyTYGXqj4PoGYkAm0gFwAnA4SqlRJeTh412SogKzuKYLLcqHvoZ9M4gB2i/3ZqmaKU3JI=@vger.kernel.org
X-Gm-Message-State: AOJu0Ywt/nAVAD4vqKIMAXsSJdodINXEDArBdcUyQwWMWdUuL3HSTF8T
	FpuGXJnCJSUEA3CUvjmMAvBObWM8nnne0w9NqaHYWvHYhKjaSFzjN4tsKyjMlSzhCyErw8Z2Y69
	JvHKwFh53XxHvNjsw3Z4FuknHFlVVMdTmlhfLWEdZd44MLY+bOIrW6Q7+tUD7kA==
X-Gm-Gg: ASbGncssNjpen3nTihL6kE40zy//avj/ut7pIKRBJN3G6SIFOUqMTqEcadfzNjTkjr9
	epsO3wDYgfxRTQ2k7to/6qh+jN9RhpA9uXaTyfwxcJixu+sSMKBMP8rjGzn4MssveWa9A+9z4x7
	hcLIMrbsZOk2IZKHd2A5SHPsGZAwbZEaPhAy19G5QYGvJDYggOZgrnsfjqOZXtS8Gcbbmy0771f
	LGgpv6MJyBV4W4HfRQ6Gbft0KdQY8mkXAwDlULidKmMf3yw3fywYs1RuRvlzjhRpjV0YFcp2wgH
	CLNhw03duqFcewORiAtUBv/8catdX7AvX9US40Vd1g==
X-Received: by 2002:a05:620a:f01:b0:84b:4e71:9975 with SMTP id af79cd13be357-88353b2b03cmr3478939085a.70.1760486379375;
        Tue, 14 Oct 2025 16:59:39 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFLOd64KWNe4EY8oQPSN6ITHnYLPXCAP9VU65vONwcXCH3zc9juA96UjaMKHoRnOGIrw1hLaA==
X-Received: by 2002:a05:620a:f01:b0:84b:4e71:9975 with SMTP id af79cd13be357-88353b2b03cmr3478937585a.70.1760486378881;
        Tue, 14 Oct 2025 16:59:38 -0700 (PDT)
Received: from [192.168.0.241] ([198.48.244.52])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-884a293cdc8sm1310042785a.62.2025.10.14.16.59.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Oct 2025 16:59:38 -0700 (PDT)
Message-ID: <e0749995-7af3-412d-b64a-b22c70da3294@redhat.com>
Date: Tue, 14 Oct 2025 19:59:36 -0400
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] CONTRIBUTING.d/ai: Add guidelines banning AI for
 contributing
To: Alejandro Colomar <alx@kernel.org>
Cc: Collin Funk <collin.funk1@gmail.com>, linux-man@vger.kernel.org
References: <d6d3123c7271c11fc403906ee3971b22c2fe8e4c.1760476615.git.alx@kernel.org>
 <877bwx6u48.fsf@gmail.com>
 <xcupkgdicaihwfxnggznr2wkks6d4axm23is6arlly6zyeftlb@xf2gci2joaeu>
 <0d2c1adb-ec94-4411-9ca3-d137feb076d9@redhat.com>
 <wcfg5wvv27thvhn2bc5wevuxotadj3xvuaf55hz5ctxryfuacr@mdjyx3p2sdut>
 <l63iddwjzdy4mzjzgr3aosgpbetrgoozcm5nas3u2gcxvs36tz@zv3mzlafl2nc>
From: Carlos O'Donell <carlos@redhat.com>
Content-Language: en-US
Autocrypt: addr=carlos@redhat.com; keydata=
 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
 m/A+1AHg4g==
Organization: Red Hat
In-Reply-To: <l63iddwjzdy4mzjzgr3aosgpbetrgoozcm5nas3u2gcxvs36tz@zv3mzlafl2nc>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 10/14/25 6:20 PM, Alejandro Colomar wrote:
> On Wed, Oct 15, 2025 at 12:10:33AM +0200, Alejandro Colomar wrote:
>> Hi Carlos,
>>
>> On Tue, Oct 14, 2025 at 06:03:12PM -0400, Carlos O'Donell wrote:
>>>> 	if you believe your use of AI is necessary for a major reason,
>>>> 	please disclose it and ask for an exception
>>>>
>>>> for covering some cases where health is involved (such as what Carlos
>>>> mentioned).
>>>
>>> Requiring such disclosure of health issues may be illegal and discriminatory
>>> in many jurisdictions. I urge caution here and recommend we not go in that
>>> direction.
>>
>> Hmmm, true.  Do you have any suggestions for the wording?
> 
> How about this?
> 
> 	Name
> 		AI - using artificial intelligence for contributing
> 
> 	Description
> 		Any use of AI for contributing to this project is unacceptable.
> 
> 		AI is harmful for many reasons, including --but not limited to--
> 		copyright and/or licensing, quality, and harm to the
> 		environment.
> 
> 	Caveats
> 		If you believe your use of AI is necessary for a major reason,
> 		please disclose the use of AI, and ask for an exception.
> 
> 
> 
> 

I suggest reviewing what other projects have done, like QEMU:
https://www.qemu.org/docs/master/devel/code-provenance.html#use-of-ai-generated-content

Which limits only "contributions which are believed to include or derive from AI generated content".

-- 
Cheers,
Carlos.


