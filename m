Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F13643DC5BE
	for <lists+linux-man@lfdr.de>; Sat, 31 Jul 2021 13:36:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232787AbhGaLgp (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 31 Jul 2021 07:36:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41352 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232263AbhGaLgp (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 31 Jul 2021 07:36:45 -0400
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com [IPv6:2a00:1450:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4986CC06175F
        for <linux-man@vger.kernel.org>; Sat, 31 Jul 2021 04:36:39 -0700 (PDT)
Received: by mail-wr1-x432.google.com with SMTP id k4so4035624wrc.0
        for <linux-man@vger.kernel.org>; Sat, 31 Jul 2021 04:36:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=qjsP3icd2C3FH+WPCScEROQk0DNaGF8Cesx5yFt8LK4=;
        b=KQt2N3V+63REjS5Y92PvyPeR67CyEr3G+VWJxlnVt7YDWw4oYjqwKOrwW4sDsjMzP6
         iU2552UizjSGk0ynTWNF56+ANgUPZAI7CnD9gCAuOXm3lhfsxCmHVKzG6GuffNXTW0Ye
         01FRW4sXRiVv9XP09/biX0z5BH2Xn1bUJTbrk3V6kPT5nmwvPbUOUaeBjHoNK4U4d1BW
         yufp32M9cqS2unw3QKIAcnZ5MOMolLop0ztpdg5JQ4jNdyZmKXSOyGhUyDZaMvqdQSuy
         M5kIPFsKF88zWhZeySfkRkiy7rEW0VA6d8jPn2l5q6kG5APoCBjvvLzBJE9HXEtvKEE3
         UP3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=qjsP3icd2C3FH+WPCScEROQk0DNaGF8Cesx5yFt8LK4=;
        b=i4Z5RB08t9lshoRwstWwVIdrDgiR5860KHr2kmCuP+NGchCUcXVcnMCxmOqLLHts/O
         o5XtV5slzfLP4wSFdJKpjEXXJC/sMTlB6/45Uhh6Hj2IxGWqNTKlWdSFC8SDO9TSjWPU
         HRTETlpF1T0w7Sx81dyt0YPyLAzUip44ImFlDHQNetuQs4EMCtOW/NN5U2hPLe6ZeY42
         myLbofP7oVL3qCtmhMNY7S0oh8qoDQUPBRBl7gAbnFLD9nxhoYExLlWOj/o71g51tChh
         stjg2+ygiSNpQ8EHXjz2BzU72CwGwImXBx/7BH5yJOCj8hL47mJRfqp20VRuuaVfB+RH
         PGEA==
X-Gm-Message-State: AOAM530dEtnz4q7eXBOMcfO/f96/4rOBA1N9K8DdFihmlQlBQV8SQ33b
        M2gA02uC3cjx9xsZ3e0GRCLTEIYowDM=
X-Google-Smtp-Source: ABdhPJzyWQGc3myXMpTK8GDXr6hx2NWLCCYV7wEenBrrCgWpCKB1zxMenJEUBmjo+KPxCaqmAtpngA==
X-Received: by 2002:adf:d20a:: with SMTP id j10mr7976139wrh.152.1627731397892;
        Sat, 31 Jul 2021 04:36:37 -0700 (PDT)
Received: from [10.8.0.10] ([195.53.121.100])
        by smtp.gmail.com with ESMTPSA id b6sm5417076wrn.9.2021.07.31.04.36.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 31 Jul 2021 04:36:37 -0700 (PDT)
Subject: Re: [PATCH 1/2] man-pages.7: wfix
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>, linux-man@vger.kernel.org
References: <20210731033948.z33f5rllnqjk57lx@localhost.localdomain>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <2b436e93-ce9f-48bb-29ed-1277aacb0ad2@gmail.com>
Date:   Sat, 31 Jul 2021 13:36:36 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210731033948.z33f5rllnqjk57lx@localhost.localdomain>
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Branden,

On 7/31/21 5:39 AM, G. Branden Robinson wrote:
> Saw this while preparing the "switch to \~" change Alex invited.

Patch applied (manually).

[
$ git am -s patches/recv/\[PATCH\ 1_2\]\ man-pages.7\:\ wfix.eml
Applying: man-pages.7: wfix
error: patch failed: man7/man-pages.7:638
error: man7/man-pages.7: patch does not apply
Patch failed at 0001 man-pages.7: wfix
hint: Use 'git am --show-current-patch=diff' to see the failed patch
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".
]

I don't yet understand how to fix these problems, so I wrote it myself 
and changed the author.

Thanks,

Alex

> 
> ---
>   man7/man-pages.7 | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/man7/man-pages.7 b/man7/man-pages.7
> index 6cb805343..3819dfd97 100644
> --- a/man7/man-pages.7
> +++ b/man7/man-pages.7
> @@ -638,7 +638,7 @@ makes it easier to write tools that parse man page source files.)
>   .SS Use semantic newlines
>   In the source of a manual page,
>   new sentences should be started on new lines,
> -and long sentences should split into lines at clause breaks
> +and long sentences should be split into lines at clause breaks
>   (commas, semicolons, colons, and so on).
>   This convention, sometimes known as "semantic newlines",
>   makes it easier to see the effect of patches,
> 


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
