Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C38F1294783
	for <lists+linux-man@lfdr.de>; Wed, 21 Oct 2020 06:52:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2440121AbgJUEwT (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 21 Oct 2020 00:52:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60364 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2411772AbgJUEwT (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 21 Oct 2020 00:52:19 -0400
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com [IPv6:2a00:1450:4864:20::341])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D850DC0613CE
        for <linux-man@vger.kernel.org>; Tue, 20 Oct 2020 21:52:17 -0700 (PDT)
Received: by mail-wm1-x341.google.com with SMTP id 13so6209wmf.0
        for <linux-man@vger.kernel.org>; Tue, 20 Oct 2020 21:52:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=bvYHFt2NHx6iJ53H46t52etAxcD2KuOMDbUiFIuio18=;
        b=FaPv6GMLf1Od8Ows4Td7eOXlQVvfcbjVUJJxrz/U6qoNiYJotJrAQOY9DnwxBtyS4G
         DRUNsIo+AvLTP1n3RNxmV7fg+ucn5TosIL7atzL94hySMM4IiXBf/uQmNXTdJYCi3vJe
         lPdFnTcqz6ITjxSFbiSvIVzhN2P03CTUKHoaBIPClHWhDzxUo8f0k2xvhjzW1CoG7Ray
         JHsKNW1b9lW557s4DZPry29/2Ras2pXTGxvRKKDeBSseyiDqcgVGO+MNLe6oicN7nW5u
         tCWHT51ePevC9x1ByZ1VW637IjE4RXk70bRkWofrdkNetsLo24aJPZgH/gsIwxAV7tPB
         L1Rg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=bvYHFt2NHx6iJ53H46t52etAxcD2KuOMDbUiFIuio18=;
        b=s0qfOAdOrHbf5kFZjqyfPFEin2anPq7IkkoI4xiPpWYjo0GFTtj650Ky0mRXSQZq8I
         Hqqc5lQPTsstQxIiKZQITL9gk9kSkRujj0u9nhSKq1v6aOM9MQZ4XJMnZCDccATZ8UlU
         GV2X6KUnhY2TwJClcmNC45K2E3+zr4oG4Lg+/CSOP5F5jOA3DPoISYhPcIqjVTZP8eHY
         vgoYIYl+FYE3oLywWioAz/UXHsBwLCPBqUw7+q7CjbqJT4P162bZi7wXYXctGFzcdgij
         WPnd2u4ouNaz4LcSMVVQrCrJ16vVHnpN0pLwCK25DG3ozJxJocVxiWva7fyyasWygLKC
         ocog==
X-Gm-Message-State: AOAM530kHgoiU48CdefDCM1TmrKbYqE0YxKG2zDXVhMnkcYdsxsxpIS4
        cKJSmvIEdSd8+cGohnne2gaQl31XJPU9Dw==
X-Google-Smtp-Source: ABdhPJx5fAfhREyS0hEc3dOY+VB7Y5p+ipGdKNUnSbY5CDRDq3NY4e+P3t+9VD1KQ5CSmbv1lTLfmQ==
X-Received: by 2002:a1c:5641:: with SMTP id k62mr1401612wmb.108.1603255936559;
        Tue, 20 Oct 2020 21:52:16 -0700 (PDT)
Received: from ?IPv6:2a01:e0a:597:6d00:9446:7902:22d6:6f78? ([2a01:e0a:597:6d00:9446:7902:22d6:6f78])
        by smtp.gmail.com with ESMTPSA id d20sm1552854wra.38.2020.10.20.21.52.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Oct 2020 21:52:15 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        libc-alpha@sourceware.org, Hans Petter Selasky <hps@selasky.org>
Subject: Re: [PATCH v2 00/10] list.3: New page forked from queue.3
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <20201020142146.61837-23-colomar.6.4.3@gmail.com>
 <20201020213107.83837-1-colomar.6.4.3@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <2384feff-161d-8936-85fa-b67970ca0fb3@gmail.com>
Date:   Wed, 21 Oct 2020 06:52:12 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <20201020213107.83837-1-colomar.6.4.3@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Alex,

On 10/20/20 11:30 PM, Alejandro Colomar wrote:
> Hi Michael,
> 
> Anyway, I did the rebase :-}

Thanks!

> This way I have a good pattern to follow in the next pages.
> And it was somewhat affordable.
> 
> Changes since v1:
> - rebase + reorder + squash
> - Minor fixes (squashed into the previous commits)
> - LIST_*.3 links now point to list.3
> - queue.3: SEE ALSO: Add list(3)

I've applied all of the patches, and pushed. You may want to
take a look at a few of the teaks I added after your commits
for some pieces that may be helpful in the next patches 
that you write for these changes.

Thanks,

Michael

> Alejandro Colomar (10):
>   list.3: New page that will hold the (list) contents of queue.3
>   list.3, queue.3: NAME: Move code from queue.3 to list.3
>   list.3, queue.3: SYNOPSIS: Move code from queue.3 to list.3
>   list.3, queue.3: DESCRIPTION: Move list specific code from queue.3 to
>     list.3
>   list.3, queue.3: EXAMPLES: Move example program from queue.3 to list.3
>   list.3: Copy and adapt code from queue.3
>   list.3: ffix: Use man markup
>   list.3: Add details
>   LIST_EMPTY.3, LIST_ENTRY.3, LIST_FIRST.3, LIST_FOREACH.3, LIST_HEAD.3,
>     LIST_HEAD_INITIALIZER.3, LIST_INIT.3, LIST_INSERT_AFTER.3,
>     LIST_INSERT_BEFORE.3, LIST_INSERT_HEAD.3, LIST_NEXT.3,
>     LIST_REMOVE.3: Link to the new list.3 page instead of queue.3
>   queue.3: SEE ALSO: Add list(3)
> 
>  man3/LIST_EMPTY.3            |   2 +-
>  man3/LIST_ENTRY.3            |   2 +-
>  man3/LIST_FIRST.3            |   2 +-
>  man3/LIST_FOREACH.3          |   2 +-
>  man3/LIST_HEAD.3             |   2 +-
>  man3/LIST_HEAD_INITIALIZER.3 |   2 +-
>  man3/LIST_INIT.3             |   2 +-
>  man3/LIST_INSERT_AFTER.3     |   2 +-
>  man3/LIST_INSERT_BEFORE.3    |   2 +-
>  man3/LIST_INSERT_HEAD.3      |   2 +-
>  man3/LIST_NEXT.3             |   2 +-
>  man3/LIST_REMOVE.3           |   2 +-
>  man3/list.3                  | 347 +++++++++++++++++++++++++++++++++++
>  man3/queue.3                 | 238 +-----------------------
>  14 files changed, 360 insertions(+), 249 deletions(-)
>  create mode 100644 man3/list.3
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
