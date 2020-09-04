Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 29FB325D88E
	for <lists+linux-man@lfdr.de>; Fri,  4 Sep 2020 14:25:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730013AbgIDMZJ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 4 Sep 2020 08:25:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41036 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730006AbgIDMZI (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 4 Sep 2020 08:25:08 -0400
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com [IPv6:2a00:1450:4864:20::444])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6ECCCC061244
        for <linux-man@vger.kernel.org>; Fri,  4 Sep 2020 05:25:07 -0700 (PDT)
Received: by mail-wr1-x444.google.com with SMTP id t10so6598642wrv.1
        for <linux-man@vger.kernel.org>; Fri, 04 Sep 2020 05:25:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=+K9EeokckbXOarNdng/k1WnXHmdSFNDu9yKUdt0//cY=;
        b=tkgy7I6qIKAvQX1N46CmAnjQ22m9f+k8XZKTP4T9NgiW3b/Bd8a6Y4MaMBuP5HNlEA
         9wxY47sB7d+YPY9nHPYxeMkdH5Z/qQ7BsKihV68TfewmeGQfO5yuwz96fSfvVOEL7ALB
         QMWzK6hDC/fs3SYXUKBD86uMN8Y+XxMOc9wduP6XBqPvoHtKX/Q0Sxa+BKb2300IMVoU
         MHg5wtZ5P1u7CuR3a9gOm/kTn8N/a1lg7s9yRHtlt/fk9ML5Mjrsos4p/2von9fBEw08
         My0cHwLdwmhkslVwhc3UmY7eEZ6LrFGoye/zBbier0ZI2ulXOtLAR+s2RIS54jhCirsJ
         HluA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=+K9EeokckbXOarNdng/k1WnXHmdSFNDu9yKUdt0//cY=;
        b=NrsWMGlXV5Q2paJxyVEju5DrlrSBhBy1LNoi1Bhdxy1qej+G+v1Wm/QqWRozkP7QdH
         0vXreMqUNOpsePX29IVjWiuk5e1ZhUY2oCKkvAPMXTIt2lHuMMUH6fJciiKC1i6A73nH
         JZWJep47PbB7pzL3QXVl7qv6c1IINzJNWIAqGI9+gdZstWA+E/gCI1JjyqlcW/Bj6sTR
         8m81Zka5+bx36VYezGccktS0R9NoAh71j5gp7mDjE3LYl1DZJ9/A1Ya/FS3RS3r1Eztq
         slK2p9ywPXAlnl1ksOZ6A1jyJSbfU3SLj4rgsRkWfRRnec2gDSTuXI9JOw4EkN7LZQdB
         tudg==
X-Gm-Message-State: AOAM530NjLGVxaw9xD84k8xb6Rf2zqYPYTwxCWzeA43g6zow8yjEQ3Gb
        YERJcIIORy/2zqUDpekXNxk=
X-Google-Smtp-Source: ABdhPJxgPrnpAhg1crXDYkGJ6jA3uFQMuG1nyUTxmX0pGIgP/eA0NCywV3zFLKNUSCFLsDt0bLGxTA==
X-Received: by 2002:a5d:5702:: with SMTP id a2mr7265628wrv.284.1599222306112;
        Fri, 04 Sep 2020 05:25:06 -0700 (PDT)
Received: from ?IPv6:2001:a61:3ab0:7001:e081:d401:3da8:e4bc? ([2001:a61:3ab0:7001:e081:d401:3da8:e4bc])
        by smtp.gmail.com with ESMTPSA id y2sm8676117wmg.23.2020.09.04.05.25.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 04 Sep 2020 05:25:05 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        Jakub Wilk <jwilk@jwilk.net>
Subject: Re: [PATCH (2) 07/34] perf_event_open.2: Use sizeof consistently
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <cc176298-50e2-7831-f2f7-21be8cae9075@gmail.com>
 <e1b424c2-77c1-e995-a866-67a122d7bb07@gmail.com>
 <20200825111924.gwf3ck4bdq42lrzr@jwilk.net>
 <d084b7eb-a691-52e8-4996-5080af0175de@gmail.com>
 <CAKgNAki_wyf7dCShjpAaRLUeuL=+EFZYeVp0fY-EKHyOBW2hRw@mail.gmail.com>
 <d72263bb-7c84-3f33-ee44-a2cac2e2662c@gmail.com>
 <806999b7-8947-d350-2125-f04b69846f37@gmail.com>
 <d3537144-e4da-8359-bc08-4eaf8c7bd059@gmail.com>
 <9fcc512e-a12c-5b28-126f-aaf1854ed290@gmail.com>
 <2b288808-c840-343f-9e56-8097765e5528@gmail.com>
 <876dcc97-8151-7160-5eda-19307f0483c1@gmail.com>
 <462b75ca-bef8-063d-b6ec-d1c845fb1580@gmail.com>
 <d38d3644-698c-41e4-4d6a-5d999c0a3fdd@gmail.com>
 <26629635-bf4c-1279-314d-db92f11adbb7@gmail.com>
 <d38b1e35-2471-09a1-ad49-4509a30fd14a@gmail.com>
 <edf9e2a1-0612-437d-9fbf-e255e0d1df97@gmail.com>
 <c2636c53-e81c-881a-2938-08871e1b176c@gmail.com>
 <257c9374-3253-9091-c116-045ee16590c0@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <4d3a5f36-f3f4-2de7-192d-e3f8553060ac@gmail.com>
Date:   Fri, 4 Sep 2020 14:25:04 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <257c9374-3253-9091-c116-045ee16590c0@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello ALex,

On 9/4/20 12:57 PM, Alejandro Colomar wrote:
>>From ec1f70a162b0f4ea7a191baf8c098d7872dedce6 Mon Sep 17 00:00:00 2001
> From: Alejandro Colomar <colomar.6.4.3@gmail.com>
> Date: Thu, 3 Sep 2020 21:29:33 +0200
> Subject: [PATCH 07/34] perf_event_open.2: Use sizeof consistently
> 
> Use ``sizeof`` consistently through all the examples in the following
> way:
> 
> - Use the name of the variable instead of its type as argument for
>   ``sizeof``.
> 
> 	Rationale:
> 	https://www.kernel.org/doc/html/v5.8/process/coding-style.html#allocating-memory

Thanks. Patch applied.

Cheers,

Michael

> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
> ---
>  man2/perf_event_open.2 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/man2/perf_event_open.2 b/man2/perf_event_open.2
> index ea5ee725f..aea825706 100644
> --- a/man2/perf_event_open.2
> +++ b/man2/perf_event_open.2
> @@ -3439,7 +3439,7 @@ main(int argc, char **argv)
>      printf("Measuring instruction count for this printf\en");
> 
>      ioctl(fd, PERF_EVENT_IOC_DISABLE, 0);
> -    read(fd, &count, sizeof(long long));
> +    read(fd, &count, sizeof(count));
> 
>      printf("Used %lld instructions\en", count);
> 
Hello 

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
