Return-Path: <linux-man+bounces-4251-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AE6BC35ECE
	for <lists+linux-man@lfdr.de>; Wed, 05 Nov 2025 14:51:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 33BD34F1592
	for <lists+linux-man@lfdr.de>; Wed,  5 Nov 2025 13:49:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0E2963126A8;
	Wed,  5 Nov 2025 13:49:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="aLWrh/gD"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8244532038D
	for <linux-man@vger.kernel.org>; Wed,  5 Nov 2025 13:49:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762350577; cv=none; b=E0lHalnEHqe5A8IpNPCOwVv2nUSMy8ArRoiScC6JLretoNKY0mnNk2EL+udZ6P4mnhm2H969rjcAFNGJJ9EL0lm8c9n0xTkN6DoSoqbJIv18L6YdbHPrRRzjdiIsl5U5xe3tNajo4BgZgrDOJGOlc2dfAy5v7srOEe2b3UdxBmI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762350577; c=relaxed/simple;
	bh=YQIUAYYpT6AOrVjMBIacID0TnDXNaL+LHaWc7O4/Umk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=TILpG56CT6fnI4ba9TT+DKVZGYPeU6niXnz8/B1hYbhDJbnt7v5sNvoEWtSaUZJl8BRizvkH9J2/QBARj8He1+5NNh3Sc+SJQKdKFRSkR66ws6TFg60KxgJJ4IzPlAemZ080RfDrfIdxPOn0TP8Z4hoh2ht4HxFHeKU2yaIOPNk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=aLWrh/gD; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-477563bcaacso14082805e9.1
        for <linux-man@vger.kernel.org>; Wed, 05 Nov 2025 05:49:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762350573; x=1762955373; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=rHphQm5cf5XJfoT0QoEw71orWJjFg1RJOwRJmwvYzAc=;
        b=aLWrh/gDuIufcOyoknLkANELF4QRubZ2+94xoO7qnMzBjdcb2qupSnnATK8Qv/Ix7t
         sOdXyw5dcAwGUrdY4FjYdy1sMS66+AXfGlU4SnaFiwRFuQAi1kBK6We7fkOnw8QbXRfk
         w08elLzJry7HPg6AlHlJ36wHSGHYvIkR6s5yXQ2YA6qy7Y2LUtbRO8nsEQYof8KN4tbh
         KN62p6XgOhsR2oDMJBU3HVKY7jiB5MuDI031Ni+YQAoER5bQBjjj+NlelXrCg4tinIqy
         kLsstuBMpJZgFhMtbEQ7+lVheU5Jai/mzNnxvS75uvi19vgnOvPPHUQGiEjpNoR5T0Ei
         IbKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762350573; x=1762955373;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=rHphQm5cf5XJfoT0QoEw71orWJjFg1RJOwRJmwvYzAc=;
        b=c4dWmbhCNPrSFeEeAVE6Ph57rG6JncnWh+b2b1ZrGo8LsGchNBp6q5Y0TX2gXF5u/n
         X58yOQTaXUXB31hhrxvxBDEIe1E7KHecxB143Zc9kiLYhZcVvMsN5QnKNNKC2aSGedRF
         IUv6frAiQoUEx+qf7tnM1SH+K4Bj7ySI5j7oGOluy6iB7wvIPy6viF+8b6tUp2v+i8AN
         AWcMBEZVS3aJVgxwwN2Qn7RD4mIOIeEvlcyOesBc/duQDAcUxx+WfdSo59nMdrgqpevY
         pFEd7PcLxBHyPaJ9SWCPWzk+2fX44c1LsjBiq/3RB62OClYHVdJbnOmt2M0JyHFkI3Ye
         D23Q==
X-Gm-Message-State: AOJu0YzbHKzrHEO7x0gJO71DfXY7oQTynhTSyTVxU8NLbIbTpSRnnxil
	iCz3wpYGcNxluOHfGQ90QYmYTbBvlPOtWo13NhjCXXSNQfoV5NL9pCsF
X-Gm-Gg: ASbGnctjMFNqCi/eII/fZ7eGxYUETJv2mbmLsG3ss5B2UWEkG/0Ty9PTrzM9SomBeu3
	cUhlgsjrE0UlMz9077lnTZQ0jBQYaO37ZhK255ZAvHo4sbBV4m2siiSQNCpIu1QSGQviUoO0yhj
	q6UvtUKk1zdXv8FvBnjnpEFpqyhZtrJsatcFg9WbHT/qOQXYnYulWY2bkK+nRcI4DeS1sHyFYRX
	RrvvyEVSLvhDBq/uu7OGEl+KIHey/tjaFgdZcx+kpw7bEa1DdbR1kOKidOqIPt2OkJCjJx0zzeU
	zRSRGuOSIl6pqkloTNjdnAxTW7oVI/oTwi4vF2gXBwEB67wIPcMLafKb6h1jbCK2lJvrT/YC6yI
	WdVwGwfT/I3yacoBO97kunjWYIhhipJtmzKARJyWkmPJe2mb2VCuzRHWGM/7166cGw7VpQ36mTi
	U1uX8dryaqQ2ovJ5ifZS5KOGsEL0cBY6H3wzV8kiDXkr8Id4WWbCZYoSsW0dxjJg094JU5
X-Google-Smtp-Source: AGHT+IFI/Hv7z6gEwSQuhSHY5C0CGLurNtOoGmCceph9sOrcveSWFEXsnVhv7mAq2BlAIKhbC0jfKw==
X-Received: by 2002:a05:600c:6299:b0:477:559a:1ca7 with SMTP id 5b1f17b1804b1-4775ce8e088mr25101595e9.39.1762350573031;
        Wed, 05 Nov 2025 05:49:33 -0800 (PST)
Received: from ?IPV6:2001:16a2:de8d:400:58:dbf8:dff9:4863? ([2001:16a2:de8d:400:58:dbf8:dff9:4863])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-477558e695esm44266295e9.2.2025.11.05.05.49.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 05 Nov 2025 05:49:32 -0800 (PST)
Message-ID: <017b23d3-28e1-4785-8334-b3b3f9800e2a@gmail.com>
Date: Wed, 5 Nov 2025 16:49:30 +0300
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] PR_*ET_THP_DISABLE.2const: document addition of
 PR_THP_DISABLE_EXCEPT_ADVISED
To: alx@kernel.org
Cc: linux-man@vger.kernel.org, david@redhat.com, lorenzo.stoakes@oracle.com,
 hannes@cmpxchg.org, baohua@kernel.org, shakeel.butt@linux.dev,
 ziy@nvidia.com, laoar.shao@gmail.com, baolin.wang@linux.alibaba.com,
 Liam.Howlett@oracle.com, linux-kernel@vger.kernel.org, kernel-team@meta.com
References: <20251105134811.3170745-1-usamaarif642@gmail.com>
Content-Language: en-GB
From: Usama Arif <usamaarif642@gmail.com>
In-Reply-To: <20251105134811.3170745-1-usamaarif642@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 05/11/2025 16:48, Usama Arif wrote:
> PR_THP_DISABLE_EXCEPT_ADVISED extended PR_SET_THP_DISABLE to only provide
> THPs when advised. IOW, it allows individual processes to opt-out of THP =
> "always" into THP = "madvise", without affecting other workloads on the
> system. The series has been merged in [1]. Before [1], the following 2
> calls were allowed with PR_SET_THP_DISABLE:
> 
> prctl(PR_SET_THP_DISABLE, 0, 0, 0, 0); // to reset THP setting.
> prctl(PR_SET_THP_DISABLE, 1, 0, 0, 0); // to disable THPs completely.
> 
> Now in addition to the 2 calls above, you can do:
> 
> prctl(PR_SET_THP_DISABLE, 1, PR_THP_DISABLE_EXCEPT_ADVISED, 0, 0); // to
> disable THPs except madvise.
> 
> This patch documents the changes introduced due to the addition of
> PR_THP_DISABLE_EXCEPT_ADVISED flag:
> - PR_GET_THP_DISABLE returns a value whose bits indicate how THP-disable
>   is configured for the calling thread (with or without
>   PR_THP_DISABLE_EXCEPT_ADVISED).
> - PR_SET_THP_DISABLE now uses arg3 to specify whether to disable THP
>   completely for the process, or disable except madvise
>   (PR_THP_DISABLE_EXCEPT_ADVISED).
> 
> [1] https://github.com/torvalds/linux/commit/9dc21bbd62edeae6f63e6f25e1edb7167452457b
> 
> Signed-off-by: Usama Arif <usamaarif642@gmail.com>
> ---
> v1 -> v2 (Alejandro Colomar):
> - Fixed double negation on when MADV_HUGEPAGE will succeed
> - Turn return values of PR_GET_THP_DISABLE into a table
> - Turn madvise calls into full italics
> - Use semantic newlines
> ---
>  man/man2/madvise.2                      |  6 ++-
>  man/man2const/PR_GET_THP_DISABLE.2const | 20 +++++++---
>  man/man2const/PR_SET_THP_DISABLE.2const | 52 +++++++++++++++++++++----
>  3 files changed, 64 insertions(+), 14 deletions(-)
> 

Resending this for review as the patch to implement this is in merged [1]

[1] https://github.com/torvalds/linux/commit/9dc21bbd62edeae6f63e6f25e1edb7167452457b



