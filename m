Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 84B8225DCE0
	for <lists+linux-man@lfdr.de>; Fri,  4 Sep 2020 17:11:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730224AbgIDPLN (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 4 Sep 2020 11:11:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38404 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729942AbgIDPLK (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 4 Sep 2020 11:11:10 -0400
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com [IPv6:2a00:1450:4864:20::444])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 52B06C061244
        for <linux-man@vger.kernel.org>; Fri,  4 Sep 2020 08:11:08 -0700 (PDT)
Received: by mail-wr1-x444.google.com with SMTP id z1so7134470wrt.3
        for <linux-man@vger.kernel.org>; Fri, 04 Sep 2020 08:11:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=yexjMNSeIo68dRjfrbD4JuYzvrjx7LEjJdshk9wxJ5Q=;
        b=oNFY6gtFbdH6hD866V9rS3nIXEL1+/JXrXJ2h4GEEVA4bcS/e6AJU33ol23gRCEvzg
         hXQTj3NO2rLFQXGan6lA9zvmilr7NIsbAWnFUn1kd63blzFJHhxN5PWM/9M6boaWRBxn
         KgZEMT8hXnjbmoIRGYoysYbTeHoSPcOwnI9DkUp/RvmmOGsBMQMlseqrD8rBs/g8xsGx
         KvEyGKJlZbw9ubDAkET4mfpkgDz+gMY1jJ8Cnh/E825spfduuYe+95nvarfrYERHTdbu
         MSkWLuIUCYQPEk/+9chRFChswHhuC+TNkA3YqrkZuWkc1gjYO4lxvDTZrYqCkU12mFPQ
         4CfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=yexjMNSeIo68dRjfrbD4JuYzvrjx7LEjJdshk9wxJ5Q=;
        b=eRXj6KjCVRHlvEPuSW2zF2OeKlWF5l/V1yuvCGpgCGcXVpT4TGX34Da64Kn9bRXTOY
         njvu5q8NLTxABrnim8XqPryNIUuU2fh1aJkuZCxijDaiDOXZ2UfUwyrX9PDVHx6dyx46
         VZiLrQCp6kGJNjgxYsH4Z+18/1RZpjFMaVtBHorQHe6XSdF/xFpQLUzxXcnlQYizQaGo
         gcVO7SpJrIEjv6ABXEtj/8ExvWFHyskBBae+AwJX/fE/uOLIX4vx4dONAjuHrtbSmi5I
         2fA7TNDRI6+mq6/inpL4CxK5/xfrCxweueDdQb76nkchoN/hZpTFeopYI9Ba/1Hl+vlQ
         9J5Q==
X-Gm-Message-State: AOAM532Q4OQnnekUi/ldQp4KwU2GFbK3D5umV1oTbQswnVBFfleJ0Vcz
        Kje67a0KIPZ4YdtFydc+IRU=
X-Google-Smtp-Source: ABdhPJw56AlwcmNJ11wRdXBXDytp04oKP7yO45tDxO9SK/3pKI7IMS1gnggPXgL8zrWi9FXQDDysVg==
X-Received: by 2002:a5d:4a4b:: with SMTP id v11mr7898473wrs.36.1599232266974;
        Fri, 04 Sep 2020 08:11:06 -0700 (PDT)
Received: from ?IPv6:2001:a61:3ab0:7001:e081:d401:3da8:e4bc? ([2001:a61:3ab0:7001:e081:d401:3da8:e4bc])
        by smtp.gmail.com with ESMTPSA id q12sm11676968wrs.48.2020.09.04.08.11.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 04 Sep 2020 08:11:06 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        Jakub Wilk <jwilk@jwilk.net>
Subject: Re: [PATCH (2) 08/34] poll.2: Use sizeof consistently
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
 <40ba6e68-c2f6-649c-2225-6037e3c0c077@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <bf812804-23c8-368e-8c7a-839c59103ec2@gmail.com>
Date:   Fri, 4 Sep 2020 17:11:03 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <40ba6e68-c2f6-649c-2225-6037e3c0c077@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 9/4/20 3:42 PM, Alejandro Colomar wrote:
>>From 791b2082c91de4fb49a1a46e9c11d294aac09050 Mon Sep 17 00:00:00 2001
> From: Alejandro Colomar <colomar.6.4.3@gmail.com>
> Date: Thu, 3 Sep 2020 21:34:52 +0200
> Subject: [PATCH 08/34] poll.2: Use sizeof consistently
> 
> Use ``sizeof`` consistently through all the examples in the following
> way:
> 
> - Use the name of the variable instead of its type as argument for
>   ``sizeof``.
> 
> 	Rationale:
> 	https://www.kernel.org/doc/html/v5.8/process/coding-style.html#allocating-memory

This is another of those cases where I am inclined not to
apply the patch. It feels to me like this reduces readability
somewhat, since the very point is to allocate an array of
pollfd structs. So, I think I won't apply this one.

Thanks,

Michael

> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
> ---
>  man2/poll.2 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/man2/poll.2 b/man2/poll.2
> index 940c51da5..9b42822c0 100644
> --- a/man2/poll.2
> +++ b/man2/poll.2
> @@ -596,7 +596,7 @@ main(int argc, char *argv[])
>      }
> 
>      num_open_fds = nfds = argc \- 1;
> -    pfds = calloc(nfds, sizeof(struct pollfd));
> +    pfds = calloc(nfds, sizeof(*pfds));
>      if (pfds == NULL)
>          errExit("malloc");
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
