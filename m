Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0C3B92717D0
	for <lists+linux-man@lfdr.de>; Sun, 20 Sep 2020 22:20:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726365AbgITUUF (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 20 Sep 2020 16:20:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43422 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726151AbgITUUF (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 20 Sep 2020 16:20:05 -0400
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com [IPv6:2a00:1450:4864:20::341])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C3BF7C061755
        for <linux-man@vger.kernel.org>; Sun, 20 Sep 2020 13:20:04 -0700 (PDT)
Received: by mail-wm1-x341.google.com with SMTP id x23so10133831wmi.3
        for <linux-man@vger.kernel.org>; Sun, 20 Sep 2020 13:20:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=ILccbeihJVyKxjUq4kFBz6o3igjIR231nnUdu76xWTo=;
        b=E0krl4Cyied+OoRC+HQczDupqmV5i1+E5EN9z/3FLKxe4VgU36N4IzJ8wszyMgFPS0
         FIlbi0VQWt9JiTmiIlOfMdWIa4FZj3Z1eCDh/6OOLKcYQ3fndlqDCG7aUYVhMAgruF5G
         84hsEqXvFRifRvpHcD4hR4roMuGp/JBjVemQi3KfRJTc6GMKnMl0u9l1u8R44s6mnXmU
         kJGbUYN4HteaCaXaC3jwr9X3TE7Me0kPI0V6DqZwMCV96IP5ciLVQZgr5u0rdASTAn/8
         f7D4cxGjTEZF+qAxMtLU7sFeo1pVgUz9kviPkVv8cqbG2QNN69QpZc8QtpwwmCZl2hUR
         72qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=ILccbeihJVyKxjUq4kFBz6o3igjIR231nnUdu76xWTo=;
        b=stFAm/KBRMIWha8fpslVbSshPQlOjzBQlIpDnBO26Znoz6m4jzSFwDuTFmiABXgp+l
         bpwxIOUx7/yaUQypcFCPRupNRp4Q1c2LYY4sT8/Lfy8szYkkKfwSCs2lqHrfIDPDsDPH
         +OGjcbZlCUne/IeCVUJ3uyCRFBJFgsU4y4YNiPN5WyqscAJKPBKMpdqyAfrgMHvY56WT
         IUrKzyQ1R7eShyUc8qeidmUYNM/JYT1F2OWlKUyWtP+h6gz65iUFoAShLaLiaZrEUAof
         0PBTwFzKWYf8CisQevTaDOSlwFYQgR2ipxFoTfFKRyH44kf8EH+b2gReafhudLsrRELZ
         ALfA==
X-Gm-Message-State: AOAM530KOy2/EwoBZuZOSV54nAVVGZMHhraJrHRa6KlzSrLgH7KmRKp/
        ZcoDMTpSvZhJorOW+GTzjiLW/9KUexc=
X-Google-Smtp-Source: ABdhPJxbIgYcOK79gax9/HspYzZbgQvGL49yuvQjLxuJ0vcNe+cLI262h+nkF96uG6IDl4XSOgNk/A==
X-Received: by 2002:a1c:e1d6:: with SMTP id y205mr26417558wmg.92.1600633203452;
        Sun, 20 Sep 2020 13:20:03 -0700 (PDT)
Received: from ?IPv6:2001:a61:2479:6801:d8fe:4132:9f23:7e8f? ([2001:a61:2479:6801:d8fe:4132:9f23:7e8f])
        by smtp.gmail.com with ESMTPSA id d6sm16425297wrq.67.2020.09.20.13.20.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 20 Sep 2020 13:20:02 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        fweimer@redhat.com
Subject: Re: [PATCH v2] system_data_types.7: Specify the length modifiers for
 the variables that have them
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>, eggert@cs.ucla.edu
References: <20200920181407.77667-1-colomar.6.4.3@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <e12a0898-4dc3-8876-f1a1-e61f237b5f1f@gmail.com>
Date:   Sun, 20 Sep 2020 22:20:01 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200920181407.77667-1-colomar.6.4.3@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 9/20/20 8:14 PM, Alejandro Colomar wrote:
> Reported-by: Florian Weimer <fweimer@redhat.com>
> Reported-by: Paul Eggert <eggert@cs.ucla.edu>
> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
> ---

Thanks. Patch applied. Paul, thanks for reviewing; I added a 
Reviewed-by tag in your name.

Thanks,

Michael

PS It occurs to me that this manual page is a suitable place 
to explain the general technique of casting integral system
data types to [u]intmax_t for the purpose of printf(). Would
you like to add this, Alex?

> Hello Paul,
> 
> On 9/18/20 10:24 PM, Paul Eggert wrote:
>> I suggest saying "values" instead of "variables", here and elsewhere,
>> since variables need not be involved.
> 
> Yes.
> 
>> This sort of thing should use ".B" not ".BR". There are multiple
>> instances of this.
> 
> Oops. A few typos.
> 
>> POSIX does provide that length modifier; however, it doesn't say it
>> works with ssize_t. I suggest rewording "Glibc provides a length
>> modifier" to "Glibc and most other implementations provide a length
>> modifier", and changing the last two sentences to:
>>
>>
>> Although
>> .B z
>> works
>> for
>> .I ssize_t
>> on Glibc and most other implementations, portable POSIX programs should
>> avoid it, e.g., by converting to
>> .I intmax_t
>> and using its length modifier.
> 
> Much better wording.  Check the new one, please.
> 
> Thanks,
> 
> Alex
> 
>  man7/system_data_types.7 | 56 ++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 56 insertions(+)
> 
> diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
> index 080f0057f..5128e1f01 100644
> --- a/man7/system_data_types.7
> +++ b/man7/system_data_types.7
> @@ -108,6 +108,22 @@ capable of storing values in the range
>  .BR "" [ PTRDIFF_MIN ,
>  .BR PTRDIFF_MAX ].
>  .IP
> +The length modifier for
> +.I ptrdiff_t
> +for the
> +.BR printf (3)
> +and the
> +.BR scanf (3)
> +families of functions is
> +.BR t ;
> +resulting commonly in
> +.B %td
> +or
> +.B %ti
> +for printing
> +.I ptrdiff_t
> +values.
> +.IP
>  Conforming to: C99 and later; POSIX.1-2001 and later.
>  .IP
>  See also the
> @@ -343,6 +359,22 @@ it shall be an unsigned integer type
>  capable of storing values in the range [0,
>  .BR SIZE_MAX ].
>  .IP
> +The length modifier for
> +.I size_t
> +for the
> +.BR printf (3)
> +and the
> +.BR scanf (3)
> +families of functions is
> +.BR z ;
> +resulting commonly in
> +.B %zu
> +or
> +.B %zx
> +for printing
> +.I size_t
> +values.
> +.IP
>  Conforming to: C99 and later; POSIX.1-2001 and later.
>  .IP
>  Notes:
> @@ -403,6 +435,30 @@ According to POSIX, it shall be a signed integer type
>  capable of storing values at least in the range [-1,
>  .BR SSIZE_MAX ].
>  .IP
> +Glibc and most other implementations provide a length modifier for
> +.I ssize_t
> +for the
> +.BR printf (3)
> +and the
> +.BR scanf (3)
> +families of functions, which is
> +.BR z ;
> +resulting commonly in
> +.B %zd
> +or
> +.B %zi
> +for printing
> +.I ssize_t
> +values.
> +Although
> +.B z
> +works for
> +.I ssize_t
> +on most implementations, portable POSIX programs should avoid using it,
> +e.g., by converting the value to
> +.I intmax_t
> +and using its length modifier.
> +.IP
>  Conforming to: POSIX.1-2001 and later.
>  .IP
>  See also:
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
