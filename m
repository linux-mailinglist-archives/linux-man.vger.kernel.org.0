Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CC7492DE0EB
	for <lists+linux-man@lfdr.de>; Fri, 18 Dec 2020 11:25:21 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1733190AbgLRKZV (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 18 Dec 2020 05:25:21 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50632 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1733170AbgLRKZV (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 18 Dec 2020 05:25:21 -0500
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com [IPv6:2a00:1450:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B2529C0617A7;
        Fri, 18 Dec 2020 02:24:40 -0800 (PST)
Received: by mail-wr1-x433.google.com with SMTP id r3so1577340wrt.2;
        Fri, 18 Dec 2020 02:24:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=I721Wdnvwksuqw3K5og33s4pzD1mKIxh7yc5XDDcYgQ=;
        b=leFMo5ELVTopkZJJSfQst0JTKy4sksaEpxqmHJGhvaQeXSmhFkwLqw112tnNZ5t0Wx
         kBnFwklMGSqcUCmHJHEwI1r5T9LCaU2ZcgrnBUdgTWVlo2N3LZQwoqMHy1skl7NnMtSi
         MfYFepmE3o1EHuQrqlo+Y88TpZAvY64ZShUL1GAKCZiVfA9Voc7mINRhTUUylouISFl0
         4vdQXyhJz/8vKw9h2w3iz3F/8bVGxVxINpzGxMxqB2xZTS3JZlkb76o2q51pssANK9DA
         d/GBCRK8CLq2zngfNvS8iTLB1bWaDTf/esd2UBzI5pmnDgNMc+w+8TyZFaP6zHs/mCwm
         Pqqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=I721Wdnvwksuqw3K5og33s4pzD1mKIxh7yc5XDDcYgQ=;
        b=DZ3e1qZL67YLd2skSRaEEO0LEiamGQTjjs8LH3rTZ0/MuzYGnibXduef4dmnaPkcqO
         39hzU8SxvoKWfN5tmC5zsI568Dxk2f6MZmxAeurc1sxVGGIBK3WsKxk3EeMcNVYVHwSC
         BUqGS2Ddwu7DqvRb9zDFITGaHy7d6qOXoQPvYDBGxkaBD2Guyrk9HVkfVZd7SIobKc2b
         aDq17eGY6QxN/FO7DGWLh9jCnOJxYgDR+0r2pdm5LulrC8mfEJ34EspX0CiJxVOAwHz2
         +8B23gwTWaErZvYrGwZgDIpyXnH0GPJsNRa1CwWVd73t+kDX11O8dWBbWudisIplOh18
         J5aA==
X-Gm-Message-State: AOAM532uY9XoW0u42DP/Oymop+26LbfdqCnXMMaLIxChm/D37KLGqbxk
        QrQfFio1wYNMo2ACM0GMeR/RrohUItI=
X-Google-Smtp-Source: ABdhPJyDbVa87hQrc5wws3+KhvnOrqDBA177KYd42VX6oecjGbydnzDBc86Ra6RuyrxaYRVTbUojng==
X-Received: by 2002:adf:e802:: with SMTP id o2mr3649613wrm.251.1608287079541;
        Fri, 18 Dec 2020 02:24:39 -0800 (PST)
Received: from [192.168.1.143] ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id r15sm12678202wrq.1.2020.12.18.02.24.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Dec 2020 02:24:39 -0800 (PST)
Subject: Re: [PATCH] sgx.7: New page with overview of Software Guard
 eXtensions (SGX)
To:     Jarkko Sakkinen <jarkko@kernel.org>
Cc:     linux-man@vger.kernel.org,
        "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>,
        linux-sgx@vger.kernel.org, dave.hansen@linux.intel.com,
        x86@kernel.org
References: <20201202071543.74866-1-jarkko@kernel.org>
 <f6eb74cf-0cb6-0549-9ed3-3e3b2af23ad1@gmail.com>
 <c698b115-2daa-c92b-da92-abe261a37222@gmail.com>
 <b57aa7d7-b4d0-6358-258c-45fa69e40df8@gmail.com>
 <1b818d58-4a82-4192-ab01-16a5ff2d7cfa@gmail.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <678536be-b0a2-af9d-2f41-5f3ff7ee9669@gmail.com>
Date:   Fri, 18 Dec 2020 11:24:38 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.1
MIME-Version: 1.0
In-Reply-To: <1b818d58-4a82-4192-ab01-16a5ff2d7cfa@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Jarkko,

Linux 5.10 has been recently released.
Do you have any updates for this patch?

Thanks,

Alex

On 12/2/20 3:47 PM, Michael Kerrisk (man-pages) wrote:
> On 12/2/20 3:45 PM, Alejandro Colomar (man-pages) wrote:
>>
>>
>> On 12/2/20 3:20 PM, Michael Kerrisk (man-pages) wrote:
>>>>> +There is also a hardware constrain that the size must be a power of two,
>>>
>>> s/constrain/constrain/
>>
>> ?
> 
> Oops. s/constrian/constraint/
> 
> 
> 

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
