Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6E38A435DB6
	for <lists+linux-man@lfdr.de>; Thu, 21 Oct 2021 11:14:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231321AbhJUJQW (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 21 Oct 2021 05:16:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50470 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231153AbhJUJQW (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 21 Oct 2021 05:16:22 -0400
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com [IPv6:2a00:1450:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C73E4C06161C
        for <linux-man@vger.kernel.org>; Thu, 21 Oct 2021 02:14:06 -0700 (PDT)
Received: by mail-wm1-x32c.google.com with SMTP id z11-20020a1c7e0b000000b0030db7b70b6bso6088649wmc.1
        for <linux-man@vger.kernel.org>; Thu, 21 Oct 2021 02:14:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=subject:from:to:references:message-id:date:user-agent:mime-version
         :in-reply-to:content-language:content-transfer-encoding;
        bh=uLhTXpySncE4ZbMgTwimqUuNGGjS/v1dZD2RbJKhUTU=;
        b=hNRIaPj0dmhtdqBbTINZELinR3UUsWcUo7Kddiwjqe4J+iQ0fadiD76fSLNNNO6DZg
         6DNB8HVp0XmamkEMAG8UN6LmdcZJCaiT2BfoTcGLHZmuPpKKemyTTuYkNlj+fO2nIHgb
         RIcKKxA/tLzjF3x0mTTt2qUrXwpIAO+j36DxbU1xzF5pXiMFQo6nsaniq4/uun+RFziF
         rMi8XPgB9seNyILJpuG36hgEPJ/1hNNSDLXIAYMSxzQrXdOoFBdOmHxyy947WX0Jk0AX
         jIUcJXsZgNM1ww14ACpWehGqZscXZUfUFpjDdglVO3kshYkfC75CNWSg/X3S/rjfhn0n
         KaXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:from:to:references:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=uLhTXpySncE4ZbMgTwimqUuNGGjS/v1dZD2RbJKhUTU=;
        b=LVsOyp+xpxT5SxUs3dIxnVd3Tj8RjAJSJ17Fe7mnO9ADi0Kirx5l7oGa1lsLCESOGy
         fQd3rnmwcVD9GmvAi7OGVm0lR5Xd9vsfI+/ZXg9YvndKZVB2iGJ3MTk5ATWvCdABGLEv
         qnwN0iz4Z99OFuNnbZbFa3la57d9ughG6aSEqJY1jAqegKZIbIgR7uxjT/DPh8Ogj/tn
         yHGrQM7fd0L9imu26WBRftZTf8K+FOV/wWaxBKgybSNHKQbZH9umNrkp87UF9vXyilb3
         9U2RLQjXxaP/MCiy8YmO19XdK94Dr5HZZgdXstnp0VP3Jby694yYLrKRmgKyRjXsxSeg
         z63w==
X-Gm-Message-State: AOAM532GWkeeentOeH2OXaVtd/7ZOxBTj9hCfy6BBQd6VzMar+RRK8NT
        EATD0dDfRYD6MHBybLzSc+dM6DnRTYY=
X-Google-Smtp-Source: ABdhPJwoEaenlXjky9dLOoEK4OMSAY5aTSAlWzYfYzo4wocO9490EzS1K7h4t2FP+wZl+MMUrVA7zA==
X-Received: by 2002:a05:600c:3b17:: with SMTP id m23mr5159159wms.80.1634807645371;
        Thu, 21 Oct 2021 02:14:05 -0700 (PDT)
Received: from [10.8.0.138] ([195.53.121.100])
        by smtp.gmail.com with ESMTPSA id 133sm7492515wmb.24.2021.10.21.02.14.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 21 Oct 2021 02:14:05 -0700 (PDT)
Subject: Re: [PATCH 1/2] ctime.3: Use VLA notation for [as]ctime_r() buffer
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
To:     =?UTF-8?B?SuKCkeKCmeKCmyBHdXN0ZWR0?= <jens.gustedt@inria.fr>,
        linux-man <linux-man@vger.kernel.org>
References: <20211020202241.171180-1-alx.manpages@gmail.com>
 <20211021092746.78bc82f8@inria.fr>
 <20c1e58b-ba2b-f9df-ab1f-f80725414cf5@gmail.com>
 <5782a3ea-9774-3acb-e365-1e4d03ed3358@gmail.com>
Message-ID: <551fe7b3-593e-efdf-61e6-199388ab031c@gmail.com>
Date:   Thu, 21 Oct 2021 11:14:04 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <5782a3ea-9774-3acb-e365-1e4d03ed3358@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Just forwarding a conversation to the list

On 10/21/21 10:27 AM, Alejandro Colomar (man-pages) wrote:
> Hi Jens,
> 
> On 10/21/21 10:17 AM, Alejandro Colomar (man-pages) wrote:
>> Ideally, the standard and the man-pages would have the same 
>> prototypes.   However, since the standard is not (and cannot be) 
>> perfect, when it has some limitations that it cannot overcome which we 
>> can, I'll be happy to differ from it.  nonnull IMO is very useful in 
>> the SYNOPSIS, so I'd like to have it (and I'd also like the standard 
>> to have it, but that's likely to take a decade, if it happens at 
>> all).  Also, the man-pages already use array notation in some specific 
>> cases (see pipe(2)), and they are mostly targeted at C programmers, so 
>> I think we can safely assume that a C++ reader will know the 
>> limitation of its language, and be able to translate C to C++ easily.  
>> If any glibc programmer has any concerns regarding that, this is the 
>> moment for giving a different opinion :).
> 
> I rethinked it a bit after seeing pipe(2) again.  I never understood why 
> 'static' should be needed at all in an array parameter.  The standard 
> could have also accepted [26] as requiring at least 26 elements in the 
> array, without requiring the use of static.  There may be reasons for 
> that that I ignore, of course; maybe backwards compatibility.... But 
> since the man-pages can present the same information without the static 
> keyword, I'll edit my patches to just use [restrict 26], instead of 
> [static restrict 26], which is more compact.
> 
> BTW, I just noticed that these emails were offlist.  If you want to keep 
> them offlist, I'l do so, but we typically CC the list to have open 
> discussions.  If you give me permission, I'll forward these emails to 
> the mailing lists.
> 
> Cheers,
> 
> Alex
> 


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
