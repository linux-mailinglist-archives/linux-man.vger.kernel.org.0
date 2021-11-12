Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 978DA44EE6D
	for <lists+linux-man@lfdr.de>; Fri, 12 Nov 2021 22:17:50 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233247AbhKLVUj (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 12 Nov 2021 16:20:39 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49406 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232183AbhKLVUj (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 12 Nov 2021 16:20:39 -0500
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AE6E2C061766
        for <linux-man@vger.kernel.org>; Fri, 12 Nov 2021 13:17:47 -0800 (PST)
Received: by mail-wr1-x431.google.com with SMTP id t30so17726822wra.10
        for <linux-man@vger.kernel.org>; Fri, 12 Nov 2021 13:17:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=y1xZUMjIR/05Aui8Yg1nBNp2LyPxg2vfgnLfZEOJU7M=;
        b=SV24v+AGPqBzB6odvOaQdhcOZLh5pW4lXt8GNv5rKGla5FsKhEhSSyFRXv2OHBtQUv
         2XZjXnR+TcbiKOaXvdT04Vvqa4ENnbyJ7SAp5PU4/HfAjltLc1+UbjKnLwJCu0DkpMms
         HyhQYYEeMi7CsdDUIa4gfiByj4N9woI+iquOFRN+UFbxqCQ7lOMGeqMzNBALWo6Hbodt
         llyUd5Gprld58EchHotXWMZLN5hsZXVazNwaMcDH1DwVOJlo3+c8SNk/5vF90Hvwv+NH
         yM98wOpNb10oPQJTNYmZEU1Y2xE8UrhtFsQUKNtHf8vuwcmUOVwo9Pk2s2tevFPnfamV
         46Pg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=y1xZUMjIR/05Aui8Yg1nBNp2LyPxg2vfgnLfZEOJU7M=;
        b=OmthGVagjGMM0J56zKDJDvIdolw6kAbDkDcVvKV29XR6HD2Myz9n46DJzEwzvPpaDG
         DHcDk2A3YnRY5VJ5QKSofJv3Bs+iRp+QwLvAzcS7nFlaaLHmZ/tadX0s7pGoW/UjYu6Z
         uXfqnkfR5hItPp04iYAhhxA3/aZfdd+oOaIuFt7vKaTbDRg+LMEXUJ2TIFUPXpp9PZpz
         dW/VT3HtSJ4PtNtsK/areO5o/CQVYywisq/4FChd3Y4ZkRITm+ORhX25PMB7F03BdWkd
         WqMD2evKbah2ZSHlzp+xcCwp0gAlquZkc55PKzxzt7EPpfq7g0fWsdDj9Eg/tSMA8BcY
         lDOg==
X-Gm-Message-State: AOAM5334vjChLW82NeXaVW3hf7PAcLV3QquQAUEMjYmAGPNIifcaSIn+
        kv6orR6iJnaO2tYAPo1MysA=
X-Google-Smtp-Source: ABdhPJyP1xRIcoJCO8GYpZZT2KjeUfnzqifYW5dM5vgo4dWP0wIb5JiUp21XvrkPIp01fM4Me+hgtQ==
X-Received: by 2002:adf:dd0d:: with SMTP id a13mr20995592wrm.259.1636751866310;
        Fri, 12 Nov 2021 13:17:46 -0800 (PST)
Received: from [10.168.10.170] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id w17sm6964942wrp.79.2021.11.12.13.17.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 12 Nov 2021 13:17:46 -0800 (PST)
Message-ID: <8c844e3e-0283-0194-9c58-847f760f302a@gmail.com>
Date:   Fri, 12 Nov 2021 22:17:45 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.0
Subject: Re: [PATCH v2] man-pages.7: Update nonbreaking space advice.
Content-Language: en-US
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     linux-man@vger.kernel.org
References: <20211112205918.ymmypbzajpyo6avf@localhost.localdomain>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
In-Reply-To: <20211112205918.ymmypbzajpyo6avf@localhost.localdomain>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi, Branden!

`git am` applied it cleanly this time :)

However, the commit message was:

     man-pages.7: Update nonbreaking space advice.

     Taking another crack at this...

The commit message is everything up to the first ---, so if you want to 
embed a non-commit message, it should go after that, not before.  Or you 
should make use of scissors (see git-am(1)).

I can fix it manually, but if you would like to try it yourself, please 
sign the patch too :)

Regards,
Alex

On 11/12/21 21:59, G. Branden Robinson wrote:
> Taking another crack at this...
> 
> ---
> v2:
>   - Stop correcting "nonbreaking" to "non-breaking".
> ---
> 
> * Advise usage of \~ escape instead of \SPACE; the former, a groff
>    extension from circa 1990, has been supported by Heirloom Doctools
>    troff since 2005 and by mandoc since 2019.  The advantage is that
>    \~ is an _adjustable_ non-breaking space, so it will typeset
>    non-jarringly both in .EX/.EE examples when filling is off, and in
>    normal running text (which is filled).
> 
> See linux-man@ list discussion at
> <https://lore.kernel.org/linux-man/\
> 20210729115508.pt6btsqd7g5tuhg6@localhost.localdomain/> and follow-ups.
> ---
>   man7/man-pages.7 | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/man7/man-pages.7 b/man7/man-pages.7
> index 96c3deb20..23015b00a 100644
> --- a/man7/man-pages.7
> +++ b/man7/man-pages.7
> @@ -689,7 +689,7 @@ If the command is short, then it can be included inline in the text,
>   in italic format, for example,
>   .IR "man 7 man-pages" .
>   In this case, it may be worth using nonbreaking spaces
> -("\e\ ") at suitable places in the command.
> +(\e\(ti) at suitable places in the command.
>   Command options should be written in italics (e.g.,
>   .IR \-l ).
>   .PP
> 

-- 
Alejandro Colomar
Linux man-pages comaintainer; http://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
