Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DDCB0265C54
	for <lists+linux-man@lfdr.de>; Fri, 11 Sep 2020 11:18:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725774AbgIKJS0 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 11 Sep 2020 05:18:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33158 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725765AbgIKJSZ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 11 Sep 2020 05:18:25 -0400
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com [IPv6:2a00:1450:4864:20::444])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A01A5C061573;
        Fri, 11 Sep 2020 02:18:24 -0700 (PDT)
Received: by mail-wr1-x444.google.com with SMTP id w5so10730519wrp.8;
        Fri, 11 Sep 2020 02:18:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=j/ep5OxiTUY3sy3hACjSJger/1Y4Ud5sNv9ey9HLoYM=;
        b=oddSqG4JQUVs3cRriWr+i9e+WSQ1RDxZUWj1YO2WP3ZY9z6mZXMG7dSg0kE5oyOd3x
         W2zY195wIDWxTyE9VJl0DYQSA7+e9qzJB+ooEmvXLYGUN1qFBJaT3fjb+7tLQqL81Eb/
         +MTUmhyAL1V2JSLKprGf6AjL+FOvX4gi0z4e0Qz/OmthcSTejn5/WoB46bfD8KueCmJg
         5W8diGWFFgd7vstGYYr8LsyiIjV38ikuEunDVQbRFtgfZxELI5zueKPWRihdv921ng/j
         U11Syf1szOR7ydVjQwhMg0c1b4X66tJdE6aLsf8SVzOUEuNXVKq4SiGvtUZow8tuDIZv
         3srA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=j/ep5OxiTUY3sy3hACjSJger/1Y4Ud5sNv9ey9HLoYM=;
        b=pwltBjliwWWjjeaGwhf0SjeTSMMqsAm499JRIv4kvt1l9wLI3NnBy3yDp0qc6QJxki
         UjxmfIcKSx5m6JZRg3XnLVoFtVjBQV+H1+F5nW6xwYL5qLARkzpBO17vOTByGnxZkd57
         vhNvHJmqip+DEFau3pQa9/PynjzdMPt0utf1KYUoyZGD6iqXJaRl/BtJo6IKH5UJ4aFm
         gkMm76yC7VIUBEMno0irvYXfb4YwRpzs3Fqm9No1sK0c1JQpzTRc/o8s1ckU/Q7QdU5G
         WmfLryv9PJfGOMuJRuav67lYQepv1f6LS2wFLXWf5Fszlvp/L4HMhasJl2a0H/VqaN1b
         oJ4g==
X-Gm-Message-State: AOAM532rhR/Nr3ySLaMuLRkHNXll9jfFsBiKGAuQMGkeKM7rpQNrPgH0
        Pter2Nthv10UMR4RkhlpBokBiIMVzmU=
X-Google-Smtp-Source: ABdhPJygnwo4JxVLOq309l6I+A3/4/l1H+TqyF4/S6RowBnwD0fzmKYVPS6WLRjfpwa8CjwWIQoOnQ==
X-Received: by 2002:adf:ef45:: with SMTP id c5mr1040884wrp.37.1599815902852;
        Fri, 11 Sep 2020 02:18:22 -0700 (PDT)
Received: from ?IPv6:2001:a61:2479:6801:d8fe:4132:9f23:7e8f? ([2001:a61:2479:6801:d8fe:4132:9f23:7e8f])
        by smtp.gmail.com with ESMTPSA id t203sm3092439wmg.43.2020.09.11.02.18.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Sep 2020 02:18:22 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 10/24] ioctl_ns.2: Cast to 'unsigned long' rather than
 'long' when printing with "%lx"
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <20200910211344.3562-1-colomar.6.4.3@gmail.com>
 <20200910211344.3562-11-colomar.6.4.3@gmail.com>
 <e17f617a-4ba2-8788-20fa-7c2596d67ec6@gmail.com>
 <816259de-c577-55c7-9894-11c088720ea7@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <61651116-8684-1d3f-6313-d207a4c07e17@gmail.com>
Date:   Fri, 11 Sep 2020 11:18:21 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <816259de-c577-55c7-9894-11c088720ea7@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 9/11/20 11:13 AM, Alejandro Colomar wrote:
> Hi Michael,
> 
> On 2020-09-11 09:24, Michael Kerrisk (man-pages) wrote:
>> This may be true on Linux, but is not true on other systems.
>> For example, on HP-UX, according to one header file I'm
>> looking at, the return value is 'long'. >
>> These kinds of casts are intended to improve code portability
>> across UNIX implementations, so I think they should stay
>> (although, I do wonder if they would be even better as casts
>> to 'unsigned long')
> 
> Fine, then here is the patch with the casts to 'unsigned long'.

Thanks. Patch applied.

Cheers,

Michael

> -------------------------------------------------------------
>  From c5f644e798ffc5dec0c73f324a26059568865c68 Mon Sep 17 00:00:00 2001
> From: Alejandro Colomar <colomar.6.4.3@gmail.com>
> Date: Fri, 11 Sep 2020 10:51:26 +0200
> Subject: [PATCH v2 10/24] ioctl_ns.2: Cast to 'unsigned long' rather 
> than 'long'
>   when printing with "%lx"
> 
>  From the email conversation:
> 
> On 2020-09-11 09:24, Michael Kerrisk (man-pages) wrote:
>  > Hi Alex,
>  >
>  > On 9/10/20 11:13 PM, Alejandro Colomar wrote:
>  >> Both major(3) and minor(3) return an 'unsigned int',
>  >> so there is no need to use a 'long' for printing.
>  >> Moreover, it should have been 'unsigned long',
>  >> as "%lx" expects an unsigned type.
>  >
>  > This may be true on Linux, but is not true on other systems.
>  > For example, on HP-UX, according to one header file I'm
>  > looking at, the return value is 'long'.
>  >
>  > These kinds of casts are intended to improve code portability
>  > across UNIX implementations, so I think they should stay
>  > (although, I do wonder if they would be even better as casts
>  > to 'unsigned long')
>  >
>  > Thanks,
>  >
>  > Michael
> 
> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
> ---
>   man2/ioctl_ns.2 | 6 ++++--
>   1 file changed, 4 insertions(+), 2 deletions(-)
> 
> diff --git a/man2/ioctl_ns.2 b/man2/ioctl_ns.2
> index 818dde32c..8b8789d1f 100644
> --- a/man2/ioctl_ns.2
> +++ b/man2/ioctl_ns.2
> @@ -317,7 +317,8 @@ main(int argc, char *argv[])
>           }
>           printf("Device/Inode of owning user namespace is: "
>                   "[%lx,%lx] / %ld\en",
> -                (long) major(sb.st_dev), (long) minor(sb.st_dev),
> +                (unsigned long) major(sb.st_dev),
> +                (unsigned long) minor(sb.st_dev),
>                   (long) sb.st_ino);
> 
>           close(userns_fd);
> @@ -346,7 +347,8 @@ main(int argc, char *argv[])
>               exit(EXIT_FAILURE);
>           }
>           printf("Device/Inode of parent namespace is: [%lx,%lx] / %ld\en",
> -                (long) major(sb.st_dev), (long) minor(sb.st_dev),
> +                (unsigned long) major(sb.st_dev),
> +                (unsigned long) minor(sb.st_dev),
>                   (long) sb.st_ino);
> 
>           close(parent_fd);
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
