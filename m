Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9DB3C433738
	for <lists+linux-man@lfdr.de>; Tue, 19 Oct 2021 15:38:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231616AbhJSNkZ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 19 Oct 2021 09:40:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52904 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231564AbhJSNkZ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 19 Oct 2021 09:40:25 -0400
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com [IPv6:2a00:1450:4864:20::333])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 92BA3C06161C
        for <linux-man@vger.kernel.org>; Tue, 19 Oct 2021 06:38:12 -0700 (PDT)
Received: by mail-wm1-x333.google.com with SMTP id n7-20020a05600c4f8700b00323023159e1so2756649wmq.2
        for <linux-man@vger.kernel.org>; Tue, 19 Oct 2021 06:38:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=subject:to:references:cc:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=QKQCRJW7QnbFA6bmgSE1sQs+gnP0H5Aeu41owfo1DkU=;
        b=p9GuTq83E/8JHSF0XmKps4FLiM0P4+xoKcXcMd7lUga+BdmiaErnWQzw+SRZ6yv/4s
         syuAI0BRRdO4njJfAD6B5QalGoOyRx3O4pngVACLSHCiKEn8v03NvVHAi+98DehO2fy2
         hctLH+IQJ8WRIWM0lrpIQZrMlv5X4KjaC9RaE1NhkJWCwvSqxDZb0hBxfUao9DWZ47vS
         pXtb67sBex39P7uAhwKB2Cm7+E8900MubkcbbwogPQ7Z8um30u9B8CIWtvxSMgxsQd1f
         AXdxnSV8nOGls4aMTQFj28VYSP3WCzA0KvO+kHp2Im6pKenpTviWFMy4ICksHrj9nFcq
         EfAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:references:cc:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=QKQCRJW7QnbFA6bmgSE1sQs+gnP0H5Aeu41owfo1DkU=;
        b=2h3uHXi69s4Z0bIwhM0jxoLrCjBwYn+22Ie61yrzL9lxIGG/4vwXdH8qBDtwWBy3dT
         9xVVs2Elh3krDQd5QJa2DfqyJ54wQ5JvUpR2KNfk/kHSSgQbSdcvBdduLKn2ATwewrUM
         1fDssRxyuKdc4y+J8ta8gAfeesg7JtMB8L9ZKgL/IDfQ+BzDhNTKvU9MbMyR7FVa/Mvr
         +ZTH2wgrfRgVowe+2PzgdYEw4Gj1vmcHcz4zf1kns4ns+TCk/bO86+Ma5yZ5SyrF3Lfp
         eYD85g8850L7UW7oQhUA353UL1I+onspUTLflXyxODENJefJwQ51AmSkq5+c9iN00xk3
         jYag==
X-Gm-Message-State: AOAM530pienhO2krXAtAxYLJYtZ7hiR0pXi8IFy79zpJZ5w1qbIWFr2/
        lBJbH8tRwcUWwQUdXp9mMY0=
X-Google-Smtp-Source: ABdhPJxT6NKMa8R3TFkj8jbjLECFmLb1UNMx9/SELkcexbevuJPLEQVT3UEnMH5eeeN+/3/iYB4qIQ==
X-Received: by 2002:a7b:c149:: with SMTP id z9mr6090060wmi.177.1634650691197;
        Tue, 19 Oct 2021 06:38:11 -0700 (PDT)
Received: from [10.8.0.138] ([195.53.121.100])
        by smtp.gmail.com with ESMTPSA id p7sm14466958wrm.61.2021.10.19.06.38.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 19 Oct 2021 06:38:10 -0700 (PDT)
Subject: Re: [PATCH v3] filename.7: new manual page
To:     "Thaddeus H. Black" <thb@debian.org>
References: <YWysyI6/sZtbQBBb@b-tk.org> <YW2hzL5vDfVZIAXY@b-tk.org>
Cc:     "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        linux-man@vger.kernel.org, Michael Kerrisk <mtk.manpages@gmail.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <22573673-bf1e-0f64-7e95-6cf0a23c2015@gmail.com>
Date:   Tue, 19 Oct 2021 15:38:09 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <YW2hzL5vDfVZIAXY@b-tk.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Thaddeus,

On 10/18/21 6:33 PM, Thaddeus H. Black wrote:
> Please find patch v3 below, via "git format-patch".
> (If the format is still wrong, or if there is some other way
> in which I should better support the team's work flow, kindly advise.)

'git format-patch' is the preferred method :)

What I missed here is the long (and great) commit message from v1, which 
I'm going to save as the commit message.  Please, when you send v4, 
include the original text.

Ephemeral stuff that should not go into the commit message (like 
changelogs between versions of the patch), you can put it above, in a 
"scissor patch" format (see git-format-patch(1) if necessary).

Or if it's short/simple enough, below the '---' (and just above the 
patch itself; it is actually ignored by git, unless it's so complex that 
it is misinterpreted as part of the patch).  This method is what I 
usually use, since it doesn't require specifying '--scissors', and I 
usually only write normal text that can't be confused with the patch.  I 
don't know if this is documented anywhere, but it's very useful.

Thanks,

Alex

> 
> ---------------------------------------------------------------------------
> CHANGES IN v3
> ---------------------------------------------------------------------------
> 
> Thaddeus H. Black (3):
>    Polish prose under "Special semantics"
>    Polish and clarify prose under "Letter case"
>    Clarify the final paragraph under "Locales and Unicode"
> 
> ---------------------------------------------------------------------------
> CHANGES IN v2
> ---------------------------------------------------------------------------
> 
> Hendrik Boom, G. Branden Robinson and Alejandro Colomar (1):
>    Write "uppercase" and "lowercase" rather than "capital" and "small"
> 
> Alejandro Colomar and G. Branden Robinson (2):
>    Use semantic newlines
>    Avoid \f, but rather use separate lines
> 
> Alejandro Colomar (11):
>    Use subsections instead of sections
>    Use subsubsections instead of subsections
>    Remove unnecessary .P after .S[HS]
>    Use .PP rather than .P
>    Fix indentation of paragraph, which continues talking about \0
>    Mention FAT
>    For consistency, list "-" with "-name" and ".name"; s/a pair of/some/
>    Delete the redundant mention of "."
>    By s/all but/almost/, avoid double negation
>    Reference filesystems(5) under SEE ALSO
>    Under CONFORMING TO, write only, "POSIX.1‐2001 and later."
> 
> G. Branden Robinson (3):
>    Write "letter case" rather than "capitalization"
>    Reference section-3 pages not under SEE ALSO but only in passing
>    Avoid \c
> 
> Thaddeus H. Black (2):
>    Reword subsubsect "Special semantics" to support Alejandro's change no. 7
>    Avoid beginning any subsect or subsubsect with specially formatted text
> 
> ---------------------------------------------------------------------------
> GROFF SOURCE v3 (IN GIT'S PATCH FORMAT)
> ---------------------------------------------------------------------------
> 
> ---

Here you can write your patch changelogs.

>   man7/filename.7 | 660 ++++++++++++++++++++++++++++++++++++++++++++++++
>   1 file changed, 660 insertions(+)
>   create mode 100644 man7/filename.7
> 
> diff --git a/man7/filename.7 b/man7/filename.7
> new file mode 100644
> index 000000000..9c53f8c7b
> --- /dev/null
> +++ b/man7/filename.7
> @@ -0,0 +1,660 @@
> +.\" Copyright (C) 2021 Thaddeus H. Black <thb@debian.org>


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
