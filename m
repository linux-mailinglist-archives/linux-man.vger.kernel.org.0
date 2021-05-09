Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 19B42377956
	for <lists+linux-man@lfdr.de>; Mon, 10 May 2021 01:46:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230014AbhEIXrX (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 9 May 2021 19:47:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37756 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229964AbhEIXrX (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 9 May 2021 19:47:23 -0400
Received: from mail-pj1-x102b.google.com (mail-pj1-x102b.google.com [IPv6:2607:f8b0:4864:20::102b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C794EC061573
        for <linux-man@vger.kernel.org>; Sun,  9 May 2021 16:46:19 -0700 (PDT)
Received: by mail-pj1-x102b.google.com with SMTP id l10-20020a17090a850ab0290155b06f6267so9012579pjn.5
        for <linux-man@vger.kernel.org>; Sun, 09 May 2021 16:46:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=CtUOqTXhAs5mibL1NM25PjhMP3yi8kyLTRT6Dp0ptmo=;
        b=ZKXsunQdkXTH8CLWBmJn3HYmyK5DxtMPSjtULf76M/Ft62O7silFSOpDEfJRnj6zJa
         hokRW5mk6J8LMYEy1O/QFNmnbTMG9fkxFZPqpIXZrU9xWvNQt5ElY9JNwx/fIx8ZvJ3Q
         C1WDgCB4xR15I8//gbFIt1ZsyZiYeWB5LrYLpDFCgdp0x8Muc+b0D1vqBNo8zHDHKUbp
         t0nCJKIzRO/h07wroSoQyIBs1h1LRZrLy7oz2GAdkpKsBNpLqRavtp/oC0Th+B9t+Z2p
         /4HDZ6pzkdJVCn0mOcjvIpOKeklu+aZvNo6T+qQTmzCCXHPn9hTHQegA/FjEAAiVFNDa
         Xjeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=CtUOqTXhAs5mibL1NM25PjhMP3yi8kyLTRT6Dp0ptmo=;
        b=eMDb97pq5FlAB96n6vmIy3pegSLy/mj8XnBJdkxQZdtfwXzxwiElzsca7W5st80/d6
         +ifE2tNidh1xw3xB+eOobwQG9NFVNKovgZ5S5JKtAv9KBWlu7hlb3KacOPCGsn1GNUyR
         jPQ6YKLWh4obvbqSH5/fI2eaXVPNAvmsBkC2NUNsHsGf+Wnxsj3MRVP4XobUkKqxPLyX
         NlHkTdncWM4JpyKUpvc2CMi3ndqAdJK0IbNWAIZuMKeH0ale0G5nQiFpypsUEI85Yn6x
         u1FVhkU27xBeGN0/1DfSERVmd2kSlm1pv7zxf+L+fFi0Cv2IXM4Qdj+IufsZv75CkBlB
         YqBg==
X-Gm-Message-State: AOAM531k3CAlF1t+GQkxtP8c+j3n2ByAQNw04VkDNgbRGu3eehxkhtEE
        wkloWKK7vDj8xdoqWAIp26zSg98U4i8=
X-Google-Smtp-Source: ABdhPJw+Sup4qjk1umpZcN0jZql3CKURQ5t7BnLXcr0wu2ewHy0QnInl7g9em3uJpR4HxNMw75shVg==
X-Received: by 2002:a17:90a:d255:: with SMTP id o21mr2180870pjw.136.1620603979094;
        Sun, 09 May 2021 16:46:19 -0700 (PDT)
Received: from [192.168.192.21] (47-72-82-130.dsl.dyn.ihug.co.nz. [47.72.82.130])
        by smtp.gmail.com with ESMTPSA id b21sm9291899pfl.82.2021.05.09.16.46.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 09 May 2021 16:46:18 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] system_data_types.7: tfix
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20210509213930.94120-1-alx.manpages@gmail.com>
 <20210509213930.94120-36-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <f8f1e644-1fb6-dc65-fc8c-5af22617e418@gmail.com>
Date:   Mon, 10 May 2021 11:46:15 +1200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <20210509213930.94120-36-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 5/10/21 9:39 AM, Alejandro Colomar wrote:
> Those pages didn't exist.  Fix the section number.
> I noticed the typo thanks to the HTML pages on man7.org.
> 
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>


Applied.

Thanks,

Michael



> ---
>  man7/system_data_types.7 | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
> index e038aab1e..ddabefd16 100644
> --- a/man7/system_data_types.7
> +++ b/man7/system_data_types.7
> @@ -374,7 +374,7 @@ POSIX.1-2001 and later.
>  .BR getegid (2),
>  .BR getgroups (2),
>  .BR getresgid (2),
> -.BR getgrnam (2),
> +.BR getgrnam (3),
>  .BR credentials (7)
>  .RE
>  .\"------------------------------------- id_t -------------------------/
> @@ -675,7 +675,7 @@ C11 and later; POSIX.1-2001 and later.
>  .IR "See also" :
>  .BR setlocale (3),
>  .BR localeconv (3),
> -.BR charsets (5),
> +.BR charsets (7),
>  .BR locale (7)
>  .RE
>  .\"------------------------------------- ldiv_t -----------------------/
> @@ -1534,7 +1534,7 @@ POSIX.1-2001 and later.
>  .BR getuid (2),
>  .BR geteuid (2),
>  .BR getresuid (2),
> -.BR getpwnam (2),
> +.BR getpwnam (3),
>  .BR credentials (7)
>  .RE
>  .\"------------------------------------- uintmax_t --------------------/
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
