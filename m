Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2CB71314EE3
	for <lists+linux-man@lfdr.de>; Tue,  9 Feb 2021 13:29:33 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229521AbhBIM3B (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 9 Feb 2021 07:29:01 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43652 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229503AbhBIM3A (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 9 Feb 2021 07:29:00 -0500
Received: from mail-ed1-x52a.google.com (mail-ed1-x52a.google.com [IPv6:2a00:1450:4864:20::52a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 34609C06178A
        for <linux-man@vger.kernel.org>; Tue,  9 Feb 2021 04:28:20 -0800 (PST)
Received: by mail-ed1-x52a.google.com with SMTP id c6so23276227ede.0
        for <linux-man@vger.kernel.org>; Tue, 09 Feb 2021 04:28:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=jfDLKgYLk92OT2sseShKJ2M7PZpzPUMpBjaZz1FIigI=;
        b=UfEVRj0s/QBzl3qelEeNmt1PIGxzEh7PDYPLQJRANKpxUBXteCzVHNPSEnuSac5py/
         tuDhfW03yC88HuoG660cS0Qjr1GfvPdKABWudB87RcoU7LwM8ojiUKlGtLGn1KVuC36t
         L7AVbn5je12x8xJwlzFdpEhfvtHW+Uw8LPhGh/VSkpk+udgkzf/KlWfiI/KVJMvum6Rs
         dQclcRswhlQcNm9aSOYMA14ELGwD7n4WXna2hgo6tA4J/a536G8vUOlf1DJRcbTUqxcm
         AKaZcOkN1ZfxpybxyjYXOI5BEf58GbTKf3boakFsky4MEb+WmazhgnutkQP1KDTMwXLF
         Epmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=jfDLKgYLk92OT2sseShKJ2M7PZpzPUMpBjaZz1FIigI=;
        b=Mctk9Cn1FIEdExdqwpfiRCR5DgEasPYWY5B2lZwrsfz9l9jeJtdCmkbPbooLof7mQS
         am7eFqdQgZkEDdA2Jkj2UuP87YW0kae8IWcH92rUKWzrzs2BY8/I1/cJ710d1iLcIAZP
         sOqLJV5XrzL8ZEUqEUZG37nZoFAEaZ2A54y5JIYiIpBcC2sDsK4G7UOb0giHc92+Hhi3
         6PNeVDHcD1XBc8WDGijZUMjXGquTNc23IimP+3dnJwxE66l9p/hti8hI9+tJ9TQp7b2r
         qpikYbwUoWh4+u2DNI1DGkQGlyB2ZHPkG9sA7A5yeLMV2dOM2VBhaUQkFVbpkc7oCnW/
         d1PQ==
X-Gm-Message-State: AOAM532ULO8TNwvkf+d3UObSyjO9HUEYWkmsDcKE3M/im/4I9QakLqyU
        fu+RhrgHbO4NK3AQv4//BOu7TNkPMB761Q==
X-Google-Smtp-Source: ABdhPJyr8NnOj18Aeb8vBm766mBBVhWhwK0OeFH+r6DChOZjzjYTvM85gLaIm7wT/c78XCFKfUWjhQ==
X-Received: by 2002:a05:6402:2690:: with SMTP id w16mr22640117edd.304.1612873698726;
        Tue, 09 Feb 2021 04:28:18 -0800 (PST)
Received: from ?IPv6:2001:a61:24ca:4d01:a815:d0d9:f754:e0ef? ([2001:a61:24ca:4d01:a815:d0d9:f754:e0ef])
        by smtp.gmail.com with ESMTPSA id t11sm11509460edd.1.2021.02.09.04.28.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 09 Feb 2021 04:28:18 -0800 (PST)
Cc:     mtk.manpages@gmail.com, Jonathan Wakely <jwakely@redhat.com>,
        linux-man@vger.kernel.org
Subject: Re: [PATCH] stat.2: Remove <unistd.h> from synopsis
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20210209120116.15711-1-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <c64b84d6-f193-8bdb-ea7b-995f41c4e4d7@gmail.com>
Date:   Tue, 9 Feb 2021 13:28:17 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.0
MIME-Version: 1.0
In-Reply-To: <20210209120116.15711-1-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 2/9/21 1:01 PM, Alejandro Colomar wrote:
> From: Jonathan Wakely <jwakely@redhat.com>
> 
> There seems to be no reason <unistd.h> is shown here, so remove it.
> 
> Signed-off-by: Jonathan Wakely <jwakely@redhat.com>
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>

Thanks. Patch applied.

Cheers,

Michael

> ---
>  man2/stat.2 | 1 -
>  1 file changed, 1 deletion(-)
> 
> diff --git a/man2/stat.2 b/man2/stat.2
> index 734c74b04..fed926715 100644
> --- a/man2/stat.2
> +++ b/man2/stat.2
> @@ -43,7 +43,6 @@ stat, fstat, lstat, fstatat \- get file status
>  .nf
>  .B #include <sys/types.h>
>  .B #include <sys/stat.h>
> -.B #include <unistd.h>
>  .PP
>  .BI "int stat(const char *" pathname ", struct stat *" statbuf );
>  .BI "int fstat(int " fd ", struct stat *" statbuf );
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
