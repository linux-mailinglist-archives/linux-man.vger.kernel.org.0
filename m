Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4AAE03BECFA
	for <lists+linux-man@lfdr.de>; Wed,  7 Jul 2021 19:23:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229950AbhGGR0E (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 7 Jul 2021 13:26:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51502 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229949AbhGGR0E (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 7 Jul 2021 13:26:04 -0400
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C5C11C061574
        for <linux-man@vger.kernel.org>; Wed,  7 Jul 2021 10:23:23 -0700 (PDT)
Received: by mail-wr1-x42b.google.com with SMTP id p8so3975495wrr.1
        for <linux-man@vger.kernel.org>; Wed, 07 Jul 2021 10:23:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:from:to:cc:references:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=huU31mpGq9U0YCOxzRhmILQRuYHnlXuvAe2jSkJUlvs=;
        b=r10wz2Tu7qXN/uCS7ERoGkfsvmudVMGuTXaJRwKXqfck+2BZaTnvUa8CuFRPy9Vltn
         oz8nwk7nlyrZ533hl5M4CjcfXahJB1bphRCbKKtT8i3hIeWd7JMZOKUuooKiDO8GTDP2
         SZuhNLLRSRjMVb2/SPSSiVWoSLZZaCrYrrDrVX234bEVwBVK0PtFX1YOc+GL3lu1fYAO
         y6ZzXi9C4wj+XjKyV1L6okt4GRDURymq47tzy9oFD6imgJNsDbotqWxIf+1qog9/xbyH
         +L1gkvViALVKMKZ2++D/u7eY9ivbAS63ERPHKpWri4SSl5nueD6TYQl40viLTZ3fgpMn
         gFtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:from:to:cc:references:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=huU31mpGq9U0YCOxzRhmILQRuYHnlXuvAe2jSkJUlvs=;
        b=IzDCmmcp8w8pUobT2GwYMxo5J/XOpqsqlmNpfYv+GpzlThIYSaB87pW/iPv3TGAzAb
         0Z1lb609MT93pmTbt+9CvM8xQPn2kJk47i15mgqWTBPyAtIaJHVaDFktZ+NG3jSid+km
         xkw5jtnTMCq0bisxvhHYKclIDNvllw9rCD1XeiYrO6m5qz3N/ma71Oo5wBjNZbUbMpXA
         fZE6F9NPC0Xtbedo0jokAqfTF2DmgkUr1lWm7jt2SimrC0ETqmFu7B5DdH5LUijH9I9T
         c1/eNUo2T+BrTsNWG+nAk2khfoRgFX44EHqXL4TVKYtHL0KGnneU3uih8cQfI5+Ouei3
         r2xg==
X-Gm-Message-State: AOAM532nM4wEoYeUpNyJDhR+mAi2DMpxacCQYJ1GjxHqqnrpX9JFpTi6
        A7pzBvAUtytf8mgv+mOSVjg9Zol65pk=
X-Google-Smtp-Source: ABdhPJwYQQwUMWp30ZFJEeKdvgVAhYvpP97auzSLiBAny+3pjyjvL+pT3vBdBxFpxL1y6EykSnpLcA==
X-Received: by 2002:adf:cd0e:: with SMTP id w14mr29523103wrm.237.1625678602375;
        Wed, 07 Jul 2021 10:23:22 -0700 (PDT)
Received: from [10.8.0.150] ([195.53.121.100])
        by smtp.gmail.com with ESMTPSA id n5sm12274041wri.31.2021.07.07.10.23.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 07 Jul 2021 10:23:21 -0700 (PDT)
Subject: Re: strlen
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
To:     Jonny Grant <jg@jguk.org>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        Florian Weimer <fw@deneb.enyo.de>
Cc:     linux-man <linux-man@vger.kernel.org>
References: <0bf239e9-cfc7-8889-ca00-b1d1566bd174@jguk.org>
 <87lfhpgxf8.fsf@mid.deneb.enyo.de>
 <017a5a66-ba66-7cc8-c607-f851c2e54fc4@jguk.org>
 <87363whf2z.fsf@mid.deneb.enyo.de>
 <48e874cb-2b95-2783-ddfc-ae12d9aaf8f5@jguk.org>
 <87bl7fozxi.fsf@mid.deneb.enyo.de>
 <23679a28-5986-0af2-4d98-7de68ed0deec@jguk.org>
 <53b3666b-d200-ef97-b050-cc38669c61cd@gmail.com>
 <b6fccca1-6e2b-fb20-d9d6-9df94cd3f05f@gmail.com>
 <564825ed-1e1f-b344-da35-1b83c551ed5f@jguk.org>
 <b71170df-7c6b-4582-c3d1-84b811fe5259@gmail.com>
Message-ID: <84867122-ec74-b87b-a459-3e7178ffc6d2@gmail.com>
Date:   Wed, 7 Jul 2021 19:23:20 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <b71170df-7c6b-4582-c3d1-84b811fe5259@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Jonny, Florian, Michael,

On 7/7/21 6:57 PM, Alejandro Colomar (man-pages) wrote:
>> Maybe the man page could just state:
>>
>>
>> NOTES
>>
>> The calling strlen with a NULL pointer is undefined behavior.
> 
> Okay.  I agree that should probably be documented.
> I'm surprised it's not documented already.  Not even in the glibc manual 
> (or I couldn't find it).
> 
> There are a lot of functions that should get this addition, though.  I'd 
> like to patch them all at once.  I'll try to find a list of functions 
> documented in the man pages and that have nonnull in the 
> oimplementation.  If I don't come back soon with a list, please ping me.

Humm, the list is huge, much bigger than I expected...

Just try yourselves:

~/src/gnu/glibc$ man_lsfunc ../../linux/man-pages/man3 > lsfunc;
~/src/gnu/glibc$ cat lsfunc \
                  | while read f; do \
                          grep_glibc_prototype $f \
                          | grep nonnull >/dev/null \
                          && grep_glibc_prototype $f; \
                  done \
                  > nonnull;
~/src/gnu/glibc$ wc -l  nonnull;
296 nonnull


grep_glibc_prototype is defined in the man-pages, in <scripts/bash_aliases>.

How do you think this should be handled?
Adding a line in NOTES for every such function?  Adding [[gnu::nonnull]] 
to every such prototype in SYNOPSIS (this might be too noisy)?  Else?


Thanks,

Alex

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
