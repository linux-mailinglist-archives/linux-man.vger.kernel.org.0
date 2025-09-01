Return-Path: <linux-man+bounces-3811-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id C5295B3E752
	for <lists+linux-man@lfdr.de>; Mon,  1 Sep 2025 16:37:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5269118851CE
	for <lists+linux-man@lfdr.de>; Mon,  1 Sep 2025 14:37:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E8E4C286885;
	Mon,  1 Sep 2025 14:36:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel-dk.20230601.gappssmtp.com header.i=@kernel-dk.20230601.gappssmtp.com header.b="wY6NModd"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pj1-f42.google.com (mail-pj1-f42.google.com [209.85.216.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 627342EFD83
	for <linux-man@vger.kernel.org>; Mon,  1 Sep 2025 14:36:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756737414; cv=none; b=FEw6oFAjs2yAh2ydvHFiWacfcE4UH/7TbE+/vZvzRDo3gMvvCcPiMbRJ2moq2G34n0onjkQ2yEjb2g330Xyk7qU0c0qMncWIA+3nn86yhIKUoR/qAnEc8M8EC/lewjlONJRCNt670V0YKmfLPSTTeh4YusNJ9ZRk4SjG4KpiWKQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756737414; c=relaxed/simple;
	bh=1ayH0f0lTuyb4iNJXaGo4tLbnZOuWSyLSgSbde36d4M=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=i48JoOd8K3iG5MNFWcBfu2USyB64vdojT7kks8/OyBO6B33/Sv0AO6wKzxQ0CUTtwJy7osS/HGPjKYVMgFbc4UMMZUz8ZtqESXyPL2dQct4x6Jp8XfTKd1ir9MStZRAWqaINZtVYRCTFTMNE3dt1BFGSLocW+esqKQ8Btz0Cr0g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=kernel.dk; spf=pass smtp.mailfrom=kernel.dk; dkim=pass (2048-bit key) header.d=kernel-dk.20230601.gappssmtp.com header.i=@kernel-dk.20230601.gappssmtp.com header.b=wY6NModd; arc=none smtp.client-ip=209.85.216.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=kernel.dk
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=kernel.dk
Received: by mail-pj1-f42.google.com with SMTP id 98e67ed59e1d1-327705d0a9bso3771553a91.0
        for <linux-man@vger.kernel.org>; Mon, 01 Sep 2025 07:36:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=kernel-dk.20230601.gappssmtp.com; s=20230601; t=1756737411; x=1757342211; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=/jDO19l7ZFThfdPORmAcfhKQEo58MHII4cGGvDQ4gss=;
        b=wY6NModddmdj7SfCNNL88kctK2fOzp5iUh7kk76tv5gwprnDggXYRgB5n/lzFTjHn8
         Ha9Y6QXu/3JtR/4qOy9eOOmYLOu8NxqjkCH0u/mKGxpuYybCoKcDWKC4gmMGVIAxezQH
         olh0I2KOVkPJiphIsZMHxOXUMUjh1gNi1SNVIN2LT7gKkkYJ8/7D0v0d3Xsb1uAm8vpx
         PIHaoVvRky+38W7/oH8mvtgf2Gw5Fpu3oAeSxG+wcKGcG31SQ94uwWHiIlA7mPWfy2/y
         Yik1kOKAtwwC4QaTUM4lGL10KF222hvfdA6asi1fxSyo8ejrpAO8BuTLtcGaYilBK74V
         V+ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756737411; x=1757342211;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=/jDO19l7ZFThfdPORmAcfhKQEo58MHII4cGGvDQ4gss=;
        b=H+tNbMOddFAUPGnrmVjCMjtO09wobVFXz/aQobbo3tZm3xw1A7TNNfYbWfHJ4THRM4
         ni5X825kVM85jA3a6f4CF/eQkBIeCMbPL1TBnxpeogIpcimHXfb5AA7kS1Cpux5hfHVj
         l9ycZj7orrFgm1yLYHwagnTclZNNhwDNp7KfuWqwlir2GUr+/feqqE0hnc9jdZIYp4pr
         syuSplIY9XkZh5nu6oLPBZlGQVeI4blAnTrt1+OqO4UsUVWJBwk1ZQ2nGArf0nXVicMC
         F2zqRIQQTiqmuLoGFT03mWV7EgzrsaU+nrmTuEyKDqzs7YOLfAsyI+o915BEKKzMpc9Z
         lbQA==
X-Forwarded-Encrypted: i=1; AJvYcCUXjGH7Zkc6DEjD4lIetX/N1TM41fW96+am2CrjDoLjY4MfqJAqrw/YT9Be4IVl137HQIXLlvm8KO8=@vger.kernel.org
X-Gm-Message-State: AOJu0YwnhbHZAARk6vwcOBib5W/JntmAMr31S2FNVmlT+eCnHlYjuHBS
	9TGfTVF3kkvZoyHrDth7KTR3/eMkIxXnRlLYFrI0O5rFnbLqfHwX2F4lr+aDDTeJFKE=
X-Gm-Gg: ASbGncsUrmIVbdzzHNsvbR5D7qsZCywlgJg2BlhxDwBniBAsof42xdbEb3Nk6wnHjp9
	H+kCDyzlp3VZIKlxEFztzINwoeDPNmrVHRty9cs0X34V8rb5JJ3v+PtRFX3Ax/nW7+ly7Lk1NIz
	n838Nq0eMp36hNqiwCVjhx8daBRCBNrmvbMepJPNL1E47zAuW0GfWDOIpBpEhMzVfswG4TMwr9e
	ZQyDm8Pg7vpKPJKdgHslY/aQCtbIohbTdRXG7eAliF0D7GRbP8RyerH7hWFQ3qB38mp2uG7E5Vt
	UibTiFnNdbu1Ojz+0k3C9oXplOK1aBXKAT+FFPl8zeJPinfeJDJ3F3c8ykuf6oW4Y/7/iZTYbux
	2l0J5uA1vLR57NQ8ws2MnPxYCOt0ZqnY=
X-Google-Smtp-Source: AGHT+IEDgykLl29KvHPqIy08jfHAYC4b0vTKX+wBXLvL6c8Y4pza2EMugFk6Oq4/RciPMgqEIFybQw==
X-Received: by 2002:a17:90b:4f4a:b0:327:ceb0:6f6a with SMTP id 98e67ed59e1d1-328154128b3mr10572975a91.4.1756737411459;
        Mon, 01 Sep 2025 07:36:51 -0700 (PDT)
Received: from [192.168.1.150] ([198.8.77.157])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7722a2b65a2sm10950463b3a.34.2025.09.01.07.36.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 01 Sep 2025 07:36:50 -0700 (PDT)
Message-ID: <6daac09b-dd09-4642-8940-4b70f31ca570@kernel.dk>
Date: Mon, 1 Sep 2025 08:36:49 -0600
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] man/man2/readv.2: Document RWF_DONTCACHE
To: Alejandro Colomar <alx@kernel.org>
Cc: Christoph Hellwig <hch@infradead.org>, "Darrick J. Wong"
 <djwong@kernel.org>, Johannes Thumshirn <Johannes.Thumshirn@wdc.com>,
 linux-fsdevel@vger.kernel.org,
 "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>
References: <af82ddad-82c1-4941-a5b5-25529deab129@kernel.dk>
 <9e1f1b2d6cf2640161bc84aef24ca40fdb139054.1756736414.git.alx@kernel.org>
Content-Language: en-US
From: Jens Axboe <axboe@kernel.dk>
In-Reply-To: <9e1f1b2d6cf2640161bc84aef24ca40fdb139054.1756736414.git.alx@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 9/1/25 8:22 AM, Alejandro Colomar wrote:
> Add a description of the RWF_DONTCACHE IO flag, which tells the kernel
> that any page cache instantiated by this IO, should be dropped when the
> operation has completed.
> 
> Reported-by: Christoph Hellwig <hch@infradead.org>
> Cc: "Darrick J. Wong" <djwong@kernel.org>
> Cc: Johannes Thumshirn <Johannes.Thumshirn@wdc.com>
> Cc: linux-fsdevel@vger.kernel.org
> Co-authored-by: Jens Axboe <axboe@kernel.dk>
> [alx: editorial improvements; srcfix, ffix]
> Signed-off-by: Alejandro Colomar <alx@kernel.org>
> ---
> 
> Hi Jens,
> 
> Here's the patch.  We don't need to paste it into writev(2), because
> writev(2) is documented in readv(2); they're the same page.
> 
> Thanks for the commit message!
> 
> Please sign it, if you like it.

Thanks for doing this!


Signed-off-by: Jens Axboe <axboe@kernel.dk>
-- 
Jens Axboe


