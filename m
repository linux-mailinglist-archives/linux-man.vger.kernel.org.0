Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E2BCF2F60C6
	for <lists+linux-man@lfdr.de>; Thu, 14 Jan 2021 13:11:08 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726919AbhANMJX (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 14 Jan 2021 07:09:23 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34686 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725955AbhANMJX (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 14 Jan 2021 07:09:23 -0500
Received: from mail-ot1-x32c.google.com (mail-ot1-x32c.google.com [IPv6:2607:f8b0:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 79F95C0613CF
        for <linux-man@vger.kernel.org>; Thu, 14 Jan 2021 04:08:38 -0800 (PST)
Received: by mail-ot1-x32c.google.com with SMTP id a109so4979564otc.1
        for <linux-man@vger.kernel.org>; Thu, 14 Jan 2021 04:08:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc;
        bh=ORPgdDKdfGuVzuz4oDS5AP7T8RLEZvx/cYPpnsf++Iw=;
        b=Rt6dmp3u4ItG6CNE3Ke55++NhbLkw5XGayAvU6Hn7QA8cs1YZaSaPes2js1f45Gthc
         iNvhmop93U5Ia88uobueJvFE0VWqMyHIhvKXp9vsMoFNGIdDfOBHFGkmjpA7QPS35HOU
         /J4kF/WXGLh2zGYdniiy/7umGQE1FcGXfgMcAuqw9V0AAxN1xKfjIPiY8cXmncv56A6p
         2FBM6pQ1UrwrYlOr//8xtROlH6+yIjKBGX7uKaLuJJjtNor3StgQxsn3juFpUDkgZa7G
         RSJ8XFqjAPA3wkaUGJDS1X2bnx3CVjlUG/pnNoYEFhXcRjyZ0+UMMAzwC4si3zkA4Vp8
         uH/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc;
        bh=ORPgdDKdfGuVzuz4oDS5AP7T8RLEZvx/cYPpnsf++Iw=;
        b=lgsyecBf6rNK5CH5hfagALlgF92tW1cWHOeu+tgbwacsSAgWSB12wRHs4+CDHBgrme
         HboO7cZFSKMz7ydyBlZWn8G7wK8BGNrirvCcTFathfT/iRVS/fObjcogGjOdm9wAwMAJ
         7fCu317ychieeJiP3ZqSCyiijIaSQRaXEx6NPu99glDjREaSk9WQtOCZBmdsFMnrc4RH
         B7VTEExmYnhlKhFlWg/DsqFaOP31yvQA1uLO3ZTIU/jKtgMkGUogOGNHl4b/iY3yZ8x+
         CotpvVdJed1Y62sa5eaw4u8OlHoIWLt/vEuasIB/zeXYcxuxWoQaTFVkGZKxGCXLhQ9z
         eHCA==
X-Gm-Message-State: AOAM532kzxLqC2tSKMeUpF8qlOzVU6R/kgBENnq7W3E6A9thyk+OXXUA
        OVacS6FKv/R88EMXRLIP7M8GoD+7PW7J/kJUOWg=
X-Google-Smtp-Source: ABdhPJw78NE+FnajAvH8vmOioTIg7HpJHhXNbiZZtiEDT0wY9pspRtxIv9EXgznFt1yohVvQ8GDC36dZTE7vYACNipM=
X-Received: by 2002:a9d:5e0f:: with SMTP id d15mr4327964oti.308.1610626117911;
 Thu, 14 Jan 2021 04:08:37 -0800 (PST)
MIME-Version: 1.0
References: <20210109051946.GA4015@localhost.localdomain>
In-Reply-To: <20210109051946.GA4015@localhost.localdomain>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Thu, 14 Jan 2021 13:08:26 +0100
Message-ID: <CAKgNAkiNyPyUWrEZEW_uvi9LJ41YEwRzQ+qkehDRWMcFOeZAGw@mail.gmail.com>
Subject: Re: Documentation revision for TCP_USER_TIMEOUT in man7/tcp7
To:     Enke Chen <enkechen2020@gmail.com>
Cc:     Eric Dumazet <edumazet@google.com>,
        linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Enke (and Eric),

Thank you for the patch. Is this a change in behavior, or a better
documentation of longstanding behavior?

Eric, do you have an Ack/Review for this patch?

Thanks,

Michael

On Sat, 9 Jan 2021 at 06:21, Enke Chen <enkechen2020@gmail.com> wrote:
>
> diff --git a/man7/tcp.7 b/man7/tcp.7
> index 6c91f058b..2ce831c90 100644
> --- a/man7/tcp.7
> +++ b/man7/tcp.7
> @@ -1161,7 +1161,8 @@ This option takes an
>  as an argument.
>  When the value is greater than 0,
>  it specifies the maximum amount of time in milliseconds that transmitted
> -data may remain unacknowledged before TCP will forcibly close the
> +data may remain unacknowledged, or bufferred data may remain untransmitted
> +(due to zero window size) before TCP will forcibly close the
>  corresponding connection and return
>  .B ETIMEDOUT
>  to the application.



-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
