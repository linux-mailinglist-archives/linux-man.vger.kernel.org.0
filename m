Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 8262DA49E2
	for <lists+linux-man@lfdr.de>; Sun,  1 Sep 2019 16:47:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728949AbfIAOrI (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 1 Sep 2019 10:47:08 -0400
Received: from mail-ed1-f65.google.com ([209.85.208.65]:33845 "EHLO
        mail-ed1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728928AbfIAOrI (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 1 Sep 2019 10:47:08 -0400
Received: by mail-ed1-f65.google.com with SMTP id s49so13501875edb.1
        for <linux-man@vger.kernel.org>; Sun, 01 Sep 2019 07:47:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=DMCsoRzLnEZ2xclfIK+SWt01XGobO+9dhT03ACXtSQ0=;
        b=bdanMe09ZFbpn/NwZVPO0smAJBZjgfwFw3KXsA/KMH9vtCMHEtVjMv0CYx/DSeLqWX
         FYeRi0jFBOWdPimerG4W1oRq55DOrdcEAWi1y7cHdRytcaiHwE4IgypzqG+X2lLh0BaQ
         SNMFaF3EYkRbWxglwqrvdjKZfzHu3DrpPiyRcGZatHKnsPW/GQeBUUAp4hxpwV0REAuD
         ozlCAdO0L5/uAixKVH8FZF2AVxLko+hF/48h5AAwjwrOThVhrzN8FxI1b5tLDrhz1haS
         rZGbpvwwxLK1ZxZOQnSCvwt4/i0lqIM5lVoe7CV5AS7y4nq/Q3iC+Pt575KduSNm7ogr
         6zgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=DMCsoRzLnEZ2xclfIK+SWt01XGobO+9dhT03ACXtSQ0=;
        b=lu9v6S+zh2iSgaZZPMC1L08Cy8O0HUX5driBZhLiFaiT7QNuewadnAKMcOlR6YV2RA
         kLx1WCVPKRaJPruPYMCIWaRz8XXNx/9n7QnvEeUMdwfohCZBIpNoXhAy/fQqmSwjOX3X
         tRTL+AOBXVqTbRh5B6SS7iMrrLjL3N/0khRzXLhrTfhcGu7vP9IRmQoiJ/UFrgaL+LsR
         2BAA9XWZFk+AtYZA5dPufzC78wwUc8Hy9CSCXj04SREaCYho4+NyTZtKDUwe2vrh9Ykx
         KsK/i8taI+ppdqGBtIfhiLgPpAnzEQDQQShLL5n5yXVjO0oS+M0YE/3oWOpV7QCuPybp
         sykQ==
X-Gm-Message-State: APjAAAWZDTWjhHo9hdGVS8rMsanZ7PXTXjcADzkwYgnRNO6DWC66wa4i
        Ezx81d/P6t+AGyWOnNz7zBUFtuHAsBQ=
X-Google-Smtp-Source: APXvYqwwgM8p5xIq+PeMq0FCl7DnpY2SDEJYkzeczMpU4CcylfOTA1NksLz7rqOnOZuh6u/e9TlYJw==
X-Received: by 2002:a17:906:2458:: with SMTP id a24mr3300630ejb.69.1567349226473;
        Sun, 01 Sep 2019 07:47:06 -0700 (PDT)
Received: from [192.168.101.104] ([138.62.237.157])
        by smtp.gmail.com with ESMTPSA id jx11sm1350246ejb.19.2019.09.01.07.47.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 01 Sep 2019 07:47:05 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] errno.3: add some comments on EAGAIN/EWOULDBLOCK and
 EDEADLK/EDEADLOCK
To:     Rasmus Villemoes <rv@rasmusvillemoes.dk>
References: <20190829100621.11386-1-rv@rasmusvillemoes.dk>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <663e645a-0397-2589-6085-449fa0d3682b@gmail.com>
Date:   Sun, 1 Sep 2019 16:47:02 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190829100621.11386-1-rv@rasmusvillemoes.dk>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Rasmus,

On 8/29/19 12:06 PM, Rasmus Villemoes wrote:
> Signed-off-by: Rasmus Villemoes <rv@rasmusvillemoes.dk>
> ---
>  man3/errno.3 | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)

Thanks. I applied and tweaked a little.

Thanks,

Michael

> diff --git a/man3/errno.3 b/man3/errno.3
> index 6cbbafed5..794be7c7b 100644
> --- a/man3/errno.3
> +++ b/man3/errno.3
> @@ -94,7 +94,7 @@ must have distinct values, with the exception of
>  .B EAGAIN
>  and
>  .BR EWOULDBLOCK ,
> -which may be the same.
> +which may be the same. On Linux, these two always have the same value.
>  .PP
>  The error numbers that correspond to each symbolic name
>  vary across UNIX systems,
> @@ -240,8 +240,9 @@ Connection reset (POSIX.1-2001).
>  Resource deadlock avoided (POSIX.1-2001).
>  .TP
>  .B EDEADLOCK
> -Synonym for
> +On most platforms, a synonym for
>  .BR EDEADLK .
> +On some (e.g. Linux mips, powerpc, sparc), it is a separate error code "File locking deadlock error".
>  .TP
>  .B EDESTADDRREQ
>  Destination address required (POSIX.1-2001).
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
