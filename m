Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 640432689A4
	for <lists+linux-man@lfdr.de>; Mon, 14 Sep 2020 12:55:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726468AbgINKzf (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 14 Sep 2020 06:55:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:32786 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726458AbgINKzV (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 14 Sep 2020 06:55:21 -0400
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com [IPv6:2a00:1450:4864:20::442])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E8CB4C06174A
        for <linux-man@vger.kernel.org>; Mon, 14 Sep 2020 03:55:19 -0700 (PDT)
Received: by mail-wr1-x442.google.com with SMTP id g4so18205155wrs.5
        for <linux-man@vger.kernel.org>; Mon, 14 Sep 2020 03:55:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=j2155HAufL3iHxjsNvDsxE1LD1omqPO5jDvU9xJUCAc=;
        b=MkAePpT92CeYippyL1R4L8Wtzs7mjt8rFFJbTAW7+M2nSEFY/phWdMUuZR/ms06or+
         KuQNDhFOugDAx8MCwsM9dCbvaBuGiOOaMzrUX4FM5DHUp3H7c+awgoCZOjT9Chr7KEOS
         C8KRqO9aC8rcae1pdzjPUaQ3hDFbQynx6Fqek5ASMOFf93MYi32ctCi70RvLvcDFGhj9
         YsZ/7sVe71mK3NinGvp0yAsf8zqSK76gqSO9tm8LqLMQwoKHD3sCqcjrv9nKss0W8jz5
         YhCVk9YiWTzK58bw3+E90EtRYa+jsMvFDPfPOBvX/MQ+R4vya8YO3ftg8+j+XZz+vWsf
         5uRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=j2155HAufL3iHxjsNvDsxE1LD1omqPO5jDvU9xJUCAc=;
        b=bT/4Eor+3GW4LcS3704DMy9FHlFLq5VEpsnAkajKMVyhQsM7TNB1H0VKPDHZo66QMY
         pQHjLCINu+I+wEyjsUXNEWBPHFK41BdJClBB0DuXb8C+Jyjzfckw7TId3q99rzCPzZ5w
         hOsksLBvB7GfzSDoGKqF6Jxt7bTPHUAZitdUb+Bm04TCUCoL2MZ16RYGf0ujgq1k9vX8
         WyIardLJufO5Rqk4zPlmNdP0gbRVdfHg1SRqx8OcWFx/NQS00WYgsBfxxD87rKX0wOo0
         x6nThOJweGpstP41NxCK02yiYRxcEqSuJOsMEwYSiQnp5Jx1zHDCpZ2VI6JI7kf4mlcm
         t5vw==
X-Gm-Message-State: AOAM5302ZlFqlG+0gekOh5wtLGkQi3MGS5bUmXIOI/WGer7t50g/j2XC
        1sk6zQPi38BwLIKk8g0IqLs=
X-Google-Smtp-Source: ABdhPJx2Hh1CdDAFsl9e1DXXt6QAqbtX3tVTP2zmA35tNrS7JLsUYD4HdJYsZi9KTPJbn/7KBmXl2w==
X-Received: by 2002:adf:f2d0:: with SMTP id d16mr14691607wrp.332.1600080918509;
        Mon, 14 Sep 2020 03:55:18 -0700 (PDT)
Received: from ?IPv6:2001:a61:2479:6801:d8fe:4132:9f23:7e8f? ([2001:a61:2479:6801:d8fe:4132:9f23:7e8f])
        by smtp.gmail.com with ESMTPSA id z15sm19805263wrv.94.2020.09.14.03.55.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Sep 2020 03:55:17 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man <linux-man@vger.kernel.org>,
        Florian Weimer <fweimer@redhat.com>,
        libbsd@lists.freedesktop.org
Subject: Re: [RFC v1] system_data_types.7: Draft (and links to it: <type>.3)
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <fb6463f6-49d7-e473-d5e1-1cdf8375e498@gmail.com>
 <6c5b89f8-4281-4434-cbee-28f88d07920c@gmail.com>
 <4ea99048-4bfd-9cba-44cd-9c37fdad8fce@gmail.com>
 <CAKgNAkjys+LYn1qaSXhM2gJfkv_UOnpeNPyh3QCqNLcMNBKB+g@mail.gmail.com>
 <d093c1a5-b31a-1200-3cd6-6b5d2cf28ad3@gmail.com>
 <3a56a8af-6371-89f3-cac2-31dd64791c99@gmail.com>
 <65e2bdf5-425b-9381-b1ac-3f101113c70f@gmail.com>
 <af73c477-c8a6-c03f-c6db-ab613b8d6d2f@gmail.com>
 <23bfb4c9-9cab-8d1f-46a2-00932501b5b8@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <a160fb7e-2f72-9532-ada5-9978a994d3bd@gmail.com>
Date:   Mon, 14 Sep 2020 12:55:17 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <23bfb4c9-9cab-8d1f-46a2-00932501b5b8@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 9/14/20 12:37 PM, Michael Kerrisk (man-pages) wrote:
> Hello Alex,
> 
> On 9/14/20 2:20 AM, Alejandro Colomar wrote:
> I'm going to hold my finger in the wind, and say: lets restrict the
> list to what seem like the most relevant APIs, where obviously that is
> a somewhat subjective choice. You could include all the other APIs in
> .\" comments, so we can see what's excluded, and this may trigger some
> tweaking. So, for 'struct timespec' the list might be as simple as:
> 
> clock_gettime(2), clock_nanosleep(2), nanosleep(2)
> timerfd_gettime(2), timer_gettime(2)

Just to add to this. Even if limiting to "relevant" APIs,
I think some of the lists might still be quite long (which 
is okay). For example, I do expect the 'time_t' list will
remain long.

Some of your items in the 'timer_t' list definitely don't
belong (timer_getoverrun, timer_delete).

The 'sigval' list looks about right.

I think the 'timeval' list could be trimmed back a bit.

Thanks,

Michael

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
