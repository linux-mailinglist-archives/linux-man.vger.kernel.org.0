Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 24EA430D4AF
	for <lists+linux-man@lfdr.de>; Wed,  3 Feb 2021 09:12:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232242AbhBCIMA (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 3 Feb 2021 03:12:00 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58304 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231704AbhBCIL7 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 3 Feb 2021 03:11:59 -0500
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0DF23C06174A;
        Wed,  3 Feb 2021 00:11:19 -0800 (PST)
Received: by mail-wr1-x429.google.com with SMTP id c12so23100300wrc.7;
        Wed, 03 Feb 2021 00:11:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=GMkk0PLQYC5yjtJhBL5QqnCNEN+xIHzvgjGjkI4SSr0=;
        b=H156lNPMFt/fJt1Li8iHVTh1TAazwks3SJvEQ6qzJHWUT/PQPYxzrYEFubqqNWrXNq
         mgoLLYIJeAAikA4O2/u6niOXVo/HrkDY40qS0LPHavW3VCQInaHL+tpfNVtff8s+0TjP
         MQxEK4gg1pdd3u7Bwi02dW7Ek1k44RKwUkokbBaT79w62HQobBSudyrIOhuWsj4MrcKw
         xR/bQTSon/6cfb5Jc/LTxzXd82f8ClXu6zKxpZ0hb1GbteWyo+3KKSD2HL7S2G18/a3e
         9luo6lkgLDePUVPcdz28Ie9TOQ7t41uo+F8o+k+I0o61ha1sgWN+/fmmsMAK+fbV4u2k
         zF9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=GMkk0PLQYC5yjtJhBL5QqnCNEN+xIHzvgjGjkI4SSr0=;
        b=fLYt+MThlq9POrmqG7qOVJH8sXo6t/YbZHMe6xUjEnn/aZhz1MaImi8lqkAORQgrjR
         8etLrt9YFDGvBF91WdEZ0wMccRNGBrl8WPUTBMVOkXGQtCUcYLVXuXQZB7+JbVh7KA7L
         wIONZ9s0o7lx78Wk2NCWaAdwySklUhe2362DWPGWJCSW7gW3mTpL7cOA2T4mmBv/9O2t
         7TSz+Dr0t69EZ6mRgba3uqe5Um11mQ/reGDZh24uhAhXCjzMKDMeg7gAxwZAKFVdgwn3
         omVXcqL47xeoS/piMJkpXiqJQ60Q+xCt8isUa21/5hlnPwX2xcohk8SbXB3BxilPk6hx
         tB0Q==
X-Gm-Message-State: AOAM530JD16LG7IZZ3dzD0lgRXDUXZSAec+heQDa7xJ/T2wryTa7Z8CV
        wc0KfMiz+p6gQFOTRnMKkxVpIcu8rM0=
X-Google-Smtp-Source: ABdhPJxD+PANN8G+Kf39iMcS452T+kU/+V6qJV5vC3YZIvIFleyojmEYW7Djfm5lgsD9CIDmcE8q2g==
X-Received: by 2002:a05:6000:1202:: with SMTP id e2mr2052338wrx.328.1612339877824;
        Wed, 03 Feb 2021 00:11:17 -0800 (PST)
Received: from ?IPv6:2001:a61:2542:b001:294f:8948:78a8:d929? ([2001:a61:2542:b001:294f:8948:78a8:d929])
        by smtp.gmail.com with ESMTPSA id w15sm1921011wrp.15.2021.02.03.00.11.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 Feb 2021 00:11:16 -0800 (PST)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        linux-sgx@vger.kernel.org, dave.hansen@linux.intel.com
Subject: Re: [PATCH v2] sgx.7: New page with overview of Software Guard
 eXtensions (SGX)
To:     Jarkko Sakkinen <jarkko@kernel.org>
References: <20201222004108.49159-1-jarkko@kernel.org>
 <16f13aee-a966-ecd4-6f08-d9d7b0e869f3@gmail.com>
 <YAli9syKOwVTYeh6@kernel.org>
 <cb04f65c-7598-e5c0-6aa9-421b8e37c8db@gmail.com>
 <YBmPiqfHLz5JV57y@kernel.org>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <fcd5531f-3d8b-491f-6949-9e20a47882fb@gmail.com>
Date:   Wed, 3 Feb 2021 09:11:15 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.0
MIME-Version: 1.0
In-Reply-To: <YBmPiqfHLz5JV57y@kernel.org>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Jarkko,

On 2/2/21 6:44 PM, Jarkko Sakkinen wrote:
> On Thu, Jan 21, 2021 at 03:33:05PM +0100, Michael Kerrisk (man-pages) wrote:
>> Hi Jarko,
> 
> Jarkko :-)
> 
>> On 1/21/21 12:18 PM, Jarkko Sakkinen wrote:
>>> On Tue, Dec 22, 2020 at 07:53:24PM +0100, Michael Kerrisk (man-pages) wrote:
>>>>> * Fixed the semantic newlines convention and various style errors etc.
>>>>>   that were reported by Alenjandro and Michael.
>>
>> s/Alenjandro/Alejandro/  :-)
> 
> Just had to mention the typo above because of this, sorry :-) I'll
> fix this.

Got it. Not enough practivce with Finnish :-)

>>> So the thing is that there is reserved memory, consider it as a bit like
>>> VRAM. This memory can be oversubscribed. Then when you create an enclave
>>> you consume these pages. When running out of them, the kernel swaps pages
>>> from enclaves across the system currently based on a trivial FIFO policy.
>>> So these regions define kind of the memory pool for all enclaves running in
>>> the system.
>>
>> SO, is there some suitable change for the manual page text?
> 
> What if I just edit it from this? I think the video RAM comparison makes
> this common sense understandable. There's restricted memory shared by
> processes and managed by the kernel.

That sounds okay to me.

Thanks,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
