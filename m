Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7BA4737A0E2
	for <lists+linux-man@lfdr.de>; Tue, 11 May 2021 09:34:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229924AbhEKHfv (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 11 May 2021 03:35:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39494 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229637AbhEKHfu (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 11 May 2021 03:35:50 -0400
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7366AC061574
        for <linux-man@vger.kernel.org>; Tue, 11 May 2021 00:34:43 -0700 (PDT)
Received: by mail-wr1-x42c.google.com with SMTP id s8so19060406wrw.10
        for <linux-man@vger.kernel.org>; Tue, 11 May 2021 00:34:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=HKWKDg24ecRxcfkgLzlLS7GSbPuoRjHk4Z2wwF/ghFg=;
        b=HAepbMzyt0A2yPpMcwxOL3wBkYyFv6DgsLmta6/Kzy5aBAbUK1jYQs4aVoAD0m4sZ7
         1pnzcajHS6YMJomP7/VWsyN5srDPSZZMzzUGLegOrUcsbDWbvCezPgNVbpwW6V59+udT
         UVGz4K+Mi+GTT+axMXuQF+gXSoyc5UiCTAnmEf6CEyPN9rqDzQ30rGrZiz02P43wkKVD
         ARwPgBQSLlENe+BfeVgx4WJIb6JduAiZ5smHCHSO5cGDIwXYz861LLmTunaNSRQf689N
         SKX6CXQlEsqF8AeGabuEl4AmT8rUBSGe8fO6onnJVUsBSeoajuhp8C0tbHdaip6Dn9pB
         MjeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=HKWKDg24ecRxcfkgLzlLS7GSbPuoRjHk4Z2wwF/ghFg=;
        b=KxAuuKT8yyIpfpoNSnnJsUWlIYF7/c6jLnsv4m+aevARPfzfYSGfzU4S2+Z6bLYFu6
         jia7eFn6AIllPMYf+YnXPcgzMhn/mp+en2lCWO4q/yz0zdpzWeSJdfyzYU/UUM+huXJF
         8pm1XyJPD6gdIvVxUvlBxWFi1uerqlJidIxNahPV7S9xFqfDw3HA1C3KfdjzefbQTyo/
         kKytQOXCLHJXITxpYOpfDdLtg1WoA5bG+TgIhLxTVnGMoeFOJV8OhmtkMkjkkz57+5K8
         56Oj5XbuzheE11qUX6qrQqhEk7kn3bpg+vVqp/YwAaE7W5amC4DiHA7l99WxZXB40dca
         DuNg==
X-Gm-Message-State: AOAM532lFIAIgvbGiY1YUmc9YfNSP4HPOB/NZIiihK7asI+aqz9/h9S/
        8gRONd6ZkUrLrYqaFq/CkDIlh9Gn9QU=
X-Google-Smtp-Source: ABdhPJxMEyzGOuYuAwXxnCdTwTkq7h3QK5WAbj3/AQffR1RSIsWnItkIEWCGLV5PtNYMcoTPMAYAvg==
X-Received: by 2002:adf:f60d:: with SMTP id t13mr36871024wrp.189.1620718482309;
        Tue, 11 May 2021 00:34:42 -0700 (PDT)
Received: from [10.8.0.106] ([195.53.121.100])
        by smtp.gmail.com with ESMTPSA id b6sm2583870wmj.2.2021.05.11.00.34.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 11 May 2021 00:34:42 -0700 (PDT)
Subject: Re: [PATCH] basename.3: SYNOPSIS: Add missing 'const'
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
References: <20210509213930.94120-1-alx.manpages@gmail.com>
 <20210509213930.94120-4-alx.manpages@gmail.com>
 <797047d7-00a6-5633-43c7-35d7fd709cb9@gmail.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <9daadf21-54f2-4f2b-20cd-4ee7ad1c2590@gmail.com>
Date:   Tue, 11 May 2021 09:34:40 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.0
MIME-Version: 1.0
In-Reply-To: <797047d7-00a6-5633-43c7-35d7fd709cb9@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Michael,

On 5/10/21 1:59 AM, Michael Kerrisk (man-pages) wrote:
> Hi Alex,
> 
> On 5/10/21 9:38 AM, Alejandro Colomar wrote:
>> Glibc uses 'const' for the basename() parameter.
>> Fix the prototype.
> 
> Yes, but see basename(3p):
> 
>      SYNOPSIS
>         #include <libgen.h>
> 
>         char *basename(char *path);
> 
>         ...
> 
>         The basename() function may modify the string pointed to by  path,
>         and may return a pointer to internal storage. The returned pointer
>         might be invalidated or the storage might be overwritten by a sub‐
>         sequent  call  to  basename().  The returned pointer might also be
>         invalidated if the calling thread is terminated.
> 
> I'll skip this patch.

It's POSIX that states that, so yes, I'll drop it.

Cheers,

Alex


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
