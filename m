Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 31BF63E50C6
	for <lists+linux-man@lfdr.de>; Tue, 10 Aug 2021 03:52:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236469AbhHJBxQ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 9 Aug 2021 21:53:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59342 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232334AbhHJBxP (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 9 Aug 2021 21:53:15 -0400
Received: from mail-pj1-x102f.google.com (mail-pj1-x102f.google.com [IPv6:2607:f8b0:4864:20::102f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D6A14C0613D3
        for <linux-man@vger.kernel.org>; Mon,  9 Aug 2021 18:52:54 -0700 (PDT)
Received: by mail-pj1-x102f.google.com with SMTP id m24-20020a17090a7f98b0290178b1a81700so2951395pjl.4
        for <linux-man@vger.kernel.org>; Mon, 09 Aug 2021 18:52:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=VLMYIul0LfHyaSd8TRNLpTwKcbyTnj/+zr85U0OjSAg=;
        b=Krr6ZNKG0sBL9JcltvBo8ZQSVdJdnn9tDuHtBJFRPqB1vVu4cp18Ln7ZuW3nvOwEIw
         FItPEKg686Dp5WmoZuNJLeB0bkxRnCie/RlZGCn8YLJ/C8PyYXM5NSaabAviY5MeNGAV
         +Br2adJPcdZxW8f0ZInP0fl4WMmRyva+WaqLh7xVTRFeUOjT6U9Ij0TAE137DSqWZsMO
         ptUgwEVg0TR8tBrWy7U/MWFjGN09qetzrhVYAU1EODfpVkjezm3b+XFtm0QD5rSBYeb5
         +sIqGqCyB9QhFrvtfgHV1+NunSh3s9pHy6m5HSUlwEDKopQhxtMdxcY9G6uaalC4g7JN
         tVmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=VLMYIul0LfHyaSd8TRNLpTwKcbyTnj/+zr85U0OjSAg=;
        b=W19gt8fDdIo7t8t2g/wP03epO67073pFD78/g5dNfSzEPO2YxHf5VWgVsN1GTxWBvG
         UULydF4dPdfnxkDes6otiQRoXMQvsbwTeEgawn6T+nqzophkhGY0EBiIUuUPN6N3nme/
         IlxSPNepHAYKnVJKsJNIbLa+7QU7wai4ETjpVLR14RIoF+2sU+otzlonvtTACOwU1B02
         ta7Lq3av3vJsXeAruxTmW3oDu/d26IAe7VtfPXovDKDfNXdFBKfncCt5mEFRlip7vN4o
         3sjAA2pMK1mb2IBkkau0hCY6D2bwk1s2KlATzizKxlyL9sq3XPwCHmWn0VkAlMPQjEd7
         eEhA==
X-Gm-Message-State: AOAM531AJQbqQ13wRymvLEz5jgysprzoyQbRtSj84ckYhgJ6ab75i4iU
        xAn2gpJJKabYCjqAdun3uaPnIhZDP18=
X-Google-Smtp-Source: ABdhPJzwvIgr9t6ZK9/hmuirK+Tn3LjUm8TGC6Czb/KRSOoDW0HL/xXGeuGFi34iQ3YmCED0iy2RlA==
X-Received: by 2002:a63:5c5a:: with SMTP id n26mr335057pgm.306.1628560374100;
        Mon, 09 Aug 2021 18:52:54 -0700 (PDT)
Received: from [192.168.1.71] (122-61-176-117-fibre.sparkbb.co.nz. [122.61.176.117])
        by smtp.gmail.com with ESMTPSA id a35sm24096789pgm.66.2021.08.09.18.52.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Aug 2021 18:52:53 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: Errors in man pages, here: unicode.7
To:     Helge Kreutzmann <debian@helgefjell.de>
References: <20210725171026.GA16960@Debian-50-lenny-64-minimal>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <211f6f60-130a-c05a-ae72-199390553c5a@gmail.com>
Date:   Tue, 10 Aug 2021 03:52:50 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210725171026.GA16960@Debian-50-lenny-64-minimal>
Content-Type: text/plain; charset=windows-1252
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

> Man page: unicode.7
> Issue: remove whitespace before full stoop in "UCS ."
> 
> "This is the official specification of UCS .  Available from E<.UR http://www."
> "iso.ch/> E<.UE .>"

Fixed.

Thanks Helge.

Cheers,

Michael



-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
