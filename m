Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 23BE6FB8F3
	for <lists+linux-man@lfdr.de>; Wed, 13 Nov 2019 20:36:35 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726155AbfKMTge (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 13 Nov 2019 14:36:34 -0500
Received: from mail-ed1-f68.google.com ([209.85.208.68]:34057 "EHLO
        mail-ed1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726120AbfKMTge (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 13 Nov 2019 14:36:34 -0500
Received: by mail-ed1-f68.google.com with SMTP id b72so2901349edf.1
        for <linux-man@vger.kernel.org>; Wed, 13 Nov 2019 11:36:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc;
        bh=GRES9sXnDD1l/hbHWN/QJWGUTjuuz9Lfhip9fgX1Gnw=;
        b=M90jLBbwyTvRHQJR3jlsBYkyAXGlbREbf6yoJ5q3CwM+hjjGFsKEU8EKRatuHbjgxP
         FsVXclfl+AzEBGVE9EwUHujn1M1GI2v5vRjgA06U2odPPT356+xNMfCFC9wN6ObqZZSX
         Omzxjh5tRmnplm54x+S24brNLnRDa3HleO4Nqt6qjOvKn6JAnpxVHgn0ahkhMjl+bGwi
         9qJmXy4uiraRQXMsyOfdbeQGI3akGOKRo++seyon+Hh6WZwtvbGxgc9aSCEgkkG2tD4v
         TidOuiqzbOFwsRlB4CVPFlcq3KP7+o3G4gdk4ptRkXzQAk2nyQBYmPveuzs0Nj7b/cR9
         JAMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc;
        bh=GRES9sXnDD1l/hbHWN/QJWGUTjuuz9Lfhip9fgX1Gnw=;
        b=TNjbW7uHMn8E7b3xx7xgJTJQ1aot8cf5neqd0tXx7+ed/3uBltCu+EwjdFSM1fojVv
         JTKhx/s6Vrvzyr1kNek1Bwf0rJxchXTPumW/Uz/uEIgtoKMjB85gKJT22UbY5+awRcLa
         lQWzjsQCNjBagmP9gIRqKp+FJcoyVIfI3HIyaanazjCXmD9WsOsJZck8n7pgFcshJnA9
         7Bcb1xk6pNAhUj7WXmNcvOgxEOmQSq1v11GLYPDQbHXal0i7fgx7xjNFMiidFl5j62ZS
         RHZ9a30N3CF0noa3KO5H4/uApA3bx+Q1mLwe08yWNHN00Xr9HBmzx1bWBafQllYWcbvg
         9Klg==
X-Gm-Message-State: APjAAAVDarxDRJCSbhwNj0DsGA2iK6ElzyQZBJ8CBhi0kzqT7Zsmm/eA
        Ik5zTOtzwSx4j2yRsad2HRgnJTUSQCgD89Cy3yk=
X-Google-Smtp-Source: APXvYqxzy1q3jNIRXlclRqPZNM9BwAFlSL3yjR9ii+zl3Qj6pHWTxdYL8YTso45xFV/18E8RKN5aRidgukV6MZMEXd8=
X-Received: by 2002:a50:984b:: with SMTP id h11mr5736439edb.248.1573673792295;
 Wed, 13 Nov 2019 11:36:32 -0800 (PST)
MIME-Version: 1.0
References: <20191113142840.9469-1-jwilk@jwilk.net>
In-Reply-To: <20191113142840.9469-1-jwilk@jwilk.net>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Wed, 13 Nov 2019 20:36:21 +0100
Message-ID: <CAKgNAkjZf-yt66ixkRDY9OL4imQKogKoe+ietecpZuHiE+QMLg@mail.gmail.com>
Subject: Re: [PATCH] strftime.3: wfix
To:     Jakub Wilk <jwilk@jwilk.net>
Cc:     linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Jakub,

On Wed, 13 Nov 2019 at 15:28, Jakub Wilk <jwilk@jwilk.net> wrote:
>
> Fix comma splice.

Thank you. Patch applied.

Cheers,

Michael

> Signed-off-by: Jakub Wilk <jwilk@jwilk.net>
> ---
>  man3/strftime.3 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/man3/strftime.3 b/man3/strftime.3
> index d6e6e3407..cea27072c 100644
> --- a/man3/strftime.3
> +++ b/man3/strftime.3
> @@ -562,7 +562,7 @@ complain about the use of
>  .IR "warning: `%c' yields only last 2 digits of year in some locales" .
>  Of course programmers are encouraged to use
>  .BR %c ,
> -it gives the preferred date and time representation.
> +as it gives the preferred date and time representation.
>  One meets all kinds of strange obfuscations
>  to circumvent this
>  .BR gcc (1)
> --
> 2.24.0
>


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
