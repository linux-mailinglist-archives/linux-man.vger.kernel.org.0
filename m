Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BE8FB31639B
	for <lists+linux-man@lfdr.de>; Wed, 10 Feb 2021 11:21:53 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230415AbhBJKVo (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 10 Feb 2021 05:21:44 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44196 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229827AbhBJKTd (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 10 Feb 2021 05:19:33 -0500
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com [IPv6:2a00:1450:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 37BE5C061574
        for <linux-man@vger.kernel.org>; Wed, 10 Feb 2021 02:18:53 -0800 (PST)
Received: by mail-wr1-x42f.google.com with SMTP id q8so1770760wru.13
        for <linux-man@vger.kernel.org>; Wed, 10 Feb 2021 02:18:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:from:to:cc:references:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=trVkAp1msX+Ct2m0a4eXrce8ACi2qoenKHIvMGph1a0=;
        b=XbDmgMN3UYpgx04TVdnYx41Fu7pKtzWMYZg4TDOoowbUark+ZDOXLVziY3RmKmnlzr
         xV7zwuKX/PzGaAdPFjus1f3jiv2xZndKLe/UjNhKUwpnkHkeX2JaB6jZ+5j3A+SbIYAz
         u3ctqLJ0MvYQraf3aLWrlGnCPZHlnyI+RLhcl/I3Th1V4sR3dd3Wh5J4Lfi/A5AcWflk
         dnrtggqjhK8H7DfiirCthAQd74oKlvr3mLXbdEgyooQ/6Oxprn1hQQexawLLMnEfqB4T
         6T6xAx+kVqG3o5wrZNfnsdVGt63psBsj+WX+7H1tE8Ld8iu0eEsG+8I13/WJOzKcaeX6
         9xiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:from:to:cc:references:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=trVkAp1msX+Ct2m0a4eXrce8ACi2qoenKHIvMGph1a0=;
        b=nh7v9suB1XdPeXiwSBzE68lTFDyTz6WKNjpj9Q9AW02kdfmcC79tyvz05blZRbYfZL
         s9Pq2KOyitxEebaVJ9LIkR9wL05hY8vg/7xDscKJgM1gAKOWR1z0258lDLS2EFpBf4Bb
         MyUCz0HZL4+DEMfU0QjpyeK7dUbdIhEBfZfNqHhWf3ssvlZEYeSikp2IhKd+0ZDHdKAX
         DoCWssvu72JZn4kfFkbnWMWAjdo6aBNWF3Uf3Rdc+H0BxARtwJXc4FP1JjUs6VDNA3Tw
         CqG0R0VeFkNY/P3I7e/AlU6wuIbyvCVaQfxsCpv8/71bo9CAdQYg5Mnw/7WYkLWfQhtt
         BRjg==
X-Gm-Message-State: AOAM531o8SnMSKRMmEhUSvAGPQwMjC4k7apf35YVz8/G/LK80ZC5gxkQ
        zArNFbMD4HYcI1zDzzTyEkoAx6loljE=
X-Google-Smtp-Source: ABdhPJzQH4HJBc4w2+HBDfON/2HqRQz6Osen+en+tiE4Cq3yn6G1wPW1p0sCNNXni1cg31eZds+W4w==
X-Received: by 2002:a5d:460f:: with SMTP id t15mr2681096wrq.417.1612952331975;
        Wed, 10 Feb 2021 02:18:51 -0800 (PST)
Received: from [192.168.1.143] ([170.253.51.130])
        by smtp.gmail.com with UTF8SMTPSA id m18sm2216581wrx.17.2021.02.10.02.18.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 10 Feb 2021 02:18:51 -0800 (PST)
Subject: Re: ptrace.2: Simplify signature? s/enum \w*/int/
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>
References: <e7685576-db7b-f53d-26b9-64ee6621aea1@gmail.com>
 <bba760a2-b291-d676-2949-90b47f13d4f9@gmail.com>
 <eb01e43f-6ab4-c4c9-62b5-a705aab906ae@gmail.com>
 <e5de8f47-b8cc-ee52-4702-5bdf7193f0d8@gmail.com>
Message-ID: <e49ab35b-a131-1adf-4b5c-5285e662d26c@gmail.com>
Date:   Wed, 10 Feb 2021 11:18:50 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:84.0) Gecko/20100101
 Thunderbird/84.0
MIME-Version: 1.0
In-Reply-To: <e5de8f47-b8cc-ee52-4702-5bdf7193f0d8@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 2/9/21 11:34 PM, Alejandro Colomar (man-pages) wrote:
[...]
> 
> Here are the glibc results (grepping though the kernel is taking much
> longer, but I guess the command will have ended by tomorrow morning, and
> I'll send you a follow-up.

There aren't syscalls using enum (as expected).

.../linux/linux$ func_list ../man-pages/man2 \
                 |while read -r f; do
                         grep_syscall $f;
                 done \
                 |grep enum;
.../linux/linux$


[...]

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
