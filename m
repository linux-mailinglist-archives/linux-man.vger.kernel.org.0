Return-Path: <linux-man+bounces-3036-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 03E54AC4EF6
	for <lists+linux-man@lfdr.de>; Tue, 27 May 2025 14:54:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 920653AA1E6
	for <lists+linux-man@lfdr.de>; Tue, 27 May 2025 12:54:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2977C2AF19;
	Tue, 27 May 2025 12:54:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="PoAlUmiy"
X-Original-To: linux-man@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CFE9D53C
	for <linux-man@vger.kernel.org>; Tue, 27 May 2025 12:54:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748350478; cv=none; b=d6pgve3SNVp1+gL094/vOBjA1N3yEXvSY2sKsaCBsWClCpeMAylqV9lQ1VOjWDtkjhf7synLRlXK7EnRbtcfnEtlHVCGI6UviTVTCjv9HpVwUm90cBJqjaBFce3z9Cf43axLv+xD1nlKNjmYw1PyB2kj5aS0x0OsI2G+ERTdlYA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748350478; c=relaxed/simple;
	bh=IKTLFQIps98K/tLGMmpUn/tw6jGpnjCs/S2meb1Snyw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=fA1wXesc314u8LGUPqBL29EcuyG59UpJVJg9UPDd85KWyosxUTTHtGoFhAkgMBt9BbW9w0KVBt28/ZU1yz3HLzfz1K4aAEL9p7SPxM3kgFsGFcuOmt0g/dIzb4WiS4aAycOebaxb+HP3va4vqiBzOyrHeWUMCidZSkRADFL7E1s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=PoAlUmiy; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1748350476;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=7M/9yWe9+DIfFKqAFvPC9ZhZJ+yq2pfSL1dIJv83CpQ=;
	b=PoAlUmiyL6+K8fE6et5YPBP9CbI6DW9B6kGdbkVDdM+7AqU877ghiBH7mJLqLi1n89JE6c
	lVlumeR0zosQ6uPRMgeGPH7lfsF1Mr7jp9WHuQBkQ6/+Hmc9ZVNOcrPRbEDGwYw+uN6aJM
	hCjOzj/TyMPEy9BJHNvTC3WMvgAkbdU=
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com
 [209.85.222.199]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-690-Scy5yW1dMYWdEJ7PKzh9ew-1; Tue, 27 May 2025 08:54:34 -0400
X-MC-Unique: Scy5yW1dMYWdEJ7PKzh9ew-1
X-Mimecast-MFC-AGG-ID: Scy5yW1dMYWdEJ7PKzh9ew_1748350474
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7caee990715so1179041185a.3
        for <linux-man@vger.kernel.org>; Tue, 27 May 2025 05:54:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748350474; x=1748955274;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7M/9yWe9+DIfFKqAFvPC9ZhZJ+yq2pfSL1dIJv83CpQ=;
        b=lp8M62havbg8lfqxOXuWAS631PcA3BspkiVYDxXpB9jtO9Ugq9yZIUQeJVuaXAqPcO
         yn/re58Ti1Q6eOVua0F1KWqD4hkBa0d61k6qxsk3mEMqicIM7qlV9ZZFoQ2vqA1KbXWX
         wTeRAT6b5b/8fCJB0SdZurL3JMw7vb3njTSI61fyA5ieot9SMZhsphTaI/i0K3LmVOrm
         xOujnPHEPt2MzfM6mWC6cVE2exfVW3XG/CJL0Hl5rkEqlDBphPZh2q3o6wnNtd7UmMSh
         A/QdwBqr9pbqQNI2+oQ/7NJtOub7aIYdrv50G6+pSAFDwm3oxvRUngK2UWt6vveDRJv4
         8lzg==
X-Forwarded-Encrypted: i=1; AJvYcCUPVFcgeqtBbx63I6thOCW9yh8Y8J2i1pyyWFnnD31g95qFnKFp7j+m2XhytmuGFkjBFzdZZFVNBH0=@vger.kernel.org
X-Gm-Message-State: AOJu0YzA2dXF9tw++gSM/iCguIJ1FWaoALMHXpy4nVDdPRbHfjJX26/M
	HNc0/i1EFHx6PpDoej0/ybamjVtpt65bdHNyWgmX4jlKQ140P9Ym8NCbhOEYC+ehqod0mppO/Ve
	zqE6Y2HLscZpCoGmHtcZGl7gxhjaDcT2lkSe4KNbJjgO8t9sCfSF5jVDvz1OfJg==
X-Gm-Gg: ASbGncsCbknQ4BIUNQPlSlzTBGJKrfiY8YLfLIR1vTm3W/0tHsA85U2KSPUhfY+2pIO
	0DJZYs2NgH1Ft/okQFuol5Lw0ePkH5B7nVfmSKFoeITGMb5E3hXBBTsvvMb+9Dx8+dOM7LBkm8+
	XC6sRCRmH2kLcOSMbSeNPMP4uqP5HWzfbQfD+UhE5JsqL9wmYxp6cHMtB457OuUKZ4W3Kl5IVQW
	NSt2acp4cUucMh0C8fABuKRP/1oSf9Ml/ZpFl7+4phnBHuQq8vfzm3pjD+GgAcun9ryDE7Ma6Gs
	pHjcnswF+/4E
X-Received: by 2002:a05:620a:2619:b0:7c5:42c8:ac82 with SMTP id af79cd13be357-7ceecbc2f3cmr2002987085a.23.1748350474441;
        Tue, 27 May 2025 05:54:34 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF+L0fw0C9F0kPtmW1EU7OgBtXZoR/VgW9UCha9WcSnSJCKR31gofRroC6no3Eah1qM/+5yzQ==
X-Received: by 2002:a05:620a:2619:b0:7c5:42c8:ac82 with SMTP id af79cd13be357-7ceecbc2f3cmr2002984285a.23.1748350474089;
        Tue, 27 May 2025 05:54:34 -0700 (PDT)
Received: from [192.168.0.241] ([198.48.244.52])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-7cd467bde28sm1722766685a.20.2025.05.27.05.54.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 May 2025 05:54:33 -0700 (PDT)
Message-ID: <ef1da3c5-2641-4baa-ac9a-4e5f9f0eecbc@redhat.com>
Date: Tue, 27 May 2025 08:54:32 -0400
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: bug in futex.2, FUTEX_CMP_REQUEUE
To: Alejandro Colomar <alx@kernel.org>
Cc: =?UTF-8?B?SuKCkeKCmeKCmyBHdXN0ZWR0?= <jens.gustedt@inria.fr>,
 Michael Kerrisk <mtk.manpages@gmail.com>, linux-man@vger.kernel.org,
 Ulrich Drepper <drepper@redhat.com>, Ingo Molnar <mingo@kernel.org>,
 Todd Lewis <todd.lewis@gs.com>, Alexandre Oliva <aoliva@redhat.com>
References: <20250527115303.3304206e@inria.fr>
 <s5ec3atfffzxdetxbkjgkdiarnuk2yucnpi5j3h3ppqr72mxna@ml6zpucwnbz6>
 <7d4c29a5-6836-48bd-a6c8-009264be000c@redhat.com>
 <20250527142812.51ee1c30@inria.fr>
 <3a1f14f3-f2d7-405e-a6c8-6f19893358cf@redhat.com>
 <3bk7nlklhg5kft33gyworbh7pbs2ezwmxm2gfxfnh6sqctq52v@scjej2sz423e>
Content-Language: en-US
From: Carlos O'Donell <carlos@redhat.com>
Autocrypt: addr=carlos@redhat.com; keydata=
 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
 O0FatDMfJw==
Organization: Red Hat
In-Reply-To: <3bk7nlklhg5kft33gyworbh7pbs2ezwmxm2gfxfnh6sqctq52v@scjej2sz423e>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 5/27/25 8:51 AM, Alejandro Colomar wrote:
> Hi Carlos,
> 
> On Tue, May 27, 2025 at 08:37:16AM -0400, Carlos O'Donell wrote:
>> Since the parenthetical is not clear about val vs. val2, it can be
>> read in two different ways.
> 
> The entire paragraph is
> 
>              Typical  values to specify for val are 0 or 1.  (Specifying
>              INT_MAX is not  useful,  because  it  would  make  the  FU‐
>              TEX_CMP_REQUEUE  operation  equivalent to FUTEX_WAKE.)  The
>              limit value specified via val2 is  typically  either  1  or
>              INT_MAX.   (Specifying the argument as 0 is not useful, be‐
>              cause it would make the FUTEX_CMP_REQUEUE operation equiva‐
>              lent to FUTEX_WAIT.)
> 
> 
> There's a parenthetical after talking about val, and another one after
> talking about val2.  I think the latter parenthetical unambiguously
> refers to val2.  I would have written them as part of each sentence, to
> make it even less ambiguous, though.

Just adding "val" and "val2" to the parenthenticals removes any confusion
if you are quickly skimming the text?

There is still the degenerate case of val==0 and val2==INT_MAX which is
equivalent to FUTEX_WAKE followed by an atomic FUTEX_WAIT since all
waiters move queues and no waiter is officially woken and allowed to
return to userspace?

-- 
Cheers,
Carlos.


