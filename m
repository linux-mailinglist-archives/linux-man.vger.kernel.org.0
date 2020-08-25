Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5F89D2518A1
	for <lists+linux-man@lfdr.de>; Tue, 25 Aug 2020 14:35:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726673AbgHYMfL (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 25 Aug 2020 08:35:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43622 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726609AbgHYMfK (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 25 Aug 2020 08:35:10 -0400
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com [IPv6:2a00:1450:4864:20::342])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DDA08C061574
        for <linux-man@vger.kernel.org>; Tue, 25 Aug 2020 05:35:09 -0700 (PDT)
Received: by mail-wm1-x342.google.com with SMTP id c19so1040439wmd.1
        for <linux-man@vger.kernel.org>; Tue, 25 Aug 2020 05:35:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=A+nDmpX00uITPnk75vLBea27s0QYJrzm1wA7/2CcX5M=;
        b=Wnd5DK7JeVoZQAxuPA8PuhFjd20ZLEBEOKkU4IxjYVIfp33CEAvDrkef7wcsOja3/T
         eka42ICc4a2UTRtKdnld2JWd5HJHL+j/S0pvMZ2y8uKBl/0E4UmEyLCnuUkTcDyQRAQ6
         2aUDsU7R0vi/fJMj4L4ov6o2Tr/PHZ7BPT/HH716UQU7/tJKHmKhUVRj2mu7BpzLUKjS
         VJdoGt6cipvyWL+2ZNuaYqHOmvMS829vB+bIhfBHVyhlVFGQKxwVbpCyOTJlZHy2KtWQ
         UaSLnjg4Wn/M6Owy/KA6EyaRGoWQ9mNEdDWv329zIvQpRhG8O6mB2ZceVrUTa6fabane
         s/lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=A+nDmpX00uITPnk75vLBea27s0QYJrzm1wA7/2CcX5M=;
        b=eJ7v6XdkKJmXpXH6V1Uax34JOd8G8dXZNP9V/t8VWJUNCZ18A1iL15ifWpkQRPg1YO
         MRRQ8JhrwrNBBNPkraLFDA9a0lpFnJlODKnamRWCCY4HNs8Pq+DWNsLZFZ5dhnNYlylm
         +5p152l2iI9vlVNi9GFwTn0BJC/VqbL6pFt/YsaIVSx76kYdp9pBlpOMIvnHeD2X0F8G
         ITvmpcdxnXaeJUw+WjXIda2CRWf1yvtPx/WlsSPizJzf2GKO2Fd+uePu+ZrDeHBWapaY
         Hkw/CkoUCuzv3VDdaIMRCRvwGh6/wWjxEhlC7vuJH6e9bxsNKKdkilOTA3ByGGE/JdMs
         jShw==
X-Gm-Message-State: AOAM531lLi8QlEhN7crEuzlelbqZxC4WsqsxBKM+F3V9JCLFysQNjGOZ
        fHx7dKNsebqo08l/YAc2j9lt1KqSxmQ=
X-Google-Smtp-Source: ABdhPJyjfjdZWYDnvzo8iATHOC41z8TXvDuvYuYbSIuaEUEblfBz/tQvXIUbXOzRk0QdzBlGHfwYWw==
X-Received: by 2002:a05:600c:2157:: with SMTP id v23mr1822814wml.38.1598358908024;
        Tue, 25 Aug 2020 05:35:08 -0700 (PDT)
Received: from ?IPv6:2001:a61:253c:4c01:2cf1:7133:9da2:66a9? ([2001:a61:253c:4c01:2cf1:7133:9da2:66a9])
        by smtp.gmail.com with ESMTPSA id v29sm30561525wrv.51.2020.08.25.05.35.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 25 Aug 2020 05:35:07 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, Jakub Wilk <jwilk@jwilk.net>,
        linux-man@vger.kernel.org
Subject: Re: [patch] memusage.1, bind.2, eventfd.2, futex.2,
 open_by_handle_at.2, perf_event_open.2, poll.2, signalfd.2, sysctl.2,
 timerfd_create.2, bsearch.3, cmsg.3, getaddrinfo.3, getaddrinfo_a.3
 getgrouplist.3, insque.3, malloc_info.3, mbsinit.3, mbstowcs.3,
 pthread_create.3, pthread_setaffinity_np.3, queue.3, rtnetlink.3, shm_open.3,
 strptime.3, tsearch.3, aio.7, fanotify.7, inotify.7, unix.7: Use sizeof
 consistently
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <cc176298-50e2-7831-f2f7-21be8cae9075@gmail.com>
 <e1b424c2-77c1-e995-a866-67a122d7bb07@gmail.com>
 <20200825111924.gwf3ck4bdq42lrzr@jwilk.net>
 <d084b7eb-a691-52e8-4996-5080af0175de@gmail.com>
 <CAKgNAki_wyf7dCShjpAaRLUeuL=+EFZYeVp0fY-EKHyOBW2hRw@mail.gmail.com>
 <d72263bb-7c84-3f33-ee44-a2cac2e2662c@gmail.com>
 <806999b7-8947-d350-2125-f04b69846f37@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <d3537144-e4da-8359-bc08-4eaf8c7bd059@gmail.com>
Date:   Tue, 25 Aug 2020 14:35:04 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <806999b7-8947-d350-2125-f04b69846f37@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 8/25/20 2:21 PM, Alejandro Colomar wrote:
> This is the patch for (1) as numbered in the previous replies:
> 
> -----------------------------------------------------------------------
>>From b0880bd0485d9abc93bcb3055342ec328240b7cf Mon Sep 17 00:00:00 2001
> From: Alejandro Colomar <colomar.6.4.3@gmail.com>
> Date: Tue, 25 Aug 2020 14:14:21 +0200
> Subject: [PATCH] getgrouplist.3, inotify.7: Use sizeof consistently
> 
> Use ``sizeof`` consistently through all the examples in the following
> way:
> 
> - Never use a space after ``sizeof``, and always use parentheses around
>   the argument.
> 
> 	Rationale:
> 
> 	https://www.kernel.org/doc/html/v5.8/process/coding-style.html#spaces


Patch applied, but I had to fix up the title line, which got taken
from the mail subject line. Probably best to send subsequent patches
as new mails, rather than as replies to this thread.

Thanks,

Michael

> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
> ---
>  man3/getgrouplist.3 | 2 +-
>  man7/inotify.7      | 2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/man3/getgrouplist.3 b/man3/getgrouplist.3
> index 61c88f75f..aea52d999 100644
> --- a/man3/getgrouplist.3
> +++ b/man3/getgrouplist.3
> @@ -164,7 +164,7 @@ main(int argc, char *argv[])
> 
>      ngroups = atoi(argv[2]);
> 
> -    groups = malloc(ngroups * sizeof (gid_t));
> +    groups = malloc(ngroups * sizeof(gid_t));
>      if (groups == NULL) {
>          perror("malloc");
>          exit(EXIT_FAILURE);
> diff --git a/man7/inotify.7 b/man7/inotify.7
> index e60d9c82b..9b2d7a4e5 100644
> --- a/man7/inotify.7
> +++ b/man7/inotify.7
> @@ -952,7 +952,7 @@ handle_events(int fd, int *wd, int argc, char* argv[])
> 
>          /* Read some events. */
> 
> -        len = read(fd, buf, sizeof buf);
> +        len = read(fd, buf, sizeof(buf));
>          if (len == \-1 && errno != EAGAIN) {
>              perror("read");
>              exit(EXIT_FAILURE);
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
