Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A65E925E754
	for <lists+linux-man@lfdr.de>; Sat,  5 Sep 2020 13:42:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728468AbgIELmi (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 5 Sep 2020 07:42:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57532 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726597AbgIELmh (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 5 Sep 2020 07:42:37 -0400
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com [IPv6:2a00:1450:4864:20::341])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B3A3EC061244
        for <linux-man@vger.kernel.org>; Sat,  5 Sep 2020 04:42:36 -0700 (PDT)
Received: by mail-wm1-x341.google.com with SMTP id b79so9073800wmb.4
        for <linux-man@vger.kernel.org>; Sat, 05 Sep 2020 04:42:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=DTHIMk0UBqPt32U1bWkvdAWu2FD/R16M8Jx7W92wx1U=;
        b=VvKPNDtt9+26fBtk/QFJNVy/iGwjjTSTA/WQS07258aKU6w17AJ2tUA47sdBJOsy9p
         B3OpPcQ3y8CHmd+Sd04pB3SKPMC0S+pKqOdJr32+29roT+IYn76Dgf01W7m32U5lMO6O
         ZXyMBHhOLIM9BvIMyN9bMy+vyRIFHY9q3lTNwiXxwK8/iFP6gS+2BNY1AYNdjIwW3aZB
         eAYPk/gNBRHpqnfc+89Ymgvgchp2/XiJkFxGkMCTrMmFcVmx+lF65Pj6L6YV7BIp75mP
         EDYowraA5jEk2APp23RSZ1jZqLupX7t6OQ1TTVEi3pJsK2v3YRxlCmGCI4o3SEBxjicQ
         Otyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=DTHIMk0UBqPt32U1bWkvdAWu2FD/R16M8Jx7W92wx1U=;
        b=XBaHm9CJDaDCNDcj7Q4AChc1XtMEIeozcyZfrLBi4tPGuYYRD6Asaomz5q6Fzlt5DG
         pyK5oi1KAM7KBU/DMeXHwA7I2VcCCtp2Uw+PW4F5Aml4RGFJW87HA86MkAAOKub5lYoT
         A1QuZZV4FWhdHriWOt71WyysQFLf6FbtO14grQ/VVAP4pmDw7zf9ttaLnWslhWaXwFm9
         NQD6Zd5HT7zl+I6I8Bj0mhVOju+S+Jbl8kFBO/rZLf5PTyccAuioiaMlKj4xvb+HVPQ5
         O1qA/YKBfid/tJAfOAPw87zXLEyOJj+nLgdYJC1wL/dosrokA5cFjKlQDEEmLzFNNwYG
         WyKg==
X-Gm-Message-State: AOAM531AzTZvRg0R+5bpmbecgPiC7JIl6gbGw9F7svBbcpK5Gw3UG1CO
        ciaqRKpP+JKpitAf4sZ76yFycsIdkXE=
X-Google-Smtp-Source: ABdhPJxKDVtm9cQcJVSTtbKd8ONKke0EN7vP8GvIoR9tKmpsx/iRJ2aCZ96QhUQd2h/oMUwEfxkXNw==
X-Received: by 2002:a1c:a789:: with SMTP id q131mr11650084wme.141.1599306155048;
        Sat, 05 Sep 2020 04:42:35 -0700 (PDT)
Received: from [192.168.0.160] ([93.115.133.118])
        by smtp.gmail.com with ESMTPSA id 91sm19089947wrq.9.2020.09.05.04.42.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 05 Sep 2020 04:42:34 -0700 (PDT)
Subject: Re: [PATCH] fanotify.3: Pass array to read(2) directly instead of a
 pointer to it
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org
References: <20200905112844.228160-1-colomar.6.4.3@gmail.com>
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
Message-ID: <5cfd695c-dfaf-a58f-f4d4-174617cd2f23@gmail.com>
Date:   Sat, 5 Sep 2020 13:42:33 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <20200905112844.228160-1-colomar.6.4.3@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Michael,

I had a typo in the subject.  It's fanotify.7; please fix it when
applying the patch.

Cheers,
Alex

On 9/5/20 1:28 PM, Alejandro Colomar wrote:
> It doesn't make any sense to pass a pointer to the array to read(2).
> 
> It might make sense to pass a pointer to the first element of the array,
> but that is already implicitly done when passing the array, which decays
> to that pointer, so it's simpler to pass the array.
> 
> And anyway, the cast was unneeded, as any pointer is implicitly casted
> to `void *`.
> 
> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
> ---
>  man7/fanotify.7 | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/man7/fanotify.7 b/man7/fanotify.7
> index c18ab68ed..c3d40b56d 100644
> --- a/man7/fanotify.7
> +++ b/man7/fanotify.7
> @@ -818,7 +818,7 @@ handle_events(int fd)
>  
>          /* Read some events */
>  
> -        len = read(fd, (void *) &buf, sizeof(buf));
> +        len = read(fd, buf, sizeof(buf));
>          if (len == \-1 && errno != EAGAIN) {
>              perror("read");
>              exit(EXIT_FAILURE);
> @@ -1111,7 +1111,7 @@ main(int argc, char **argv)
>  
>      /* Read events from the event queue into a buffer */
>  
> -    len = read(fd, (void *) &events_buf, sizeof(events_buf));
> +    len = read(fd, events_buf, sizeof(events_buf));
>      if (len == \-1 && errno != EAGAIN) {
>          perror("read");
>          exit(EXIT_FAILURE);
> 
