Return-Path: <linux-man+bounces-4140-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id DECDEBDF25D
	for <lists+linux-man@lfdr.de>; Wed, 15 Oct 2025 16:46:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id DDBB74F8CB1
	for <lists+linux-man@lfdr.de>; Wed, 15 Oct 2025 14:46:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E7DD318C008;
	Wed, 15 Oct 2025 14:46:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="Xe2z8zSm"
X-Original-To: linux-man@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FA13205AB6
	for <linux-man@vger.kernel.org>; Wed, 15 Oct 2025 14:46:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760539569; cv=none; b=kdz7Wb9j/GWMB4QQt3aSq+kQvgdI2pGvBJvlu/ol7PeH1N/VxhTxsS5oHG755SLP8gE6w+ioEhvocswnrLQtOnxh8mQBZ36/NphSkEsbqI/jLD8yKv1nrCVKjznk8XzC/PFwEIJfGEeeeHf2LFsEYDrtRh5UGINotnWt0bTz6Cw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760539569; c=relaxed/simple;
	bh=KgJgA2W7JG3lyU+XH1K1CuFEJXMvVYiQaH2aUICr6Sg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=gokx6SEjvP7DTgBchQ5clsrauZM92ldzlUgERXx/DO+hOd3FgQ/N5nB5AcxZv6sxLGuE+ZBylRCWOwWQ/qQVU68UZnZ4pVwmqmdDgsZtaluTPloErYLP8BFGGVBJfxd3CrhrQD/3/UEFqnxoTWn793B6p1+XQwXJRPoG4qT2AdE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=Xe2z8zSm; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1760539567;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=MG49umk5tnpuBAU8O3Pd7QHXLWO/6/u5aUxa4KVJq5k=;
	b=Xe2z8zSm7nYWqni/eZJt5BlZAyP5At6MIwPikqaIhWS9wlhz1fSjpAID41CQroZJloHjqZ
	k3E7n9QtYHD0UHHsDXN56Sy0KUX8MteXDs0lmX6Mn4WnQqyzCEsCYzNdSf3HnSjuaTkJJa
	Ol0e16GO3cGrwm/bH6GNU72oogUSISU=
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com
 [209.85.222.200]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-627-1h-4G8NYOUeXEwNy7IMFBw-1; Wed, 15 Oct 2025 10:46:05 -0400
X-MC-Unique: 1h-4G8NYOUeXEwNy7IMFBw-1
X-Mimecast-MFC-AGG-ID: 1h-4G8NYOUeXEwNy7IMFBw_1760539565
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8574e8993cbso1374197985a.1
        for <linux-man@vger.kernel.org>; Wed, 15 Oct 2025 07:46:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760539565; x=1761144365;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:from:references:cc:to:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=MG49umk5tnpuBAU8O3Pd7QHXLWO/6/u5aUxa4KVJq5k=;
        b=YOvXoMZh4BZpIgJ1UhtF8syKCLuu97S7BNPLMGQ1h8riTKiZRg8Yle21545JhD3vdA
         gdvEq63JWUou6JP6qm73RFH55ec0Jokzjv5n7hLk4iRNMH+17D5w55Lg+2XAAFwDkEv5
         O/dg5Cd6uLsGbDxo1wM48Ut4hpHHkCnYCt/LOAE0Jcqo7ClfubufcRKRBEBLwkhhT2TV
         s4yfS3XBbPb9O74uSVdOcEhPk6rlkvuXBAzaiZ0hXdrr5yA6itobKa21cScmeqts49J/
         aDNmlXFpP4RMbZiilNvVXn7+IE/7nmTOHH3q3cbkN24uGUcLLjJCb2XTY3/nSc8CySqz
         dP2Q==
X-Gm-Message-State: AOJu0Yzv80aw9+vNjryRxeVJJC5poSVRDiuXhGUNnueI7KrkaDIdbYzP
	ul3+GEDl6bARDFA6nl80Pd0MQjSy2pTf6EQUFym/DAiyOXgktqKo1jAZULJjKxUgDRx8uDp1PEm
	1UzSCLVUOk9RtBNFRsgRPafgA+6ORc8kpNFP+DIEVwhd1gms8eTn55nYQoBBQew==
X-Gm-Gg: ASbGncuxFdlxeeHWIh/eS7q2o9FE8lu7dx0XmUMbuivGjl7a+XIBVBHOKu7OFuU02FN
	B6Mp5ic3y5nH/lJp2+xSGbv/9viq2K69jjntBXNdrjVW1smHMiuiVEHDF7crwoedjkD/qPDTKR0
	+z8TCm5Cn7kQkp5eH0E7mc0T7wldSuihpA+eahAeVbTJ8wxyTTrKXARl8zzw44dR6HdAq8gK5GR
	Zbl/7xDL84lJzO/W5dqyFONgS1PIxEhhYhXJ2H+PzQBDUGmkZ/S1OwPmi0AgU8WYFUH7iH8ToOi
	k0NpXpDjTMsByPzArraLTgplAC+/DAQTUWAMGmHafw==
X-Received: by 2002:a05:620a:d8e:b0:84a:2c73:7534 with SMTP id af79cd13be357-883544f22cfmr3533826285a.7.1760539565078;
        Wed, 15 Oct 2025 07:46:05 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFVHoR9aLsMCbBm0or3/ZIgqHRxnaqkiSV9p/4TRuKlY56Fdj4HM1JeNJYW5omzPLoPbZNLJg==
X-Received: by 2002:a05:620a:d8e:b0:84a:2c73:7534 with SMTP id af79cd13be357-883544f22cfmr3533820185a.7.1760539564493;
        Wed, 15 Oct 2025 07:46:04 -0700 (PDT)
Received: from [192.168.0.241] ([198.48.244.52])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-88e3fdd7be5sm132430485a.2.2025.10.15.07.46.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 15 Oct 2025 07:46:03 -0700 (PDT)
Message-ID: <426482e8-3c58-4ff4-ae1f-4c7e2e26bd22@redhat.com>
Date: Wed, 15 Oct 2025 10:46:02 -0400
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3] CONTRIBUTING.d/ai: Add guidelines banning AI for
 contributing
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org, Collin Funk <collin.funk1@gmail.com>,
 Sam James <sam@gentoo.org>
References: <d6d3123c7271c11fc403906ee3971b22c2fe8e4c.1760476615.git.alx@kernel.org>
 <a6d76881a06350e807107bdd71d62efee4df485e.1760527144.git.alx@kernel.org>
 <4d14273a-ae17-4f68-9a91-e06fac1d9be5@redhat.com>
 <g5uo7olmmd5mh75ypoh72rleomaytx4eta7bmphvxqcnfa7fwq@u4nnsyzjrhp4>
From: Carlos O'Donell <carlos@redhat.com>
Content-Language: en-US
Autocrypt: addr=carlos@redhat.com; keydata=
 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
 m/A+1AHg4g==
Organization: Red Hat
In-Reply-To: <g5uo7olmmd5mh75ypoh72rleomaytx4eta7bmphvxqcnfa7fwq@u4nnsyzjrhp4>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 10/15/25 10:03 AM, Alejandro Colomar wrote:
> Hi Carlos,
> 
> On Wed, Oct 15, 2025 at 09:25:14AM -0400, Carlos O'Donell wrote:
>>
>> Needs a v4 so we can review the final CC-BY-SA-4.0 license requirements.
> 
> Oops, I missed that.  Sorry!
> 
>>> +Description
>>> +	It is expressly forbidden to contribute to this project any
>>> +	content that has been created with the assistance of artificial
>>> +	intelligence tools.
>>
>> OK.
>>
>> Though it has been discussed on-list that this policy could be seen as
>> forbiding assistive technologies, but that this was not the intent of
>> the Gentoo Council's wording.
> 
> Didn't they?  Do you have a source for that?

https://inbox.sourceware.org/libc-alpha/5523336.irdbgypaU6@kona/
~~~
As someone who was present at the initital discussion, I can assure that
banning accessibility helps was not the intention.
~~~
- Andreas Huettel

>> I don't have better wording.
> 
> Okay.
> 
>>> +Caveats
>>> +	This policy can be revisited, should a case been made over such
>>> +	a tool that does not pose copyright, ethical, and quality
>>> +	concerns.
>>
>> The original content is CC-BY-SA 4.0, and so you need attribution and
>> a link to the license and a statement that you altered it.
>>
>> e.g.
>> This work is licensed under a [Creative Commons Attribution-ShareAlike 4.0 International License](https://creativecommons.org/licenses/by-sa/4.0/).
>> Text derived from the [Gentoo project AI policy](https://wiki.gentoo.org/wiki/Project:Council/AI_policy), used under the Creative Commons Attribution license.
> 
> I'll send v4 later.  I have written this, at the bottom:
> 
> 	Copyright
> 		SPDX-License-Identifier: CC-BY-SA-4.0
> 
> 		Text derived from the Gentoo project AI policy
> 		<https://wiki.gentoo.org/wiki/Project:Council/AI_policy>.
> 
> Cheers,
> Alex
> 


-- 
Cheers,
Carlos.


