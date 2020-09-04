Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CC13B25DD09
	for <lists+linux-man@lfdr.de>; Fri,  4 Sep 2020 17:18:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730286AbgIDPSp (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 4 Sep 2020 11:18:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39580 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730160AbgIDPSo (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 4 Sep 2020 11:18:44 -0400
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com [IPv6:2a00:1450:4864:20::443])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5E431C061244
        for <linux-man@vger.kernel.org>; Fri,  4 Sep 2020 08:18:44 -0700 (PDT)
Received: by mail-wr1-x443.google.com with SMTP id g4so7129060wrs.5
        for <linux-man@vger.kernel.org>; Fri, 04 Sep 2020 08:18:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=ZwUNq5j/+za5/cN1C86Rx3fD2yIImeyQeNCg9ljwQfc=;
        b=get8afEB3IitQYU7XQZdWhcG992tlEaTZLj525pul0oLA4aTGupuJgWowBiVyCgr1U
         FAppIlduACZlrnzFeM/BCYaBImar9jT9j79fvoZ0SPIfFwLbAjt8nGeHrXso/wpug1AJ
         yBNmB14S/q2Fd6ha8iq9YygXopkY30wb05Q22JVYTVvPyu7bla7wPiUP6tLhJWH27Bh6
         Y95qV3iKScMNQB7EttXyT/E8qL7GvJxJ8nZVZgVfMWUAtd0+90xU8uoawb+OXZ9TY4Hk
         B8V0pnQk4+BzolwKoftyKoevE3DiPCSBMH08YtZU5RgWgiDt6OBS8j5JdEfMUmGPGQ+X
         ZG/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=ZwUNq5j/+za5/cN1C86Rx3fD2yIImeyQeNCg9ljwQfc=;
        b=jr8/E0ZU90U1wGsK/iafrkdweXRtvMrFopVr5kMbFMC0HlpcMBJIDvV0WbksSZUaMd
         C5zl3ZWuAKoQeto+V8T8aec+gFWFdxaQSefwt1/txKksZ5tKYUkvFcqnZcd/0C75CMqq
         ubRHH+4Tc31FMY5AiuAdvXA/jkppT27TChY/nWdNM+nmtB5YjwmdCEKXRHOhwJMPpyrv
         xj6mKkQOHW7Lg5fUq4sAaxgNgk8T4VUPEm2I3tu8SWRK3dIPwG5enPXxT8LHRUTk2Nva
         3PNXZoyN9+OAQhCWcwgvztM80vFJ9g8lkvL6bbjxl2unKsYhiJ9ThmyoFU95Dk+HGq5u
         qGig==
X-Gm-Message-State: AOAM530Rm+FeZi16Q2AJhSnS7SoaMLR3o2l/DUOt9gPLh1bFUXPqWN7b
        PNgg6CLDIdkVLTrRuDdzcbm1RtSAFf8=
X-Google-Smtp-Source: ABdhPJws/HR9GLkld06XjC3hAZHwjZLBq2pNa7GDL3x8Cnm7YBIc26Htb6h6TR6FnhfR3zSyQY8F+w==
X-Received: by 2002:adf:8405:: with SMTP id 5mr8102505wrf.393.1599232723098;
        Fri, 04 Sep 2020 08:18:43 -0700 (PDT)
Received: from ?IPv6:2001:a61:3ab0:7001:e081:d401:3da8:e4bc? ([2001:a61:3ab0:7001:e081:d401:3da8:e4bc])
        by smtp.gmail.com with ESMTPSA id o16sm11218166wrp.52.2020.09.04.08.18.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 04 Sep 2020 08:18:42 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        Jakub Wilk <jwilk@jwilk.net>
Subject: Re: [PATCH (2) 13/34] cmsg.3: Use sizeof consistently
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <cc176298-50e2-7831-f2f7-21be8cae9075@gmail.com>
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
 <afec3122-19aa-02f4-0850-7000552ceb95@gmail.com>
 <da654939-dcc2-e1f8-65d9-a873325d4609@gmail.com>
 <aec8bb20-6693-f876-0e2e-5574bd3b7af6@gmail.com>
 <8458b842-7d4b-f19b-c596-7f529dd48ba6@gmail.com>
 <497bc4f4-31f5-91a5-8bc4-469e22b26502@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <b16d7678-4c9d-317b-ac7a-b7866cbb0413@gmail.com>
Date:   Fri, 4 Sep 2020 17:18:41 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <497bc4f4-31f5-91a5-8bc4-469e22b26502@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,On 9/4/20 3:50 PM, Alejandro Colomar wrote:
>>From ba70b1e8addad4ef9f2a490d2069b112d09ba9f1 Mon Sep 17 00:00:00 2001
> From: Alejandro Colomar <colomar.6.4.3@gmail.com>
> Date: Thu, 3 Sep 2020 21:44:41 +0200
> Subject: [PATCH 13/34] cmsg.3: Use sizeof consistently
> 
> Use ``sizeof`` consistently through all the examples in the following
> way:
> 
> - Use the name of the variable instead of its type as argument for
>   ``sizeof``.
> 
> 	Rationale:
> 	https://www.kernel.org/doc/html/v5.8/process/coding-style.html#allocating-memory


Patch applied. Thanks.

Cheers,

Michael

> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
> ---
>  man3/cmsg.3 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/man3/cmsg.3 b/man3/cmsg.3
> index 99ee950f9..3d6288901 100644
> --- a/man3/cmsg.3
> +++ b/man3/cmsg.3
> @@ -203,7 +203,7 @@ for (cmsg = CMSG_FIRSTHDR(&msgh); cmsg != NULL;
>          cmsg = CMSG_NXTHDR(&msgh, cmsg)) {
>      if (cmsg\->cmsg_level == IPPROTO_IP
>              && cmsg\->cmsg_type == IP_TTL) {
> -        memcpy(&receive_ttl, CMSG_DATA(cmsg), sizeof(int));
> +        memcpy(&receive_ttl, CMSG_DATA(cmsg), sizeof(received_ttl));
>          break;
>      }
>  }
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
