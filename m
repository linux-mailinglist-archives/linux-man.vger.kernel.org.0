Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A3C942758BE
	for <lists+linux-man@lfdr.de>; Wed, 23 Sep 2020 15:31:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726156AbgIWNbc (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 23 Sep 2020 09:31:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52656 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726130AbgIWNbc (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 23 Sep 2020 09:31:32 -0400
Received: from mail-ej1-x643.google.com (mail-ej1-x643.google.com [IPv6:2a00:1450:4864:20::643])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 68F72C0613CE
        for <linux-man@vger.kernel.org>; Wed, 23 Sep 2020 06:31:32 -0700 (PDT)
Received: by mail-ej1-x643.google.com with SMTP id u21so27815905eja.2
        for <linux-man@vger.kernel.org>; Wed, 23 Sep 2020 06:31:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=rYeyJnpkm4FTQqZQcr0X1UTx0YF92EGPIOz8enbx6Pk=;
        b=H3v+ytd7ayElz5YlgCJbykUfcTVFO0K4ulrC+2vyf1wa57sLui2SM8odIeKTS6UMCz
         c967TSDR8r96e8zOWaF5NermPjPAel0tZa3oUGLp7bjrvQYItqitlUwtFmC/pVlBlZxP
         0qyX2MUb9gg05ByJYIJCccoeQctlVeTPNvLQxbJmVS3eRj5XQVAEFPGt9v1/XEjtfVmb
         sREHh4xMUWuACsW7Y+mzjSvgFL63Ve95LrJoW2f09drQwAgY6i0fBxuAaqxjlvtAMAuj
         SBnXqaN6lJMEhPtAPZxlTFbi30JpEia+Hg0oo4YV7K+4GSUTB0KGYYaihc7d+Y+D9Ipq
         iKeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=rYeyJnpkm4FTQqZQcr0X1UTx0YF92EGPIOz8enbx6Pk=;
        b=Zu5ku14yBSBO5TYqeqlSO6jlVAAt8rXz1crjGu3/673V+uoR67PSOf7r/hDFQNZjUb
         NYjt0Sp9dlX292eEOiZK3qvY+h8Ve6djVxq8fM/tV3l9JywBTm3EymUS3P5naAqoXeP/
         4DOUUcm2BwG1C0JNCEU3/WpjcP8UMxsX9ElJENiOVkiUh4ycaDPB6E6TRtVKMxpqmKz6
         23oY8tKKsCAuk2tE0kUA22Yk174hVlLC0SFLgyw0JsyyEVcNg49Y4sS9yhWzfffyHZuy
         +N45FwcGMyBwlhl4fyOEk4Bb2BkahegbbwXM7EO+44glZfiEjnvNA8PIdHSUcCEpBv0m
         2qRA==
X-Gm-Message-State: AOAM532A2+PDBwnPqt0fICN3PtmS2orrkEppDzFYjiPelhS5gu14A8Hg
        gCUQoUGSAlXwpzc/Qf6ei9y27WKzU/4=
X-Google-Smtp-Source: ABdhPJyjvMdJi2QrlnzZpn0RucRykG7I5nbM4KKtPyr3orZGzohpKXQ3GJJJYsHGSrXOJ+AOybbHnQ==
X-Received: by 2002:a17:906:3553:: with SMTP id s19mr10067338eja.178.1600867890694;
        Wed, 23 Sep 2020 06:31:30 -0700 (PDT)
Received: from ?IPv6:2001:a61:2479:6801:d8fe:4132:9f23:7e8f? ([2001:a61:2479:6801:d8fe:4132:9f23:7e8f])
        by smtp.gmail.com with ESMTPSA id o23sm14400998eju.17.2020.09.23.06.31.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 23 Sep 2020 06:31:29 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH v2 1/2] system_data_types.7: Add 'fexcept_t'
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <20200922153822.33728-2-colomar.6.4.3@gmail.com>
 <20200923131706.21393-1-colomar.6.4.3@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <173479d9-2bb5-81da-cfff-cb4192e9d675@gmail.com>
Date:   Wed, 23 Sep 2020 15:31:27 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200923131706.21393-1-colomar.6.4.3@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 9/23/20 3:17 PM, Alejandro Colomar wrote:
> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
> ---
> 
> Hi Michael,
> 
> On 2020-09-23 10:36, Michael Kerrisk (man-pages) wrote:
>> [Thorsten, I have removed you from the CC because I get persistent
>> bounce messages whenever I send you mail. Hopefully you see this reply
>> via the list.]
> 
> Me too :(
> 
>> While I'm pretty sure they would allow this without problem, I'm
>> wondering if it's worth the effort. Ideally, we'd have text written by
>> someone in their own words. Reproducing the text of the standard has
>> limited value, since people can in any case consult the standard
>> directly.
>>
>> Alex, how about we just go much simpler, saying something like:
>>
>> [[
>> This type represents floating-point status flags; for further details
>> see fenv(3).
>> ]]
> 
> Nice and simple.
> 
> Thanks,
> 
> Alex

Thanks! Patch applied.

Cheers,

Michael


>  man7/system_data_types.7 | 17 ++++++++++++++++-
>  1 file changed, 16 insertions(+), 1 deletion(-)
> 
> diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
> index 4352d6a6e..ea3e25175 100644
> --- a/man7/system_data_types.7
> +++ b/man7/system_data_types.7
> @@ -110,7 +110,22 @@ Conforming to: C99 and later; POSIX.1-2001 and later.
>  .IP
>  See also:
>  .BR fenv (3)
> -.\"------------------------------------- gid_t ----------------------/
> +.\"------------------------------------- fexcept_t --------------------/
> +.TP
> +.I fexcept_t
> +.IP
> +Include:
> +.IR <fenv.h> .
> +.IP
> +This type represents the floating-point status flags collectively;
> +for further details see
> +.BR fenv (3).
> +.IP
> +Conforming to: C99 and later; POSIX.1-2001 and later.
> +.IP
> +See also:
> +.BR fenv (3)
> +.\"------------------------------------- gid_t ------------------------/
>  .TP
>  .I gid_t
>  .IP
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
