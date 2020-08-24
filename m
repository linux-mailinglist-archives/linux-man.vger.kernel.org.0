Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5E56D24FB9A
	for <lists+linux-man@lfdr.de>; Mon, 24 Aug 2020 12:37:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727780AbgHXKhC (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 24 Aug 2020 06:37:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53676 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727768AbgHXKg7 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 24 Aug 2020 06:36:59 -0400
Received: from mail-ed1-x544.google.com (mail-ed1-x544.google.com [IPv6:2a00:1450:4864:20::544])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 68F42C061573
        for <linux-man@vger.kernel.org>; Mon, 24 Aug 2020 03:36:58 -0700 (PDT)
Received: by mail-ed1-x544.google.com with SMTP id c10so7566725edk.6
        for <linux-man@vger.kernel.org>; Mon, 24 Aug 2020 03:36:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=WZY7i8rJfN05ZeGbbNgd8DkC0898lPPItVqvisC8dRc=;
        b=ZJFqYCOGumK2yxVRQct/BUIAHuAvMcEVDonGv5cTSKDlxpLkR4xCOscVeEg6smixux
         vCcnv+eMsPURgt0McGcy/XWoYLBztRdFktyHOAtGlX1kPTfR4sjgYtGlTvAaRfUvexTi
         MRYFPv1tfgM4b1NoCD3t8uKU026VfcnPr0T+6qpsYUZPg8rA9IqegvynZmAK2JYE1vx4
         H+cIbOhUKUcbYkoXYlkbbwGVLRVLUQBkFLvuYnnPBtZ3rFQgYfqvWipqvCxGYwK4ii6B
         SWevdb1N4QdLZ77gK4CXW728ORwyPpKe6MTQ7EGJQIo3ndGRnMiCbQhPFTmICumzw7fk
         R3/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=WZY7i8rJfN05ZeGbbNgd8DkC0898lPPItVqvisC8dRc=;
        b=T6ongKUucFIYhlQej3s7fWxn/M41OGq+h03oWkkQKcpni0wOkqQC6RjDDo7nKXVKzo
         DASg/XFbIJl5u52uaq1N6wzzWugFYwcyAz6liin3eilHaV8yftISVjTUsqF7taIh2FTX
         DHUOTv3yiTqPHne1G0PBTulptCMBbGZY0RG+quYmW1h0WmtT9Qv9MhEfvbM4V8+ObmdF
         hyRq4d3dvzKCrgfgqacH7XoQ2ZS5kWfclyjvPjW82zkUEEgO5Fggs7R3baue/tZohP4i
         3IlPOmm7BL2h59UoFbjl0TpVI/1q7H8kUNqKYs2mi4oirGRgUrNw2kKE9r7Kf9Ot7NPj
         8gGw==
X-Gm-Message-State: AOAM533XFTQv/5BOa12s/xRMeY/osBfGSgMQzWBVrAROw0d8Pod/Ko3B
        8g1DL8kSCQgioI/z3lhDaWI=
X-Google-Smtp-Source: ABdhPJwSiXPfHrL3cTpNZHdWY3oKm7ozWIdtA0kzvDn9icwDtU39hbXVXpzVe8P2NQhQDtt2BNXRoA==
X-Received: by 2002:a50:fb15:: with SMTP id d21mr4717704edq.312.1598265417085;
        Mon, 24 Aug 2020 03:36:57 -0700 (PDT)
Received: from localhost.localdomain ([185.238.219.17])
        by smtp.gmail.com with ESMTPSA id y4sm574798ejj.30.2020.08.24.03.36.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Aug 2020 03:36:56 -0700 (PDT)
Subject: Re: [patch] queue.3: Document CIRCLEQ_* macros
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
Cc:     linux-man@vger.kernel.org, libc-alpha@sourceware.org,
        mtk.manpages@gmail.com
References: <88ac5f72-e35e-3912-4b24-c130d3696d91@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <0303eb93-0b7e-20fa-7318-4431514a677b@gmail.com>
Date:   Mon, 24 Aug 2020 12:36:52 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <88ac5f72-e35e-3912-4b24-c130d3696d91@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Alejandro,

On 8/21/20 2:59 PM, Alejandro Colomar wrote:
> ===========
> DESCRIPTION
> ===========
> 
> Document ``CIRCLEQ_*`` macros, based on old documentation that was
> removed by accident in commit ``c0f21a0``, and improved to match the
> rest of the documentation in ``queue.3``.

Thanks!

> =======
> TESTING
> =======
> 
> I run ``sudo make`` and then visualized the man page with
> ``man 3 queue``, and the contents looked good.

Modulo a few very minor formatting tweaks, yes, looks good.

> _______
> 
> P.S.:  I noticed that ``git format-patch`` leaves a trailing space at
> some places:
> The line after ``@@ -1220,6 +1274,192 @@ while (n1 != NULL) {``
> The line just before the git version (``-- ``).
> However, none of those lines are additions to the code, so they
> shouldn't affect the result.
> Is that ok?

I don't think it's a problem, but...

> I run ``git format-patch -1 HEAD --stdout > ../circleq.patch``.
> 
> P.S. 2:  I attached a copy of the patch just in case that the mailer
> adds any trailing spaces or any other weird things.  Please, tell me if
> there are any inconsistencies in the patch embedded below so that I can
> try to prevent them in the future.

The inline patch would not apply. I think your mail client might be to
blame. I'm not quite sure of the cause. After checking the problem,
perhaps you could test by sending yourself a patch, and seeing if you 
can apply.

However, the attachment worked fine, and I applied. (Nevertheless,
I prefer inline patches if you can fix your mailer.)

Minor comments below.

> ________________________________________________________________________
> 
>  From e8f4a79166042d52de8afdfb8530afc7de4fa977 Mon Sep 17 00:00:00 2001
> From: Alejandro Colomar <colomar.6.4.3@gmail.com>
> Date: Fri, 21 Aug 2020 14:27:36 +0200
> Subject: [PATCH] queue.3: Document CIRCLEQ_* macros
> 
> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
> ---
>   man3/queue.3 | 256 +++++++++++++++++++++++++++++++++++++++++++++++++--
>   1 file changed, 248 insertions(+), 8 deletions(-)
> 
> diff --git a/man3/queue.3 b/man3/queue.3
> index 260a5b8a5..7fbb92fcc 100644
> --- a/man3/queue.3
> +++ b/man3/queue.3
> @@ -110,10 +110,28 @@
>   .Nm TAILQ_LAST ,
>   .Nm TAILQ_NEXT ,
>   .Nm TAILQ_PREV ,
> -.Nm TAILQ_REMOVE
> -.\" .Nm TAILQ_SWAP
> +.Nm TAILQ_REMOVE ,
> +.\" .Nm TAILQ_SWAP ,
> +.Nm CIRCLEQ_EMPTY ,
> +.Nm CIRCLEQ_ENTRY ,
> +.Nm CIRCLEQ_FIRST ,
> +.Nm CIRCLEQ_FOREACH ,
> +.Nm CIRCLEQ_FOREACH_REVERSE ,
> +.Nm CIRCLEQ_HEAD ,
> +.Nm CIRCLEQ_HEAD_INITIALIZER ,
> +.Nm CIRCLEQ_INIT ,
> +.Nm CIRCLEQ_INSERT_AFTER ,
> +.Nm CIRCLEQ_INSERT_BEFORE ,
> +.Nm CIRCLEQ_INSERT_HEAD ,
> +.Nm CIRCLEQ_INSERT_TAIL ,
> +.Nm CIRCLEQ_LAST ,
> +.Nm CIRCLEQ_LOOP_NEXT ,
> +.Nm CIRCLEQ_LOOP_PREV ,
> +.Nm CIRCLEQ_NEXT ,
> +.Nm CIRCLEQ_PREV ,
> +.Nm CIRCLEQ_REMOVE
>   .Nd implementations of singly-linked lists, singly-linked tail queues,
> -lists and tail queues
> +lists, tail queues, and circular queues
>   .Sh SYNOPSIS
>   .In sys/queue.h
>   .\"
> @@ -198,11 +216,30 @@ lists and tail queues
>   .Fn TAILQ_PREV "TYPE *elm" "HEADNAME" "TAILQ_ENTRY NAME"
>   .Fn TAILQ_REMOVE "TAILQ_HEAD *head" "TYPE *elm" "TAILQ_ENTRY NAME"
>   .\" .Fn TAILQ_SWAP "TAILQ_HEAD *head1" "TAILQ_HEAD *head2" "TYPE" 
> "TAILQ_ENTRY NAME"
> +.Fn CIRCLEQ_EMPTY "CIRCLEQ_HEAD *head"
> +.Fn CIRCLEQ_ENTRY "TYPE"
> +.Fn CIRCLEQ_FIRST "CIRCLEQ_HEAD *head"
> +.Fn CIRCLEQ_FOREACH "TYPE *var" "CIRCLEQ_HEAD *head" "CIRCLEQ_ENTRY NAME"
> +.Fn CIRCLEQ_FOREACH_REVERSE "TYPE *var" "CIRCLEQ_HEAD *head" 
> "CIRCLEQ_ENTRY NAME"
> +.Fn CIRCLEQ_HEAD "HEADNAME" "TYPE"
> +.Fn CIRCLEQ_HEAD_INITIALIZER "CIRCLEQ_HEAD head"
> +.Fn CIRCLEQ_INIT "CIRCLEQ_HEAD *head"
> +.Fn CIRCLEQ_INSERT_AFTER "CIRCLEQ_HEAD *head" "TYPE *listelm" "TYPE 
> *elm" "CIRCLEQ_ENTRY NAME"
> +.Fn CIRCLEQ_INSERT_BEFORE "CIRCLEQ_HEAD *head" "TYPE *listelm" "TYPE 
> *elm" "CIRCLEQ_ENTRY NAME"
> +.Fn CIRCLEQ_INSERT_HEAD "CIRCLEQ_HEAD *head" "TYPE *elm" "CIRCLEQ_ENTRY 
> NAME"
> +.Fn CIRCLEQ_INSERT_TAIL "CIRCLEQ_HEAD *head" "TYPE *elm" "CIRCLEQ_ENTRY 
> NAME"
> +.Fn CIRCLEQ_LAST "CIRCLEQ_HEAD *head"
> +.Fn CIRCLEQ_LOOP_NEXT "CIRCLEQ_HEAD *head" "TYPE *elm" "CIRCLEQ_ENTRY 
> NAME"
> +.Fn CIRCLEQ_LOOP_PREV "CIRCLEQ_HEAD *head" "TYPE *elm" "CIRCLEQ_ENTRY 
> NAME"
> +.Fn CIRCLEQ_NEXT "TYPE *elm" "CIRCLEQ_ENTRY NAME"
> +.Fn CIRCLEQ_PREV "TYPE *elm" "CIRCLEQ_ENTRY NAME"
> +.Fn CIRCLEQ_REMOVE "CIRCLEQ_HEAD *head" "TYPE *elm" "CIRCLEQ_ENTRY NAME"
>   .\"
>   .Sh DESCRIPTION
> -These macros define and operate on four types of data structures:
> -singly-linked lists, singly-linked tail queues, lists, and tail queues.
> -All four structures support the following functionality:
> +These macros define and operate on five types of data structures:
> +singly-linked lists, singly-linked tail queues, lists, tail queues, and
> +circular queues.
> +All five structures support the following functionality:
>   .Pp
>   .Bl -enum -compact -offset indent
>   .It
> @@ -313,6 +350,21 @@ Each head entry requires two pointers rather than one.
>   Code size is about 15% greater and operations run about 20% slower
>   than singly-linked lists.
>   .El
> +.Pp----

Why the "----"? It caused a minor formatting glitch. I removed it.

> +Circular queues add the following functionality over the above:

I added ".Pp" here.

Otherwise, everything is fine. Thanks for the patch!

Cheers,

Michael
