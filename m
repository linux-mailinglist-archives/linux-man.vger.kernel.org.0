Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 89201202930
	for <lists+linux-man@lfdr.de>; Sun, 21 Jun 2020 08:58:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729356AbgFUG6R (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 21 Jun 2020 02:58:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49076 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729346AbgFUG6R (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 21 Jun 2020 02:58:17 -0400
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com [IPv6:2a00:1450:4864:20::341])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3ABBBC061794
        for <linux-man@vger.kernel.org>; Sat, 20 Jun 2020 23:58:16 -0700 (PDT)
Received: by mail-wm1-x341.google.com with SMTP id f18so281491wml.3
        for <linux-man@vger.kernel.org>; Sat, 20 Jun 2020 23:58:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=PBK2Nlhrxf60bR6/lLzWh+3O87CDTJVTzWLqazXZV04=;
        b=UVCSfLh9zmoMI0uWw5y94EWQCIq7oLAUXWay1FPVLqZ6BFQTlWyAPGpZZUfKqccE8m
         CAaJbbBDSOe/dYtnH4x1ZVgsZieMsAm4Hk8P6HYZ+Zi1anefRzZ+M1BFqNQQYA1FUhxK
         BeApQLmcR3UanKoGifjNc2zneQXojirwLuoqVYkgOomSHFLVsDt2o/khuX98y7pkm1Ja
         AyAoWrenHPCiA6twoULcxPfYW9IIFDL0F25TRvRN3jxCGBOJDob+QADKt5yN7l4VBnvW
         ebSDgvdTUhcmGIsjlx+mzpBVW8xqyJ52xkoxO/7h39Ve0jxkGEDJiidYyEg1s78Ax/2b
         X+IA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=PBK2Nlhrxf60bR6/lLzWh+3O87CDTJVTzWLqazXZV04=;
        b=IHwGSoaS3F9mFdMO4BXcQTXYNglcnzRavPSzfcevq/Emumin33juWg2+I/+KWlj5zM
         bJa7rMbAizUPH1PlTtCU7E+9FzpM+BLseVf7wU7loz874nOcKGPKPLUgGnk3SRc03arr
         erctRzOf+Bgkv9LRDjZOT7KBdqPdxjV1lgEEoDyDA/LzPfP3S8FcBTFfvjP1Nak1kljF
         DOGR4N4tYRxWSmU72OKaabuP327k5r5bCfAwRDe9srdtQ9dQMl4eC0BhOEY+TB/UOk8j
         Wh2kHptT70YrTiByRD5ev7b5Tawg6tre4JqJgzR/ka+gtaDet7WurrjxRfHqoIIOi4N5
         dGNQ==
X-Gm-Message-State: AOAM533+MDE0FANHsxbHcgW0OPO6iNhZbXhBePuxxu0MkjYcCMOI6vGy
        RLAEHftzeBEpw3+kECcZovCVC6EP
X-Google-Smtp-Source: ABdhPJyAWTyw9wRmtL9/FkYo6+5VQTZpT9UqlpOkjvSYb9OtdXBRDyFMaEWTdvjR29beRSVdvthEtA==
X-Received: by 2002:a7b:c18f:: with SMTP id y15mr4452053wmi.85.1592722694635;
        Sat, 20 Jun 2020 23:58:14 -0700 (PDT)
Received: from ?IPv6:2001:a61:253c:8201:b2fb:3ef8:ca:1604? ([2001:a61:253c:8201:b2fb:3ef8:ca:1604])
        by smtp.gmail.com with ESMTPSA id z1sm4235301wru.30.2020.06.20.23.58.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 20 Jun 2020 23:58:14 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] man4/*: srcfix, remove trailing space in "strings"
To:     Bjarni Ingi Gislason <bjarniig@rhi.hi.is>
References: <20200620153947.GA19551@rhi.hi.is>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <f165b13d-ee0b-c58b-470b-ab738e013227@gmail.com>
Date:   Sun, 21 Jun 2020 08:58:13 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200620153947.GA19551@rhi.hi.is>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Bjarni,

On 6/20/20 5:39 PM, Bjarni Ingi Gislason wrote:
>   Trim trailing space.
> 
>   There is no change in the output from "nroff" and "groff".

Thanks. Applied.

Cheers,

Michael

> Signed-off-by: Bjarni Ingi Gislason <bjarniig@rhi.hi.is>
> ---
>  man4/console_codes.4 | 4 ++--
>  man4/initrd.4        | 2 +-
>  man4/loop.4          | 2 +-
>  3 files changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/man4/console_codes.4 b/man4/console_codes.4
> index 113f43151..be34a0d91 100644
> --- a/man4/console_codes.4
> +++ b/man4/console_codes.4
> @@ -397,11 +397,11 @@ ESC [ 11 ; \fIn\fP ]	Set bell duration in msec.
>  ESC [ 12 ; \fIn\fP ]	Bring specified console to the front.
>  ESC [ 13 ]      	Unblank the screen.
>  ESC [ 14 ; \fIn\fP ]   	Set the VESA powerdown interval in minutes.
> -ESC [ 15 ]      	T{
> +ESC [ 15 ]	T{
>  Bring the previous console to the front
>  (since Linux 2.6.0).
>  T}
> -ESC [ 16 ; \fIn\fP ]   	T{
> +ESC [ 16 ; \fIn\fP ]	T{
>  Set the cursor blink interval in milliseconds
>  (since Linux 4.2).
>  T}
> diff --git a/man4/initrd.4 b/man4/initrd.4
> index a10736456..e41917817 100644
> --- a/man4/initrd.4
> +++ b/man4/initrd.4
> @@ -75,7 +75,7 @@ is a read-only block device.
>  This device is a RAM disk that is initialized (e.g., loaded)
>  by the boot loader before the kernel is started.
>  The kernel then can use
> -.IR /dev/initrd "'s "
> +.IR /dev/initrd "'s"
>  contents for a two-phase system boot-up.
>  .PP
>  In the first boot-up phase, the kernel starts up
> diff --git a/man4/loop.4 b/man4/loop.4
> index 510ed88a7..1623cad0e 100644
> --- a/man4/loop.4
> +++ b/man4/loop.4
> @@ -42,7 +42,7 @@ You could do
>  .in +4n
>  .EX
>  $ \fBdd if=/dev/zero of=file.img bs=1MiB count=10\fP
> -$ \fBsudo losetup /dev/loop4 file.img \fP
> +$ \fBsudo losetup /dev/loop4 file.img\fP
>  $ \fBsudo mkfs -t ext4 /dev/loop4\fP
>  $ \fBsudo mkdir /myloopdev\fP
>  $ \fBsudo mount /dev/loop4 /myloopdev\fP
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
