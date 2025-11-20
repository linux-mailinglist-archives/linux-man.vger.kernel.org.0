Return-Path: <linux-man+bounces-4302-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id D4584C7466D
	for <lists+linux-man@lfdr.de>; Thu, 20 Nov 2025 15:01:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 9556A342581
	for <lists+linux-man@lfdr.de>; Thu, 20 Nov 2025 13:53:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BD4282D73B1;
	Thu, 20 Nov 2025 13:53:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="gKi8nIcc";
	dkim=pass (2048-bit key) header.d=redhat.com header.i=@redhat.com header.b="PsPaO8vk"
X-Original-To: linux-man@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EE1534250F
	for <linux-man@vger.kernel.org>; Thu, 20 Nov 2025 13:53:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763646798; cv=none; b=MdtCn54Zf9Fz+KCua75i8X5H78X0Lwy2MEhpxQhPx2WSD+X0ryJFMo2FOiNYmsgEexF2zd5QZ3UJv6G9+IdlO2S6mWFL8O+WyFS9OZ4fbWKHA5BdlCAOkgNyP3KxrZDg+ZV5Kb3iMgEpuTvfgCVjR6Db9P3qhmRLG3oS3KYwZmE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763646798; c=relaxed/simple;
	bh=8UyG3guCky1iRBa7IXtnKqcGTchRTOWYffL/TGNmsZw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=qLwZXca+5/2MfwYEE/ffMgmpVsP8jrLMH1sT5UKvJcgeNyL9G1FqClQUZgnN9kvJzqPa/FO8UPG0WDHmJN6jsl/p5Z6NCZW6I6GkxDQdrqCbjt+oDbkEU4WTyKIxgVE8uPLfVHkNysItvsQzMltqYioo6JsNQXIKdLJIbl5j1+E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=gKi8nIcc; dkim=pass (2048-bit key) header.d=redhat.com header.i=@redhat.com header.b=PsPaO8vk; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1763646795;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=RMIPB0qSeiXY5oaMaknV0h/Qoe01dbcEwE2u9BZOLTE=;
	b=gKi8nIcc7fGAzFgv77N+JmNTjNF0W7eiT2hjFzSZ6fBQz0bM5kuftHcpbzv2ok78PqJrlf
	xo7CUqaCaOT0zkRrkjBYk/uZHoYbq3RQb99HkA7gPV4u4IV0bSWEDXT2oEsNXWI8++Pm+h
	A+j3TOZYy5k/tzn2xvVdeuP9QDUbwbs=
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com
 [209.85.160.199]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-682-YCS55wlHOX6qV9__9-fLbQ-1; Thu, 20 Nov 2025 08:53:13 -0500
X-MC-Unique: YCS55wlHOX6qV9__9-fLbQ-1
X-Mimecast-MFC-AGG-ID: YCS55wlHOX6qV9__9-fLbQ_1763646793
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4ede679393aso24913081cf.1
        for <linux-man@vger.kernel.org>; Thu, 20 Nov 2025 05:53:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=redhat.com; s=google; t=1763646793; x=1764251593; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:from:references:cc:to:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=RMIPB0qSeiXY5oaMaknV0h/Qoe01dbcEwE2u9BZOLTE=;
        b=PsPaO8vkZgTtTU5BynzxXwOQ1mk9NyrpEZ3W1p3OV29qYIifSW03xG3QPKBSdd3Y6E
         YhncZSe1o2AxqNu2X8m3uyxTCd4lZ7e/wY0yarhjaZOTAa+yeYtbeDXOeAeTtKgasYX5
         Gtp6eSEh7AzBsMEXG5NJhvFuQyca1z8/P9RHxg/kfBIujZSaQpnC+wS1/5lXlxbcsPZX
         aoJgiHkUeDbJjWq7VgCQouPhO8KEOrU7K5fuDw1RI83AlF8P+WjUy+MvjhSFQyQ32VfS
         C7F8trwjMWt5L0VXgRof9BUpUcWUWqE1NVSnAG3Os2C/+yrhjy8fC8Dj4TnjAAUdkBV8
         RBSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763646793; x=1764251593;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:from:references:cc:to:subject:user-agent
         :mime-version:date:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RMIPB0qSeiXY5oaMaknV0h/Qoe01dbcEwE2u9BZOLTE=;
        b=hpC/rOugnzIRM4VqGklTTjaplwHYBT96mRS8jKKe7DUtm9PkVhQXSpsbvIY02l0Xht
         oBEiPvsXx4cG/mHv4f/HINQMIkSKebpgqhg9qgebd+SKvJzS7Krc6j2YgTiKRjBMACzh
         YcNSpOkb+IFpilWrpi8WdKL5MFTdaLdHOm92accs+uCj9Bkt1VqyARj9RMgLq043uleh
         unjp5XrvyFZDv+bJdV0sY4wKqXfuaeh8rdBs5dWVz+8YZ1cPDFHmi0+grFePvX+wFqV0
         f4rvzmi0rQE3HhDkIP3VEIVBpme3Q5rMeY02q9GAwbmV6IUcfMrzWuqsLWHvvE4jYLLa
         Xmzg==
X-Gm-Message-State: AOJu0Yys/0mwhvuzZHoPdkGg0MZ/jliQjD+hvoAnZEAvkwO+imBWr2va
	IlyOrUBPOBycCSowJU/mv+5FDvhs4dbVzyWVxXnOE8m2e2k5St9sBveeySH7Zsl4FM05lp2SDa9
	Epaim5UWtx0jHvQIBmnUYGKftveSVnCAiG7aEZ7XYK3LO4Ps0t1PUzX72uBtLpwGl+UQ8Ag==
X-Gm-Gg: ASbGnctj8n1P8Nofjoq6/BvLq30WYpvAOe6Df1s1qV9vOz7vgrqdwBmknrrtH9fG7m4
	0FFWLk+PMHXG1n3tL2yHya2pNiT0l+rGz0D/Fxw0M78rtObybmPc/NDrO5NnrtWwM7mxlB6H2hP
	XL2i3/fKnWS5ElMPjhhTH55A6N8EpMqO+XV7sQVKN5ZV7fnQss5rdcAznOlL/an7NaEIfgZc3X9
	O6lfYf88KXc616vP3IxAu4d5mchD6wnxREdUMorrm5PZ1sb9pTUCdqwSOsin5M4wdLClYTfLdwd
	FRUke2mC2MJlFZfPtFh4FOD2Xw9vxnWx3gDU0Jt4OPV1rP7de6agjehXkmfc9wsyv+n9mrdS3jK
	vuOkD/ngpnUM=
X-Received: by 2002:ac8:5ac1:0:b0:4ed:66df:8023 with SMTP id d75a77b69052e-4ee494728f5mr34245001cf.30.1763646792933;
        Thu, 20 Nov 2025 05:53:12 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGYI7f8SPq5VhJOj4O6tUJEdMRbKRxSd+RS+k0+atUd3f9wMXuZ0WV/J3+Kb2XYYoKhHHn7yA==
X-Received: by 2002:ac8:5ac1:0:b0:4ed:66df:8023 with SMTP id d75a77b69052e-4ee494728f5mr34244721cf.30.1763646792454;
        Thu, 20 Nov 2025 05:53:12 -0800 (PST)
Received: from [192.168.0.241] ([198.48.244.52])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-4ee48b45ccesm15888331cf.0.2025.11.20.05.53.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 20 Nov 2025 05:53:11 -0800 (PST)
Message-ID: <f2ab78d0-8acd-481e-af4d-03e76d51c1ee@redhat.com>
Date: Thu, 20 Nov 2025 08:53:10 -0500
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Status of restoration of copyright statements to the man-pages
 source files?
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man <linux-man@vger.kernel.org>, "Andries E. Brouwer" <aeb@cwi.nl>,
 Vincent Lefevre <vincent@vinc17.net>
References: <4d829996-690c-4411-bb75-207ef1239b49@redhat.com>
 <b6prio6ck56jekesw5v5gmmzrkfqdtjqwaq5jzgugkhy7tznc6@jhag73ju3qq3>
 <unavr5u2uynqfvj7iymgvsptq4k5s5b4ex7havl36zro4bbua4@fqpjhnsuu5ln>
From: Carlos O'Donell <carlos@redhat.com>
Content-Language: en-US
Autocrypt: addr=carlos@redhat.com; keydata=
 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
 m/A+1AHg4g==
Organization: Red Hat
In-Reply-To: <unavr5u2uynqfvj7iymgvsptq4k5s5b4ex7havl36zro4bbua4@fqpjhnsuu5ln>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 11/20/25 8:36 AM, Alejandro Colomar wrote:
> Hi Carlos,
> 
> On Wed, Nov 19, 2025 at 10:50:14PM +0100, Alejandro Colomar wrote:
>> Hi Carlos,
>>
>> On Wed, Nov 19, 2025 at 04:14:10PM -0500, Carlos O'Donell wrote:
>>> Alejdandro,
>>>
>>> What is the status of restoring the removed copyright notices?
>>
>> I'm going to do it soon.  I was prioritizing some GCC patches these days
>> because of the Stage 3 deadline.  Copyright is the next large thing I'll
>> do.  I expect it to be done before the end of year, and certainly before
>> the next release.
>>
>>> At the end of June we concluded with the following:
>>> https://lore.kernel.org/linux-man/u2ogua4573d2xm2p2oiuna67kydkr3e26pt6lixeidezdw34dg@nvn64na3cptt/
>>
>> Yup.
>>
>> I met with Michael Kerrisk in Paris, and we discussed this.  He didn't
>> like the change and asked me to revert, so I'll revert it for those that
>> haven't given express consent.
> 
> I've created a list of people who gave consent for the transformation of
> their copyright notices.  I've included the Message-ID of the email in
> which I understand they gave their consent.  Some of those emails were
> sent to me privately.
> 
> I'll revert the change for people not included in this list.
> 
> 	Stephan Mueller <stephan.mueller@atsec.com>
> 	Message-ID: <52939046.zMMnDpVMM9@tauon>
> 
> 	Stephen Kitt <steve@sk2.org>
> 	Message-ID: <20250509150459.06f9fab7@heffalump.sk2.org>
> 
> 	Marko Myllynen <myllynen@redhat.com>
> 	Message-ID: <CAC9tSfZGRZPe001qLA3p3U8vcpxkeBgLLVoT-Z9M2gcbJVbPdw@mail.gmail.com>
> 
> 	Mathieu Desnoyers <mathieu.desnoyers@efficios.com>
> 	Message-ID: <c684271a-9c1c-4c91-9ef8-db44cb924320@efficios.com>
> 
> 	Carlos O'Donell <carlos@redhat.com>
> 	Message-ID: <d9b988f8-ebd9-4a0e-aa27-cab14f1f3a96@redhat.com>
> 
> 	Josef Bacik <josef@toxicpanda.com>
> 	Message-ID: <CAEzrpqcsZHpcjNzCRhuXnkfEivv1HPNEwu79YUikszBijtz2uA@mail.gmail.com>
> 
> 	"Serge E. Hallyn" <serge@hallyn.com>
> 	Message-ID: <20250509134320.GA703704@mail.hallyn.com>
> 
> 	наб <nabijaczleweli@nabijaczleweli.xyz>
> 	Message-ID: <53bvrkso3m5lgdvxmx4qmncyxq6xuu6ohrnt3bl7j5f3mbqlzb@tarta.nabijaczleweli.xyz>
> 
> 	Thorsten Kukuk <kukuk@suse.de>
> 	Message-ID: <658e1be26d1a1e35876d61ae8a3144a1@suse.com>
> 
> 	Michael Haardt <michael@moria.de>
> 	Message-ID: <20250509135518.HdQYC%michael@moria.de>
> 
> 	Heinrich Schuchardt <xypron.glpk@gmx.de>
> 	Message-ID: <38C59C54-AB13-47B9-B10C-790EA3AC4C06@gmx.de>
> 
> 	Carsten Emde <C.Emde@osadl.org>
> 	Message-ID: <f94e2c11-d5c5-4ff3-a5ba-85790316cb1d@osadl.org>
> 
> 	"Robin H. Johnson" <robbat2@gentoo.org>
> 	Message-ID: <robbat2-20250509T153512-150386020Z@orbis-terrarum.net>
> 
> 	Greg Banks <gbanks@linkedin.com>
> 	Message-ID: <CH4PR21MB4267A5A17BDD166BE6994827A18AA@CH4PR21MB4267.namprd21.prod.outlook.com>
> 
> 	Sam Varshavchik <mrsam@courier-mta.com>
> 	Message-ID: <cone.1746807943.344622.14798.1000@ripper.email-scan.com>
> 
> 	Bill O. Gallmeister <bgallmeister@gmail.com>
> 	Message-Id: <B2ED8AD9-7DE1-45AC-AD34-DC4CFB168137@gmail.com>
> 
> 	Kees Cook <kees@kernel.org>
> 	Message-ID: <202505090930.726717E3A3@keescook>
> 
> 	Christoph Lameter <cl@gentwo.org>
> 	Message-ID: <3b12f92f-3223-488d-6481-f8f010258d12@gentwo.org>
> 
> 	Andrew Morton <akpm@linux-foundation.org>
> 	Message-Id: <20250509141935.ca5d5f154867815a67043627@linux-foundation.org
> 
> 	Oron Peled <oron@actcom.co.il>
> 	Message-ID: <5681932.rdbgypaU67@sodium>
> 
> 	Tycho Andersen <tycho@tycho.pizza>
> 	Message-ID: <aB4bk7udjMKo336Q@tycho.pizza>
> 
> 	Goldwyn Rodrigues <rgoldwyn@suse.de>
> 	Message-ID: <ctmjbulmw4mufufga2yngtdaosoielokxcwmtezg2iv45f3whe@jbpr4gelhchs>
> 
> 	Sean Young <sean@mess.org>
> 	Message-ID: <aCGqMIVCU2Wwtc2x@gofer.mess.org>
> 
> 	Dave Martin <Dave.Martin@arm.com>
> 	Message-ID: <aB4N4eD1gbZi6Cao@e133380.arm.com>
> 
> 	Stefan Hajnoczi <stefanha@redhat.com>
> 	Message-ID: <20250512185159.GJ141177@fedora>
> 
> 	Thomas Gleixner <tglx@linutronix.de>
> 	Message-ID: <87wmalk5wx.ffs@tglx>
> 
> 	Bill Pemberton <wfp5p@worldbroken.com>
> 	Message-ID: <c8616ad9-dd8f-43e2-8d70-fbd42aa557ab@worldbroken.com>
> 
> 	Nanno Langstraat <nal@ii.nl>
> 	Message-ID: <19af811e-ad9a-432d-8ba0-3dcf7cd62485@ii.nl>
> 
> 	Tomas Pospisek <tpo@sourcepole.ch>
> 	Message-ID: <0a7d6858-3ecd-2a77-69bc-497df658f44d@sourcepole.ch>
> 
> 	Josh Triplett <josh@joshtriplett.org>
> 	Message-ID: <aCKGvbHHRoS87ioM@localhost>
> 
> 	Florent Revest <revest@chromium.org>
> 	Message-ID: <CABRcYmLmW32ErsaxsYEikbdPEa4UtHLP6RdUD+6CimFcvMV3rw@mail.gmail.com>
> 
> I think I'll only revert proper copyright notices, and not other notices
> such as "Foo Bar fixed X".

And companies?

diff --git a/man/man5/nss.5 b/man/man5/nss.5
index 19e575128..8e76b477f 100644
--- a/man/man5/nss.5
+++ b/man/man5/nss.5
@@ -1,5 +1,4 @@
-.\" Copyright (C) 2006 Red Hat, Inc. All rights reserved.
-.\" Author: Ulrich Drepper <drepper@redhat.com>
+.\" Copyright, The contributors to the Linux man-pages project
  .\"
  .\" SPDX-License-Identifier: GPL-2.0-only
  .\"

For example, I'd expect the above change to require corporate legal approval
to remove the copyright statement.

-- 
Cheers,
Carlos.


