Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 97B3E267E14
	for <lists+linux-man@lfdr.de>; Sun, 13 Sep 2020 08:02:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725909AbgIMGCC (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 13 Sep 2020 02:02:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50230 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725894AbgIMGCA (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 13 Sep 2020 02:02:00 -0400
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com [IPv6:2a00:1450:4864:20::342])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 320CBC061574
        for <linux-man@vger.kernel.org>; Sat, 12 Sep 2020 23:02:00 -0700 (PDT)
Received: by mail-wm1-x342.google.com with SMTP id a9so8213533wmm.2
        for <linux-man@vger.kernel.org>; Sat, 12 Sep 2020 23:02:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=XZ4NbMS6eXNFsd+ZyEEF+UxIhRrDD3EKDMY8zxxKVwc=;
        b=MF0TTBzwARWoAri1egnIWtacAXHZJLupq6OV9aZGHByRqLLSCFgoJVxUGwUEeytFF7
         S3R8iKK9cm7OaA+0FUv48zi4kkfVs140czmc8nX63nad3Or6xxDLxtwDo6tccX5hjhq7
         dRyN0KGws+DgYXgYOgcRrrRQut/+OlmHkJtRcKWIL3EhTt38MjRnH2liHNORfSCAc5Fi
         kQjzz6TZcn2R06XchhfciF0+NTMbSU12+fe30X9fhEg8QHpRoUCd4ci1Mn6DXaazxP3f
         ttPQnI/2LY1caZC0fA2mNNG3yw32csgAyTG7z7GTCp6bDmk+7EWfjDnmInHHM6dliAKz
         es2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=XZ4NbMS6eXNFsd+ZyEEF+UxIhRrDD3EKDMY8zxxKVwc=;
        b=IkPwj1j2dvTgfEFs5RaI66STMvOL1jaDBgeyOvAiZjgjNi0UclG0XKyGKVEkMGO66P
         3UYUWFkfI+2FxkF6b1D/LsctxSG5gNA4tZYCpmPjSoPevc72JWTuroZGqoZ4JleURYid
         mHPdbOHyXMsyr+SxcTTMbV6MDHA+dq9cwDUS1WYJ9+lmi4NQ1YL5fVCoTo0sZrgJGYbm
         yH0n/tZUelPAe4SExPjCJXqoFdOgyoSWqFMojJegEoPvk2KwydM+oeLJk+tnwRso9iEV
         nITRPVUPD5Hg0kod44dgB3M63lDPbpBbShAPVJwhRpWPkZP5NBgJsbPfz4rPvRvosLj0
         OpkQ==
X-Gm-Message-State: AOAM533Q4+ymNQh+6v2QAZWNW6QWIBYtTYUDjIDqtoohL2OfLyxcHy7Y
        Y2BF2vv25OnDveL2/4rO9yB1xB5GEh8=
X-Google-Smtp-Source: ABdhPJzD3/fcebwlngc+cBjFvhwncbkibnIHDGaw8VJjHnsKb+YxDXUqDtcanJvE5Y8Hy9yTYRmDlA==
X-Received: by 2002:a1c:7d0c:: with SMTP id y12mr9503272wmc.103.1599976917863;
        Sat, 12 Sep 2020 23:01:57 -0700 (PDT)
Received: from ?IPv6:2001:a61:2479:6801:d8fe:4132:9f23:7e8f? ([2001:a61:2479:6801:d8fe:4132:9f23:7e8f])
        by smtp.gmail.com with ESMTPSA id v9sm13586528wru.37.2020.09.12.23.01.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 12 Sep 2020 23:01:57 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH 04/12] getgrent_r.3: Cast 'gid_t' to 'intmax_t' for
 printf()
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <20200911231411.28406-1-colomar.6.4.3@gmail.com>
 <20200911231411.28406-5-colomar.6.4.3@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <379ab003-0407-e11c-e3ed-bed3595ef2cc@gmail.com>
Date:   Sun, 13 Sep 2020 08:01:55 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200911231411.28406-5-colomar.6.4.3@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

See my reply to patch 05.

Thanks,

Michael

On 9/12/20 1:14 AM, Alejandro Colomar wrote:
> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
> ---
>  man3/getgrent_r.3 | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/man3/getgrent_r.3 b/man3/getgrent_r.3
> index 76deec370..8170cd417 100644
> --- a/man3/getgrent_r.3
> +++ b/man3/getgrent_r.3
> @@ -174,6 +174,7 @@ in the stream with all other threads.
>  #define _GNU_SOURCE
>  #include <grp.h>
>  #include <stdio.h>
> +#include <stdint.h>
>  #include <stdlib.h>
>  #define BUFLEN 4096
>  
> @@ -189,7 +190,7 @@ main(void)
>          i = getgrent_r(&grp, buf, sizeof(buf), &grpp);
>          if (i)
>              break;
> -        printf("%s (%d):", grpp\->gr_name, grpp\->gr_gid);
> +        printf("%s (%jd):", grpp\->gr_name, (intmax_t) grpp\->gr_gid);
>          for (int j = 0; ; j++) {
>              if (grpp\->gr_mem[j] == NULL)
>                  break;
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
