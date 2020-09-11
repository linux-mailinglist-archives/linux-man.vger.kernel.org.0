Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3E6DF265986
	for <lists+linux-man@lfdr.de>; Fri, 11 Sep 2020 08:43:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725648AbgIKGn4 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 11 Sep 2020 02:43:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37556 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725554AbgIKGnu (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 11 Sep 2020 02:43:50 -0400
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com [IPv6:2a00:1450:4864:20::444])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 245DBC061573;
        Thu, 10 Sep 2020 23:43:50 -0700 (PDT)
Received: by mail-wr1-x444.google.com with SMTP id j2so10306180wrx.7;
        Thu, 10 Sep 2020 23:43:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=/PEqdz6kek6imSoLr0s9GQav2iztEwRa4BKu9rx9x8M=;
        b=sg0QGRToWcgid0izMSBf1HCMVb1rakBYorJ8B2XW9aeu2qlUqpN1FfJK7Tfm9+fzJp
         Rgkujcbhhc66Gc5PJSQ8UvbA+jHApS9ggRAqJ33iYDB78kPN7RT9fco/ktR+o1lrddnE
         vZv+QSa8t98XiRU5H5j0kzLHglITqukLSYXWjmKBRKQzZBJjmKk2BmAWSVs/XdSOdrxH
         khDNKxPb/ucWjkAmJ70c6/YWPu8OHC/7+5qjAglBiBh+9QeRVdOXHR16KRrYawdCMpRW
         j/aWkDmtEch/xghaAl0U341KmfjRR/jXjfgSLSbOsSW2avnM3aC0mOxutcyW7uu4fMBs
         UBww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=/PEqdz6kek6imSoLr0s9GQav2iztEwRa4BKu9rx9x8M=;
        b=iPM7N0ltupkqcgeLhPVXnrscNWed+GNSKRoiDbd6uOMbYD4QCdpFyeLu+pGiUIuall
         3C2b0m+pD+eisWLFZubY+akKUyzPtAq/6K5iUETkNkS/yXZ9USJ24sJWxJj1zW3IMnPw
         qFJ7RKtz3EV1gEHQJ6ZVaO+uGetSFhQ6WM+Hq5lX1uWBcLfMRGzb/gYjpJZSTGFOvaPR
         XtRcbHO3S4NpdQJXIkCRGjg31igwD6y+t8IpdioE+hREeUmHjEHE9zKnbTzemurC99DD
         r3JmlaOmsxVgInBWr1l/3+rGth9sYF7R1l6XkZM9nzKMNhPow9XwDzPU9inytPF1T8bn
         GwKA==
X-Gm-Message-State: AOAM533MNKNcAWuf/N0gH7xywp26ZcUkCl8Pu6YwGr4pzn3YdD344nAJ
        7kqSLckcVOgyPXblNYr4dB+z/YtNSAg=
X-Google-Smtp-Source: ABdhPJx4ObVV4+EcBNP4RZiKHJAG0RWFLa4exb+wjm1wldRMzBHfuz5LdbjG8jzo+Yu7bCeGq2/TIA==
X-Received: by 2002:adf:f290:: with SMTP id k16mr524962wro.124.1599806628645;
        Thu, 10 Sep 2020 23:43:48 -0700 (PDT)
Received: from ?IPv6:2001:a61:2479:6801:d8fe:4132:9f23:7e8f? ([2001:a61:2479:6801:d8fe:4132:9f23:7e8f])
        by smtp.gmail.com with ESMTPSA id a15sm2883539wrn.3.2020.09.10.23.43.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Sep 2020 23:43:48 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH 17/24] get_phys_pages.3: Write 'long' instead of 'long
 int'
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <20200910211344.3562-1-colomar.6.4.3@gmail.com>
 <20200910211344.3562-18-colomar.6.4.3@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <57693efb-882c-bdd1-f4e8-170a1fe1b0cf@gmail.com>
Date:   Fri, 11 Sep 2020 08:43:47 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200910211344.3562-18-colomar.6.4.3@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 9/10/20 11:13 PM, Alejandro Colomar wrote:
> For consistency.
> 
> Most man pages use 'long' instead of 'long int'.
> 
> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>

Thanks, Alex. Patch applied.

Cheers,

Michael

> ---
>  man3/get_phys_pages.3 | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/man3/get_phys_pages.3 b/man3/get_phys_pages.3
> index 4a9177dfd..97ba625b7 100644
> --- a/man3/get_phys_pages.3
> +++ b/man3/get_phys_pages.3
> @@ -30,8 +30,8 @@ page counts
>  .nf
>  .B "#include <sys/sysinfo.h>"
>  .PP
> -.B long int get_phys_pages(void);
> -.B long int get_avphys_pages(void);
> +.B long get_phys_pages(void);
> +.B long get_avphys_pages(void);
>  .fi
>  .SH DESCRIPTION
>  The function
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
