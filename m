Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 088F140739D
	for <lists+linux-man@lfdr.de>; Sat, 11 Sep 2021 00:53:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232013AbhIJWyc (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 10 Sep 2021 18:54:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58098 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234718AbhIJWyS (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 10 Sep 2021 18:54:18 -0400
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2D1CEC061760
        for <linux-man@vger.kernel.org>; Fri, 10 Sep 2021 15:53:06 -0700 (PDT)
Received: by mail-wr1-x435.google.com with SMTP id z4so4711029wrr.6
        for <linux-man@vger.kernel.org>; Fri, 10 Sep 2021 15:53:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=JPN0ewIOI+KTTxV89qY8uRFe+F3KCg5DynsKRI3ylcs=;
        b=DJyNI9e4F19pOvfBq9b9iPGDKHV2I7LhtehnTd3D2vkjoX2dKNVbs0H2kPTRKBr8H1
         mPT7oyiex8XEIFrl8fWK39tbrLi7aFK/Ew5+Znv0lHAJ47rVS5fxaythXJtWUmwbJNDg
         SnRiQoLMzWj48obibhuotohRVS/uUSuIdJrDdbRVNaDOudP00AaxcFu/3tf7ro5zHHYX
         sbupEC3BfqW2Dz/SLo3IOtneUfq9A9m2cUz4LnlK/Zrrd9okK1hqDkN7X/XpXyrahk+b
         ybpUQ836WhiAPzr8xWFjWITgWMdd0e9zjn7ob4Y6z3P5I2xtEGr/Wg6h1ShembwIwYkG
         lkJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=JPN0ewIOI+KTTxV89qY8uRFe+F3KCg5DynsKRI3ylcs=;
        b=MuV0CxJD+ttFFMnB5Bi4HZuHq8z2L0qG20U4DVPM4GX6cOcYDwalpJqwQvfhGNJW9A
         kLnL19mjLvwULZ9IOn86/CPognLsTtyqz01IiCSiP2LnVQBh9qiwZSvKUdNvwnczHCsO
         Kioz7cpGhdrsQS9mjSPlfcFlP9ZIJorsUVaXcB0ZSWRSbQLwdJYAOHzGJVIjKCMveR81
         lvAcxOd7AEYD1FrVKFbM1z20v9g0KXOlwKJzg54UtTeUGQX4sMMe943Ko16uorSNTqnJ
         LNmDjhS6IH36n4P846YLv3lDK1Ui5CiI7Zx/hMzMQdQ92izFQtF3c1EDdHMVxabykn+u
         ZziQ==
X-Gm-Message-State: AOAM531os/dyHoBL8gr5JKJXRewXag/QFnw7nK7uGRSaETwiuhxMaaNH
        Wcav03DWL+O5KR/0cLV4U2A=
X-Google-Smtp-Source: ABdhPJwyeUoMrLmRU2su5AEc3lAbKFF71YBLq1qn6RgYdkgeHOWAc0/UU9/qh+09oBoSyy1zGu+1mw==
X-Received: by 2002:adf:e6c5:: with SMTP id y5mr118348wrm.198.1631314384843;
        Fri, 10 Sep 2021 15:53:04 -0700 (PDT)
Received: from [10.168.10.11] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id y4sm1299wmi.22.2021.09.10.15.53.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 10 Sep 2021 15:53:04 -0700 (PDT)
Subject: Re: [PATCH 09/15] clone.2: ERRORS: Add EACCESS with CLONE_INTO_CGROUP
 + clone3
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org, Andrew Wock <ajwock@gmail.com>,
        Christian Brauner <christian.brauner@ubuntu.com>
References: <20210910224717.499502-1-alx.manpages@gmail.com>
 <20210910224717.499502-10-alx.manpages@gmail.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <842a7681-1a2a-4dc8-3f23-f191f6541a39@gmail.com>
Date:   Sat, 11 Sep 2021 00:53:03 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20210910224717.499502-10-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Michael,

On 9/11/21 12:47 AM, Alejandro Colomar wrote:
> [Andrew]:
> I noticed that clone3 can send the EACCES errno after I wrote a
> program that used clone3 with the CLONE_INTO_CGROUP flag.
> To me, it's important to know what kind of failure occurred if the
> clone3() fails, so I was glad that a unique errno is set for
> this case, but it wasn't documented on the clone man page.
> 
> [Christian]:
> In essence, any error that could occur during regular fs-based migration
> at write-time can also occur during CLONE_INTO_CGROUP. The clone3()
> manpage just has the inverse of that above statement:
> 
> "Note that all of the usual restrictions (described in cgroups(7)) on
> placing a process into a version 2 cgroup apply."
> 
> Reported-by: Andrew Wock <ajwock@gmail.com>
> Acked-by: Christian Brauner <christian.brauner@ubuntu.com>
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>

I forgot to fix the author of the commit.  It should be Andrew, as he 
provided the diff, eventhough I commited it.

Please fix that.

Thanks,

Alex

> ---
>   man2/clone.2 | 10 ++++++++++
>   1 file changed, 10 insertions(+)
> 
> diff --git a/man2/clone.2 b/man2/clone.2
> index e381da165..90db92ad6 100644
> --- a/man2/clone.2
> +++ b/man2/clone.2
> @@ -1209,6 +1209,16 @@ in the caller's context, no child process is created, and
>   is set to indicate the error.
>   .SH ERRORS
>   .TP
> +.BR EACCES " (" clone3 "() only)"
> +.B CLONE_INTO_CGROUP
> +was specified in
> +.IR cl_args.flags ,
> +but the restrictions (described in
> +.BR cgroups (7))
> +on placing the child process into the version 2 cgroup referred to by
> +.I cl_args.cgroup
> +are not met.
> +.TP
>   .B EAGAIN
>   Too many processes are already running; see
>   .BR fork (2).
> 


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
