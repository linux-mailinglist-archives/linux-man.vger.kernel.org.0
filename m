Return-Path: <linux-man+bounces-89-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EC887EFB00
	for <lists+linux-man@lfdr.de>; Fri, 17 Nov 2023 22:43:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id DFFD41F26BEE
	for <lists+linux-man@lfdr.de>; Fri, 17 Nov 2023 21:43:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A92623C495;
	Fri, 17 Nov 2023 21:43:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=jguk.org header.i=@jguk.org header.b="k9X2bcoG"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com [IPv6:2a00:1450:4864:20::32a])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D8826BC
	for <linux-man@vger.kernel.org>; Fri, 17 Nov 2023 13:43:48 -0800 (PST)
Received: by mail-wm1-x32a.google.com with SMTP id 5b1f17b1804b1-40a46ea95f0so20238725e9.2
        for <linux-man@vger.kernel.org>; Fri, 17 Nov 2023 13:43:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=jguk.org; s=google; t=1700257427; x=1700862227; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=m09Cyvpsq81Ta7GhKPv8PMs4gQ0xo/G87qQaA0ddfRs=;
        b=k9X2bcoGvalu/9+gKQf5dOjy6IDY13/1OIQWfxlK8ASAGMaR8ycXEreaL2o5Wlhszh
         zmNOmz2Rfpl6BhRqk932Ky3jDnnFI5vYWjmNAQ5xJANroNPcBhSmFXK+FMlzG2+3nqno
         Q5WrEWtiXTHrjB0vcai5xSDRFYSg65YjbOIA5q6PmSSBup7Q0S6IkxxrKf99xd0SBpNy
         XQECdpXaF2qwYyfOB8pNlzlIvTzBVmD3L/tEHnXZqJVpBWe9LeOLB59mzAzZH5boWhwE
         4+WWbO5WUucLI6shAOnErBe1nxSsMYrMDYcCkIfKHPd95xC2oR28/aQq7Nvfc2cYBkok
         5bng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700257427; x=1700862227;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=m09Cyvpsq81Ta7GhKPv8PMs4gQ0xo/G87qQaA0ddfRs=;
        b=HmjoZwKmOec8E3z9aa3a1e2SV9WD3oHP6L6h67Cyo7iTuDLLLx/tVWVMu1h/80rxW0
         r3RLSCXX+ct9gdIDmdb4yxf4k/NerCpjT1wmrjTPCk7jhTwdq3zRnulmABAqpYUxj27C
         h9XLFRq9YOjnB6oE2BefiDjDeDtAFulWs4hhrhj/8tlE1C+2aQru31IwQUoD0B/OmhVC
         GEM03Ptop0xmqfzILOFHup0SaGvzost6vkGC5n6CZZGaFNbSkJf5/83mCBTEVT82H09W
         yg8bhHGupNYKNBQlXJ1xsKLJANQ3gKWu6jalOGnhWE4CFoYIEv9EAN4/Hl0DZF/rC70b
         A34Q==
X-Gm-Message-State: AOJu0YxXEu5Y8OgWUjU/w1SDTzgdk0e6CDK1xTzCN97LM22qEIDvT9Fj
	YNmgDYobivc1OlCbP0eNY+XbCg==
X-Google-Smtp-Source: AGHT+IE1XznxgcKWnYRz1iecbVpwsfiJ9+MwFdrndmcg+Y/j/VPesKa/zj7bvBlrkCKnIbFT1VONJw==
X-Received: by 2002:a5d:45d1:0:b0:317:6513:da7e with SMTP id b17-20020a5d45d1000000b003176513da7emr172145wrs.36.1700257427027;
        Fri, 17 Nov 2023 13:43:47 -0800 (PST)
Received: from [192.168.0.12] (cpc87345-slou4-2-0-cust172.17-4.cable.virginm.net. [81.101.252.173])
        by smtp.gmail.com with ESMTPSA id c15-20020adfe70f000000b0032da8fb0d05sm3418383wrm.110.2023.11.17.13.43.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 17 Nov 2023 13:43:46 -0800 (PST)
Message-ID: <751d2e89-809d-488c-8685-7c665beba78b@jguk.org>
Date: Fri, 17 Nov 2023 21:43:45 +0000
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Jonny Grant <jg@jguk.org>
Subject: Re: [PATCH v2 1/3] string_copying.7: BUGS: *cat(3) functions aren't
 always bad
To: Alejandro Colomar <alx@kernel.org>
Cc: Paul Eggert <eggert@cs.ucla.edu>, linux-man@vger.kernel.org
References: <cfbd8674-fe6a-4430-95f1-ec8bde7da32e@jguk.org>
 <20231112112629.13827-3-alx@kernel.org>
Content-Language: en-GB
In-Reply-To: <20231112112629.13827-3-alx@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit


On 12/11/2023 11:26, Alejandro Colomar wrote:
> The compiler will sometimes optimize them to normal *cpy(3) functions,
> since the length of dst is usually known, if the previous *cpy(3) is
> visible to the compiler.  And they provide for cleaner code.  If you
> know that they'll get optimized, you could use them.

May I ask, is there an example or document that shows this optimization by the compiler? Perhaps a godbolt link?

So it's a strcat() optimized to a strcpy()?

I know gcc might unroll and just include the values of the string bytes.

Kind regards, Jonny

