Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 43E3623BAB2
	for <lists+linux-man@lfdr.de>; Tue,  4 Aug 2020 14:49:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727092AbgHDMtF (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 4 Aug 2020 08:49:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41900 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726090AbgHDMtF (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 4 Aug 2020 08:49:05 -0400
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com [IPv6:2a00:1450:4864:20::344])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F0743C06174A
        for <linux-man@vger.kernel.org>; Tue,  4 Aug 2020 05:48:57 -0700 (PDT)
Received: by mail-wm1-x344.google.com with SMTP id f18so2135596wmc.0
        for <linux-man@vger.kernel.org>; Tue, 04 Aug 2020 05:48:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=ijSejSKjhGMfG7/jh5U0Y+DawPfti5sVsRQv9edUFmw=;
        b=oBruUw2bu/qFuh/U2u8QJSsHbrDLKC2G40g1q+3z+zCQMdJw8hZRzxuYye78zjWW+T
         ZStDHcUOXPpjF0IiQ7teC4AVkOUfOttzO+XvxPc9PYUTvNDXb5QrZDSw/crEfOk9u37m
         T311ARb1vILKsbdNyoEq8XmQgAhdBZqct47SprquWcvBc0+GevClfaPYWk/bhtfVuqUi
         /n1on3qUmtsvaVHL4YEWsIL+DrvGB5KXgz2p/u/9WHoO9moOQ8bA2UJem0C16eVxbBmO
         ucy4UHIx6bkY9qZnxigZxyoEE9AqmMHG5dgj37tUwGXTwCiDftwCm0iJthWpodiYrEeY
         NPMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=ijSejSKjhGMfG7/jh5U0Y+DawPfti5sVsRQv9edUFmw=;
        b=iS5Zdb3KQ5kqF2RVlYsH1cyqvCeN7N7qUHfa/uass2482GP876BfTkjyGeulx888Cs
         bhsqjJELVoI4QcWTQPMlzq/MS23bNPTBhXq8zIwhEMDCfu2yOX3nfh42GJEHsMpo1pd+
         peS4ZsGV33z+EvcVOfFel4REGqW4bCehphjdTS6BIpseShwif251oRi/090fVA+x3KFb
         gOOzLEWIdMbU1ugdO3sfydHLUKXm4HP5VToFTwpC+OEMlWsv9Mr1tZBa9Yk/2kJX7AgX
         1ruLoduYZ7Q1cKh/yzfS1mUZyZ5gzsQnVhGrzOYyKgfvRCZXDfP6z+vA6ePV/fYk1KwH
         ZmKg==
X-Gm-Message-State: AOAM532z+3xFzNrHOrk6foaS5YGne9cSJk//6oyP/sTTEDE364c8SbB/
        6ka43X9veHUAxjPxq+2d+KY=
X-Google-Smtp-Source: ABdhPJxW1LnZF6JoR5BVQFUSYluZhswHcA5/yNHt305U1yvxp906IAMAcg+gnHzSDMu3Ub2ycVj/cQ==
X-Received: by 2002:a1c:9dc4:: with SMTP id g187mr3820385wme.19.1596545336677;
        Tue, 04 Aug 2020 05:48:56 -0700 (PDT)
Received: from ?IPv6:2001:a61:241a:1101:8c63:f991:aa91:da82? ([2001:a61:241a:1101:8c63:f991:aa91:da82])
        by smtp.gmail.com with ESMTPSA id n18sm31340406wrw.45.2020.08.04.05.48.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 04 Aug 2020 05:48:55 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, libc-alpha@sourceware.org
Subject: Re: [patch] queue.3: Comment out text for functions not in glibc
 (related: 6559169cac)
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        linux-man@vger.kernel.org
References: <c076cbde-0ef5-9e92-8c82-4b6e5d765fea@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <67a87285-e000-c23f-21d0-25daa9b337bf@gmail.com>
Date:   Tue, 4 Aug 2020 14:48:52 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <c076cbde-0ef5-9e92-8c82-4b6e5d765fea@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Alejandro,

On 8/4/20 11:40 AM, Alejandro Colomar wrote:
> ===========
> DESCRIPTION
> ===========
> 
> I'm documenting ``CIRCLEQ_*`` macros in queue.3.  While writing this, I
> noticed that the documentation for some types of queues/lists talked
> about swapping contents of two lists, but only for some of them.  I then
> found that those macros (``*_SWAP``) don't exist in my system (Debian),
> but exist in BSD, and I also found that a previous commit (6559169cac)
> commented out a lot of the *_SWAP macros documentation, but not all, and
> the reason was that they were not present on glibc.
> 
> I checked that I didn't have any of the *_SWAP macros on my glibc, so I
> think this is probably that the commit simply forgot to comment some of
> them.
> 
> =======
> TESTING
> =======
> 
> I tun ``sudo make`` and then visualized the man page with
> ``man 3 queue``, and the changes looked good.
> 
> I also noticed that the subsection ``Tail queue example`` contents were
> wrong, as they contained calls to CIRCLEQ_* macros.  I will address that
> in a future patch, before I submit the patch documenting CIRCLEQ_*.
> 
> ________________________________________________________________________
> P.S.:  I'd like to know, as my previous patch was oddly reformatted by
> my mailer, if you can see it correctly this time.  I changed some,
> configuration, so I hope it is fine.

All pretty good this time. I applied your patch. Two things to note:
* There was some superfluous whitespace at the end of some of the 
  changed lines. By chance, that got automatically fixed up.
  No big problem, but it generates a bit of unnecessary noise when 
  applying the patch [1]

* I added the following on your hehalf:

    Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>

Thanks,

Michael

> =====
> PATCH
> =====
> 
>  From 2282ba2397e6ac7dca4cc09dfcb92ac524718f27 Mon Sep 17 00:00:00 2001
> From: Alejandro Colomar <colomar.6.4.3@gmail.com>
> Date: Sun, 26 Jul 2020 23:36:42 +0200
> Subject: [PATCH] queue.3: Comment out text for functions not in glibc
>   (related: 6559169cac)
> 
> ---
>   man3/queue.3 | 26 +++++++++++++-------------
>   1 file changed, 13 insertions(+), 13 deletions(-)
> 
> diff --git a/man3/queue.3 b/man3/queue.3
> index 00e4b1958..ff1f42f3a 100644
> --- a/man3/queue.3
> +++ b/man3/queue.3
> @@ -110,8 +110,8 @@
>   .Nm TAILQ_LAST ,
>   .Nm TAILQ_NEXT ,
>   .Nm TAILQ_PREV ,
> -.Nm TAILQ_REMOVE ,
> -.Nm TAILQ_SWAP
> +.Nm TAILQ_REMOVE
> +.\" .Nm TAILQ_SWAP
>   .Nd implementations of singly-linked lists, singly-linked tail queues,
>   lists and tail queues
>   .Sh SYNOPSIS
> @@ -172,7 +172,7 @@ lists and tail queues
>   .Fn LIST_NEXT "TYPE *elm" "LIST_ENTRY NAME"
>   .\" .Fn LIST_PREV "TYPE *elm" "LIST_HEAD *head" "TYPE" "LIST_ENTRY NAME"
>   .Fn LIST_REMOVE "TYPE *elm" "LIST_ENTRY NAME"
> -.Fn LIST_SWAP "LIST_HEAD *head1" "LIST_HEAD *head2" "TYPE" "LIST_ENTRY 
> NAME"
> +.\" .Fn LIST_SWAP "LIST_HEAD *head1" "LIST_HEAD *head2" "TYPE" 
> "LIST_ENTRY NAME"
>   .\"
>   .Fn TAILQ_CONCAT "TAILQ_HEAD *head1" "TAILQ_HEAD *head2" "TAILQ_ENTRY 
> NAME"
>   .Fn TAILQ_EMPTY "TAILQ_HEAD *head"
> @@ -197,7 +197,7 @@ lists and tail queues
>   .Fn TAILQ_NEXT "TYPE *elm" "TAILQ_ENTRY NAME"
>   .Fn TAILQ_PREV "TYPE *elm" "HEADNAME" "TAILQ_ENTRY NAME"
>   .Fn TAILQ_REMOVE "TAILQ_HEAD *head" "TYPE *elm" "TAILQ_ENTRY NAME"
> -.Fn TAILQ_SWAP "TAILQ_HEAD *head1" "TAILQ_HEAD *head2" "TYPE" 
> "TAILQ_ENTRY NAME"
> +.\" .Fn TAILQ_SWAP "TAILQ_HEAD *head1" "TAILQ_HEAD *head2" "TYPE" 
> "TAILQ_ENTRY NAME"
>   .\"
>   .Sh DESCRIPTION
>   These macros define and operate on four types of data structures:
> @@ -213,8 +213,8 @@ Insertion of a new entry after any element in the list.
>   O(1) removal of an entry from the head of the list.
>   .It
>   Forward traversal through the list.
> -.It
> -Swapping the contents of two lists.
> +.\" .It
> +.\" Swapping the contents of two lists.
>   .El
>   .Pp
>   Singly-linked lists are the simplest of the four data structures
> @@ -1157,13 +1157,13 @@ The macro
>   removes the element
>   .Fa elm
>   from the tail queue.
> -.Pp
> -The macro
> -.Nm TAILQ_SWAP
> -swaps the contents of
> -.Fa head1
> -and
> -.Fa head2 .
> +.\" .Pp
> +.\" The macro
> +.\" .Nm TAILQ_SWAP
> +.\" swaps the contents of
> +.\" .Fa head1
> +.\" and
> +.\" .Fa head2 .
>   .Ss Tail queue example
>   .Bd -literal
>   TAILQ_HEAD(tailhead, entry) head =
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
