Return-Path: <linux-man+bounces-3718-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 547FFB34956
	for <lists+linux-man@lfdr.de>; Mon, 25 Aug 2025 19:52:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E29DE2A5B2A
	for <lists+linux-man@lfdr.de>; Mon, 25 Aug 2025 17:52:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EEEAC30274D;
	Mon, 25 Aug 2025 17:52:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="izMYcBmW"
X-Original-To: linux-man@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45EB11D79A5
	for <linux-man@vger.kernel.org>; Mon, 25 Aug 2025 17:52:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756144331; cv=none; b=GPbKDYpsr49WdGLIJdPYfCkUhOVkoOHvE7A6t8IUDfjF+XA+EwQZaF+V0fpQjgLdPU3sxY2FTrGZ8B1XOo3jZ+0QyOqoS4OVz0HLeheL34Lj3LFUnKd8N4n8x7/41YrsOwXTq/rk8MbFOFeoIZrbJoQaGVSZMTI/KLVzO5jOZXY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756144331; c=relaxed/simple;
	bh=BQBuOJjKm4BeQ9hc4q52DH9kP8MgAGkIU6doXIF6OZ8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=M+vpnt4tY5YgHiGBKa6HuC1zFQ5S7hgHezdKANkqf1O/ZYHytN2FKAtgAIl4xuJ9RmuNR1aZ0r1Ph16DA6+VQ1AnkOmg4MZPwr3eweo2JkLyqYuvEwMmXW98s2QBrfdUXG0VmXcUaAywUTPQHxZTUVm1b4Dl9OQb+qvNmcg/au4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=izMYcBmW; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1756144329;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=We1f/uIkuhRUGyp3WEoWH7TURwz4OEeHeQkYmICtQio=;
	b=izMYcBmWH9Yd9RBwG2VIqu+Q/1JxKuQR0iJKyWDZjnxguYC9KjEMhmzDzPhYted+hJgYiA
	52a0zBQmRkhVcHp9KmXyU3BKi6kyYYe8T5wFCw3dHg83Chup5siCnEmT1sU5WmmlHXZkwK
	pbIeGZY6ryWXR4aPkgAn9an3VLHe5hA=
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com
 [209.85.222.199]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-468-CYmYHlbGOCeBd_KfUjpBvg-1; Mon, 25 Aug 2025 13:52:06 -0400
X-MC-Unique: CYmYHlbGOCeBd_KfUjpBvg-1
X-Mimecast-MFC-AGG-ID: CYmYHlbGOCeBd_KfUjpBvg_1756144326
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7f2942a1aa1so197573785a.0
        for <linux-man@vger.kernel.org>; Mon, 25 Aug 2025 10:52:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756144326; x=1756749126;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:from:references:cc:to:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=We1f/uIkuhRUGyp3WEoWH7TURwz4OEeHeQkYmICtQio=;
        b=fdQDbW8naaPMNlKvHDKrCm7kNr3Ect8Puq31vmqTHMTriwl9VeDgtXdl2pJxP3BOPR
         t/T/vNhyRrQZKApx6+ia2LSPnd6sSvCCNujOAAeHFKiD6BxjXUkze9MlVbwjXMriRfBj
         b+mrvlesjXicwbLYS/oFsO87y3aDBZjbAOcYIZ+uKYg/v0tHadbXP4lCbg4SQA+byLTc
         zAjZw3hYsfX650XJ+rBn30wSBYOawaXcxMPVGhiTSqsUWNghJq9+S0JwCjO5fjJGGvD9
         Bckdkd92w2eTwc+z1NIMXgB4iys/nJTPSfn4Y0UsZEoCg83VqhJnfPT0FedmUvoqi5PO
         F1lg==
X-Forwarded-Encrypted: i=1; AJvYcCVR8c5g5OYDIirkHL9Kwh1VZjl9Qo9sinZwHsb7yL9kbNLbOR+Pm5kYoEuJC7OvyAEEBTxchZsUeus=@vger.kernel.org
X-Gm-Message-State: AOJu0YxHTqnhYCSB9QKAOYR0qPLYFvqb0nD++AcnG6OgaGnMM7UX1jgK
	rFjE3pbREqaY85nqPVcVH3tBGQkElWiQqBlezT/LgeGF97JO4LkRwjMlrz5tgx2/H+ztS5IHaaz
	Xzz4wpwJCEWBgWylDFt/6gumlWIlYUoTQFubQ9S7sKo3on4sfkw70OexDNYdtgw==
X-Gm-Gg: ASbGncvKPceIgoOx6F11nOA9Ej6tHJ9rAY6t2alCqfwHo/oD5F3F3fhez+BnW10IFbM
	m0ViqbMTiOhuHUeMS6510+a0dfOZmwDGsujWrz3gXx7Y1aapCXSbzRroqY0ZklKz/0OwqQf9Zgh
	D5WNOlqQht7+jIyJO4RRfZx78xCba4IQvTEvxhoSzeGbRjgvvJ/VutKxtBn2PMq1q8YyvMsI01n
	tcd0CkvkaR+cp9SvI+Ho0L1efr7lBhXefY3bxAItp7kktsl8gSy4PFsYvbjcAbm7lUYyjevfVi8
	L4R8n6ymP2Lfq+K5OI4tlDdPvzJT5YznIr9UDUtr
X-Received: by 2002:a05:620a:d85:b0:7ea:99a:c79 with SMTP id af79cd13be357-7f429a62680mr55858985a.22.1756144326302;
        Mon, 25 Aug 2025 10:52:06 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEZXNefWF2QeqsE64VlC8SERMtUNcp8UzXLDCGFh8yBbilUnVv7PPldJo36J4y1Av1AXCZlbQ==
X-Received: by 2002:a05:620a:d85:b0:7ea:99a:c79 with SMTP id af79cd13be357-7f429a62680mr55857085a.22.1756144325898;
        Mon, 25 Aug 2025 10:52:05 -0700 (PDT)
Received: from [192.168.0.241] ([198.48.244.52])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-7ebee7edd5esm526695385a.30.2025.08.25.10.52.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 25 Aug 2025 10:52:05 -0700 (PDT)
Message-ID: <8ed88109-2dd4-4d26-ba5d-32bbf7cb2906@redhat.com>
Date: Mon, 25 Aug 2025 13:52:03 -0400
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Issue in man page PR_SET_SECUREBITS.2const
To: Alejandro Colomar <alx@kernel.org>,
 Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
References: <aKsmUDWxV2eeCmmT@meinfjell.helgefjelltest.de>
 <lnh4f63q5onlj54wt7qg76unbcvu5apinualih4byiatrfvjpv@5r53xpupbjws>
From: Carlos O'Donell <carlos@redhat.com>
Content-Language: en-US
Autocrypt: addr=carlos@redhat.com; keydata=
 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
 m/A+1AHg4g==
Organization: Red Hat
In-Reply-To: <lnh4f63q5onlj54wt7qg76unbcvu5apinualih4byiatrfvjpv@5r53xpupbjws>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 8/24/25 3:21 PM, Alejandro Colomar wrote:
> Hi Helge,
> 
>> Subject: Re: Issue in man page PR_SET_SECUREBITS.2const
> 
> You probably meant PR_SET_THP_DISABLE.2const.  The text you quoted is
> there:
> 
> 	$ grep -rn THP.disable
> 	man/man2const/PR_SET_THP_DISABLE.2const:9:set the state of the "THP disable" flag for the calling thread
> 	man/man2const/PR_SET_THP_DISABLE.2const:21:Set the state of the "THP disable" flag for the calling thread.
> 	man/man2const/PR_SET_THP_DISABLE.2const:32:The setting of the "THP disable" flag is inherited by a child created via
> 	man/man2const/PR_GET_THP_DISABLE.2const:9:get the state of the "THP disable" flag for the calling thread
> 	man/man2const/PR_GET_THP_DISABLE.2const:22:the "THP disable" flag for the calling thread:
> 
> On Sun, Aug 24, 2025 at 02:48:48PM +0000, Helge Kreutzmann wrote:
>> Without further ado, the following was found:
>>
>> Issue:    malloc → B<malloc>(3) ?
> 
> Maybe, but we should probably add a reference to malloc_hook(3) instead?

In a modern system you care about malloc not malloc_hook.

The hooks have been removed and glibc has directly integrated THP usage in malloc instead.

https://sourceware.org/glibc/manual/2.42/html_node/Memory-Allocation-Tunables.html

Tunable: glibc.malloc.hugetlb

-- 
Cheers,
Carlos.


