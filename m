Return-Path: <linux-man+bounces-3090-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id C5150ACC762
	for <lists+linux-man@lfdr.de>; Tue,  3 Jun 2025 15:10:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1E6B618942AD
	for <lists+linux-man@lfdr.de>; Tue,  3 Jun 2025 13:10:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DBD7922F740;
	Tue,  3 Jun 2025 13:10:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel-dk.20230601.gappssmtp.com header.i=@kernel-dk.20230601.gappssmtp.com header.b="DIJ6k0+a"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-il1-f179.google.com (mail-il1-f179.google.com [209.85.166.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AAA251F582F
	for <linux-man@vger.kernel.org>; Tue,  3 Jun 2025 13:10:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748956224; cv=none; b=qcPFRpblIT3l2vjFjWGWOpIYGZSSbWzkJxrQvQxInF79fDRjKFQocM2z6e5D8m7+etEdrW/ra1HUixNOjEiF+s7N82p8y72XnSOR0STEYNjr9Z092Ur0TcjUG5OeBxUULP8M2YDymWyA9PBwEYG049NaHIevf4tPi5Uuv9lsfeo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748956224; c=relaxed/simple;
	bh=xMVHeEE/SxzT62LXweskFWc6cmkvw2JtE9cfTDCDC3c=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Jy5nfWnVPhj9rWH3oTjQBC9elyC+vepUIZaED6K6Dws5ioWOqqeq/DPiLHn3RzCI385ygNYBqnZIB5jXMiungCrMFWFxQ8HfXkMeaOJeRVhjry/vElD/YMfvdiuDkJcm1lw2L4gUdPoUAocDowradbdZJC6Ar987VZqVI3Tb4dk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=kernel.dk; spf=pass smtp.mailfrom=kernel.dk; dkim=pass (2048-bit key) header.d=kernel-dk.20230601.gappssmtp.com header.i=@kernel-dk.20230601.gappssmtp.com header.b=DIJ6k0+a; arc=none smtp.client-ip=209.85.166.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=kernel.dk
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=kernel.dk
Received: by mail-il1-f179.google.com with SMTP id e9e14a558f8ab-3dc7294716cso45694395ab.2
        for <linux-man@vger.kernel.org>; Tue, 03 Jun 2025 06:10:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=kernel-dk.20230601.gappssmtp.com; s=20230601; t=1748956221; x=1749561021; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=dXic1cyP7amAs7cGQlwC1dvEvej7HhuJm/yLfHH0Rq8=;
        b=DIJ6k0+aIqV6p8qTL+0nMZ253lRZMdewqq47BAOgMHMTpSbH5NTee7rXMZA7QSLUL6
         PT02/5LGxnrD3OdxpxddROFr4JrbOA3TItj796tER8u2bxd9UUC4eK0WCzGFtsuhHbkI
         OhdP4cnlUTkm6ZmreHl8WbkQy9CDKL1NO87qWddUjbxvBiv3TmJhcqk+5Q38PRIZzV9u
         Se0PE/wO0LIFvSkdP9PcuC9zid5cPPTUo0wchbXRxmeztqPY8xoUwyDHpQsw0AIOJrsL
         AwpL/U98fgbmMHgyVQEK9jvlUP/Bi3Fr8LoOSFulmoWsHL7WcrVotWaRgmA1P/kBwqx9
         PRVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748956221; x=1749561021;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=dXic1cyP7amAs7cGQlwC1dvEvej7HhuJm/yLfHH0Rq8=;
        b=O4tOeWKz+SLvGj//XGmke84tLcSm8NY9iOzyf1bof4GxrrWLnnxfNHRPN/IdM1D84w
         46GypSdkhWBPq6310faTzubYzEXmzMW/ZCjAbTyuEqkkeLIx6ETVLs73jUlKiqM1Tx89
         8J+q/vxbnlPMFe4oNLyNFmAy8CQ/RPfl8gnsgqUf/C1hSalQbLUrilwdRXT5EmSjj6Jr
         tbfXw4NUHgexUw32LMrXt48cd7fuHruLkZVMrTkOVGGeGGH5byTFMCHD8vEXnJAcfUau
         pVLzCOW2ircDopOGX52R+u2NI99OIepFXI6oP5DU9D7Pumy2om9cfhS9SPxoRCDvpInJ
         IpxQ==
X-Forwarded-Encrypted: i=1; AJvYcCU3/H4CkeysJSScLTINgWv1sLedkh+74/klY3ZNXWI49ttcuuAHc/ftFk1BAI+nGsvrbk3AZHSRazM=@vger.kernel.org
X-Gm-Message-State: AOJu0Yyi8v2n89ow4M9jTdliElJn2kpTH/WLPNV7VnzF7k/Cp8NgunAJ
	e3Sb3WGsOuy85BN8hzEf1lRPN2zEzYH/3JDLbs2yrDw8N0rSHoRwv/occKcB8/S8ryE=
X-Gm-Gg: ASbGnctggfJ2E/G2WKfOj2eYwRS+0ahDij8m3PpzaMWVL81cPTF7s95XMnmpwKv/OaP
	In6oU1znPKtvfywtn89KQEb5JWlMPclqIV8fe/32myzxCBwIb/E3l5uEppDbipFCniHLhvkMEnS
	4ERMam/hoc5BLuYdSJsJb2QLtdE3d1bskKFbpZqGavfoUM6dmZzIG1ZF0rLJe4VkBqgi+eoedqc
	LphUHoCpDkbFtaa+BzZ8qVRmXPIwoMeQwuIYRFC3IMs6VyV2FHi6dAMuBIUqWmFOZadGveVLt0I
	EP1+vDTe69HappgJBg3qOYTIs5r99l6+228smogN2Co6m5M=
X-Google-Smtp-Source: AGHT+IEhjGsVLaDyUCLBLQkMf818NMyBy1RlDRj1zIpCbxsdhlr3jCmTevpNudNnD/tQG+muo8XfKQ==
X-Received: by 2002:a05:6e02:230a:b0:3db:72f7:d7b3 with SMTP id e9e14a558f8ab-3dd9c9887d4mr167404775ab.4.1748956221403;
        Tue, 03 Jun 2025 06:10:21 -0700 (PDT)
Received: from [192.168.1.116] ([96.43.243.2])
        by smtp.gmail.com with ESMTPSA id e9e14a558f8ab-3dd935288efsm26469425ab.1.2025.06.03.06.10.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Jun 2025 06:10:20 -0700 (PDT)
Message-ID: <24b9b367-d2ef-4eb5-ad56-f43ab624dd14@kernel.dk>
Date: Tue, 3 Jun 2025 07:10:19 -0600
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: RWF_DONTCACHE documentation
To: Johannes Thumshirn <Johannes.Thumshirn@wdc.com>,
 "hch@infradead.org" <hch@infradead.org>
Cc: "linux-fsdevel@vger.kernel.org" <linux-fsdevel@vger.kernel.org>,
 "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>
References: <aD28onWyzS-HgNcB@infradead.org>
 <cb062be5-04e4-4131-94cc-6a8d90a809ac@kernel.dk>
 <12bb8614-a3e1-474e-914c-c06171f0a35e@wdc.com>
Content-Language: en-US
From: Jens Axboe <axboe@kernel.dk>
In-Reply-To: <12bb8614-a3e1-474e-914c-c06171f0a35e@wdc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 6/3/25 12:20 AM, Johannes Thumshirn wrote:
> On 02.06.25 17:53, Jens Axboe wrote:
>> On 6/2/25 9:00 AM, Christoph Hellwig wrote:
>>> Hi Jens,
>>>
>>> I just tried to reference RWF_DONTCACHE semantics in a standards
>>> discussion, but it doesn't seem to be documented in the man pages
>>> or in fact anywhere else I could easily find.  Could you please write
>>> up the semantics for the preadv2/pwritev2 man page?
>>
>> Sure, I can write up something for the man page.
>>
> 
> Hi Jens,
> 
> Small sidetrack here. What happened to the ext4 and btrfs support of 
> RWF_DONTCACHE? I remember seeing your series having ext4 and btrfs 
> support as well but in current master only xfs is setting FOP_DONTCACHE.

The btrfs support got queued up, that's all I know on that front. For
ext4, it needed a bit of a hack [1] and there was some chatter on
converting the write side to iomap, which would eliminate the need for
that hack. The last fs patches I had on top of the core bits was:

https://git.kernel.dk/cgit/linux/log/?h=buffered-uncached-fs.11

in case you or someone else wants to pursue those parts.

[1] https://git.kernel.dk/cgit/linux/commit/?h=buffered-uncached-fs.11&id=92df0ef308d0bfbbc26a7efa1d571a506fd8fee3

-- 
Jens Axboe

