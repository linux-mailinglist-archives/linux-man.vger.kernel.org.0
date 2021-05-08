Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AEF36377126
	for <lists+linux-man@lfdr.de>; Sat,  8 May 2021 12:08:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229947AbhEHKJS (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 8 May 2021 06:09:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59772 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229869AbhEHKJS (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 8 May 2021 06:09:18 -0400
Received: from mail-il1-x12d.google.com (mail-il1-x12d.google.com [IPv6:2607:f8b0:4864:20::12d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B6BBCC061574
        for <linux-man@vger.kernel.org>; Sat,  8 May 2021 03:08:16 -0700 (PDT)
Received: by mail-il1-x12d.google.com with SMTP id j20so9855347ilo.10
        for <linux-man@vger.kernel.org>; Sat, 08 May 2021 03:08:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=aKoeM3kdRekC2/0qHHd8ly0BqMswMz8Yy9JFqH9j5lI=;
        b=G9fQ7o3kUM1wIDAJ0ULCgHqnNhOZGNkw7EIrm9D0dpN/diNxhH55mNaMi/g99J76IT
         PUW7RnjOzA8h0DRd/TWbdPU7Gx3VPHs9Zdl4eWiT0pZP7qX2l9oyU9O5BPNlJk33cmU+
         1wcPkuNsl7Cm4+t7fDrQ17zQxXPfT8w9zfn4171katazH0peIl3ldlmzWbToP5nTGxwc
         k0sHTybFbS4QwgjEU0PVG2qbj2Mw8Cdh2FNLyKEAk3KreZoKh8ZevDo9rxbDvZpeTCEx
         SgCZKXxASQs4/0wBR/C3qSe+CczK6mi7YZ/qGuH+htT//puN3BCnZuwQPF1lIeSHi5Eu
         5iQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=aKoeM3kdRekC2/0qHHd8ly0BqMswMz8Yy9JFqH9j5lI=;
        b=LtsAxw/wpoyfNp32c+4jqmZ09MUAqSUyIXWgE591N3tnKh5So3ZCW62cDxaHe/Tq+G
         1MAoFShyrijmJgrobT9dAW0HFWwMbbxGjC6Jqmk2rFTueAcIstHwveHALrkGY49MGDt8
         S7XqP+LXCa5OM/+Q7OZrrGrHIpPNdp6/1EDdOLxbeWDnk1lAh6Xtkq1UuasKVEiuyE0J
         OMopQFZH/1qt2kCZfg+ZXPnPU7DrgniHcBTivuI+BmJD3H+jBl3rp23DI6KlVC3inzNB
         eBAnIsgtNBf/ohHaZBPBZjltMaNTsjy4CoKrvdhA7Xn4BRnC7gpU1UEdEht9ulu4xu0W
         UQnw==
X-Gm-Message-State: AOAM532Si4aEcD07JesIIdunWuyMOfKDPupG5HTTzmNVXEadeib2QoDn
        oqfA3mNdtFh6jGFqP2x6GFtiyxXBvV7KOIvhO2J8b98TGD4=
X-Google-Smtp-Source: ABdhPJxh8hgZnEmHbXu+blfZLXKwjhnunJ7jYDbTn864GWnJq9RJvJCXrVG6dSHhw9d1yMg30iCwd0rwSrEMREPKb70=
X-Received: by 2002:a05:6e02:1b87:: with SMTP id h7mr12923103ili.54.1620468495751;
 Sat, 08 May 2021 03:08:15 -0700 (PDT)
MIME-Version: 1.0
References: <CAN2tbMWSHJ=BXe70ygXg9NpCWhB+3V-CpZEWCTtOynJr_QODbw@mail.gmail.com>
In-Reply-To: <CAN2tbMWSHJ=BXe70ygXg9NpCWhB+3V-CpZEWCTtOynJr_QODbw@mail.gmail.com>
From:   "Vishwajith.K" <vishuvikas1996@gmail.com>
Date:   Sat, 8 May 2021 15:37:40 +0530
Message-ID: <CAN2tbMUfwpG_5KWCgoO1t9ZexshUmAF+0AfchfzDmfWgN4iVZw@mail.gmail.com>
Subject: Re: [patch] shmop.2: tfix
To:     linux-man@vger.kernel.org
Cc:     alx.manpages@gmail.com, mtk.manpages@gmail.com
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

replying to all;
Consider checking this patch - code duplication typo fix.

Regards,
Vishwa

On Tue, May 4, 2021 at 7:22 PM Vishwajith.K <vishuvikas1996@gmail.com> wrote:
>
> From 8f678998296fab3d68b3637f5334d8ded37f3c99 Mon Sep 17 00:00:00 2001
> From: Vishwajith K <vishuvikas1996@gmail.com>
> Date: Tue, 4 May 2021 10:09:11 -0400
> Subject: [PATCH] tfix: shmop.2 example code
>
> ---
>  man2/shmop.2 | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/man2/shmop.2 b/man2/shmop.2
> index 3a6c908ee..c7e66af0e 100644
> --- a/man2/shmop.2
> +++ b/man2/shmop.2
> @@ -387,8 +387,8 @@ main(int argc, char *argv[])
>          errExit("shmget");
>
>      semid = semget(IPC_PRIVATE, 1, IPC_CREAT | 0600);
> -    if (shmid == \-1)
> -        errExit("shmget");
> +    if (semid == \-1)
> +        errExit("semget");
>
>      /* Attach shared memory into our address space. */
>
> --
> 2.27.0
