Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2954237A3FA
	for <lists+linux-man@lfdr.de>; Tue, 11 May 2021 11:47:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231311AbhEKJsZ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 11 May 2021 05:48:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41384 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230434AbhEKJsY (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 11 May 2021 05:48:24 -0400
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com [IPv6:2a00:1450:4864:20::332])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 797DBC061574
        for <linux-man@vger.kernel.org>; Tue, 11 May 2021 02:47:18 -0700 (PDT)
Received: by mail-wm1-x332.google.com with SMTP id s5-20020a7bc0c50000b0290147d0c21c51so875936wmh.4
        for <linux-man@vger.kernel.org>; Tue, 11 May 2021 02:47:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=8fcyx6Fi84pITANhrn0yFvUHbvucQ9VFsfCVg7to1oU=;
        b=BhgoyEFu2f8eE5PmKj60VbqxinCltQpUIUApUEe9+Ur9eUVESbxTux36qUYI0cCCDo
         B2wTMLktz7I/vWjcDDHhpiZ1KNR/jdgsM25UZAa8SgIRKpcDMkkhkmnDwJ8km1lj/fFQ
         gKRGPHExwsPVyz4KNpR56A7xejbuMMEIZx/AbX8vz0HlMXPUQdDFSNIx7hjiLQYOPpRO
         lHpAxKOt+hSt9ktJzXRrvF0giH215LapgaVCqqUymfEsOfVsw5OJx2PEV7fm32oKxxnr
         gPjHPDA/9NWzK57oP75o0naRrmq5xGXhtFaO4vM3DdkNa/YSfJYmaTC/99pgMH10s4Of
         qF0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=8fcyx6Fi84pITANhrn0yFvUHbvucQ9VFsfCVg7to1oU=;
        b=rFhJTXiUYZrFSo3Vnvcszgegv8/CDf1iRn+LGX1JOak4IcKXk3oD/4LHhzttsNyaRf
         5ZT/e0Jx+b3XuMzBGRWncAv7JfhqiBfzDtJuiK1U875T0VtEP/C01dquWmeIvQxmtA4O
         Sm3bIzLTlXl+N4OqFhRpQA1Cs3KN1chJflQfaWKA1WolCUvlxds+tIG96Yq9hENojYIv
         ciClhAXaHlAjnML3i8nrRc30RTspz6wJK+nV+ZeWLp0sfFaB/qGVEWJ26VpuUJXd0hQ4
         F/zw+e2V4jTIvJIB/4MVojvGUDSQqoXjQPVf48gtmmn5igOPi4jUxrpz2pzb0Fk1a8hQ
         SGvg==
X-Gm-Message-State: AOAM532KYdYpWBj0NmyaONX4x7YFp41oPg2m/ZxKyiI4v0lV4pTJ/TKj
        6j5VmA5Q5G3D3OOePNbkIfA=
X-Google-Smtp-Source: ABdhPJzNMBDAV47Mjj8aGDH5SaPUpNBG5rCXyMxQhAsE5TVcowFWMbESVUC9seWAZS5bDWvPVIyQrw==
X-Received: by 2002:a05:600c:21d3:: with SMTP id x19mr30785446wmj.13.1620726437224;
        Tue, 11 May 2021 02:47:17 -0700 (PDT)
Received: from [192.168.43.70] ([46.222.232.120])
        by smtp.gmail.com with ESMTPSA id f18sm2831432wmg.26.2021.05.11.02.47.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 11 May 2021 02:47:16 -0700 (PDT)
Subject: Re: [PATCH 3/5] capabilities.7: ffix
To:     Akihiro Motoki <amotoki@gmail.com>, linux-man@vger.kernel.org
Cc:     mtk.manpages@gmail.com
References: <20210511093025.98321-1-amotoki@gmail.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <f85b93c1-8faf-e0bd-06c8-085ce0aaf25b@gmail.com>
Date:   Tue, 11 May 2021 11:47:15 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.0
MIME-Version: 1.0
In-Reply-To: <20210511093025.98321-1-amotoki@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Akihiro,

On 5/11/21 11:30 AM, Akihiro Motoki wrote:
> Signed-off-by: Akihiro Motoki <amotoki@gmail.com>


Patch applied.

Thanks,

Alex

> ---
>   man7/capabilities.7 | 4 ++--
>   1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/man7/capabilities.7 b/man7/capabilities.7
> index 17bb997b9..7e79b2fb6 100644
> --- a/man7/capabilities.7
> +++ b/man7/capabilities.7
> @@ -761,8 +761,8 @@ to increase the capacity of a pipe above the limit specified by
>   .IR /proc/sys/fs/pipe\-max\-size ;
>   .IP *
>   override
> -.I /proc/sys/fs/mqueue/queues_max,
> -.I /proc/sys/fs/mqueue/msg_max,
> +.IR /proc/sys/fs/mqueue/queues_max ,
> +.IR /proc/sys/fs/mqueue/msg_max ,
>   and
>   .I /proc/sys/fs/mqueue/msgsize_max
>   limits when creating POSIX message queues (see
> 


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
Senior SW Engineer; http://www.alejandro-colomar.es/
