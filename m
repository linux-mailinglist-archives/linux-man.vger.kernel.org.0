Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AF24A2727DE
	for <lists+linux-man@lfdr.de>; Mon, 21 Sep 2020 16:39:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727109AbgIUOjP (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 21 Sep 2020 10:39:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42972 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726795AbgIUOjP (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 21 Sep 2020 10:39:15 -0400
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CEE4EC061755
        for <linux-man@vger.kernel.org>; Mon, 21 Sep 2020 07:39:14 -0700 (PDT)
Received: by mail-wr1-x42b.google.com with SMTP id a17so13026289wrn.6
        for <linux-man@vger.kernel.org>; Mon, 21 Sep 2020 07:39:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=8MF1llbwWtIM1zvjThVApED528TEiJH8WjIBKi6PZ+0=;
        b=V9MvKiVhRlS2B93qkIwHo0NnyRLLs9kNJG1qeEDvf2A1t5Jv7rtxfCzs2/XhrGhj8Z
         ecM3ltoqBuPyH0yClbNl4bFnVJyeirMmEZOHOB/To1V8E08CMU4KccxokeNQ7SBJMt9D
         0+OC+zu/0QpTxOqd46G6ZLtP3lNpCJAx75JcfNkdYZxR2W6Q+QamnyyJ3OiG5AQYbJCQ
         NLPYJ5rfjxLdRYs9+Eg1GTpU591TGKHMBjDunAQkq2s7IsWoFulZmJrvGcVV1B2SaCsg
         1+8kjVnpKmGcHztQ8ygm76JB408JkRL5u7b/oofMgAe+nqfQ9GLZ1AQ7fLcuDg1grecF
         Ijyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=8MF1llbwWtIM1zvjThVApED528TEiJH8WjIBKi6PZ+0=;
        b=XTyNe06y0RgbeUcGuv1l7hTTubNRVqEh/7wxzyVMyvqrGBRJvGX2MKg4r6ftRA3RsB
         NgSEuYJq4dR1yyxnk6gVWoboV2DLjdJ9uIys09pLPz3drZhx10xo1jf4vxD1K3rsHdoK
         8HqNcNGlaybnN4j2wraEzfct8xvPjgyvg4qrzy+/nz+T6V9+lzYqCLa8tJKDx7djES3/
         p+4AaWfjE1ByiDa88qa788RUTPI+fkaPauSahF/9QGK7cUHud4O/Xh2cOCGMm01L+Lqe
         9LtMW/GSXEhRS6ykSeRyoE7qMe/az014Vtqjo7aAg36rjh/N4qYk8IWE8BcV6/CyQPdC
         bX5w==
X-Gm-Message-State: AOAM532KvyV7IRMUWURPYPZj8pcLhF10X8vU9GqHC8d+qDAWdqClfYDz
        3tgv8jQsDTLq6O9v1jtuv6o=
X-Google-Smtp-Source: ABdhPJzNAxiEkX+j2Xx7i4HqvcYANz+VedDM5O9m2/8XctgJhsviZA6V5j9f6HCN5Y1qEjdjQGVHNA==
X-Received: by 2002:a5d:40cd:: with SMTP id b13mr52524wrq.297.1600699153524;
        Mon, 21 Sep 2020 07:39:13 -0700 (PDT)
Received: from [192.168.1.143] ([170.253.60.68])
        by smtp.gmail.com with ESMTPSA id k22sm22619765wrd.29.2020.09.21.07.39.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 21 Sep 2020 07:39:11 -0700 (PDT)
Subject: Re: [PATCH v3] system_data_types.7: Add note about length modifiers
 and conversions to [u]intmax_t, and corresponding example
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, libc-alpha@sourceware.org,
        eggert@cs.ucla.edu, fweimer@redhat.com
References: <e48de555-d07c-3ecc-c0eb-1184d89035f3@gmail.com>
 <20200921133256.45115-1-colomar.6.4.3@gmail.com>
 <68c401c3-6d4c-92ab-0265-0aed452b6bee@gmail.com>
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
Message-ID: <62b57a31-9343-35d3-cc29-9e79a4bd3fc5@gmail.com>
Date:   Mon, 21 Sep 2020 16:39:10 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <68c401c3-6d4c-92ab-0265-0aed452b6bee@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org



On 2020-09-21 16:13, Michael Kerrisk (man-pages) wrote:
> Hi Alex,
> 
> Thanks. I've applied this, and done some light editing. Please
> let me know if anyting in commit 89c6c2bdd2ea doesn't look okay.
> 
> Thanks,
> 
> Michael

Hi Michael,

It looks good :)

Thanks,

Alex
