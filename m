Return-Path: <linux-man+bounces-3278-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C43E8B08C9F
	for <lists+linux-man@lfdr.de>; Thu, 17 Jul 2025 14:14:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A0F813A52E6
	for <lists+linux-man@lfdr.de>; Thu, 17 Jul 2025 12:13:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 453A029C33E;
	Thu, 17 Jul 2025 12:14:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="OVk0ijwi"
X-Original-To: linux-man@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10EE329994E
	for <linux-man@vger.kernel.org>; Thu, 17 Jul 2025 12:13:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752754442; cv=none; b=iHzOCljAaLxh0PS5wxmX2mmYYcmEgeQg6pnGO4WE5kn/PFAGsVIRD0a9FroP4fRc/butVTF1y0f2EpLlOWv1isfRxbjUa14QHPBGPHuAXDGVCwhsZWuqUrNzXwRyGsRLpraR1SJ5R2iGq7ru/CtVHQZ8YlUz+43RuF8FDhyI2+Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752754442; c=relaxed/simple;
	bh=n4RHvRUGYbQ73374HtExlG9VsFo2PCf5vvfQayA2xLI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ZqO9hiEnUBLLmtPd1SzOmgSCl1avhW3rAKlTyLD8fRUvWFyfJIxx5IhBbUKFdcIZnF5G5Vbe1uiUwmd2MDZkOqHy8rE1EhKSISgSgVYBhPBVl2/DiWfWmUgViTtRQMLQGI3YzMAB5ecMXRgPJUGbIsfan13FGca9tf5t9WcKhHM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=OVk0ijwi; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1752754439;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=Ljdec5VWgvRrMpcHZaI6X90dpifsSvjhUp5HNCmapAQ=;
	b=OVk0ijwiS6k6peYLiA41zS/VoXakdYkibSX3w0vZCyXGoLCLQutSqSWM5bTQQ6xqJwoVZc
	zwBnZ5Zagw80BLjsrXmGvS77ZhINf9psZCCs4AVfzKlpuULjXKNspZr6EnVca4JrR3BYQl
	yPP7u+AQujhkVR4obuTcdiKjvbdzMWk=
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com
 [209.85.222.200]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-669-PBnh2edxN42i8CzAIFQ2mw-1; Thu, 17 Jul 2025 08:13:57 -0400
X-MC-Unique: PBnh2edxN42i8CzAIFQ2mw-1
X-Mimecast-MFC-AGG-ID: PBnh2edxN42i8CzAIFQ2mw_1752754437
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7e237c2f4ddso111318785a.0
        for <linux-man@vger.kernel.org>; Thu, 17 Jul 2025 05:13:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752754437; x=1753359237;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Ljdec5VWgvRrMpcHZaI6X90dpifsSvjhUp5HNCmapAQ=;
        b=QpXacSPfyLFLqtoqcpLE8XeLNlPACYRWKQKE9HdBSNN28ucODrILhQF1kGS9A4J0CV
         QFNkFX4IqtkD8PNCi6m4slk/CSFe91EZE3GALisPJJbmEY9PD39pV9MR5ARqZAJon0SM
         copXKpQ8GfyQkvQg+UsFz9lgvnv2ZXS3uu/wzR93DzGsf7N38IGmr2bqibsAB8AQPXzB
         cQ85bsrlN5Cd8PjIiEYqZoqwnCGE/FL2nhZpL3jNNBSj6+vuu0mqj4/xajRSqpepjYsu
         a0Z2PPNsuZDOLd1X0JaF3KwMD9tzbVIN0AJFIhAxwWA6JQUUAy5zNRDEgP/Ds3CLz3Gq
         jYgA==
X-Forwarded-Encrypted: i=1; AJvYcCXog/ZHpYss39kGxLQOVABJu+Ks3iWxXqCejtR+rhm/nwSRHXYueabF+Rtnj1P24oRxKuvtBRYHegg=@vger.kernel.org
X-Gm-Message-State: AOJu0Yy0LXo9XjJv6nWTXriNK61VO1awWWWXuJMpdIkV3NkSWK93FrQx
	b62M45mAZAK3Gl2BPUfKc8HCzphV1kFCtBY8MAl5aP34vF+XPkfuQLigu1Aoz5EmuRj7Tkz8Fgv
	9v4IDjyDprQH5i+lPS7ijr4BEIhVWF2WpUiR/ftn38puggKSnuUa53TlgLQffQw==
X-Gm-Gg: ASbGncv70khGcan7Vc8SwSCFD5adIcjX/ldRHtSlQ6TE+lR7dXIL+tV8XcT2b76tIRb
	yySg6OEx1LNyF35MDnJ4DmtcTAWL9buQUTKbRe7TsQoRoL9GkwMlCQbSvvC0UvXhXS+UxNfGriF
	7dkp36wAGjZ62XL1mvtPKMTpsQ8y0lVyfdWJkuY35TOURPED8YVebOejZvASCo2qNr7oaDGAbuM
	iApWZ666CjY96o9uGZr0b4H16HfhHIPToCBLl/jFfic9K1AoZlAEb2325WyjgwvhdL+6omAo3P9
	8vcMWR+3ygo5j5sb1yUAxQRK90GJHpH1yyVhE6IY
X-Received: by 2002:a05:620a:821b:b0:7e3:3afa:cf8e with SMTP id af79cd13be357-7e34d9d354emr308666585a.45.1752754436844;
        Thu, 17 Jul 2025 05:13:56 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH75jKSqkG64qRWOad1XSw18TMoI92ucNlOkHqTXi6ba0RtYx4/jhs9yz2Nn1aaXl+6DWoEKw==
X-Received: by 2002:a05:620a:821b:b0:7e3:3afa:cf8e with SMTP id af79cd13be357-7e34d9d354emr308662285a.45.1752754436298;
        Thu, 17 Jul 2025 05:13:56 -0700 (PDT)
Received: from [192.168.0.241] ([198.48.244.52])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-7e334178dc8sm405422085a.8.2025.07.17.05.13.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 17 Jul 2025 05:13:55 -0700 (PDT)
Message-ID: <1d5c8ce8-9ba0-4e3b-9866-95047741d5d2@redhat.com>
Date: Thu, 17 Jul 2025 08:13:54 -0400
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: drop ia64 from man pages?
To: Eugene Syromyatnikov <evgsyr@gmail.com>
Cc: enh <enh@google.com>, Alejandro Colomar <alx@kernel.org>,
 linux-man <linux-man@vger.kernel.org>
References: <CAJgzZor3iAMrE8y1gz0C5_v87qfYfZiLjm2xi-1qUscm8pT+TA@mail.gmail.com>
 <qg66hasjtm5tkk6dfp4em4fhx6wo567224l5egnfyvmb4ddp45@pgxwr2muteby>
 <CAJgzZoq91VceHKZWetjzr5gOQ=Sx=ReCFfY2erPo7_Dxra9=xA@mail.gmail.com>
 <d27ee305-708f-4733-b8ea-b9e5bac84087@redhat.com>
 <CACGkJdtNPkL3+nJmCNStv1mnDGERvzwfL0RH8xH6ocK_Jp90YQ@mail.gmail.com>
Content-Language: en-US
From: Carlos O'Donell <carlos@redhat.com>
Autocrypt: addr=carlos@redhat.com; keydata=
 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
 O0FatDMfJw==
Organization: Red Hat
In-Reply-To: <CACGkJdtNPkL3+nJmCNStv1mnDGERvzwfL0RH8xH6ocK_Jp90YQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 7/17/25 6:30 AM, Eugene Syromyatnikov wrote:
> On Wed, Jul 16, 2025 at 7:43 PM Carlos O'Donell <carlos@redhat.com> wrote:
>>
>> On 7/16/25 12:30 PM, enh wrote:
>>> i didn't look at the other pages, but quite a lot on the clone(2) page
>>> is actually about what glibc does ... but glibc already removed all
>>> this stuff. so it should probably not be more than what we have for,
>>> say, m68k which is just "read your kernel/libc source for more"?
>>>
>>> a corollary to "museum hardware should run museum software" might be
>>> "...and use museum documentation" :-)
>>
>> Agreed.
>>
>> There is a balance here between documentation that covers a reasonable
>> number of use cases, documentation that is easy to maintain, and
>> documentation that is easy to read (without superfluous information,
>> either too new or too old).
>>
>> It has been about 1.5 years since IA64 started being dropped, and I
>> don't see any reason to keep very specific documentation about it
>> around except as smaller interesting historical notes.
> 
> Depends on whether man pages limit themselves to reflecting only the
> "current" version (whatever this is, as man-pages is not part of
> either linux or glibc source tree), or strive to provide actual useful
> reference for users of systems that may have different variants and
> versions of the kernel and libc.  If it is the latter, outright
> removal (instead of keeping all the pertinent information in the
> history section) is pretty short-sighted.

(1) Co-evolution.

The Linux man-pages project, and most projects, co-evolve with the
ecosystem.

At any point in time you can take the most pertinent release of a
project and use that. VCS history is available to everyone.

This is how downstream distributions have been evolving and serving
users.

(2) A loose matrix of "supported" (not "current")

The project, as I see it, has been providing useful information for a
loose matrix of supported kernels, supported C libraries (glibc, musl,
bionic), and supported international standards e.g. ISO C, POSIX etc.
along with other APIs from BSD etc.

(3) What is a valid variant?

Once something is deprecated my opinion is that we have a duty to
our users to attempt to cleanup the material and make it easier to
consume with less relevant information moved away from main sections
or pages.

At this point in time I'd say IA64 is deprecated in the current
releases of glibc and linux and so moving the related information,
or cleaning it up seems appropriate. How much of that to do I leave
up to Alejandro as editor (or contributors to work out).

What makes a valid variant though?

There is no upstream supported glibc older than 2.32.

There is no upstream supported Linux older than 5.4 (LTS).

So between the two, there is still IA64 support present.

Supported (all upstream projects support it)
  -> Deprecated (current project releases have removed support)
     -> End of life (no actively maintained project support it)

I think we should cleanup and move content at the "deprecated"
phase, which is where we find IA64 today, and when we get to
EOL, we should be removing all the content related to it except
for historical references that serve an educational or
elucidating purpose.

-- 
Cheers,
Carlos.


