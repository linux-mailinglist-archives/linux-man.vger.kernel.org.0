Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C3C3927ABE3
	for <lists+linux-man@lfdr.de>; Mon, 28 Sep 2020 12:34:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726672AbgI1Kex (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 28 Sep 2020 06:34:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60178 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726654AbgI1Kew (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 28 Sep 2020 06:34:52 -0400
Received: from mail-ot1-x343.google.com (mail-ot1-x343.google.com [IPv6:2607:f8b0:4864:20::343])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7AB2DC061755
        for <linux-man@vger.kernel.org>; Mon, 28 Sep 2020 03:34:52 -0700 (PDT)
Received: by mail-ot1-x343.google.com with SMTP id s66so426511otb.2
        for <linux-man@vger.kernel.org>; Mon, 28 Sep 2020 03:34:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc;
        bh=/ubzcjUxC4ySpG0tEYCkgNW0UuJl8bsjuosfD/oVg+g=;
        b=jEFnBTluLrbVCx8lL/2tRbQ+8QPWG6P9Gzi5ILZTwyRM3gwhub9dzY04wEO1wnJKXp
         i0o8ugGCHVXLNvPyabAWhccyjkA6hl0ULk2fO5zCyew+9Si0VQIAjiT+pWIlr6FqN5Xi
         rJOk01TuUDfVYKSXv1SXilIc5G/IzH9f30pQ5uVvILN85dFs2xP4qZMxhR3CAOZQhqV6
         btZbZYTs8N7qdxB0oc2AlNNYQNWpG0JivvVAIvho7vXNcKB+8sO5TEVvVG1TeOjVE/6f
         cEMgy7abyaYWfb5oQPvoiTFoIswBHnU196iAvmpvgpjtCyNfwOd4XkHFbWcO/mgBbM9R
         HDFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc;
        bh=/ubzcjUxC4ySpG0tEYCkgNW0UuJl8bsjuosfD/oVg+g=;
        b=L6az4SQ3FmwvtWfDCKT+N+N+bWVoapOtwWQNUMc709quh9tzHerZ/bSLe+HblulmwZ
         F2H1ccY9dIFUTqql8Hj4U5z8bUvnv5qw+aAF6wyPwnFlBcZmWtZFmaRCz89sh+IPWQVa
         bdl3C3ybA6T2omDr67CLKZVprerPgCHaitdd/Yj8xKhlU57zdjm+BYiItLAu0cJEvpgr
         ZYF1Hm/EboFEJWCXVai3gCZLIldas5buDBYo+3ss/uBFviLUhzjq7y9J80exD5QaLeOs
         b3HHCw+8cV0KnF4J6YURBXjMPe28wN5/i6LG9T0Q6SufkmU+9xKj2BcLk0j+dbiqccYl
         9w9A==
X-Gm-Message-State: AOAM530PJbOaCpdkzt+ByhIa7uVv2JLgqnqbmGLV2lVUuh1fRTsENJ0G
        IIoTFUoXxbvTJoqou9Y837sytnXB4rLwqiKD1jQ=
X-Google-Smtp-Source: ABdhPJw2MLxt5c5HvKqS1y/a3BOtP0NpCnsaE7xMq6jz5xMP7jbL4mgZtAsC240KUmgvzms+4f7CEsWGF8J9ariAzos=
X-Received: by 2002:a9d:6d0b:: with SMTP id o11mr492451otp.114.1601289291729;
 Mon, 28 Sep 2020 03:34:51 -0700 (PDT)
MIME-Version: 1.0
References: <836b6d7d-4433-18d0-78aa-542c419c02f2@gmail.com> <20200928090322.2058-1-colomar.6.4.3@gmail.com>
In-Reply-To: <20200928090322.2058-1-colomar.6.4.3@gmail.com>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Mon, 28 Sep 2020 12:34:40 +0200
Message-ID: <CAKgNAkjOX27k+RFvJC+icZp3dC2bK7aQiTb4Qj4Oc=NfDYZP5w@mail.gmail.com>
Subject: Re: [PATCH v2 1/3] system_data_types.7: ffix
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>,
        "libc-alpha@sourceware.org" <libc-alpha@sourceware.org>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On Mon, 28 Sep 2020 at 11:04, Alejandro Colomar <colomar.6.4.3@gmail.com> wrote:
>
> Normally, text under a section header starts in the next line after the
> header, without a blank line.  Follow that pattern.
>
> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
> ---
>
> Hi Michael,
>
> I had been using .PP because I hadn't seen .br before.
>
> I think .br is the correct format,
> following the pattern in already existing man pages.

I don't disagree with the formatting change, but I am wondering if
there's a better way to do it. I tend to consider (perhaps wrongly)
that the use of .sp and .br is unidiomatic, and over the years I have
replaced a large of them with alternatives. (For example, in many
cases, .sp was being used when .PP should have been.)

If Branden does not tell us of something better, I will just apply
your patch as is.

> BTW, is there any way to copy the CC list with git send-email
> from the email I'm answering to?
> Right now I'm manually copying all of them each time from Thunderbird.

Sorry, I don't know. (Not really an answer to your question,
but are you also aware of "git format-patch --to=... --cc=..." ?)

Thanks,

Michael
