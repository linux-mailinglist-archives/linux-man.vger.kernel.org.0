Return-Path: <linux-man+bounces-3835-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 133B4B458F5
	for <lists+linux-man@lfdr.de>; Fri,  5 Sep 2025 15:28:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5D3FA1CC4158
	for <lists+linux-man@lfdr.de>; Fri,  5 Sep 2025 13:28:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2855B350850;
	Fri,  5 Sep 2025 13:26:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="EPMG29dj"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 565AF3451AF;
	Fri,  5 Sep 2025 13:26:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757078796; cv=none; b=AGO/qcmKksPoHOZ2coqN2euuts4pRL9JfAecD2KTcwR9WdFrDt34Ik162k5FGlD2wf9ruInQUsuT8ogv+mZ0mmxlwXP3nbVjyeBuGtqaqEQjH8rNHuJ36FbclPb9+0X9BYK3ti8K8BlzUpnvqk/lIkcZnDQzYmR5uNcJomoaXMs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757078796; c=relaxed/simple;
	bh=AH1QiUP7NqGjmMOlveGWnNSOEFkmg/5MNNp/5BdcE68=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=uzzDsl9cuwHYqxtuezHrKy0NuHBesu+EvlOmQ1ETWg3+WW/GsKitaiiUzYMRKI3bFW0YM47oDIAnmpksiie1icqTMQXTBcxpWzrWaiQIbZfTj8C8qyr2my6PXJQx9FETPBtd8LZflhYD1kz9Y6vRLYYyZ0TVvgmJ0A7UZOAldxY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=EPMG29dj; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-45b87bc67a4so15581555e9.3;
        Fri, 05 Sep 2025 06:26:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757078794; x=1757683594; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Eb92Day+yfiw8MwDoCISojU3QFzdrjI3w4w/7hHek5c=;
        b=EPMG29djZ+prgmuzyDRTg9A2bSO2+wXOLekYoysCG/hSD9bRXMkCsgUTO1l56e9ocu
         L1SOaDh9AiZgPSBF8MhVv+6w3ppk5eAjoXoZ6RqBFDM2qxwh7kHuhWCsryZ4aRXckVf2
         xIlwkbni/CK2DoQjfrbq71f7CpOCPhQ13zLa/643iy638s8VKniX1jOv3bmYrkTWp7wP
         nSl4KQXXJJ/6U0vYi936VYONuFkZ9zZeD60mtG0BTzalM/YF0dH8wMBJmtZk2URfZfhi
         fWP30JxnQ3qqUWjDZe6lOXu28LmDsQJ0ghCeqFmIR1ETnV4bV5nlCaEzpGMCdkBbgNzv
         q0dA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757078794; x=1757683594;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Eb92Day+yfiw8MwDoCISojU3QFzdrjI3w4w/7hHek5c=;
        b=s4wJF4FwJsvyYE+Xvox8mWu3TdlHq2aixxFGZf9xo7SUH1DY1UrkceQzlRUo2M/0lE
         oLKVEu0kkHdCUyqoe1GpNMCuuZBdPV0qJSnOX8PK386pzP6+vTYUCKpPp/LUROEl8YZq
         pMtiFru8wfLK/lqL2sPkNKbIXsYqOpAbFMUo3WdRo4zD5ihco5r0Cnlt7OvuTjp6+O4d
         tE2sJQ5gWcjFyeoiFSAwf8BZOCZbdSIsSgJgJwxHs9lEwZebVqRxKLYtFk9uW2xFbuSZ
         aiDm5ag/V/3oVrZk+D9AeDX4DPHVx7wJ4A4aPRumXjQ/rNkbFW7ctr9u76BWPQQVDJbU
         yg4g==
X-Forwarded-Encrypted: i=1; AJvYcCVmY4at+LUcYgw4+4MgkPQPMwtJLKB8lKYPldE02y195TxknqL1AVjMtbDwb1FySVCMMi+0PkPiUku8INs=@vger.kernel.org
X-Gm-Message-State: AOJu0YzkZaqfImcyvnF2paKk88VCgKA3vXK8gVk9Da0EVL0MzMdM2h0p
	NsKgwmEkJJt/17PZBSdZ/Vqv39WDLZFwJBiYAaIlnceh9sEmgCnoixyCWQedSXOOcX8=
X-Gm-Gg: ASbGncuM1daPCF4p1ppeGQ3DY+XAtZww4ZWbnMducpMOB36/nEh8n6jYuNymS3a+hyD
	21r0y6xkDNwTd+688Fg26c8LlArfETNR1p/pM72A1MJ5i2DCndi6236elsGDzrC3wsf9uQHLv6f
	HZIz9a84uVXtr9aN88GMY1dByu//p97F7smeHzWcTFcxdRNFmqs+HHm/LPEmIr2nf5FaIPMXDWW
	TPSyn5XwIji8yM7eGqTyJ8cD3lsy2LGrRHXIZk0DXnb94C4VHz7L/nN1aGsoLeCbePK9++7hu2/
	rCkhIB7yrkE4XbHlznz7+CJoJj+yFlboigr0K23HtsoFfMOA6CSVvg1MrRjIGNU9V/4tgC6C1m0
	69/k95tFFbFfwN6ergQs3tAL6TZ8QQjTtgDfMZ4w3y7IQba9Nzx2XZpjfISeSmTBxN64EPf8=
X-Google-Smtp-Source: AGHT+IFfdHJ10HzRs7dHi47HmFmAVu5kFk9F5qKE3/3zjLp/MJzZUY0y3giMJSwUpo4hW1JEx9URvg==
X-Received: by 2002:a05:600c:1d20:b0:45d:2ac9:4240 with SMTP id 5b1f17b1804b1-45d2ac94321mr75395875e9.17.1757078793329;
        Fri, 05 Sep 2025 06:26:33 -0700 (PDT)
Received: from ?IPV6:2a03:83e0:1126:4:1449:d619:96c0:8e08? ([2620:10d:c092:500::4:4f66])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45dcff67787sm80228455e9.16.2025.09.05.06.26.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 05 Sep 2025 06:26:32 -0700 (PDT)
Message-ID: <02ff9dc0-2ce2-4241-9969-e09f48026f8d@gmail.com>
Date: Fri, 5 Sep 2025 14:26:28 +0100
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] PR_*ET_THP_DISABLE.2const: document addition of
 PR_THP_DISABLE_EXCEPT_ADVISED
Content-Language: en-GB
To: alx@kernel.org
Cc: linux-man@vger.kernel.org, david@redhat.com, lorenzo.stoakes@oracle.com,
 hannes@cmpxchg.org, baohua@kernel.org, shakeel.butt@linux.dev,
 ziy@nvidia.com, laoar.shao@gmail.com, baolin.wang@linux.alibaba.com,
 Liam.Howlett@oracle.com, linux-kernel@vger.kernel.org, kernel-team@meta.com
References: <20250905132536.1998767-1-usamaarif642@gmail.com>
From: Usama Arif <usamaarif642@gmail.com>
In-Reply-To: <20250905132536.1998767-1-usamaarif642@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 05/09/2025 14:25, Usama Arif wrote:
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
> [1] https://lore.kernel.org/all/20250815135549.130506-1-usamaarif642@gmail.com/
> 
> Signed-off-by: Usama Arif <usamaarif642@gmail.com>
> ---
> v1 -> v2 (Alejandro Colomar):
> - Fixed diuble negation on when MADV_HUGEPAGE will succeed
> - Turn return values of PR_GET_THP_DISABLE into a table
> - Turn madvise calls into full italics
> - Use semantic newlines
> ---

Ah forgot to add "v2" to subject.



