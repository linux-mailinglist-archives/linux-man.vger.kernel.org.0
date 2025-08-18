Return-Path: <linux-man+bounces-3479-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E8F92B2B2B0
	for <lists+linux-man@lfdr.de>; Mon, 18 Aug 2025 22:44:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 4F32F7A04DC
	for <lists+linux-man@lfdr.de>; Mon, 18 Aug 2025 20:42:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0DD25272E51;
	Mon, 18 Aug 2025 20:42:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel-dk.20230601.gappssmtp.com header.i=@kernel-dk.20230601.gappssmtp.com header.b="2ZsNTs0+"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-oi1-f182.google.com (mail-oi1-f182.google.com [209.85.167.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0439527146F
	for <linux-man@vger.kernel.org>; Mon, 18 Aug 2025 20:42:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755549778; cv=none; b=PoevnPsaZLpJxcouYqJwc6Nu3QW9XcJSPTEXCmgURKzQoyUz8QB4E2Ozp5epGiVkOuZjt21THKZ1066HYdkozpNK5iJuL9DRx+1gcUWC4X8lUx7RKgl3wnAKwN21oB/D954ajy+CymQuSPyipzeO1r0074S0MZ2vQ2fUkcQ1N6I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755549778; c=relaxed/simple;
	bh=xcRhqrtnt1tMRpk74abDPEHOwtTCJMPQBi4qr3vXQBw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=q+e1KAi1RH3RVNMegNCCwsMYIZZDaVtQRjZ/Pa2aO+hWBfaueYk56L8QmIUzmoUr9v6dGgJKkbYH79mqTFiHSHemNqKRoPsEobQrjt09ztGFFE0f6GJxKe9CQ7ytuXepK4a8f0AeJLVtDqzMOeG1AC0/BhxqwKcIzfoie734ur4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=kernel.dk; spf=pass smtp.mailfrom=kernel.dk; dkim=pass (2048-bit key) header.d=kernel-dk.20230601.gappssmtp.com header.i=@kernel-dk.20230601.gappssmtp.com header.b=2ZsNTs0+; arc=none smtp.client-ip=209.85.167.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=kernel.dk
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=kernel.dk
Received: by mail-oi1-f182.google.com with SMTP id 5614622812f47-435de6d0f5aso2790930b6e.1
        for <linux-man@vger.kernel.org>; Mon, 18 Aug 2025 13:42:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=kernel-dk.20230601.gappssmtp.com; s=20230601; t=1755549776; x=1756154576; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=1NHuipRaHUViNyMWtT/RF9yQ8D7EPRscQGwUmEz/0mc=;
        b=2ZsNTs0+tPhDla0Z1oHswqZ8kQQCYDi/T4AujusMEcOMTiXeHCZ4vta/S6k7/fqHMC
         TgzkP27BGOZtvWVw94uDiaTxKqbfC+oaX4EA+RA4/IyJ7oDUzjyJIAmTBbnxqD5E7qqA
         zRKJ+Kxhy+RqFTwR0WbwBNjszQQOVmNcnGWrFDqIID7aCbKcpATg9UUIHUWaH7IHJWkb
         sWBdTUIxaTsWJgY0dAUZCmJc2PbNr5cQgZqJ/l0P3DBRpJL3hKBkc5mkCgKGYGwNoont
         7wDRlKP0Rd4BKU4619EN+TZIWvhc0WP0/Lo7ql/r3HrINgiG5YQE4xCJfwtuDmyU8kEO
         B2vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755549776; x=1756154576;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=1NHuipRaHUViNyMWtT/RF9yQ8D7EPRscQGwUmEz/0mc=;
        b=D2aE7/yFLdMl6Gkrw5Rh6UE8dHN4V6mW0s655k+gqED4GimOtm9e0jp8L6YnP0ayyb
         gC+VZ2XMtPplpkxdGcMQulMQta7n3Z/2q96PoyTOkqjHu4iO7yJsUXMw2XCXrINhGQa4
         Mw/7mjq2C7WYheR6/CjSiB3IDPp3H0cKBmE7fPCXt46k4tkERBabtl4lnqSKoHAV0la0
         /LNTQnqY4C2uPOmo2px277gM4l/gj5p9Pq9c2CfL7NvIMowoRdDAnWVEzjOz0VAhOWZc
         lrlo8MUUohzxq5cWNgIFYaeV6TGw1CX2ui+YQ9u5Q7u61LB+d+fpUQ+LwwBqxewsHdlK
         pG1g==
X-Forwarded-Encrypted: i=1; AJvYcCWLwLfZRdkoaFwMkOKqKv5G5ZYPNhJOz62jNRsNveOM83PrwyDfDL5VrkRLDw6bJuEBf7wxCgBs7iI=@vger.kernel.org
X-Gm-Message-State: AOJu0YxhjrYPt6SS30Liy3Z7o2IxVBuU9zun8gcVNvYJ5jJtO1WVayDa
	a67g7qJZkm0N5h7NffLMIb/fFDEoJkXKGEOzC2S+jD75uYVIbG6UiDB9zne66Arnf6M=
X-Gm-Gg: ASbGncsji+Y69THFrIwkHxqqGWh5cEbnwmANqC80MjH/9t6xxDBBp5V8FTr4WeDdseO
	jB8qJYda68ztZuKaq0qsjvVwNXO2Yrxse1WPuCgOfkkSBUSz/JrkTMQJnvKbbuLk2LMpyv3PDJz
	jUU+ORubQ8jAYkO3VAV/mNApYvyK2o49ESexB4BnVXoDoK69ym+KyozygJvqc8xub8C94cdaL3d
	+8VUaRdlNFkMO/IUlH7HaTGdkdgcx5HhPk+y+W95wUfjRtbr1x0v04u7wnW4RNc2LGD1ECXDv1I
	KTbrmb0gBMP0GgLttFEjlIBOC1mu/1ffaTGbzmsJAji0Z9EAG3SHIIE3vzUugyPZJdQr2OPjj6c
	R3VuR0yDmtvlbpjI03UZIAiCZC6Hv2g==
X-Google-Smtp-Source: AGHT+IGPhtuFN4Dzph6D1atIUw0DIFb/7njiZN34Nya1860YPD6PWiMY42VBGEzk96pHMoNDcC84pw==
X-Received: by 2002:a05:6808:1523:b0:41e:9fd0:bd2c with SMTP id 5614622812f47-436da4b17c5mr80262b6e.18.1755549775951;
        Mon, 18 Aug 2025 13:42:55 -0700 (PDT)
Received: from [192.168.1.116] ([96.43.243.2])
        by smtp.gmail.com with ESMTPSA id 8926c6da1cb9f-50c94998c2asm2737262173.51.2025.08.18.13.42.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 18 Aug 2025 13:42:55 -0700 (PDT)
Message-ID: <af82ddad-82c1-4941-a5b5-25529deab129@kernel.dk>
Date: Mon, 18 Aug 2025 14:42:54 -0600
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: RWF_DONTCACHE documentation
To: Alejandro Colomar <alx@kernel.org>
Cc: Christoph Hellwig <hch@infradead.org>, linux-fsdevel@vger.kernel.org,
 linux-man@vger.kernel.org, "Darrick J . Wong" <djwong@kernel.org>
References: <aD28onWyzS-HgNcB@infradead.org>
 <cb062be5-04e4-4131-94cc-6a8d90a809ac@kernel.dk>
 <a8a96487-99d9-442d-bf05-2df856458b39@kernel.dk>
 <sxmgk5dskiuq6wdfmdffsk4qtd42dgiyzwjmxv22xchj5gbuls@sln3lw6x2fkh>
 <409ec862-de32-4ea0-aae3-73ac6a59cc25@kernel.dk>
 <dargd4lgdazaqxrw7gz6drrzzgonn34qllkcgei4uxs6ft7jbz@avkuehcbaok6>
From: Jens Axboe <axboe@kernel.dk>
Content-Language: en-US
In-Reply-To: <dargd4lgdazaqxrw7gz6drrzzgonn34qllkcgei4uxs6ft7jbz@avkuehcbaok6>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 8/17/25 10:01 PM, Alejandro Colomar wrote:
> Hi Jens,
> 
> On Mon, Aug 11, 2025 at 11:25:52AM -0600, Jens Axboe wrote:
>>> Other than this comments, the text looks good to me.  Thanks!
>>
>> I kind of walked away from this one as I didn't have time or motivation
>> to push it forward. FWIW, if you want to massage it into submission
>> that'd be greatly appreciated. I'm not a regular man page contributor
>> nor do I aim to be, but I do feel like we should this feature
>> documented.
> 
> I understand your lack of interest in writing quality man(7) source code
> if that means iterations of patches.  However, you may find the build

It's not really lack of interest, it's just that there's only so much
time and the idea of a back and forth on documentation isn't high on the
list :-)

> system helpful to find some of the most obvious mistakes by yourself.
> This might help you in future patches.
> 
> 	$ make lint-man build-all -R
> 	TROFF		.tmp/man/man2/readv.2.cat.set
> 	an.tmac:.tmp/man/man2/readv.2:316: style: .IR expects at least 2 arguments, got 1
> 	an.tmac:.tmp/man/man2/readv.2:395: style: .IR expects at least 2 arguments, got 1
> 	make: *** [/srv/alx/src/linux/man-pages/man-pages/contrib/share/mk/build/catman/troff.mk:66: .tmp/man/man2/readv.2.cat.set] Error 1
> 	make: *** Deleting file '.tmp/man/man2/readv.2.cat.set'

I'll remember for next time!

> Here's a diff with all the issues I raised fixed.  Please add a commit
> message, and I'll apply it.

Beautiful, thank you! Maybe paste the same section into writev.2 as
well? For commit message, something ala

man/man2/readv.2: document RWF_DONTCACHE

Add a description of the RWF_DONTCACHE IO flag, which tells the kernel
that any page cache instantiated by this IO, should be dropped when the
operation has completed.

?

-- 
Jens Axboe

