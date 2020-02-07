Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 43F4D155A6F
	for <lists+linux-man@lfdr.de>; Fri,  7 Feb 2020 16:14:36 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726936AbgBGPOf (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 7 Feb 2020 10:14:35 -0500
Received: from mail-ed1-f68.google.com ([209.85.208.68]:40581 "EHLO
        mail-ed1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726901AbgBGPOf (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 7 Feb 2020 10:14:35 -0500
Received: by mail-ed1-f68.google.com with SMTP id p3so2732803edx.7
        for <linux-man@vger.kernel.org>; Fri, 07 Feb 2020 07:14:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc;
        bh=iH/D1hvU58eU7tQ5TafiPm4s4E0Bd81/QAbUWNw01co=;
        b=joNnyEpji51oA3LnQQaCQz2ubhZVozM0Jovr8O54880XPvIfQ608eEH3qjdQXIKoe0
         IL64VYOvu5zew/gZ/a74Rt82T8B7zH+5tQGLOHjNJmEIlpPuiZBN8zO6fgi3eO9hE8GB
         FGoSdd433XBkpZQtq82Qk3UzaS7LD58TFE/htV4lGSBjEWX7FasTRSxQxvGEnbZHbNfg
         o4Ut4m4W562oYUgyymp0oTB3ghEGAezqEF2tAJ+3o0111rBPJjBRBS7ZyXEm7PW6VEPa
         gAU3fCn80ku5ZDMO9VZhEAsDhwn1VaHnpxtcGX0CFHN6yRYwl6WaGGazy11N4Z9I0lua
         wjfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc;
        bh=iH/D1hvU58eU7tQ5TafiPm4s4E0Bd81/QAbUWNw01co=;
        b=myuUjjkVUErHpkqfdQfAY3wPXEJ8Aj5u86jZNleHMGEAwA0CAP5cNjFZfGEcG63VpM
         Y+KeT66ajgpiVGFDpiMD6IBNI21/BhPT1Ps6Zhk5zwrf3foBClcp3ScNCZoq0R9D0pnN
         SuxJi4z/DoPbTAqVJZqH9XGfqqVnRFRvCNlPFKAOk4175rSsNb24rwEUXxxteZ6kcpTk
         0a92pr4QUZQpkCF73OQu3v0vL4SDtXneZjx43p7Tf5sJ2+DHakMRCgh01SKaZTwCqCD7
         WBxLYTYUjgS7QPmPOf4mCBiAPvjfVYK0aD70qmJxMyrE7xWbaTwYm3sqv1CEcBa1W8bj
         YcQg==
X-Gm-Message-State: APjAAAVbQAPIt54hw1vSxPM5N++MngDBLkQGhEo9Gdtw81sJnpLaQ/ui
        02dxcGamG08f9aQLJvQJigBzYLNn/9v72QXo1U0=
X-Google-Smtp-Source: APXvYqyMPdA2q5lsjFWBUI7fwoJdptXNmqXxYoih42/lDGVpOTPwuyiKr3pbOGpMMeh8i73iNG/q7L28QiCWoFmzdUY=
X-Received: by 2002:a17:906:ce4a:: with SMTP id se10mr8823203ejb.157.1581088472039;
 Fri, 07 Feb 2020 07:14:32 -0800 (PST)
MIME-Version: 1.0
References: <CAMOczyyTJXaYS473-XpUbP9nCQLdVeCuJMydD7=4HR2W28FT5g@mail.gmail.com>
In-Reply-To: <CAMOczyyTJXaYS473-XpUbP9nCQLdVeCuJMydD7=4HR2W28FT5g@mail.gmail.com>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Fri, 7 Feb 2020 16:14:20 +0100
Message-ID: <CAKgNAkiNFXdvSFWJOENLW+=B6s+S6LSWUgnAOej6a3wfc5VC=g@mail.gmail.com>
Subject: Re: Missing word 'about' in man page for 'find'
To:     Matthew Burgess <matthew.s.burgess@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Matthew,

Bugs in the find(1) manual page need to be reported to the location shown in:

http://man7.org/linux/man-pages/man1/find.1.html#COLOPHON

Thanks,

Michael

On Fri, 7 Feb 2020 at 09:49, Matthew Burgess
<matthew.s.burgess@gmail.com> wrote:
>
> The third sentence of the description of the -P option in the man page
> for 'find' starts:
>
> "When find examines or prints information a file..."
>
> But I think it should be:
>
> "When find examines or prints information about a file..."
>
> This error is present in the version of the man page at
> http://man7.org/linux/man-pages/man1/find.1.html



-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
