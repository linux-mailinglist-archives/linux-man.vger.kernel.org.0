Return-Path: <linux-man+bounces-3276-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 46EC5B07C3C
	for <lists+linux-man@lfdr.de>; Wed, 16 Jul 2025 19:43:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 4B34B7A7657
	for <lists+linux-man@lfdr.de>; Wed, 16 Jul 2025 17:42:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 569192F5472;
	Wed, 16 Jul 2025 17:43:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="BbF0rhNM"
X-Original-To: linux-man@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AB592F547B
	for <linux-man@vger.kernel.org>; Wed, 16 Jul 2025 17:43:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752687824; cv=none; b=pwA/vuxhwbYKdAjj4Sw15nNNlSC6+YesdNAJmt3GFXBg+bumy0csUdf5vDjo8AQsLRgPb+Sy1ks/h708UyZ/G66u/8XuTLUSICMNKXg3jyWZt6k8lq69cJe1ZYcUntwSpWVBUOOr39z460wX+HmSfkRxQ48W54xFBD78AlyHEEM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752687824; c=relaxed/simple;
	bh=TkLc9Myk+RmkwNtZ9p+ciGPribJhdaLKCKYH7HQz064=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=aDQvPFHLHgzkRjzLnOvpGah5w3Y3kt7jh4C5K/I6tlkB6KVH2cEKJXAXq4KbizfOGLkvoydxlRZF8mmAQWmvdWvw1ZnsH8PEY6LZYPFjfBXjvdd6rMTp+hO2gHu9Ytc6QKGJ5+HwopKhS2xmTXrPNmuKZFf/3md/ox1rRfHygqY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=BbF0rhNM; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1752687821;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=dWz+Nadd9bl/IsxEfT+fpBv321OQ89/4aylZDZgRDJs=;
	b=BbF0rhNMy4ADfi9YE36nhnFR+0MOK1XdBmasYS2/B/OQoicgEqhl5fYUmWKoxGLkmU80fz
	05og7D9+Nx37aRyAd2RkHs8n1QzN4MIrM4h30kROBu3Kd6huazC66ET0TjUgHQ5pAvx05Y
	9+V4UrsPSu0ez9O/ptYwcrIWUv6VAc4=
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com
 [209.85.219.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-393-a4O0eeW8NXaH7FsCUieehA-1; Wed, 16 Jul 2025 13:43:39 -0400
X-MC-Unique: a4O0eeW8NXaH7FsCUieehA-1
X-Mimecast-MFC-AGG-ID: a4O0eeW8NXaH7FsCUieehA_1752687819
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-704b4b61d10so3705616d6.0
        for <linux-man@vger.kernel.org>; Wed, 16 Jul 2025 10:43:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752687819; x=1753292619;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dWz+Nadd9bl/IsxEfT+fpBv321OQ89/4aylZDZgRDJs=;
        b=qWTmS01pKKx20e5Uc3ergdLWRvtRzCBA7NtdRyTocjmocKVl60qi8SySEAYfhgd2jC
         VtGAcjloNk9mv4uQ8Au/3Vmy50Zu37ogoJM2E3/Wt3r/BPueEH8iKLQuvFGfyYUXuF78
         9mPN4jlnEmxfcbHDd+rmlCOOq3DMy5JmXo6V96kIlzV9427c0Vp/ygJrcAX1Gm7+6bXz
         B9J18FFtM2cRxiGYrHxT48t6vIk2VF5kTAzUFf3pXi9TewwpEwzoc80tVk8b6ZwW5B3F
         zfnmc4NmopZpR2OgElSPq8dxCRN7KdHNF54nWjL6WINgQPeg1zgC8V8Sit+tGRHpEAgU
         GFBA==
X-Gm-Message-State: AOJu0YwacOmMNZr9+VLv4pwFF+HmFZOjfgmIoEXPVOIxZ8DyMJFRV37s
	IYbWWKF6ImQlcGJOer1DZ4OBOpzGLFNVDHss0/eD8fZUsuc/qMuBkjE6pLrrebOSSN8Ked82+8o
	yNUmoC6YUcM2A0Io7GLLWA4Hy+MKBuRvmbKrP5EQLLgUO0gdz9vpnXhJr6ag4e+N3Ipg31w==
X-Gm-Gg: ASbGncvuqAIPIVpFkBhp+0YvricTFQBWDi7lCcuWBQoWyQv0OwIFn8yAHPuUO5zUo7b
	Bggiawixrqs3/Krpzw7Z6vfpxISgkq+fSpI+yCTvzAeFC/cMDCVSddR4qV6mAMqpSbGeK1992zk
	gjmSl9erOH8lKXuiy17FzQl/7jZsxkLbbPeQxf2rEcRb9ilICUyNY2f9RAe78MJHYvdcu+03mK5
	TuOQ463p0GEYxNTUh/Lb6IRBSo1bXUkhyHjOrpYI4356Ak/JRRj++gpe2YPtttMWgUKSKLDm1/Q
	aUGUSKM4X3jRH8/XIrFUO0Kz9es6NESq+FyqKAyn
X-Received: by 2002:a05:6214:5885:b0:6ff:1665:44ef with SMTP id 6a1803df08f44-704f6adf314mr46346876d6.22.1752687818420;
        Wed, 16 Jul 2025 10:43:38 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGVldkB6AlWVo5b8+nfz8bmmTayk97CzsoN6UjPYFydTfEhB7FukrE7i1EqH/8q7iP4SlMf1A==
X-Received: by 2002:a05:6214:5885:b0:6ff:1665:44ef with SMTP id 6a1803df08f44-704f6adf314mr46346616d6.22.1752687818053;
        Wed, 16 Jul 2025 10:43:38 -0700 (PDT)
Received: from [192.168.0.241] ([198.48.244.52])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-70497d39749sm72907976d6.58.2025.07.16.10.43.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 16 Jul 2025 10:43:37 -0700 (PDT)
Message-ID: <d27ee305-708f-4733-b8ea-b9e5bac84087@redhat.com>
Date: Wed, 16 Jul 2025 13:43:36 -0400
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: drop ia64 from man pages?
To: enh <enh@google.com>, Alejandro Colomar <alx@kernel.org>
Cc: linux-man <linux-man@vger.kernel.org>
References: <CAJgzZor3iAMrE8y1gz0C5_v87qfYfZiLjm2xi-1qUscm8pT+TA@mail.gmail.com>
 <qg66hasjtm5tkk6dfp4em4fhx6wo567224l5egnfyvmb4ddp45@pgxwr2muteby>
 <CAJgzZoq91VceHKZWetjzr5gOQ=Sx=ReCFfY2erPo7_Dxra9=xA@mail.gmail.com>
Content-Language: en-US
From: Carlos O'Donell <carlos@redhat.com>
Autocrypt: addr=carlos@redhat.com; keydata=
 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
 O0FatDMfJw==
Organization: Red Hat
In-Reply-To: <CAJgzZoq91VceHKZWetjzr5gOQ=Sx=ReCFfY2erPo7_Dxra9=xA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 7/16/25 12:30 PM, enh wrote:
> i didn't look at the other pages, but quite a lot on the clone(2) page
> is actually about what glibc does ... but glibc already removed all
> this stuff. so it should probably not be more than what we have for,
> say, m68k which is just "read your kernel/libc source for more"?
> 
> a corollary to "museum hardware should run museum software" might be
> "...and use museum documentation" :-)

Agreed.

There is a balance here between documentation that covers a reasonable
number of use cases, documentation that is easy to maintain, and
documentation that is easy to read (without superfluous information,
either too new or too old).

It has been about 1.5 years since IA64 started being dropped, and I
don't see any reason to keep very specific documentation about it
around except as smaller interesting historical notes.

-- 
Cheers,
Carlos.


