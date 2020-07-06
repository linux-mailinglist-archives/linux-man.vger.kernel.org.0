Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 272A8215688
	for <lists+linux-man@lfdr.de>; Mon,  6 Jul 2020 13:41:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728903AbgGFLlp (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 6 Jul 2020 07:41:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57934 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728441AbgGFLlp (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 6 Jul 2020 07:41:45 -0400
Received: from mail-ed1-x541.google.com (mail-ed1-x541.google.com [IPv6:2a00:1450:4864:20::541])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3AAA2C061794
        for <linux-man@vger.kernel.org>; Mon,  6 Jul 2020 04:41:45 -0700 (PDT)
Received: by mail-ed1-x541.google.com with SMTP id dg28so34477742edb.3
        for <linux-man@vger.kernel.org>; Mon, 06 Jul 2020 04:41:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=w6jy6BCLxBDope6R8/y30G/MgHlXFB+ERTX6i1ui+jI=;
        b=S60yDf3fPEkTy9MYlodt4Mgr7nCS2J/vfkPuhIWoMsZYMQXplzEvl+RM7CyKItjEHj
         hhWouEAwx7F4sdsoOTmGwvnVvOq6tj4aYsOKvo3MXIpf2WiuDo0g+W1uzTwMOXBEqfHh
         fqkGN/SsAKCCo3TfttZrXeZO9DxN3husXq8BAwmYNGNi7gLQ0WRsDY8xX0YDFALQW0K0
         YAb992RAxmVfM+aqgNjwbMvgQC/9h8jQYccxZgkJc7mVouyOh/T8AvTpLfUih4WoxplX
         YrnJXjUAR4YEucext1tHrbJgLZO4MDqt44r0wKv2sGcD3DvuVZbi8cEL9FBgPe7KqrbZ
         etLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=w6jy6BCLxBDope6R8/y30G/MgHlXFB+ERTX6i1ui+jI=;
        b=WgUAc/YPS0f5+An6hjSjRPGM+/HAGlHNqZXvlrC1F46uMnH++hR/BHu1Da0AgYo/pr
         MLQ5nnT91es/WYOExfJAvkZM70goZSP52aSngAvy5GX3I/UsoYVBq/bXC7+F4Cj5P0kW
         GxwXekAdTgmCycAUOMhsuLNo/2utMZU+e9cZnRrm4UT2uZf94vij3syA+/Pjwqj72BAJ
         lsCqaFxhEmi94FHMI+o0SL8W7mxuB27ue3KPkTYK8uAp2o5KDTcp6SQAi3+Pci0I1kkQ
         NtipTxSW9Q+l0GpczUFBD6a7CsIapiAb6KSvP6DKnx1hY0ZrQjp3UTBeU7lhvuxNlgd9
         HbYQ==
X-Gm-Message-State: AOAM531cLUDf2Q6zTpz6JfNqEkHpskIGubRwDCJOnaLmuory7WB+y9FZ
        84owHw4C/4GE2WktQ0v3N9uT2xFU
X-Google-Smtp-Source: ABdhPJydO0+eezcRIGJx2LHhReR9mbnu9Xl/BKauPXpWHM7Dv/DmxegaT2YE1g/P7oiZFCOapSz7zA==
X-Received: by 2002:a05:6402:1766:: with SMTP id da6mr53544595edb.48.1594035703709;
        Mon, 06 Jul 2020 04:41:43 -0700 (PDT)
Received: from ?IPv6:2001:a61:3adb:8201:9649:88f:51f8:6a21? ([2001:a61:3adb:8201:9649:88f:51f8:6a21])
        by smtp.gmail.com with ESMTPSA id n9sm16637446ejk.21.2020.07.06.04.41.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Jul 2020 04:41:43 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH 2/3] termios.3: tfix
To:     Jakub Wilk <jwilk@jwilk.net>
References: <20200706043907.9667-1-jwilk@jwilk.net>
 <20200706043907.9667-2-jwilk@jwilk.net>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <5dc7887e-a20a-f2bc-aeab-79c40bac1b9f@gmail.com>
Date:   Mon, 6 Jul 2020 13:41:42 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200706043907.9667-2-jwilk@jwilk.net>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 7/6/20 6:39 AM, Jakub Wilk wrote:
> Signed-off-by: Jakub Wilk <jwilk@jwilk.net>> ---
>  man3/termios.3 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)


Thanks, Jakub. Patch applied.

Cheers,

Michael

> diff --git a/man3/termios.3 b/man3/termios.3
> index b05f13a1b..e80db9e26 100644
> --- a/man3/termios.3
> +++ b/man3/termios.3
> @@ -860,7 +860,7 @@ transmits a continuous stream of zero-valued bits for a specific
>  duration, if the terminal is using asynchronous serial data
>  transmission.
>  If \fIduration\fP is zero, it transmits zero-valued bits
> -for at least 0.25 seconds, and not more that 0.5 seconds.
> +for at least 0.25 seconds, and not more than 0.5 seconds.
>  If \fIduration\fP is not zero, it sends zero-valued bits for some
>  implementation-defined length of time.
>  .PP
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
