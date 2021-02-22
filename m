Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0A245321B8A
	for <lists+linux-man@lfdr.de>; Mon, 22 Feb 2021 16:35:27 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230308AbhBVPfL (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 22 Feb 2021 10:35:11 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44580 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230470AbhBVPe7 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 22 Feb 2021 10:34:59 -0500
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com [IPv6:2a00:1450:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9E68FC061574
        for <linux-man@vger.kernel.org>; Mon, 22 Feb 2021 07:34:15 -0800 (PST)
Received: by mail-wr1-x42f.google.com with SMTP id v15so19549570wrx.4
        for <linux-man@vger.kernel.org>; Mon, 22 Feb 2021 07:34:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=zKWs3FCpa3i5Fh3xPSMMiB29O9fTVWlsEEx4fiVFMKY=;
        b=uN1j7SokoQwqsqiGTAGApygQFfHl4cMLhsKCr6TxX7lh6BVAL+HsGpXEgq5EJBaMvl
         uHX96wxprbojby6o6PLan2526zOmhajsW4i5Ou56+8pnFqfT5vNDaMTIAzQM/bWw/o/y
         CpUxTFUMABqWjcALy0c1kCV/TqC/CbKNKvitl43Tn0NYFbJCU2L5pxkXrzhEVOvX2tC8
         HCKhhw4GXWSM17sUPvVLkoK1z/fIJT7+7OOPbNViUTJgLYmdBACkQlRjgiEFyEf4y9sp
         64NJ90maicN6x0ERzOh/iXQyEc8AEeGRB42adRWVSq4T7bta0Xuw/5hwGplgS/xlMbGq
         97BA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=zKWs3FCpa3i5Fh3xPSMMiB29O9fTVWlsEEx4fiVFMKY=;
        b=PCaTNBsV/bhWpgkgAALmMqA17le0xlXTXIPbtl0UL10SWqLItppj7MYS4hXXj2/ZzM
         9xuNO5hUrcGPaujN633ILKpxBgx0JFBSNrwcJq8a2+vZmZWD/2huuisONZztwJSE7Szp
         bpOTYAKeBN0zbHk5zStANFmRuvLWAHtCwuqiBrptHFRl2SBlg3yqfVDyCuSJFusOcpOX
         r8SET7EaBTdJaDa1D3+DX6GBU67QfHBdWEzd93Hrd7/23dcUd0mD/FRZ9mn3nNUCIXQC
         Q7NNTLZXYgAc19ywrJcmTjQdYNF5AEM0+7c9vnekneP0CYk2PxHI+XPz7hCJdRV5z0KY
         aT0Q==
X-Gm-Message-State: AOAM530tKnqctDd6iS60+WwyqOV9j85Lyas7VN2IRot6rRSIX/1Kclkr
        5E96g17qVbw1JiPjP6149c63bx4czw3UWg==
X-Google-Smtp-Source: ABdhPJwDiwa28Pv+LLeHocWiJ/0Rqv9Ah1hXqehZm2G/4vzmtE6uZKDeHxEYFgX4suWCTvBzJNju+Q==
X-Received: by 2002:a5d:5687:: with SMTP id f7mr14858015wrv.56.1614008054292;
        Mon, 22 Feb 2021 07:34:14 -0800 (PST)
Received: from [192.168.1.143] ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id l4sm28947966wrt.42.2021.02.22.07.34.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Feb 2021 07:34:13 -0800 (PST)
Subject: Re: [PATCH] scripts/bash_aliases, scripts/modified_pages.sh: Move
 scripts/modified_pages.sh to a function man_gitstaged()
To:     Jakub Wilk <jwilk@jwilk.net>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>, linux-man@vger.kernel.org
References: <20210222140344.3862-1-alx.manpages@gmail.com>
 <20210222145802.w3oljdtz7vie2v4y@jwilk.net>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <075a52b6-88ce-a49e-6f19-1ddc91caee0e@gmail.com>
Date:   Mon, 22 Feb 2021 16:34:12 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
MIME-Version: 1.0
In-Reply-To: <20210222145802.w3oljdtz7vie2v4y@jwilk.net>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hey Jakub,

On 2/22/21 3:58 PM, Jakub Wilk wrote:
> * Alejandro Colomar <alx.manpages@gmail.com>, 2021-02-22, 15:03:
>> +    git status                            \
>> +    |sed '/Changes not staged for commit:/q'            \
>> +    |grep -E '^\s*(modified|deleted|new file):'            \
> 
> "git status" (without further options) is not suitable for scripting: 
> "The default, long format, is designed to be human readable, verbose and 
> descriptive. Its contents and format are subject to change at any time." >
> You could use "git status --porcelain" instead, which has stable and 
> (supposedly) easy to parse format. Or, better, you could use "git diff 
> --staged --name-only".
> 

I know I shouldn't script around 'git status'; actually I found out that 
yesterday.  When I read that, I tried to script around 'git status 
--porcelain', but it's more complex (at least to me, at first glance), 
and I gave up.

However, 'git diff --staged --name-only' is exactly what I need!  I'll 
prepare a patch with that in a few minutes.

Michael, so that git can follow the code movement relatively easily, 
I'll write that patch on top of this one, so you can already apply this one.

Thanks a lot!!

Alex

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
