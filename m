Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 8BBFBB7342
	for <lists+linux-man@lfdr.de>; Thu, 19 Sep 2019 08:38:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2388106AbfISGij (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 19 Sep 2019 02:38:39 -0400
Received: from mail-lf1-f67.google.com ([209.85.167.67]:42733 "EHLO
        mail-lf1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2388094AbfISGij (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 19 Sep 2019 02:38:39 -0400
Received: by mail-lf1-f67.google.com with SMTP id c195so1455778lfg.9
        for <linux-man@vger.kernel.org>; Wed, 18 Sep 2019 23:38:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=CSYdXoN7fy1ClsdByj1ImRjCmeqNrRNvzkOxUMCLKW0=;
        b=rpBOPxxl1B3VzVdY5iOvmnnjNqWjYex83MpFR/GBfDpd2JUEwFGNmWozqhU+seu1/f
         5cWLYuD20fg6/QLpSY+XK7F1UHIvXMskaZDMmah8PmOYMcrOukvva3NqReaRZSNu6o47
         piwAzg+PmyJIsoGgxoIdDUOYKFTvOTX3KFmNUqHHokeAwol/zMlt6XhTPdRwke5gqAVu
         T+SutVntwpK0WqSzkoufqOmn/ataTF7NESUx5d2Ky1Mn9Fd4eo8DJ3s7uscIbGsWDxZS
         +W4in9/W96As7vMPANVQv7BpKRsWZ97wa1iSvmukLeGKHkVkEiGSZJWT6+2e0wHAuDQA
         /idg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=CSYdXoN7fy1ClsdByj1ImRjCmeqNrRNvzkOxUMCLKW0=;
        b=KSkZNV6k6PpURn8fPVLXx2I5S7/ajxROOWKr7LyHjRJ9jJQ7Zz7eTWswhQLw+yhAEJ
         vZNRiUA/MWJdW4MVCv5gyOlCWvuP+n2VsNuXHrhRNHAtEseUQrCZ+CYHIcNVp9+1b+0j
         LYyawsYwmyCMNYIItAN7Hntor/YtTytkwfboOFoE1Keh6w6ZjwSktD5ly6fddi2JD27A
         wzT9lbpaipD61zlLw6YS0IH04UWL+dujp6RvJ2V0F/VRZTx3OE7KMkCGywCh/dMS1xmk
         NPsfGmzHGGrxcib1lumNQjxntsmNSxFvXDqnKn5PTUqbyswlYUPhwODtYfxo04jdgQVU
         YEIw==
X-Gm-Message-State: APjAAAU8/5pgGsmzhv2k8BmwHUOyQ1lYeU5pQUy5aHyL8J6ZjFrZs5MG
        fuzwVeVT9ejOLvS680DNDlJHOy0KG5g=
X-Google-Smtp-Source: APXvYqzJ6Qw46XeCrHA8/Vyn6ntFfRQVlGJtUY+xyfJwhWeMMCbku918RiYFtZARZBPBG7xGKhxM5g==
X-Received: by 2002:ac2:54b4:: with SMTP id w20mr4053809lfk.3.1568875117131;
        Wed, 18 Sep 2019 23:38:37 -0700 (PDT)
Received: from [10.6.5.246] ([85.235.16.11])
        by smtp.gmail.com with ESMTPSA id 77sm1423969ljj.84.2019.09.18.23.38.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Sep 2019 23:38:36 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] setns.2: fix CLONE_NEWNS restriction info
To:     Mike Frysinger <vapier@gentoo.org>
References: <20190919054342.5405-1-vapier@gentoo.org>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <0f6c29d9-5c1f-acf4-c771-3c780961bb0b@gmail.com>
Date:   Thu, 19 Sep 2019 08:38:36 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190919054342.5405-1-vapier@gentoo.org>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Mike,

On 9/19/19 7:43 AM, Mike Frysinger wrote:
> Threads are allowed to switch mount namespaces if the filesystem
> details aren't being shared.  That's the purpose of the check in
> the kernel quoted by the comment:
>     if (fs->users != 1)
>         return -EINVAL;
> 
> It's been this way since the code was originally merged in v3.8.

Thanks. Patch applied.

Cheers,

Michael

> Signed-off-by: Mike Frysinger <vapier@gentoo.org>
> ---
>  man2/setns.2 | 8 ++++++--
>  1 file changed, 6 insertions(+), 2 deletions(-)
> 
> diff --git a/man2/setns.2 b/man2/setns.2
> index 18e80202326a..5985c099b464 100644
> --- a/man2/setns.2
> +++ b/man2/setns.2
> @@ -131,8 +131,12 @@ capabilities in its own user namespace and
>  .BR CAP_SYS_ADMIN
>  in the user namespace that owns the target mount namespace.
>  .IP
> -A process may not be reassociated with a new mount namespace if it is
> -multithreaded.
> +A process can't join a new mount namespace if it is sharing
> +filesystem-related attributes
> +(the attributes whose sharing is controlled by the
> +.BR clone (2)
> +.B CLONE_FS
> +flag) with another process.
>  .\" Above check is in fs/namespace.c:mntns_install() [3.8 source]
>  .IP
>  See
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
