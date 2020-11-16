Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D55722B3AD1
	for <lists+linux-man@lfdr.de>; Mon, 16 Nov 2020 01:34:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728077AbgKPAdG (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 15 Nov 2020 19:33:06 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57226 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726311AbgKPAdG (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 15 Nov 2020 19:33:06 -0500
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 26C1FC0613CF
        for <linux-man@vger.kernel.org>; Sun, 15 Nov 2020 16:33:06 -0800 (PST)
Received: by mail-wr1-x42b.google.com with SMTP id j7so16908636wrp.3
        for <linux-man@vger.kernel.org>; Sun, 15 Nov 2020 16:33:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=jNUNwuWvpiABHlYWV6CjRlqpYc26ix7wYDClAgECNbw=;
        b=RhFZ0aOud81TiInz1cqVOShFUdTvaiUgfVH83nv7W0nNNT1D4fHF9EPQmSS24nyp/m
         Ls8u+Oqmhc43JY4glYzBIHji3gIV9/6jSpBYlbF1gUpugutcc1NmWZKkGyMd7JAsuqNw
         1CdHkfsmDBwA2Yo6e7+0Rq5vEVQXpChqBKPSWq1JuLheS22L7Yj8fY7kDa7nqzKtPCQh
         FK7wkbdGh4a4SfTUxQIZKOqg1ZPloxJ7S0qHnwAc88T5/bWynRaLvFgcoJ0qZy2u3i9C
         EcGm3ccGkYHafHsEkPh0by68hXxzRsHcy1K8MHOq6Xd3/4o8xwxKT9Fxq9AYRFAEmwha
         5vgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=jNUNwuWvpiABHlYWV6CjRlqpYc26ix7wYDClAgECNbw=;
        b=eQpjOC+VeJyBvNaQ5MQOoz8BNSnna8JbUz5lVU9etdRNWk8qv3y0Sw9eQdOjMdlS2w
         yNTle1YeSsmUFzhpUb9JJbB+YmB2Lj8/cfF4MLrX5XL5Ektr2CPKYFl/bu8SIXLuWxme
         pdVYO8s/Z205C4HG4PRRXQPuO/NA6FWGyP/S46x0+mxRgAYVnwfBKsRayZfuA5RgrrJC
         i0zqn7uoI/gAcvVmJ0L5ewnU4e9RC2JPg8N1HgbOS1M2H9jApGvxN6xl26pYJ58XY6JJ
         F0bU+mvHhouz2GgwSXwCSR9OMGwX8Z32VAVwVptoDNHVWHnHdwS4LkPMfr5+0LUrT6Yf
         i8jg==
X-Gm-Message-State: AOAM533H6o/VwHW6gWRY2OULZ8EQ3FdZalytlbgfXu10idywPcBJyjE3
        II3HhUHwFd7It6KCQ7K3rtCk3nxwmgy4SA==
X-Google-Smtp-Source: ABdhPJwraI2+jjGEGcnl/t14cvwd7pXOC+ls0C9gbWfCU2BvUeJZTmAVH5JPQv05loFzIC5fTDmBpA==
X-Received: by 2002:a5d:6688:: with SMTP id l8mr17213790wru.360.1605486784733;
        Sun, 15 Nov 2020 16:33:04 -0800 (PST)
Received: from [192.168.1.143] ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id t15sm17159510wmn.19.2020.11.15.16.33.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 15 Nov 2020 16:33:04 -0800 (PST)
Subject: Re: [RFC] memusage.1, uri.7, user-keyring.7, user-session-keyring.7,
 ld.so.8, tzselect.8: srcfix: Replace \f markup by .
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, g.branden.robinson@gmail.com
References: <20201115165256.497403-1-alx.manpages@gmail.com>
 <accea029-e467-4928-af40-d4cc1bc0be21@gmail.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <ace3f6d0-3c8b-1fb2-443c-628b421d9e36@gmail.com>
Date:   Mon, 16 Nov 2020 01:33:03 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <accea029-e467-4928-af40-d4cc1bc0be21@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Michael,

On 11/15/20 9:54 PM, Michael Kerrisk (man-pages) wrote:
> Hi Alex,
> 
> Briefly...
> 
>> And I also found a few weird files (such as zic.8 and zdump.8).
>> Where do those come from?
>> I'll try to rewrite them using man(7) markup.
> 
> Stop!! These pages are special. They are periodically imported from 
> the tz project. It's an odd situation. Glibc imports these tools
> from the tz project, but does not release manual pages. So,
> periodically (when Paul Eggert reminds me), I resync the pages from
> the tz project. In general, I try to just leave them alone (although
> I have suggested a few fixes upstream to Paul), although I see
> I have touched some of those pages in global edits.

Okay.

> 
>> In the meantime,
>> I would also have to omit those files from the input to the script.
>> Do you have a list of such files?
> 
> AFAIR, the only other special page is bpf-helpers.7, which
> is generated from the kernel source files using scripts.
> Every few months, I try to remember to run the scripts
> to resync.

So, except for zic.8, zdump.8, and bpf-helpers.7,
what do you think about the current usage of \f?

I've seen a lot of appearances (many thousands),
and many of them should probably be fixed.

I think a script to fix them might be a bit difficult,
but a small C program might be easier to write.

> 
> Thanks,
> 
> Michael
> 

Thanks,

Alex
