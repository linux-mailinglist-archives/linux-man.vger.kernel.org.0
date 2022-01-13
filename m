Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CF23E48DF11
	for <lists+linux-man@lfdr.de>; Thu, 13 Jan 2022 21:37:05 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234115AbiAMUhE (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 13 Jan 2022 15:37:04 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35206 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230515AbiAMUhE (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 13 Jan 2022 15:37:04 -0500
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D259DC061574
        for <linux-man@vger.kernel.org>; Thu, 13 Jan 2022 12:37:03 -0800 (PST)
Received: by mail-wr1-x435.google.com with SMTP id a5so12286803wrh.5
        for <linux-man@vger.kernel.org>; Thu, 13 Jan 2022 12:37:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=sEqvGhqJO2ofchKY3oAlQLBCJBJ6OeXPz+1YshtBPmc=;
        b=OGNLEewBhEC85W20CxpMIJbpIoksFL5agXHgXMlrl8CE0W8wOBow2R32jcLM4ghskt
         QrhtsK/n7jnPyubdWBMli73TzYe6KOxDgInk+IUOkNeVCFHqfaOfwugHEKEYI1aESPKW
         ihFEhMBa3MuKZCtTKRbJabmrW7y3/LJDZdriIe4zq+PQU9j0aSaeXg2w5zABt/fH4Iyo
         LPsJ5R3iQoTZnKmlW5bC0c6gZkRe5qBVA586tnR5r6G/naCyUvT0tXIbbGy+iZOhhRZ/
         AZe+nfo6hD/74yvK7TK4xUvX2Q05hTuZlKYtu5ALcAbT53YU+0uAT4IN+bBwn+sJ6gcg
         lKmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=sEqvGhqJO2ofchKY3oAlQLBCJBJ6OeXPz+1YshtBPmc=;
        b=KZj+KGKSR8UE7hvuAHnv8ML1PYvDRAfXiV1oWgmLCf0I+8E6EHGxNCh8kuBPPuv3eQ
         QE3XobEvVJcBPB8GfYM1r79CDN+hEz2oPfTrADy6o71ClqFR3IkiuZvA9hITMFktDTIS
         w4J5WqCHA4as7yPi8tYmdm6b+L1GkSyoBdf6WKLuDed6qScOiHhwd+EmbBFtWdIeZuUm
         bmHNbaJjmFqd5nf5SYIwrIUFfezFUxnswhbhNl3wzqc6urzdKz4Q6EljWLQBDKM0VXwV
         nxrgpUAd4FJwO3dQWfo4e0SJyd297TCqR+9cx14uYa3LLP3mQOItLvNinapk0EV/Eu4O
         QtPw==
X-Gm-Message-State: AOAM531ZjE56ryV3bPEWWxcogVuhGpfEGmOmhLPoO7/ASjFZ/7tz7zss
        eCgVGqhsWsSmojJvtTsxk0Ig+JcQtAc=
X-Google-Smtp-Source: ABdhPJyGqKcmlLubjppfWsbzA+rRDpAeYrknyMGI4toXzWZ0ckvYC8HSRI/wQdTGIuKdhDLlCLeiwQ==
X-Received: by 2002:a05:6000:1845:: with SMTP id c5mr5400719wri.499.1642106221898;
        Thu, 13 Jan 2022 12:37:01 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id w12sm3982840wrm.36.2022.01.13.12.37.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 13 Jan 2022 12:37:01 -0800 (PST)
Message-ID: <8c62c971-273a-23cf-dce9-325608c97de0@gmail.com>
Date:   Thu, 13 Jan 2022 21:37:00 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH v2] epoll_ctl.2: replace input flag footnotes with a list
 section
Content-Language: en-US
To:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     linux-man@vger.kernel.org
References: <dcfa6694-fa4e-11c9-b146-e9d2e4b5cd3f@gmail.com>
 <20220113151410.wdioekjeinssfybz@tarta.nabijaczleweli.xyz>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
In-Reply-To: <20220113151410.wdioekjeinssfybz@tarta.nabijaczleweli.xyz>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 1/13/22 16:14, наб wrote:
> This is shorter, clearly separates the events from the flags,
> and more consistent (cf. EPOLLEXCLUSIVE which has a different message
> than the rest)
> 
> Signed-off-by: Ahelenia Ziemiańska <nabijaczleweli@nabijaczleweli.xyz>
> ---
> You're right, and in the 3am curse I missed that I specified >=1
> instead of >=0. Rewrote that as you suggested: one sentence at the top,
> and two lists with short headings referencing it.


Patch applied, наб.

Thanks,

Alex

> 
>  man2/epoll_ctl.2 | 39 +++++++--------------------------------
>  1 file changed, 7 insertions(+), 32 deletions(-)
> 
> diff --git a/man2/epoll_ctl.2 b/man2/epoll_ctl.2
> index ec31cac72..de6bcfb33 100644
> --- a/man2/epoll_ctl.2
> +++ b/man2/epoll_ctl.2
> @@ -106,8 +106,11 @@ The
>  .I events
>  member of the
>  .I epoll_event
> -structure is a bit mask composed by ORing together zero or more of
> -the following available event types:
> +structure is a bit mask composed by ORing together zero or more event types,
> +returned by
> +.BR epoll_wait (2),
> +and input flags, which affect its behaviour, but aren't returned.
> +The available event types are:
>  .TP
>  .B EPOLLIN
>  The associated file is available for
> @@ -156,6 +159,8 @@ Note that when reading from a channel such as a pipe or a stream socket,
>  this event merely indicates that the peer closed its end of the channel.
>  Subsequent reads from the channel will return 0 (end of file)
>  only after all outstanding data in the channel has been consumed.
> +.PP
> +And the available input flags are:
>  .TP
>  .B EPOLLET
>  Requests edge-triggered notification for the associated file descriptor.
> @@ -166,13 +171,6 @@ See
>  .BR epoll (7)
>  for more detailed information about edge-triggered and
>  level-triggered notification.
> -.IP
> -This flag is an input flag for the
> -.I event.events
> -field when calling
> -.BR epoll_ctl ();
> -it is never returned by
> -.BR epoll_wait (2).
>  .TP
>  .BR EPOLLONESHOT " (since Linux 2.6.2)"
>  Requests one-shot notification for the associated file descriptor.
> @@ -187,13 +185,6 @@ The user must call
>  with
>  .B EPOLL_CTL_MOD
>  to rearm the file descriptor with a new event mask.
> -.IP
> -This flag is an input flag for the
> -.I event.events
> -field when calling
> -.BR epoll_ctl ();
> -it is never returned by
> -.BR epoll_wait (2).
>  .TP
>  .BR EPOLLWAKEUP " (since Linux 3.5)"
>  .\" commit 4d7e30d98939a0340022ccd49325a3d70f7e0238
> @@ -222,13 +213,6 @@ or the clearing of
>  for the event file descriptor with
>  .BR EPOLL_CTL_MOD .
>  See also BUGS.
> -.IP
> -This flag is an input flag for the
> -.I event.events
> -field when calling
> -.BR epoll_ctl ();
> -it is never returned by
> -.BR epoll_wait (2).
>  .TP
>  .BR EPOLLEXCLUSIVE " (since Linux 4.5)"
>  Sets an exclusive wakeup mode for the epoll file descriptor that is being
> @@ -299,15 +283,6 @@ and specifies the target file descriptor
>  as an epoll instance will likewise fail.
>  The error in all of these cases is
>  .BR EINVAL .
> -.IP
> -The
> -.BR EPOLLEXCLUSIVE
> -flag is an input flag for the
> -.I event.events
> -field when calling
> -.BR epoll_ctl ();
> -it is never returned by
> -.BR epoll_wait (2).
>  .SH RETURN VALUE
>  When successful,
>  .BR epoll_ctl ()

-- 
Alejandro Colomar
Linux man-pages maintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
