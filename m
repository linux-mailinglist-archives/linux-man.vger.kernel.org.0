Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9D1343FA1E3
	for <lists+linux-man@lfdr.de>; Sat, 28 Aug 2021 01:39:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232505AbhH0XkU (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 27 Aug 2021 19:40:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33570 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232433AbhH0XkT (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 27 Aug 2021 19:40:19 -0400
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com [IPv6:2a00:1450:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2BBA1C0613D9
        for <linux-man@vger.kernel.org>; Fri, 27 Aug 2021 16:39:30 -0700 (PDT)
Received: by mail-wr1-x42a.google.com with SMTP id z4so12726907wrr.6
        for <linux-man@vger.kernel.org>; Fri, 27 Aug 2021 16:39:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=o6rZXZThhghm8dKrYrumfuv+CnRIXyT1Gq6wjG/KE7w=;
        b=Y763DqzMpqPAFnaTPY0iAi3dAv08X02bfYkliqua80z+eRq3y0hsQpvdqYs7djqTP1
         f+Mb8Y42pAEPqj2GKEDKAELs4XLW8CvXQzwALJ0q9jg0hWeD+i+BVBTUIcszkrnkZdsv
         qfnSbAU8mc668v2qLLqvRLTJviOtWyLN/vwpQlkDqi0PivlpLiga6SRtTMHlrCMURPCR
         n3a+DcoF/GU9+OWZIoQAxfH1bODXw9agoNT4fvW1xR8PyKZay8tSoDVRCIHhgh5a42Qr
         8pzDILRP3YrOviEAvYm1iHpkKJIABfLscnFOq/uCcVCxtPU9+aaoykJwHBb7sekkXIex
         8E1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=o6rZXZThhghm8dKrYrumfuv+CnRIXyT1Gq6wjG/KE7w=;
        b=rPRR3epFVfiYQKuQTJoqIzVWRcP/eIwlk1EG7l0dWdtAovCTYb24+ph/9cgKGoAnts
         RGq9Ewe5wqLVu5um0riGLhmuHnQLHKiZTOXUPHgQOOX8xTREr7X9I0bbQanRv16B9GsH
         yMG1+X+ZlDUpcRUEJUwf0kRck5yLKeb9+ggFvNgS5E7o9M1uWaw3D5/oLiJlAZnuGx5T
         VomD2nu55ZQB691Qe1fWrwYq9bFTS1nXt8FVGW4DY8nv4eaoMP4RwiFKYUwLLdvljn5N
         QccH5hHBKgN1Q9KF0zccXAnJTyvXj4XxJUGVdvZie3lSVdSl1RU0Ix3RxLwkcpev1edE
         Y1fQ==
X-Gm-Message-State: AOAM530V3uirbOikGxnXKhs348AttAAZ1UwqquZsWQ27ORG4WFud4viT
        AneNegRqw7n4JVoyBfMtC81pWoH8FLw=
X-Google-Smtp-Source: ABdhPJzoE9oudTZyHLa3vUvbLu1IkFMsqNEM4/9vNLmokNL3enJpfQGu5wOrqHFcGdZaWL1IhzMsrg==
X-Received: by 2002:adf:cd0f:: with SMTP id w15mr13122881wrm.346.1630107568865;
        Fri, 27 Aug 2021 16:39:28 -0700 (PDT)
Received: from [10.8.0.50] ([195.53.121.100])
        by smtp.gmail.com with ESMTPSA id c13sm7677995wru.73.2021.08.27.16.39.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 27 Aug 2021 16:39:28 -0700 (PDT)
Subject: Re: Error in 'man operator'
To:     David Sletten <david.paul.sletten@gmail.com>
Cc:     linux-man@vger.kernel.org, mtk.manpages@gmail.com
References: <4cc4d818-58ad-529e-dd25-df3cb0fae66d@gmail.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <71c78812-940e-8c15-c9ae-0dcde955232d@gmail.com>
Date:   Sat, 28 Aug 2021 01:39:27 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <4cc4d818-58ad-529e-dd25-df3cb0fae66d@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi,

On 8/27/21 8:11 PM, David Sletten wrote:
> Hi,
> 
> I've run across what I believe is a minor error in the man page for C 
> operators (https://man7.org/linux/man-pages/man7/operator.7.html ).
> 
> The man page lists casting in the 2nd row of the table:
> 
>         Operator Associativity   Notes
>         () [] -> . ++ --                    left to right [1]
>         ! ~ ++ -- + - (type) * & sizeof     right to left [2]
>         * / %                               left to right
> 
> However, in "C A Reference Manual" (5th ed.), table 7-3 on pg. 205 shows 
> that all of the operators in row 2 above have a precedence of 15 except 
> for casts which have a precedence of 14. Consequently, the man page 
> should display casts as the (new) 3rd row in the table above.
> 
> Thanks for your effort in maintaining this documentation.
> 

Reviewing the standard (C18), "C A Reference Manual" seems to be right. 
  Unary operators are mentioned in C18::6.5.3, and casts are in 
C18::6.5.4 (they are mentioned in order of precedence).

I also noticed that we're missing compound literals in the first row. 
And we're also missing _Alignof() in the second row.
However, since all of those use parentheses (and braces),
there's no doubt in their precedence, so I'll ignore them for now.

And for some reason they are in a different order from the one in the 
standard, which makes it a bit difficult to correlate what is in the 
manual page and what is in the standard, so I think reordering them 
inside the rows will also be an improvement.

Thanks,

Alex


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
