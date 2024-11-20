Return-Path: <linux-man+bounces-2054-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A31F9D43C1
	for <lists+linux-man@lfdr.de>; Wed, 20 Nov 2024 23:05:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2A4302831A2
	for <lists+linux-man@lfdr.de>; Wed, 20 Nov 2024 22:05:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0206216C69F;
	Wed, 20 Nov 2024 22:05:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="WT7Rqh8q"
X-Original-To: linux-man@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42FC533998
	for <linux-man@vger.kernel.org>; Wed, 20 Nov 2024 22:05:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732140305; cv=none; b=SVtfZL6EEcX9EazVGCvKOFyXzX7n3qR0IIsgtczBlag5BElQ44Eg7zfL7H6UwnwvMQv6/XLFkIV4C3x5KScYI4+NHG5p6lBHaLdaZODUtrji+E4MUjxVNaw0DvSlueXQwu2uacbzuzVrJ5BCS02DCYuWmu+OaiXx2wtXqyQlA2I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732140305; c=relaxed/simple;
	bh=N4z4MJ9VPmoFwtf+mX79KvbfGC3F4X355D27+U8o/OI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=AvqciUbn9d/HWGxz56zrUpNvUceOmY+ZG2R+gJ1kYMkyHMV9DPpj/1R8shFm8kzBi8JcKunmI6hLYnwXMpp3jaIgWGu5G5YHn0YS3ymtnuOSGfKuizc4F1zHQAEiBu9hAkhwCmuMiNbGESZ1q7+O7aPEsAqqEc+kKwvLhgkkyfg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=WT7Rqh8q; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1732140303;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=9J3jxrIkckDg+pc7hRfZITGfZpvCtgaCzHRLtvlalO0=;
	b=WT7Rqh8qKnqIxp+trnIQCN3QvyGoSA8FrNPxTISKUfeYIzCxJDZua6tlu3D+0wMhvUmHhe
	TA8cRttIaZaixjDfVO2vtffsWmHw/+DJCctqHlk+ixN8KaQ7hDn1luK9qyRlmWdUJgxqaM
	/KcJ1rcJ45mstQJsiTfKzmiFn6lxS7c=
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com
 [209.85.219.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-31-epWk4hdjMOOkaL-WdgklZg-1; Wed, 20 Nov 2024 17:05:01 -0500
X-MC-Unique: epWk4hdjMOOkaL-WdgklZg-1
X-Mimecast-MFC-AGG-ID: epWk4hdjMOOkaL-WdgklZg
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-6d4037d4fcbso3380156d6.3
        for <linux-man@vger.kernel.org>; Wed, 20 Nov 2024 14:05:00 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732140300; x=1732745100;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9J3jxrIkckDg+pc7hRfZITGfZpvCtgaCzHRLtvlalO0=;
        b=iSukxZjIX7xA+XjMvPaoa8nymQsS3eeSFU3vikfe0jhPOEPqKx+JZJ49iiSDlapEos
         yQkkntpwCzsjpjIL7ksYQSso9FJ6c1eCQGS9rfJwgNCFKO8DdGUHI2WuuKpTdKgEu96p
         JvzupFrQD3/S9B2HDByXnTDERmjLF5EU/hPDn59rnAoocRt3eQ1C9b/JD8nP/6ROoflY
         iRG8hZbBeo4G94NEji3FEPYWFKVSmpbFcYdsCa/efsv1jrUhFKZ10R2mzes1SYOCN0qT
         Ar65PGbPPunYvofn7ZXjLG+RepSxvyaoAQHIZmq6x/EOMJ+00dJcVcLXH9sUO3OCw/Ep
         v23A==
X-Forwarded-Encrypted: i=1; AJvYcCW/2rysyNqpCHISVwB/XYcYpkbzHCmeq2a1nSOwsrwfZxTIZVGRSvSYrvze7HGYdiJrlu6SxkSXl/E=@vger.kernel.org
X-Gm-Message-State: AOJu0Yz61lbns4/qzvDU9NFvElC9LNXxvbrjql1Tmk7R7VOTGYsReErw
	y0wS0UZT5cxi0QQ/LIeTETi4BcXTYYBy1y79Yi3etI4am+m2J6steFIh+jwaxZigCTuqkpO0Wcu
	2PtWE3pmz1IQIbHCzqUn4QVx33YLeUwuJq14gjx4+H4eKqODuNo4ZZn5Ujw==
X-Received: by 2002:a05:6214:5096:b0:6d4:29ae:fd3e with SMTP id 6a1803df08f44-6d43782d324mr64118686d6.29.1732140300530;
        Wed, 20 Nov 2024 14:05:00 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFt+fFKS+LopM7K2FJ/Aiv20f45XyaQtPoTNq5cg0PL9XrJZ1UIwDAe0rrASlUimF43pM5Z9A==
X-Received: by 2002:a05:6214:5096:b0:6d4:29ae:fd3e with SMTP id 6a1803df08f44-6d43782d324mr64118446d6.29.1732140300268;
        Wed, 20 Nov 2024 14:05:00 -0800 (PST)
Received: from [192.168.0.241] ([198.48.244.52])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-6d43812ad2csm15395936d6.89.2024.11.20.14.04.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 20 Nov 2024 14:04:59 -0800 (PST)
Message-ID: <c1a2f5d6-0be7-4821-b489-75a71e29e618@redhat.com>
Date: Wed, 20 Nov 2024 17:04:58 -0500
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Issue in man page sprof.1
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: alx@kernel.org, mario.blaettermann@gmail.com, linux-man@vger.kernel.org
References: <ZznJf0DLo7CVHddl@meinfjell.helgefjelltest.de>
 <8c9a2898-1a2d-46de-93c9-2b46b65f1811@redhat.com>
 <Zzy6RjZvu_jYo5rz@meinfjell.helgefjelltest.de>
Content-Language: en-US
From: Carlos O'Donell <carlos@redhat.com>
Autocrypt: addr=carlos@redhat.com; keydata=
 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
 O0FatDMfJw==
Organization: Red Hat
In-Reply-To: <Zzy6RjZvu_jYo5rz@meinfjell.helgefjelltest.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 11/19/24 11:18 AM, Helge Kreutzmann wrote:
> Hello Carlos,
> Am Tue, Nov 19, 2024 at 08:29:34AM -0500 schrieb Carlos O'Donell:
>> On 11/17/24 5:46 AM, Helge Kreutzmann wrote:
>>> Without further ado, the following was found:
>>>
>>> Issue:    Inconsistency detected by ld.so: dl-open.c: 930:
>>> _dl_open: Assertion `_dl_debug_update (args.nsid)->r_state ==
>>> RT_CONSISTENT' failed!
>>
>> This is no translation for this assertion failure.
> 
> Sorry for beeing unclear. This is not about translating the string.
> One of our translators tried out the example given in sprof(1) and
> came across this message.
> 
> So the question is:
> Is the example correct, despite the failure?

The example looks correct to me.

We have glibc/elf/tst-sprof-basic.sh to verify basic operation of sprof
(though we test it wrapped using the newly built ld.so, so we might improve
this with a containerized test).

It doesn't fail for me on a glibc-2.39 test system I have right now, but
I haven't verified the data is correct either.

If this is failing for you please submit a bug upstream to glibc and we'll review.

> And if yes, maybe this failure should be mentioned in the man page.

We shouldn't document every bug in the man-pages.

We should verify the examples keep working though.
 
> As a side note:
> We translators regularly check if messages are translated or not, so
> in this case we would *not* translate the output ourselves, but leave
> it in English, of course.

Thank you!

-- 
Cheers,
Carlos.


