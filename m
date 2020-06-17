Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E1D9C1FCD1F
	for <lists+linux-man@lfdr.de>; Wed, 17 Jun 2020 14:11:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726798AbgFQMKz (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 17 Jun 2020 08:10:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37468 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726629AbgFQMKz (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 17 Jun 2020 08:10:55 -0400
Received: from mail-ed1-x541.google.com (mail-ed1-x541.google.com [IPv6:2a00:1450:4864:20::541])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A26AEC061573
        for <linux-man@vger.kernel.org>; Wed, 17 Jun 2020 05:10:53 -0700 (PDT)
Received: by mail-ed1-x541.google.com with SMTP id x25so1729625edr.8
        for <linux-man@vger.kernel.org>; Wed, 17 Jun 2020 05:10:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=Rp8pix+5H7PMubC1X83TB4oMwfdw11pkq9cC3bFT7h4=;
        b=mtcvmArpGLtpAEqjSQ0cg2N1trMs7nWGbJJi6f/7ZysYQ4jZxqMVkT8XymY1dVykN4
         4CKTY3C3ZVvpa3EOzvl+PmyhU3rye0xTH/xG8gB3I/HF52VustnW4PeZXrjsAm8siAIl
         WuEiisMVqonyjey3//sgba4FG/svypRQY++LYiz6nNf00PdVCcs6NZKJE40vKbuF6VDZ
         3ZIgywqAlxpi+xfRhcFdXQB2Pqj5ZFhS2G9h2Dkb+Db+43jjbnkilffIy6M4ifg31Mc3
         C2BFmCnSdpeGVnKSsRCxLoxCrFOpE5hWQ1t8eSKkgcW9OqoGgV/hMMNeADSKZNy86msL
         irPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=Rp8pix+5H7PMubC1X83TB4oMwfdw11pkq9cC3bFT7h4=;
        b=Ox7KaonOo8q6qfYQrIq1SYP+LdajWy9Xb9hbdV2ZEGu2cWJGv+urdd8AhgosSI3cs6
         /iynbnGq9qTxrQfptTP+vov671Rf0kGAUjEIjmO/IvP4GbnCV8ZmIh8z7b8RB7/o4GWK
         OeBUV7mqPgttBvCTW9vxRerPa5TkMa1+eNOkKpJsqCP/xGoxPuiCEpoCg9EYLlq+ZwSn
         Ok8M4VW9ckTx+0GiuXuAC+Rtn3jgpYUwKo4Tw1HRi/EkgYesjpf+xUTX1KkMRehl7MYr
         dfuVljUKErWIkrtn9bVTopvFHccHlQ8qvPRQsy7wbVPwFZdUu9onC9ZqRrj7yj3Lxq0S
         2bnw==
X-Gm-Message-State: AOAM530uvPowNv8kgHPzXXIoxz0SfqhhjcEycp3JWzMwNkAdT6fXDgjH
        eKxqNDOqII/Wqvr3tVdzNpujqxfK8KqZMH3TMRw=
X-Google-Smtp-Source: ABdhPJwGK7PYhTbiYdVUhWq8tF5uP4oK+i1wB7AvZOv1Waj3QoSveRqPlR5iWAwgtlbAe8v7Q5TflH/6CvlYPha92t0=
X-Received: by 2002:a50:b065:: with SMTP id i92mr7375960edd.112.1592395852308;
 Wed, 17 Jun 2020 05:10:52 -0700 (PDT)
MIME-Version: 1.0
References: <23ca3363-5a24-9862-4872-811678527b50@jguk.org>
 <20200617102232.7zzi2klj3onh2nur@jwilk.net> <cbbb7e4f-8774-c598-e9d3-6f13142dc3d3@jguk.org>
In-Reply-To: <cbbb7e4f-8774-c598-e9d3-6f13142dc3d3@jguk.org>
From:   Ponnuvel Palaniyappan <pponnuvel@gmail.com>
Date:   Wed, 17 Jun 2020 13:10:40 +0100
Message-ID: <CAOL8xrW0O0gmVjx03ji9XEsLb_gg=zZ336P0Y=21KbKdOhM_vw@mail.gmail.com>
Subject: Re: gettid
To:     Jonny Grant <jg@jguk.org>
Cc:     Jakub Wilk <jwilk@jwilk.net>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        linux-man@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

The default C++ mode, when no -std=3D is specified, for g++ 9.3.0 is
gnu++14 (it's the same for g++ 10.1.0, too).

> Looks like it is set by default, even when specifying the C++ standard ve=
rsion for g++
Why this happens is explained in libstd++'s faq:
https://gcc.gnu.org/onlinedocs/libstdc++/faq.html#faq.predefined


On Wed, Jun 17, 2020 at 12:14 PM Jonny Grant <jg@jguk.org> wrote:
>
>
>
> On 17/06/2020 11:22, Jakub Wilk wrote:
> > * Jonny Grant <jg@jguk.org>, 2020-06-16, 12:36:
> >> SYNOPSIS         top
> >>   #define _GNU_SOURCE
> >>   #include <unistd.h>
> >>   #include <sys/types.h>
> >>
> >>   pid_t gettid(void);
> >>
> >> I can compile on Ubuntu without #define _GNU_SOURCE and call gettid()
> >>
> >> Maybe that line can be removed?
> >
> > I don't think so. Here's what I get (with GCC 9):
> >
> >   $ gcc test.c
> >   test.c: In function =E2=80=98main=E2=80=99:
> >   test.c:6:9: warning: implicit declaration of function =E2=80=98gettid=
=E2=80=99; did you mean =E2=80=98getgid=E2=80=99? [-Wimplicit-function-decl=
aration]
> >       6 |  return gettid();
> >         |         ^~~~~~
> >         |         getgid
> >
> > Prepending "#define _GNU_SOURCE" fixes the above.
>
> Hi Jakub,
>
> Apologies, I should have shared my test case, I was compiling as C++
> // g++ -Wall -o tid tid.cpp
>
> #include <unistd.h>
> #include <sys/types.h>
>
> int main()
> {
>     return gettid();
> }
>
>
>
> $ g++ -Wall -o tid tid.cpp
> tid.cpp:3: warning: "_GNU_SOURCE" redefined
>     3 | #define _GNU_SOURCE
>       |
> <command-line>: note: this is the location of the previous definition
>
>
> Looks like it is set by default, even when specifying the C++ standard ve=
rsion for g++
> g++ -std=3Dc++11 -Wall -o tid tid.cpp
>
>
> Checked, yes, if compiling as C, see the same result as you.
>
> Not sure how it gets enabled by default in my c++
>
> $ g++ --version
> g++ (Ubuntu 9.3.0-10ubuntu2) 9.3.0
>
> Cheers, Jonny
>
>


--
Regards,
Ponnuvel P
