Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C355A3E3CA0
	for <lists+linux-man@lfdr.de>; Sun,  8 Aug 2021 22:06:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230337AbhHHUGm (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 8 Aug 2021 16:06:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52910 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229977AbhHHUGm (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 8 Aug 2021 16:06:42 -0400
Received: from mail-pj1-x102b.google.com (mail-pj1-x102b.google.com [IPv6:2607:f8b0:4864:20::102b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3B015C061760
        for <linux-man@vger.kernel.org>; Sun,  8 Aug 2021 13:06:22 -0700 (PDT)
Received: by mail-pj1-x102b.google.com with SMTP id pj14-20020a17090b4f4eb029017786cf98f9so26696556pjb.2
        for <linux-man@vger.kernel.org>; Sun, 08 Aug 2021 13:06:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=Tgz0t+Vc1eUA7sicMpR/JFoi8cR0RX2SrUzIImViqtU=;
        b=CFHW4cwywEHD+aKxRHBwdIGvnwDImZpod5z2zjI39EmALezi3FLJGJ9q2RP/D3PDst
         Dtnilf6JpRU5kjt1z15O8d4s0VgtRPRhpmX9pmqUTuDEPIv7yRkl40wxnrgBrfEvKo1i
         i7CjxpbCqgUuYJF3Qd52Srvjwz0DDPPgqix4U90o+JD1slfdpX/pmXp/0j9Zgzh1AWrW
         qABtwzszxtkQKHTTP3gY6AN4ElFZC4uCFpezlo3Y4esoa59pbqLmJW9jxjhs8sqghEZZ
         qRJw72SE9cNKGcpHe92fGe+5ApkANXetXZC67WFVGgVM2FDcLZ7kBZrYrhkA++TNeLgK
         j0nA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=Tgz0t+Vc1eUA7sicMpR/JFoi8cR0RX2SrUzIImViqtU=;
        b=YYnaYeRJdbq3oaZwrs4S0DfXpwQ3hjY4BPcqEwjA0FddTedz8AXAB0XTaSZ7giGXhj
         T43YerXrvDpFE58wGsh60pb0boBEFpJQ5C/iUgp4c3xLwAx0qhCP7po1IkhUTh03P+1t
         WBEkbjPGRknKQCt9Fl+icB1kEm3bd1cgTjy0U4mWtQiLaSrupyP1BTaDTAohZYEJDTs2
         pyNlKuiXhvKHfjQCStEToFFSMDnkNDfIkxME4ZRemGIgCf65QaPS6NeTlbgyo2QKbn9W
         ivLK8XioVAk/oBeXJhxax5a+98sps9ItY/kBTcTCAIXfiwYBiKSJhbGGHW5cO5Ihhd6c
         DZkQ==
X-Gm-Message-State: AOAM531fSJ02daQ9TNw8vtkP9wGD62vgrQHMgxrrXMzt63mzx9FEFpgs
        Gs72kyiNbEL5qrqa0HX49a1nOqjPxHY=
X-Google-Smtp-Source: ABdhPJzRCQr84K3G1ySvWHB5fHoiPuiea5aD2+bpGhOY2dQUU+7mCF8bpAwZbNwLS2ay6R3xgj7/0A==
X-Received: by 2002:a17:90b:4b50:: with SMTP id mi16mr32612567pjb.55.1628453181484;
        Sun, 08 Aug 2021 13:06:21 -0700 (PDT)
Received: from [192.168.1.71] (122-61-176-117-fibre.sparkbb.co.nz. [122.61.176.117])
        by smtp.gmail.com with ESMTPSA id hd21sm5503496pjb.7.2021.08.08.13.06.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 08 Aug 2021 13:06:20 -0700 (PDT)
Cc:     mtk.manpages@gmail.com,
        =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>,
        linux-man@vger.kernel.org
Subject: Re: [PATCH 01/23] pipe.7: also mention writev(2) in atomicity section
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
References: <20210808084133.734274-1-alx.manpages@gmail.com>
 <20210808084133.734274-2-alx.manpages@gmail.com>
 <3a033179-61da-eea0-2c34-a10307b838c0@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <a8154ed8-d113-d0b5-e648-87abd885f4a4@gmail.com>
Date:   Sun, 8 Aug 2021 22:06:14 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <3a033179-61da-eea0-2c34-a10307b838c0@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 8/8/21 3:20 PM, Alejandro Colomar (man-pages) wrote:
> Hi Michael,
> 
> On 8/8/21 10:41 AM, Alejandro Colomar wrote:
>> From: наб <nabijaczleweli@nabijaczleweli.xyz>
>>
>> writev(2) notes that buffers don't interleave with other process'
>> (a reasonable question to ask), but points to pipe(7) for an exception.
>> pipe(7) did /not/ mention "writev", "iov", "scat", or "gath", which are,
>> in order, reasonable search terms: this was confusing at best and
>> alarming at worst
>>
>> By mentioning writev(2) in the heading, we clearly note that this sort
>> of interleaving behaviour matches write(2)'s and isn't a concern
>>
>> Signed-off-by: Ahelenia Ziemiańska <nabijaczleweli@nabijaczleweli.xyz>
>> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
> 
> Oops, drop this one that I already sent in the previous set.

Dropped.

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
