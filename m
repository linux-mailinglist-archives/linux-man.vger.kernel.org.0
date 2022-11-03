Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 82C62617EF5
	for <lists+linux-man@lfdr.de>; Thu,  3 Nov 2022 15:11:34 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229788AbiKCOLc (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 3 Nov 2022 10:11:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34294 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230157AbiKCOLb (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 3 Nov 2022 10:11:31 -0400
Received: from mail-vs1-xe33.google.com (mail-vs1-xe33.google.com [IPv6:2607:f8b0:4864:20::e33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0B08311834
        for <linux-man@vger.kernel.org>; Thu,  3 Nov 2022 07:11:29 -0700 (PDT)
Received: by mail-vs1-xe33.google.com with SMTP id z189so2001322vsb.4
        for <linux-man@vger.kernel.org>; Thu, 03 Nov 2022 07:11:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=N//fKaUXXJAdC7tQ/oOOiveofdIwmGzxEUGpBKYQB5g=;
        b=I1kUv36L2A2p5aGRZEPGMburzWMPQYodxqalGZmIXqFNNA0pYN6Ljjhq4tpeRIS7BO
         AZWtGS3L9zuT/g4M3LedMsODvHDyQbEFxNkOfyaBZtQAy9WqHRwLGrWttbEbjs35XRQM
         cF4CszOBPEAfocBV1gpKRmDUJw3plU9+gylNJxcg52HLXzoCFiFwQMRZzW2j+nrgPhLr
         ebDw8xdymTPpkym1aK4zLg8Qgm6yCGnmVuv6N6VdHmIBcRN9SuotY/cdw9DoQBjd1OIU
         wGirnbYwaN6Knh5Pd4Ml2f24CXreLQfxyyTwy+xv6aqslnYjtkB59eeEnHwC18ppthTU
         LD0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=N//fKaUXXJAdC7tQ/oOOiveofdIwmGzxEUGpBKYQB5g=;
        b=D4Fiq5NfQ+c2gh9+hhPMmXFUIttztaU0ziwMb7kwF2Tum1dIIPgDk2DKieOOoV4LhL
         xuS++PPt1wi7GupYR5DPP8Fv7oSodn+xiTgl/4oCpiSNVHrLViB1B/lNEk39Boivt9p/
         rwnIxD840P3qkEFq1/AWp+WCVXPUUSDhnxcJsSXhaso5qYr0o94lUmVPZEOojsd2P8xK
         cwVGv+i+bK+OSvuX21tjnl7tVH5A4iUeDjpWHS2L8x8THf+rPCKe7trr7RnDVmZDaETY
         x8Lvj3nVXMl6XRb/iTaUjs20jGM+qatLEvqUSnWYFtmmzEqfbsBlr2oSGggWzJcNy5WA
         n2aw==
X-Gm-Message-State: ACrzQf0498i9Y999MiyWHMEDxXGKIcjQysZLYkvVASj/P+gh8zhHnciJ
        0zk5w6+ZH3107C5AQZcf5Kh7XUMGSb2kVKpRynY=
X-Google-Smtp-Source: AMsMyM7Dtc/jOOO9UieFnc17/OPr9PeQAwoQHhSfLl4Tb2zw2WflfGFyKxcCNdjNvWqBZNfXVEgIP9L2NWMJsmi3pGU=
X-Received: by 2002:a67:d302:0:b0:3aa:6178:5d00 with SMTP id
 a2-20020a67d302000000b003aa61785d00mr15618904vsj.55.1667484688054; Thu, 03
 Nov 2022 07:11:28 -0700 (PDT)
MIME-Version: 1.0
References: <CAMVNhxTgTFTyqskFoqV1=yUQZRsfd4=rVy-HjkkZjTMhfGDQsw@mail.gmail.com>
 <691ce8fe-b141-6b62-27c9-81fb24ad1819@gmail.com>
In-Reply-To: <691ce8fe-b141-6b62-27c9-81fb24ad1819@gmail.com>
From:   Younes Manton <younes.m@gmail.com>
Date:   Thu, 3 Nov 2022 10:11:17 -0400
Message-ID: <CAMVNhxTOJ5QO1_UFxki72==zYYUVZpe+pXZBOodmisLwZNJFBA@mail.gmail.com>
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

On Tue, Nov 1, 2022 at 12:52 PM Alejandro Colomar
<alx.manpages@gmail.com> wrote:
>
> Hi Younes,
>
> On 11/1/22 17:49, Younes Manton wrote:
> > Hi,
> >
> > imachug@yandex.ru testing CRIU noticed that the documentation for
> > proc's map_files directory with respect to CAP_CHECKPOINT_RESTORE and
> > namespaces appears to be wrong. The text reads:
> >
> >> since Linux 5.9, the reading process must have
> >> either CAP_SYS_ADMIN or CAP_CHECKPOINT_RESTORE in the user
> >> namespace where it resides.
> >
> > The reporter noted that the user actually needs the capabilities in
> > the initial user namespace, not in the namespace the process resides
> > in. As far as I can tell this appears to be the case.
> >
> > The text was introduced in 167f94b707148bcd46fe39c7d4ebfada9eed88f6
> > and refers to kernel commit 12886f8ab10ce6a09af1d92535d49c81aaa215a8.
> >
> > The code and message in the kernel commit refer to the initial user namespace.
>
> Could you please write a small program and shell session that demonstrates
> either behavior?
>
>
> Thanks,
>
> Alex
>
> --
> <http://www.alejandro-colomar.es/>

Hi, see below:

$ uname -r
5.15.0-52-generic

$ ./test.sh
+ make rmf
cc rmf.c -o rmf
+ sudo setcap cap_checkpoint_restore-eip ./rmf
+ ./rmf
19582: =
Can't read map_files/ entry: Operation not permitted
+ sudo setcap cap_checkpoint_restore+eip ./rmf
+ ./rmf
19588: cap_checkpoint_restore=ep
+ unshare --user ./rmf
19591: cap_checkpoint_restore=ep
Can't read map_files/ entry: Operation not permitted

$ cat rmf.c
#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <sys/types.h>
#include <dirent.h>
#include <sys/stat.h>
#include <unistd.h>

int main(int argc, char **argv)
{
    DIR *mfd;
    struct dirent *mfe;
    struct stat mfstat;
    int ret;

    system("getpcaps $PPID");

    chdir("/proc/self/map_files");
    mfd = opendir(".");
    do {
        mfe = readdir(mfd);
    } while (!strcmp(mfe->d_name, ".") || !strcmp(mfe->d_name, ".."));
    if (ret = stat(mfe->d_name, &mfstat))
        perror("Can't read map_files/ entry");
    closedir(mfd);

    return ret;
}
