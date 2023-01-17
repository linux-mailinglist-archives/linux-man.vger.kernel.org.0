Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B025B66E648
	for <lists+linux-man@lfdr.de>; Tue, 17 Jan 2023 19:43:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229793AbjAQSmv (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 17 Jan 2023 13:42:51 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59928 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234029AbjAQShM (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 17 Jan 2023 13:37:12 -0500
Received: from mail-pl1-x631.google.com (mail-pl1-x631.google.com [IPv6:2607:f8b0:4864:20::631])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EDE9238013
        for <linux-man@vger.kernel.org>; Tue, 17 Jan 2023 10:08:00 -0800 (PST)
Received: by mail-pl1-x631.google.com with SMTP id g23so18779444plq.12
        for <linux-man@vger.kernel.org>; Tue, 17 Jan 2023 10:08:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=AbT3CMj1lEA4J3HONBE1C50UCOvKChwdR/TEqGmJYzs=;
        b=ivdO9bLSFi6x605B1/LQsRROLgR8XebVo1aIYUQKMtQTeVbiPLOg3yCFWzjxdaj+cf
         7D5svDo6u4Zup9Y7PDxsIqDW0RRuE9F/HntFCekCZG1y+cnvHmLtfgPVcS7PZ92ElzLP
         oCT4/rN8f2t3YRLCQrnKxZfrbqZ/z+zLfkQcU9N/lydr5xMzbk59vwLqjAapbtMZmEsE
         b2GbV+ILsYvaK9a3C4r94QWKjm7IpgUOo3GHnguyquaNH96mohSmHqBnmIk6GbHp2+Og
         mRDTwzYozWna8qBWl1+/Uq8pVevZW1nac9LAhl7wUNoEXHvkXSaQYfJs23hTofO37sWl
         9mzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=AbT3CMj1lEA4J3HONBE1C50UCOvKChwdR/TEqGmJYzs=;
        b=4+DCoLteCwui01h8vmd3+9RZuthxelqEACZzPxPSHM/dxzNXc2Cts3d1Ke9qww+9+M
         XfuK7JqtcXOnNcdsDBXwTkfZb3/a1Y8xIXEsD/D03cTiVGekDFG7smcipUj8Zxsb8wAl
         wdbruFk4dle6QzHaGHxX0ar1XJ1iidE5toYok6ewyysLzSzr3xUqSps4vH7pKHmbcBXa
         73amyRtT0p9ofzkP4YDVH5RpEFhsX/ayUCJK5VHd+FvZTUoLlmKrMdBTDS6sdPt9st1Z
         Ap29866Cxj+qQYDoW5N0XsjGdz8Lxh8ftwwBdjv+BYOJMwdaok6iru9OGLkhh0zVxsK6
         BkOw==
X-Gm-Message-State: AFqh2kr1GDif2M5AZ84Y4LmhXMzi/xOvo/YUT9Bs1SM/Vry7dICZt4vs
        Eu77ytWQiUYfV9frJpIqyy1O2F4farVkoaRN53E=
X-Google-Smtp-Source: AMrXdXvt3FIZwpyvG5yQzIhk7vae4qWRjClcslNiaBcR5i5mZ8pZ6Uh2hWlOepDuzw8PvBcameQSg4kq69Kmg4EIOC8=
X-Received: by 2002:a17:902:8503:b0:194:721e:611c with SMTP id
 bj3-20020a170902850300b00194721e611cmr394783plb.4.1673978880362; Tue, 17 Jan
 2023 10:08:00 -0800 (PST)
MIME-Version: 1.0
References: <CAMVNhxTgTFTyqskFoqV1=yUQZRsfd4=rVy-HjkkZjTMhfGDQsw@mail.gmail.com>
 <691ce8fe-b141-6b62-27c9-81fb24ad1819@gmail.com> <CAMVNhxTOJ5QO1_UFxki72==zYYUVZpe+pXZBOodmisLwZNJFBA@mail.gmail.com>
 <0fa096a6-184b-38b2-6e75-d17ab5bff7a0@gmail.com>
In-Reply-To: <0fa096a6-184b-38b2-6e75-d17ab5bff7a0@gmail.com>
From:   Younes Manton <younes.m@gmail.com>
Date:   Tue, 17 Jan 2023 13:07:47 -0500
Message-ID: <CAMVNhxQN9yzgT-gye-oB8o65fkhA6ocdDFg3t3FDyacR4S7n2Q@mail.gmail.com>
Subject: Re: proc map_files entries require CAP_CHECKPOINT_RESTORE in init ns,
 not current
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        Adrian Reber <areber@redhat.com>, imachug@yandex.ru
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,FREEMAIL_REPLY,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi,

On Sun, Dec 11, 2022 at 12:30 PM Alejandro Colomar
<alx.manpages@gmail.com> wrote:
>
> Hi Younes,
>
> Sorry for the delay in replying!
>
> On 11/3/22 15:11, Younes Manton wrote:
> > On Tue, Nov 1, 2022 at 12:52 PM Alejandro Colomar
> > <alx.manpages@gmail.com> wrote:
> >>
> >> Hi Younes,
> >>
> >> On 11/1/22 17:49, Younes Manton wrote:
> >>> Hi,
> >>>
> >>> imachug@yandex.ru testing CRIU noticed that the documentation for
> >>> proc's map_files directory with respect to CAP_CHECKPOINT_RESTORE and
> >>> namespaces appears to be wrong. The text reads:
> >>>
> >>>> since Linux 5.9, the reading process must have
> >>>> either CAP_SYS_ADMIN or CAP_CHECKPOINT_RESTORE in the user
> >>>> namespace where it resides.
> >>>
> >>> The reporter noted that the user actually needs the capabilities in
> >>> the initial user namespace, not in the namespace the process resides
> >>> in. As far as I can tell this appears to be the case.
> >>>
> >>> The text was introduced in 167f94b707148bcd46fe39c7d4ebfada9eed88f6
> >>> and refers to kernel commit 12886f8ab10ce6a09af1d92535d49c81aaa215a8.
> >>>
> >>> The code and message in the kernel commit refer to the initial user namespace.
> >>
> >> Could you please write a small program and shell session that demonstrates
> >> either behavior?
> >>
> >>
> >> Thanks,
> >>
> >> Alex
> >>
> >> --
> >> <http://www.alejandro-colomar.es/>
> >
> > Hi, see below:
> >
> > $ uname -r
> > 5.15.0-52-generic
> >
> > $ ./test.sh
> > + make rmf
> > cc rmf.c -o rmf
> > + sudo setcap cap_checkpoint_restore-eip ./rmf
> > + ./rmf
> > 19582: =
> > Can't read map_files/ entry: Operation not permitted
> > + sudo setcap cap_checkpoint_restore+eip ./rmf
> > + ./rmf
> > 19588: cap_checkpoint_restore=ep
> > + unshare --user ./rmf
> > 19591: cap_checkpoint_restore=ep
> > Can't read map_files/ entry: Operation not permitted
> >
> > $ cat rmf.c
> > #include <stdlib.h>
> > #include <stdio.h>
> > #include <string.h>
> > #include <sys/types.h>
> > #include <dirent.h>
> > #include <sys/stat.h>
> > #include <unistd.h>
> >
> > int main(int argc, char **argv)
> > {
> >      DIR *mfd;
> >      struct dirent *mfe;
> >      struct stat mfstat;
> >      int ret;
> >
> >      system("getpcaps $PPID");
> >
> >      chdir("/proc/self/map_files");
> >      mfd = opendir(".");
> >      do {
> >          mfe = readdir(mfd);
> >      } while (!strcmp(mfe->d_name, ".") || !strcmp(mfe->d_name, ".."));
> >      if (ret = stat(mfe->d_name, &mfstat))
> >          perror("Can't read map_files/ entry");
> >      closedir(mfd);
> >
> >      return ret;
> > }
>
> Thanks!
>
> Would you please send a patch to the manual page?  You can check
> <https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/tree/CONTRIBUTING>
> for details on how to do that, or ask me for help if you need.
>
> Ideally, all of the details including the example program that you already
> shared should go into the commit message (or at least the most basic details and
> a link to the mailing list archive for more).
>

Sent to the list with details and example program in the commit
message, subject "[PATCH] proc.5: Fix caps needed to read map_files
contents".

> Cheers,
>
> Alex
>
> --
> <http://www.alejandro-colomar.es/>
