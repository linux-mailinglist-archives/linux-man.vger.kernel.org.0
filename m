Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 250F025DD6A
	for <lists+linux-man@lfdr.de>; Fri,  4 Sep 2020 17:25:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731037AbgIDPZM (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 4 Sep 2020 11:25:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40588 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730224AbgIDPZG (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 4 Sep 2020 11:25:06 -0400
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com [IPv6:2a00:1450:4864:20::344])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BDBBEC061244
        for <linux-man@vger.kernel.org>; Fri,  4 Sep 2020 08:25:04 -0700 (PDT)
Received: by mail-wm1-x344.google.com with SMTP id l9so6452627wme.3
        for <linux-man@vger.kernel.org>; Fri, 04 Sep 2020 08:25:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=mfJbpSrnbAMV85XHtkcK6e8/rkR94+mztubQjSSsUhY=;
        b=Qzup2ukLTKRcIgWeMVWtwfFB5RvqZqgyUFaepbmZ4kPcrkcibW74e/YJw9VwGGerKK
         MIkhLIC0AgEBqoV9bK5I/2x/zNqgLkwyobVfWbbgqA/1xYBIDwg+zT16ubdlKxIibYO8
         Gvc4/enbt0YFr7kulnb/aBs/XbGhXLXLXE+KGikQ8r+YNIwMN54rDHldRDS4It1KcWfz
         U5rag9UtCJV1aR1gebpzpApVaL6zBuMzIy8pkyeD1YDQEiiBWYxeEuWPRJX/HUNmBjkx
         xvKl7AHK3Vg5tickWa4LLtkTAtCnmm3ImxDVmuTTMcIyFoNJxXwVUDCN/qOK8dclrO6d
         zloA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=mfJbpSrnbAMV85XHtkcK6e8/rkR94+mztubQjSSsUhY=;
        b=OwQz1vRyF0SvzTJ1eQRDR/4614VMn0dTrgoHT+mYAS416EOx1e7w9ioFAG6jQiol7u
         VKsGmtewlTCVCVFrAnF7+9I7jldybtvc4Bd/dfjqKD37TB37yU7qrg08bUnrQT3GmOTL
         XVZ379Z9gv/RXFxGASD4fPJbdnPzFRn3b4sA++1bEFDyCJc8a1fg2CmBHXWHzckzBiDv
         npk1oQyYr9ZHek/2KJpu9pGOmk6CfAxQUwrCE6mhdFTwyFDbatmbEfYscFxPi7UDhsag
         +gZeOkFFUt41egFO/zYxAmmdso1GRPNfO1O3QIimOZy/RyzwRWYdAtgtv+fhU7m8FbN5
         +glQ==
X-Gm-Message-State: AOAM531hVmi5ZEuyli58BdVRsVlQEPcO3ijZIexnY/krCbBIJo95KMjd
        F5hNcP5cWJjL769d3NbsKT4=
X-Google-Smtp-Source: ABdhPJxwg1yvJ2t4wBlO4ewtO7LV18lohcT6iIgLDw3PQjHjvFV7X0NGbZqX0DanW5gFTfZedLyi5A==
X-Received: by 2002:a1c:a5ca:: with SMTP id o193mr8086049wme.106.1599233103470;
        Fri, 04 Sep 2020 08:25:03 -0700 (PDT)
Received: from ?IPv6:2001:a61:3ab0:7001:e081:d401:3da8:e4bc? ([2001:a61:3ab0:7001:e081:d401:3da8:e4bc])
        by smtp.gmail.com with ESMTPSA id q12sm11735967wrs.48.2020.09.04.08.25.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 04 Sep 2020 08:25:02 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        Jakub Wilk <jwilk@jwilk.net>
Subject: Re: [PATCH (2) 17/34] getgrouplist.3: Use sizeof consistently
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <cc176298-50e2-7831-f2f7-21be8cae9075@gmail.com>
 <2b288808-c840-343f-9e56-8097765e5528@gmail.com>
 <876dcc97-8151-7160-5eda-19307f0483c1@gmail.com>
 <462b75ca-bef8-063d-b6ec-d1c845fb1580@gmail.com>
 <d38d3644-698c-41e4-4d6a-5d999c0a3fdd@gmail.com>
 <26629635-bf4c-1279-314d-db92f11adbb7@gmail.com>
 <d38b1e35-2471-09a1-ad49-4509a30fd14a@gmail.com>
 <edf9e2a1-0612-437d-9fbf-e255e0d1df97@gmail.com>
 <c2636c53-e81c-881a-2938-08871e1b176c@gmail.com>
 <257c9374-3253-9091-c116-045ee16590c0@gmail.com>
 <40ba6e68-c2f6-649c-2225-6037e3c0c077@gmail.com>
 <afec3122-19aa-02f4-0850-7000552ceb95@gmail.com>
 <da654939-dcc2-e1f8-65d9-a873325d4609@gmail.com>
 <aec8bb20-6693-f876-0e2e-5574bd3b7af6@gmail.com>
 <8458b842-7d4b-f19b-c596-7f529dd48ba6@gmail.com>
 <497bc4f4-31f5-91a5-8bc4-469e22b26502@gmail.com>
 <8160510c-4d9e-7f30-e810-648b0b58a986@gmail.com>
 <d7db8e23-8e86-10ee-f221-30d7e3bd657e@gmail.com>
 <87d5b09a-a3c8-622c-d731-5d42644a5f24@gmail.com>
 <61d2f2f9-08d0-9f1a-9642-ae56b3f4b61d@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <27e64270-35a0-5da8-c4c0-3f268b031705@gmail.com>
Date:   Fri, 4 Sep 2020 17:25:02 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <61d2f2f9-08d0-9f1a-9642-ae56b3f4b61d@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Alex,

On 9/4/20 4:34 PM, Alejandro Colomar wrote:
>>From 7ca60fc88b831818c1f1722919af220a646761ab Mon Sep 17 00:00:00 2001
> From: Alejandro Colomar <colomar.6.4.3@gmail.com>
> Date: Thu, 3 Sep 2020 21:47:15 +0200
> Subject: [PATCH 17/34] getgrouplist.3: Use sizeof consistently
> 
> Use ``sizeof`` consistently through all the examples in the following
> way:
> 
> - Use the name of the variable instead of its type as argument for
>   ``sizeof``.
> 
> 	Rationale:
> 	https://www.kernel.org/doc/html/v5.8/process/coding-style.html#allocating-memory
> 
> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>

Thanks. Applied.

Cheers,

Michael

> ---
>  man3/getgrouplist.3 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/man3/getgrouplist.3 b/man3/getgrouplist.3
> index 372f2613f..ff8d89e3f 100644
> --- a/man3/getgrouplist.3
> +++ b/man3/getgrouplist.3
> @@ -164,7 +164,7 @@ main(int argc, char *argv[])
> 
>      ngroups = atoi(argv[2]);
> 
> -    groups = malloc(sizeof(gid_t) * ngroups);
> +    groups = malloc(sizeof(*groups) * ngroups);
>      if (groups == NULL) {
>          perror("malloc");
>          exit(EXIT_FAILURE);
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
