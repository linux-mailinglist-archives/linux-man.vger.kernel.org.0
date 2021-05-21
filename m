Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 27E2638C56B
	for <lists+linux-man@lfdr.de>; Fri, 21 May 2021 13:07:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234000AbhEULJT (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 21 May 2021 07:09:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52432 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233908AbhEULJR (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 21 May 2021 07:09:17 -0400
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2E023C061574
        for <linux-man@vger.kernel.org>; Fri, 21 May 2021 04:07:53 -0700 (PDT)
Received: by mail-wr1-x42c.google.com with SMTP id i17so20637991wrq.11
        for <linux-man@vger.kernel.org>; Fri, 21 May 2021 04:07:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:cc:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=lW2VSI3nJ4Vddi+1kKuQZ4/qJ4a3Vtk+nDPAraB5sxw=;
        b=bI7Adm555dFoAu3vvdcplE93r70Ps4TyxC+IL4jp+JtEMqvaqcJt/pLs1fKHNNxYnV
         Rp6SNh7ecqAre+8Xe4BAqK2sjh+/B9d6MgmpFBPmDtOHpeM7zLvNlbGVmIWnKQVyOZrL
         fmPVyM9m1QsvMzibHJm/dl2NVFV3iupgtN8GmSoDAFP+Ujd9Awsr4bUaOU8He3qwap5W
         qpBRTEjLWTq72jAPjQUgr97ONW2MjOmhgrCkzbW5IplNYwGBuePBEE2dmhDXsxCyCyrT
         0J52XtzfpzsPBkSG5MuxJHPVL5YtVjZN3bgg7TodtGgt+F8DEu955Xf8WewZKHc9Fs6i
         V1HA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:cc:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=lW2VSI3nJ4Vddi+1kKuQZ4/qJ4a3Vtk+nDPAraB5sxw=;
        b=pJssl0SzSG+BpqDR+ViBAZOWSVfnh/Itnv2+nwRNgN+iAuc41KOikL5p82osrM2vXX
         NdcXayvzvEVhwkKibuAsiJY7M9gzXtdugeqaWqe5YDEDIrlTA/PuUGdrTuqHp8ZWMncV
         bxYPGQmUvMhM0dgjghU5pOLH2f64xlRdjmdkhJXcq4gXIFEO3MSlS6r+cXgLlEWvZhmQ
         WG/29dhBqalu5nw1Myd5kAm8Dkaa0hrRTIaq6i9PF4yCZFqVOZ1UrRohb1A3twCNMYLV
         mmojBBYN0w8YK9klr+iEj4OE3shzMzT3kwAi7258Kq6wr3/LZYVEn6cYtt1winI4+Lrk
         ONpw==
X-Gm-Message-State: AOAM532rR2H7sbmVDezCLOENcoULt7tZjMLhSx0M1pZRfpJzWPEojMur
        67c2FL76NbHLbbUdtCiniz1p+08vfzo=
X-Google-Smtp-Source: ABdhPJxTtMOqA/3LGZOrqqMOgkZS+Ow6XpS3jp5Nm/KavHNmGhdUBrsIyQ3PZx2Xm2i7HANnn6UeEg==
X-Received: by 2002:adf:f341:: with SMTP id e1mr7524821wrp.352.1621595271866;
        Fri, 21 May 2021 04:07:51 -0700 (PDT)
Received: from [192.168.43.70] ([46.222.120.224])
        by smtp.gmail.com with ESMTPSA id g10sm1772723wrq.12.2021.05.21.04.07.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 May 2021 04:07:51 -0700 (PDT)
Subject: Re: ioprio_get(2) outdated
To:     Tycho Kirchner <tychokirchner@mail.de>
References: <f959ce98-f47b-bbb0-8159-b84a84bdf3eb@mail.de>
Cc:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>,
        linux-man <linux-man@vger.kernel.org>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <e1905f65-18c8-57dc-cb2a-c8f0d3b970b3@gmail.com>
Date:   Fri, 21 May 2021 13:07:50 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.0
MIME-Version: 1.0
In-Reply-To: <f959ce98-f47b-bbb0-8159-b84a84bdf3eb@mail.de>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Tycho,

On 5/20/21 12:30 PM, Tycho Kirchner wrote:
> Hi,
> please update ioprio_get(2) to the today more common Multi-Queue Block 
> IO Queueing Mechanism (blk-mq). In particular:
> 
>> These system calls have an effect only when used in conjunction
>> with an I/O scheduler that supports I/O priorities.  As at kernel
>> 2.6.17 the only such scheduler is the Completely Fair Queuing
>> (CFQ) I/O scheduler.
> 
> As far as I know BFQ is the only mq-iosched which supports (read-) 
> priorities. See also [1]. The kernel Documentation/block/ioprio.txt is 
> outdated as well, I guess I'll send an email there too.
> 
> Thanks and kind regards
> Tycho Kirchner

Okay, I don't know much about it, so I'll CC Michael.

Thanks,

Alex

> 
> 
> 
> [1]: https://www.kernel.org/doc/html/latest/block/bfq-iosched.html


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
Senior SW Engineer; http://www.alejandro-colomar.es/
