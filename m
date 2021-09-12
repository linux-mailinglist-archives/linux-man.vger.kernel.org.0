Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DF0C0407D00
	for <lists+linux-man@lfdr.de>; Sun, 12 Sep 2021 13:13:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232728AbhILLOZ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 12 Sep 2021 07:14:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49974 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229635AbhILLOZ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 12 Sep 2021 07:14:25 -0400
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com [IPv6:2a00:1450:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7AB13C061574
        for <linux-man@vger.kernel.org>; Sun, 12 Sep 2021 04:13:11 -0700 (PDT)
Received: by mail-wm1-x32c.google.com with SMTP id 192-20020a1c04c9000000b002f7a4ab0a49so3544338wme.0
        for <linux-man@vger.kernel.org>; Sun, 12 Sep 2021 04:13:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:cc:from:subject:message-id:date:user-agent:mime-version
         :content-language:content-transfer-encoding;
        bh=lMvZGAOVJ4giZFgOWKqYCC9/49CtfQDd9PVotIGeAHw=;
        b=KMU89PTEd2rV9BDze8oJu9phU5miiecHUu7YnVwbTp0LcoNbE9jKg5Z9blyr8jdHSU
         HVrCKv/34oTycrMul4LSC0ovD2IpnkQ+JyrnQFOPDQevlP2lz7ZKM8ic54i+r8ZVJMZs
         fbaLEupL7FmgCvebg7SdqVk9h6ox1om/EhksS/lj1N05yUWR0mzjVE2+Lr1AA9GtnIi3
         pgPi+5Q7fB1kVQswSkPRjiDQli8Cq0TVjzNbPQ+zza9pl39qzAXqLRabuF/777AUA7TZ
         /29kYIkV1tCyyJjd/+kSrZ+JGQHiJt689nEsMH5SfwQCqd0im+hYCdJfJtVQgjeO6QM9
         K9rQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:to:cc:from:subject:message-id:date:user-agent
         :mime-version:content-language:content-transfer-encoding;
        bh=lMvZGAOVJ4giZFgOWKqYCC9/49CtfQDd9PVotIGeAHw=;
        b=aKqqLdwwESIZpOg6J+xm6LjWfcXC4Yv8+5ELPD/YOuQ3zptgwJZSko+9MzQA4k5UZ7
         Pyi3tBwrKjDnW1JnBZqDBbjJkTpLckDIz0YiVp2Mx8RsMrFgBusG9meuDa2toJMXg7dN
         yc5ieil1wxaCCTK9ktTxporAW1WfCIptAYPJJGU0jLD2ohUxEgDg4O/o6+kGfDAxhulU
         ck9Myq1Z5EVaJD9ejLR2kAjESLCc5R5Cu7BcvUipASH4kkgARNPjaxWa8ViNdj8JI2Fb
         w+RjqEAFdgLs6uXpCwejALzeLLw2Mgn6MKAlq3HkOLeqIEVh1ivlwF7k1+P3xva1J5w4
         WdUQ==
X-Gm-Message-State: AOAM531X2Pu5i4lUBNooz31GtP8mpovdianyeot5IxSFfjLfYi/JfSPa
        mRT9RtID4X4AfZdlU6gd+MpUsqQrNb4=
X-Google-Smtp-Source: ABdhPJw9X/K4K3XIkuFloNjRYeMt39/Vt38sCQMVlSvjPBz/uPsUG3rFqsyZNfwt13TB0EXLHDMF7Q==
X-Received: by 2002:a05:600c:2945:: with SMTP id n5mr4863057wmd.172.1631445189875;
        Sun, 12 Sep 2021 04:13:09 -0700 (PDT)
Received: from [10.8.0.10] ([195.53.121.100])
        by smtp.gmail.com with ESMTPSA id d17sm549149wrp.57.2021.09.12.04.13.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 12 Sep 2021 04:13:09 -0700 (PDT)
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>, groff@gnu.org
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Subject: .ad l/.ad b
Message-ID: <d95326e0-7b0c-b057-3412-f60264fe1ad9@gmail.com>
Date:   Sun, 12 Sep 2021 13:13:07 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi, Branden and Michael!

I've seen these in shmctl.2, and didn't know what they mean.
groff(7) wasn't very helpful.

[
.SH SYNOPSIS
.nf
.ad l
.B #include <sys/shm.h>
.PP
.BI "int shmctl(int " shmid ", int " cmd ", struct shmid_ds *" buf );
.ad b
.fi
]

What are those '.ad X' and do we really need them?

I found some other pages that use it:

[
.../linux/man-pages$ grep -rn '^\.ad b' man?
man1/localedef.1:60:.ad b
man2/setsid.2:40:.ad b
man2/acct.2:41:.ad b
man2/shmctl.2:55:.ad b
man2/shmget.2:50:.ad b
]

groff(7) related info:

[
        .ad       Begin line adjustment for output lines in current
                  adjust mode.
        .ad c     Start line adjustment in mode c (c=l,r,c,b,n).
]

But what does each mode mean?  I couldn't find anything about them in 
the manual page.


Thanks,

Alex


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
