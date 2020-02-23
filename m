Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 017ED169A17
	for <lists+linux-man@lfdr.de>; Sun, 23 Feb 2020 21:51:05 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726534AbgBWUvF (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 23 Feb 2020 15:51:05 -0500
Received: from mail-wr1-f68.google.com ([209.85.221.68]:45471 "EHLO
        mail-wr1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726302AbgBWUvF (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 23 Feb 2020 15:51:05 -0500
Received: by mail-wr1-f68.google.com with SMTP id g3so7968385wrs.12
        for <linux-man@vger.kernel.org>; Sun, 23 Feb 2020 12:51:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=8NUNmklLc/zcGNX9Fq8/8dVuhdtpwbvotRQFnmuKHpE=;
        b=J3dPuTvm37x/RTKThsaDvRyfnb7e8PWn+/fJg6NwdBd81NmJo9FMHBCc6679SjvsKq
         oakMOyrCh/lM7gTNSrJ5+EHulbn7q7mFvjYRGlh79Fx6Mop4iK/bSqgH1DluajnccHtW
         joK7P8vWZUYnZxZkuWDEfcID18HkoN//HqS5DgGpn2SUAMFfCCKcaY/0pSdsDwaLE+6q
         k/DDwFB/cEymTS6cx0JFQNEeKXwBsDLChhQ8x5LZddvLTJ/XpKHotyGwH1htkts7pkyd
         VQBAFCjLGU9BFLtblthKPx0VkWerPmc0WS0Tp3xbXMYoj4zxfnAHxySITKfRWT01DU+B
         5Reg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=8NUNmklLc/zcGNX9Fq8/8dVuhdtpwbvotRQFnmuKHpE=;
        b=P/gv0Bwg4/XK6GGPEQlBcomxzsY9uOatvPrNjNYdfsSOhN+NYGwJ8OLEBVOVJJtPIB
         i2Hw24J+Qnl03BWRvDlvqq6zqLSrpmQgir8qQt1/m2GUDZlh7Dz1JhDz+K0lhOAMk28H
         Zuo9yP19qg26smSh+p5gHw9+nHNi7gTLPMdqt+sfeX2CvUktwgNM/4tFUIUj2UJNougF
         WmiiCuCZGHchRDPb7D0djE+rVSvRfjKdzwi7N0gTf7juB5hzgGPVdmLCiX05zj4ThRQA
         nhhRUuPIPBj7q0qLK3AeSF95ne+sH5DpNr0RFlR6k8vHkJYvGA+MOHEXqOlIZ53q3vOG
         ++7g==
X-Gm-Message-State: APjAAAXy1TQh+A7YnSXMoxZNdtHJabMEI5rpJEt5NEO9kCCQXvJZ3vA+
        qVVOh6reS8F5/i3ZGz1DuFjEZrD5
X-Google-Smtp-Source: APXvYqzeAP1muqNx7k6cUNXMJNwAZcFiTpfFSypJQR6WxRLqfiRqTLFYYq0oTFCDOXIhSIY16D1oZA==
X-Received: by 2002:a5d:61cb:: with SMTP id q11mr65437355wrv.71.1582491061490;
        Sun, 23 Feb 2020 12:51:01 -0800 (PST)
Received: from ?IPv6:2001:a61:3ab0:601:eabf:519f:11af:545d? ([2001:a61:3ab0:601:eabf:519f:11af:545d])
        by smtp.gmail.com with ESMTPSA id c74sm15644780wmd.26.2020.02.23.12.51.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 23 Feb 2020 12:51:00 -0800 (PST)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] syscalls.2: tfix
To:     Eugene Syromyatnikov <evgsyr@gmail.com>
References: <20200214153157.GA12782@asgard.redhat.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <d08e9ade-2707-92cd-dc97-8e5e83923ec7@gmail.com>
Date:   Sun, 23 Feb 2020 21:51:00 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200214153157.GA12782@asgard.redhat.com>
Content-Type: text/plain; charset=windows-1252
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Eugene,

On 2/14/20 4:31 PM, Eugene Syromyatnikov wrote:
> Signed-off-by: Eugene Syromyatnikov <evgsyr@gmail.com>
> ---
>  man2/syscalls.2 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/man2/syscalls.2 b/man2/syscalls.2
> index 02662c0..637ad2c 100644
> --- a/man2/syscalls.2
> +++ b/man2/syscalls.2
> @@ -577,7 +577,7 @@ T}
>  \fBpwrite64\fP(2)		T{
>  Added as "pwrite" in 2.2;
>  .br
> -renamed "pwrite64" in 2.6
> +renamed to "pwrite64" in 2.6

Your change is not wrong. But, the existing text is also okay
as an abbreviated form. So, I don't apply this patch.

Thanks,

Michael

>  T}
>  \fBpwritev\fP(2)	2.6.30
>  \fBpwritev2\fP(2)	4.6
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
