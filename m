Return-Path: <linux-man+bounces-523-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id BB33E8709CE
	for <lists+linux-man@lfdr.de>; Mon,  4 Mar 2024 19:47:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6997E1F221C1
	for <lists+linux-man@lfdr.de>; Mon,  4 Mar 2024 18:47:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6687A78689;
	Mon,  4 Mar 2024 18:47:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="n4YTn4I1"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pl1-f170.google.com (mail-pl1-f170.google.com [209.85.214.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF1F262147
	for <linux-man@vger.kernel.org>; Mon,  4 Mar 2024 18:47:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709578052; cv=none; b=rtrOlv1ZeRNAYjcZcIRUIH5hYUUzy7/n6GVm+juYr3S08V95D2OmVICfq2o32JM5R7kTo0iv+dC/0qdoBJKJb8C4sVE4yaK8YUwYxtPOBM34Ba+V36T1uI7bvA8yKOqTfKD8GHIqLcGOBlyCuKuHP52hDdZ/P2K6Ln+GgeQhL60=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709578052; c=relaxed/simple;
	bh=V9RbBZ0zZo3v/XyfMbkHmxnLDQGwyaXsU08+Jjv71nI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=PPZTMiyiFvJtg5/sxtTfnFCL+Q3G0+n6aWgewMFNDP5PRzrXCRfQcAWhhcqTBxWdMpQDQPFnUTIXsfRQytQLS+EfzkuvKE5sBLhyg5PhErYrUlfdJLMRGXmmWISqwG5DpVnivedaOLngZ1XfJvbYFsgLrZAJYbsWnTR2UcC71Nk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=n4YTn4I1; arc=none smtp.client-ip=209.85.214.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pl1-f170.google.com with SMTP id d9443c01a7336-1dbae7b8ff2so20498915ad.3
        for <linux-man@vger.kernel.org>; Mon, 04 Mar 2024 10:47:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1709578050; x=1710182850; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:from:references
         :cc:to:content-language:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=bPWx/2YJ6inT4AzN3TSSoDvg/VeRAtNCqChMNNUNVpE=;
        b=n4YTn4I1Ty8Ca5pi0310gpFFBy4K0JDIwnLK8hCuM2HDGd2CwbS5Z1kCtSZpw4hWkk
         ywTNsRIrLQaKWiBySSEJkahyl7tK0TxYPSPnWkXMPMCRXnkrB9Q1yn4TAckxYCjrHyuG
         B7wk44D4KcUNY/GgSXYT7oxy/FsNaWjZwtS5AIJvtSZWzh7HYlJCnEznFsNCte73G5hG
         f0DEU3gMP2sCOaFddKmSOW+RIsR49zmThhYydxfNgN8Kz4ArD+m+cehb8ruOcL/qnf4N
         R/7wWSuySX5gZNSU6suTfEXTKyH2jEjDnOBGDeIg9UDi5r6uPLH6FrW2JyR9XBIOjUQ6
         8i0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709578050; x=1710182850;
        h=content-transfer-encoding:in-reply-to:organization:from:references
         :cc:to:content-language:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bPWx/2YJ6inT4AzN3TSSoDvg/VeRAtNCqChMNNUNVpE=;
        b=FoP6WOzmvqv0wz1bY482W1jJ/fTLYnhun2Wr7AU6C1kSCOFQuND5cqAUmhI/b1Y1NY
         DEPYQllvkVmrVu6ZoM4+VvnxQCPPf8l0IzQM41/kYVec73bpHiNzpYcCpNilcZaAw8kR
         Ml4h9EoOKTrZThREmQdJkUGFdFAUqfcF26kzUpxSoGHzjWyPEz1NT2ezM3D0RYJhz/qb
         Zvor3cyXTrIbp2gSVHwI0WxFLt0dNFHFC+/t4FI0sQsSe53m/zJccIWpP4oW9xvNucDs
         fEwlNPSYMvp2R/JC8pw6/FpWMf+uFErDJPTHoiZWKShQX4+FqK/A0hW9127zHDzvzw7w
         E+hQ==
X-Gm-Message-State: AOJu0YzG4Gw4nRjxBsOK2oYczmJVNHpfx5N+yT6JvSJVSHe7pn728wCC
	+aFw8o7Ezj7yVXhaMGYvkXEOpi55uwyQXAirPj3Nc/9yMD15Qhsc/vUH2S5JOeM=
X-Google-Smtp-Source: AGHT+IEVFpoEYR8NBxB7+N45g8j3I5AbpYE2sFJLV9ksAs8/asuxF7UkVeaUHHMb/0mo3aKN4E2UyA==
X-Received: by 2002:a17:902:fc8f:b0:1dc:f7c2:938e with SMTP id mf15-20020a170902fc8f00b001dcf7c2938emr10319366plb.38.1709578050038;
        Mon, 04 Mar 2024 10:47:30 -0800 (PST)
Received: from ?IPV6:2804:1b3:a7c1:ec17:6807:fa0e:d54a:aeda? ([2804:1b3:a7c1:ec17:6807:fa0e:d54a:aeda])
        by smtp.gmail.com with ESMTPSA id a21-20020a170902ee9500b001db5753e8b8sm8829539pld.218.2024.03.04.10.47.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 Mar 2024 10:47:29 -0800 (PST)
Message-ID: <bddcd00f-7adf-4558-9733-6a71906b46ed@linaro.org>
Date: Mon, 4 Mar 2024 15:47:26 -0300
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: logb() vs floor(log2())
Content-Language: en-US
To: Alejandro Colomar <alx@kernel.org>, Morten Welinder <mwelinder@gmail.com>
Cc: linux-man@vger.kernel.org, libc-help@sourceware.org
References: <CANv4PNkVv_0eLgiSP3L_KfC-eZJaVLZ5AP1AGfD0GNrR5M4Hrg@mail.gmail.com>
 <ZeYKUOKYS7G90SaV@debian>
From: Adhemerval Zanella Netto <adhemerval.zanella@linaro.org>
Organization: Linaro
In-Reply-To: <ZeYKUOKYS7G90SaV@debian>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 04/03/24 14:52, Alejandro Colomar wrote:
> Hi Morten,
> 
> On Thu, Feb 29, 2024 at 07:28:10PM -0500, Morten Welinder wrote:
>> I came across some minor issues in some math man pages.
>>
>> M.
>>
>>
>>
>> logb:
>> The formula "floor(log2(x))" should be "floor(log2(fabs(x)))".  (Or
>> ...abs(...) if it's meant to be math and not C.)
> 
> Confirmed.  This is a bug in glibc too, BTW.  That text seems to be
> copied from their manual.
> 
> ISO C says this function is specified in ANSI/IEEE 854, but I don't have
> access to that document, so I'm not sure what's the specification of the
> function.  I'm not sure if it should fail for negative values (like
> log2(3)) or not; although the standard mentions the behavior for
> negative infinity, so it probably is specified to work for negative
> values too.
> 
> So, the behavior of the function seems to be correct, and it's just the
> manual that needs to be fixed.
> 
> I've CCed glibc, in case they want to comment.  But yeah, your
> suggestion seems correct.

It does seems to be an error on manual, could you send a patch to fix it?

