Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6EC7F25DDAC
	for <lists+linux-man@lfdr.de>; Fri,  4 Sep 2020 17:27:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730879AbgIDP15 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 4 Sep 2020 11:27:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41032 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730224AbgIDP14 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 4 Sep 2020 11:27:56 -0400
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com [IPv6:2a00:1450:4864:20::443])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B9062C061244
        for <linux-man@vger.kernel.org>; Fri,  4 Sep 2020 08:27:55 -0700 (PDT)
Received: by mail-wr1-x443.google.com with SMTP id a17so7132943wrn.6
        for <linux-man@vger.kernel.org>; Fri, 04 Sep 2020 08:27:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=J54yf/+y6j9B4lqfF8MXGc99/gXu3ZgRSBAxExZh6jM=;
        b=Xb5Q8BrZovY7UOT2ygwdzPop/+q1i8UwiGV2oJyjmxraxd9UmjMAb3gigWWcQCf/HH
         wm/K7MRS2OZ6GrBphLHenp1StPKHMZN0of0bYp6ZW92Ru9D5r2cc81/pJ1+Uz70f1I5v
         1kSf4zMpT/PE1pmChPTsgyOxgSdS7sX8oaJdi7IKSJIJivNEJcWpX/8UoNBRRNXg/2O/
         vkmQVavijZPWZjCcJ9xlTyGSg2Rz/KOovzbgZB/8QmUIhfbvCz1NMKnEM3sc1SLUp2QD
         +NHAvvLXV4fyWo8oPfnB+hgMv+/YK+qQTXqF06ls8Pajkow69VJH/DWYsugWNYgniEke
         kxJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=J54yf/+y6j9B4lqfF8MXGc99/gXu3ZgRSBAxExZh6jM=;
        b=qc1lFMvSYqwVu3BiCyTuSqZZRh9LCfmIns4yd1lxccnNZOMWQhlAJQrr0axbrMFqsJ
         Fg7q5haQB6uRtH5UyfCYa0KjR1Npi5n8XKtVqMsixR8QSu/+dO/8p10a5SQbxuuJJmfE
         mrGtIpBfNJEIkgH6iP77e6wCL5ivt4AYPzeDicixqAcVGE7iH5qxkKEd9Ntp0lV5B0+u
         HftD8qUj4TY3qCgPMVRoq5J7YK5oJaMSo9ZgCMWsNfPScqhkWfsgyvuJGck7om3f9b2h
         ILjUrhUxeFUK+oxICd8FUtLUd+cX8Klk9MHXW2W0tm6pHmMksNV+RYNThOkVhCxOSnwA
         OlnQ==
X-Gm-Message-State: AOAM5309Mr8Lus0Ps/8kIubotZIYe5xLXh13iBzR43sbHYhxkMmbqoyY
        EwGFVnUzlAUfdwRAY5B4too=
X-Google-Smtp-Source: ABdhPJz+vURV0StFNyGQNWTu2+LzPY8L0L0Don8L3RBD+x7T2KsDJU350RpgiyYsG70Qg29wu4Lf4Q==
X-Received: by 2002:adf:db88:: with SMTP id u8mr8115534wri.184.1599233274436;
        Fri, 04 Sep 2020 08:27:54 -0700 (PDT)
Received: from ?IPv6:2001:a61:3ab0:7001:e081:d401:3da8:e4bc? ([2001:a61:3ab0:7001:e081:d401:3da8:e4bc])
        by smtp.gmail.com with ESMTPSA id y1sm11565920wma.36.2020.09.04.08.27.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 04 Sep 2020 08:27:53 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        Jakub Wilk <jwilk@jwilk.net>
Subject: Re: [PATCH (2) 20/34] mbsinit.3: Use sizeof consistently
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <cc176298-50e2-7831-f2f7-21be8cae9075@gmail.com>
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
 <4bb9e639-83ee-ede0-f6ad-dfc16787d358@gmail.com>
 <3c25bbda-bc90-1364-77cd-2c637f09d611@gmail.com>
 <af5bf8ce-8bb8-3819-a8e4-1454be92097f@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <f1d3096a-86d2-631d-fd24-f2f7274a2ab5@gmail.com>
Date:   Fri, 4 Sep 2020 17:27:53 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <af5bf8ce-8bb8-3819-a8e4-1454be92097f@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Alex,

On 9/4/20 4:44 PM, Alejandro Colomar wrote:
>>From 77587b9c0b58cde232ea3bfaeef5f50607d83b5e Mon Sep 17 00:00:00 2001
> From: Alejandro Colomar <colomar.6.4.3@gmail.com>
> Date: Thu, 3 Sep 2020 21:50:10 +0200
> Subject: [PATCH 20/34] mbsinit.3: Use sizeof consistently
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
>  man3/mbsinit.3 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/man3/mbsinit.3 b/man3/mbsinit.3
> index aeaa6ce88..74fe48f86 100644
> --- a/man3/mbsinit.3
> +++ b/man3/mbsinit.3
> @@ -59,7 +59,7 @@ in initial state is to set it to zero:
>  .in +4n
>  .EX
>  mbstate_t state;
> -memset(&state, 0, sizeof(mbstate_t));
> +memset(&state, 0, sizeof(state));
>  .EE
>  .in
>  .PP
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
