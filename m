Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0FA5A3E50B9
	for <lists+linux-man@lfdr.de>; Tue, 10 Aug 2021 03:46:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233940AbhHJBqu (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 9 Aug 2021 21:46:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57926 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232781AbhHJBqu (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 9 Aug 2021 21:46:50 -0400
Received: from mail-pj1-x1029.google.com (mail-pj1-x1029.google.com [IPv6:2607:f8b0:4864:20::1029])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 41A48C0613D3
        for <linux-man@vger.kernel.org>; Mon,  9 Aug 2021 18:46:29 -0700 (PDT)
Received: by mail-pj1-x1029.google.com with SMTP id mq2-20020a17090b3802b0290178911d298bso2959714pjb.1
        for <linux-man@vger.kernel.org>; Mon, 09 Aug 2021 18:46:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=2OZLUZkgt1tAAOUmpwosEhon66nn5vOWhWlSUDpzIh4=;
        b=OHXrM4C10BNqLgQsxkTwfEOEN71URfIGZmN1nAzKHINm5M1Q9wPECcZufC7BLWFbd3
         wPNEVUdqVk/O1+5aNrS3tH41JNHXYJqth7ADcuR4o4E0snNt7H6E0SCR8xdnqgtISSeJ
         ymHL9Q+JtmrJE+RNL3K/eZ8WbGMraMkiOFpt8O1JBljF6q2QPJCEJdQ55TXyZB9h8r52
         y/aPCW8mqlQA6yMHbzm8iOREo504hXS3kEsqud30j04Lkm/LHad6bZDctJXozN5jFfhb
         HBnb4AaA/C3zNtIBbovdvdcIC4A9g+h+13Mhrlg1nFWj0VuKIJI5uTdj5tmcEJKTLGly
         Lu4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=2OZLUZkgt1tAAOUmpwosEhon66nn5vOWhWlSUDpzIh4=;
        b=coXxiBM0zTY0pqbaxIANlvYidSDg6pypOIQBVmblrkCqQRMn/FU92XBBwfdP+Jc905
         C5CiAbxb5bwHMwpsp2dK6yoFEsIPXVZuFF/TKW7Si5caR4YQXjl2ZXSSaPoRjo0Z+r5z
         JW94iPV5Kf7ujsYeYRLyedXOZJhoGf5A8rJ/m2Lxxal28edHz8lCWYu/VW7Bx7Raacv6
         s6Yi8XpSn66Ey3w+5dzG4KEsUwRhfRsttDciIHeCn5Rzwy26JELyEP4KzR2WYGE6KhoJ
         eyMrFUaZmIJ2mpPT0fEbIaHcSm+MMJxB+EHbp64At+danooSfuZ8oSEJdVH+sX58AnT0
         HJHg==
X-Gm-Message-State: AOAM530uGSRD06lxjsgvIK2vRdhvStZZkJD04uQWP4XwR3DzHj30QApC
        ZEnldrHuwscIm7qaxVe1RODM77Oq4PU=
X-Google-Smtp-Source: ABdhPJyj1WEsu9E7dZWiUPQMPEGE5b6cARhSCA24WZO9zlv0gmyuG1JeH7X+GxGTfym4Qdgbezw5lA==
X-Received: by 2002:a17:90b:3758:: with SMTP id ne24mr7177132pjb.218.1628559988562;
        Mon, 09 Aug 2021 18:46:28 -0700 (PDT)
Received: from [192.168.1.71] (122-61-176-117-fibre.sparkbb.co.nz. [122.61.176.117])
        by smtp.gmail.com with ESMTPSA id d14sm1210937pjc.0.2021.08.09.18.46.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Aug 2021 18:46:27 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, Helge Kreutzmann <debian@helgefjell.de>,
        linux-man@vger.kernel.org
Subject: Re: Errors in man pages, here: signal.2
To:     Jakub Wilk <jwilk@jwilk.net>
References: <20210725170929.GA16841@Debian-50-lenny-64-minimal>
 <CAKgNAki+-u-7MY8pD5WB95ss_0_f=2B4zk7HnckxNDD6mD=UDA@mail.gmail.com>
 <20210727190315.i55sv2pap6ffhkuv@jwilk.net>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <fc7d02d0-7fd8-0ed9-d1a8-9156240b177a@gmail.com>
Date:   Tue, 10 Aug 2021 03:46:23 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210727190315.i55sv2pap6ffhkuv@jwilk.net>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 7/27/21 9:03 PM, Jakub Wilk wrote:
> * Michael Kerrisk <mtk.manpages@gmail.com>, 2021-07-25, 23:02:
>>> Man page: signal.2
>>> Issue: Such paragraphs shouldn't be no-wrap
>>>
>>> "B<WARNING>:\n"
>>> " the behavior of\n"
>>> "B<signal>()\n"
>>> "varies across UNIX versions,\n"
>>> "and has also varied historically across different versions of Linux.\n"
>>> "B<Avoid its use>: use\n"
>>> "B<sigaction>(2)\n"
>>> "instead.\n"
>>> "See I<Portability> below.\n"
>>
>> I don't understand this report, and can't see a problem. Please 
>> elaborate.
> 
> I think the problem is that the spurious space before "the behavior" is 
> confusing po4a.

Thanks, Jakub. I fixed that.

Cheers,

Michael



-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
