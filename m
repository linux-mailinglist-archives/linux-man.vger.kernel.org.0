Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C13F51C0F97
	for <lists+linux-man@lfdr.de>; Fri,  1 May 2020 10:34:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728345AbgEAIeg (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 1 May 2020 04:34:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60976 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728325AbgEAIef (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 1 May 2020 04:34:35 -0400
Received: from mail-ej1-x62a.google.com (mail-ej1-x62a.google.com [IPv6:2a00:1450:4864:20::62a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 59CD9C035494
        for <linux-man@vger.kernel.org>; Fri,  1 May 2020 01:34:35 -0700 (PDT)
Received: by mail-ej1-x62a.google.com with SMTP id q8so6989872eja.2
        for <linux-man@vger.kernel.org>; Fri, 01 May 2020 01:34:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc;
        bh=DF7sJTpTkqb5rtBSvOEIdbVeTWf9Al+QXPQOrN82kQg=;
        b=acd7PPKhkHYcZIHXs6MP9UfTKTtliXUghaYB5one0E4XclNrCNCrFEte2hzjVOCuwe
         pqoYI2kjWy5yJtXtDghgA/zCiMG//8j3NU3Ykm+9TmLjA3XPLQpi5CZUJsnSqUccwoU0
         aO3ClYlpq1cNjacPvi6rFVZpNEivrYiXZbsjnkz0EB7kovo/M2W+Zf7d9xVAANOGuAmr
         9f8hqwBJEO93GluoR1/LgxiGnjxEDORiPL6VI6wLxzXGFt3OHz2lbCC51jcMhlXPsJsk
         1yOTf8LuJuF2d8n0SmxPnHg9z/w+kyvCHflcYkP4S3cWs5v5JSntQ1v6tT/9tTLI3Gmr
         xgFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc;
        bh=DF7sJTpTkqb5rtBSvOEIdbVeTWf9Al+QXPQOrN82kQg=;
        b=f0lX7nz8oh67vdcQVEEinQ50fwt6IzQ9Ock3h638a6wm7v1BqRgdAlxhwRfHk/vPmo
         aBZYYuFIx9mgvlgHhtdZLpoUnmZIQjuGBMAxCBl5Q/LQnvChD8o4yRWhVd8LiJdkuXTr
         h4BUqgLeoqoYjBmJ38QTyOtLYdwFNpxS9EcUPzwK18uSJMccvzYwqUoEHLKy0uUhxIL8
         zJ5bH0rUHkGMoRnirU9+nNby0FOoaNAqxEh5/H8pXxBuHNKOpTuKrZ2+qhH1wYxmQhe1
         rHroIlnBxbqZkHYL1B61yh8FsfWi5iPgLHRVP2AWZ0EJ6sFM2b/rXpbQQYEM1NXV7JKx
         sGeg==
X-Gm-Message-State: AGi0PuZVh2MChhj9ZHeYqSBH7SHa7lNj9MJQeaTPIecM1srYjaGInZK+
        7F9NN/i6FgX6hmnelMqubTtLCN2+n952vfJXUeo=
X-Google-Smtp-Source: APiQypL81/DyGq9f6xgGjJMrLc5ymXHa3fDAFsnsJR7v2qZ6MErSnb76Ej/yskPoIRTirmofLAydnzpWrT6xb9STpnU=
X-Received: by 2002:a17:906:1fd6:: with SMTP id e22mr2287448ejt.150.1588322073888;
 Fri, 01 May 2020 01:34:33 -0700 (PDT)
MIME-Version: 1.0
References: <20200419064811.GA31185@Debian-50-lenny-64-minimal>
 <62162aec-6dfa-18b9-b370-00d772f3e7b7@gmail.com> <20200501072055.GC938@Debian-50-lenny-64-minimal>
In-Reply-To: <20200501072055.GC938@Debian-50-lenny-64-minimal>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Fri, 1 May 2020 10:34:22 +0200
Message-ID: <CAKgNAkhb0HGsZy2Upgn-_Qui60vo62JV_v0jdhPf54wTQh5wYA@mail.gmail.com>
Subject: Re: On bug bombing
To:     Helge Kreutzmann <debian@helgefjell.de>
Cc:     linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Helge,

On Fri, 1 May 2020 at 09:20, Helge Kreutzmann <debian@helgefjell.de> wrote:
>
> Hello Michael,
> On Mon, Apr 20, 2020 at 12:26:41PM +0200, Michael Kerrisk (man-pages) wrote:
> > I am torn between saying thank you for all the effort you
> > clearly made and saying PLEASE DON'T DO THIS!
>
> Ok.
>
> > Submitting one hundred plus bug reports at the same time
> > is _very_ burdensome for an upstream maintainer. Honestly,
> > if it had not been for lockdown, I might simply have ignored
> > the whole series of mails.
>
> That would have been a pitty.
>
> I would have assumed that you process them at your convenience, i.e.
> each when you have time.

Time is always in short supply :-}. And sometime, when I queue things,
they just get lost (for ever, or for a long time).

> > In the future, please do not wait for  huge backlog to build up
> > before sending me reports. (10 reports at a time is fine; 100,
> > not so much.)
>
> Well, in the past (i.e. 10 years) we (german) translators always said
> "we should report this". But "we" always amounted to no one doing it.
> We were only recording issues found. So I finally decided to proceed.

I figured that the story must be something like this. So, in any case,
thank you that you did the work. It is appreciated.

> Since you are our biggest upstream, I started with your pages.
> Intially I would have made one big bug report, but I understood this
> is not requested from your side.

Yes. Individual reports is best. That way, I can accept/reject/discuss
each issue individually.

> Since it was mostly script based (and I was working on the scripts
> while preparing) they came in all at once. I could have added a
> throttle, like 10 / day, of course.
>
> I'm still learning the process(es), so the next upstream might get a
> better experience and I apologize for all the glitches I made.

I do suggest at least warnin the upstream that a lot of reports are
about to land...

> Anyhow, I hope to report more frequent (and with much lower numbers) in
> the future.
>
> > In any case, thank you very much for your many reports.
>
> Thanks from my side that you accepted and processed them.

You're welcome!

Thanks,

Michael

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
