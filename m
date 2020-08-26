Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0A6B42526BD
	for <lists+linux-man@lfdr.de>; Wed, 26 Aug 2020 08:15:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726238AbgHZGPG (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 26 Aug 2020 02:15:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38432 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725786AbgHZGPF (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 26 Aug 2020 02:15:05 -0400
Received: from mail-oo1-xc44.google.com (mail-oo1-xc44.google.com [IPv6:2607:f8b0:4864:20::c44])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C7F0EC061574
        for <linux-man@vger.kernel.org>; Tue, 25 Aug 2020 23:15:04 -0700 (PDT)
Received: by mail-oo1-xc44.google.com with SMTP id h9so187461ooo.10
        for <linux-man@vger.kernel.org>; Tue, 25 Aug 2020 23:15:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc;
        bh=JW0NlRrEReCB+opPKv01pyyifPK8/qaf6tzF/mIzNzg=;
        b=VC6a/ExIkJqmkMWHiTKGSe2Y9LrXA5+pK9iwzlIs3VRvRO0vlWltHtX+/e4KtogBzF
         x0e6eKWtz+w8osEb5pjINR9w+QI6g9vGchcCKXe3ED/Kvq8XoBVSgAbfwxv0ggZcowp9
         d+rgIh8tMQ4TyfKihEM8LSX4/tKwOwGAG/LNXIk2k/QSxVFV9UkfgSgRXRDLPd5B6ek6
         7KgUhS720349Dd/Fj86ajtY2Yt+VGv5+NMzPbOPODkDLj5/DA623p1vpcy2b6CyUvSii
         0m39VTx9wjGtMRNeVqSIi0f6zz9q5VjkVG98JZCDslz4hquNFkyjXxHH1r8DINIqjf80
         HkKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc;
        bh=JW0NlRrEReCB+opPKv01pyyifPK8/qaf6tzF/mIzNzg=;
        b=EhWJJrLIC9Vv5+SVUxGbpAXN2K8mCXkr02V03QXzols49x6wrlzRfaWS/oynlpwGgK
         nT+NFYQ7ubWpJ97GJwecFnRrZRuYRrVg6VnmKMJ1IHvRVawn1n4kpiiClghNwSwk9fot
         GQNY6NfmSrc6j4PYqKydAmnnq1XjOVz1uTuPR6vGd1glBera5VqolTwCaEhMTwD/Zec3
         foOYlJZOHCQfwJTTi3ii7vIvucoIp06b+sOxLS36CQxaPiNyh2nWtaYOQ3Eg583fNXBk
         Vb9r4Vo/dvuIGAz5CHthqce5soUpiFn0tcit/SYGpTrCxRWzTDLZqVY0HIv5pqRcnC3k
         AT2A==
X-Gm-Message-State: AOAM530Sskk2OU0Y7iM2+w52BJts3KwoIznLlXSdF1kfXr2nGT0C0/cv
        napoKPJXJLLbCw0HdtGd0YqXsB3T81FFnQ2mSAV9zRZAB5c=
X-Google-Smtp-Source: ABdhPJy5G531vjnoK4oOFaHYBMn5wM8PIgU5ALW/ToZ4A3tZAwemL/BqxtqRdTCZbDPWXebeJU3466NslfpibF7/m74=
X-Received: by 2002:a4a:380b:: with SMTP id c11mr9515989ooa.17.1598422501681;
 Tue, 25 Aug 2020 23:15:01 -0700 (PDT)
MIME-Version: 1.0
References: <DM6PR11MB3161DE4718248F9DE9BC5E468E570@DM6PR11MB3161.namprd11.prod.outlook.com>
In-Reply-To: <DM6PR11MB3161DE4718248F9DE9BC5E468E570@DM6PR11MB3161.namprd11.prod.outlook.com>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Wed, 26 Aug 2020 08:14:50 +0200
Message-ID: <CAKgNAkj70aJ+3SBm4ahTd0btjkqgp+mUCuwYmfYy5U1iV-m6-w@mail.gmail.com>
Subject: Re: Bug in example in https://man7.org/linux/man-pages/man2/clock_gettime.2.html
To:     Tony May <tony.may@mediakind.com>
Cc:     linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

[CC += linux-man@]

On Tue, 25 Aug 2020 at 16:13, Tony May <tony.may@mediakind.com> wrote:
>
> Dear Michael Kerrisk,
>
> I have been using PTP and found the documentation
> patch provided by Richard Cochran:
> https://lore.kernel.org/patchwork/patch/868609/. This patch
> included a bug which now appears in
> https://man7.org/linux/man-pages/man2/clock_gettime.2.html
>
> I think the example code he provides contains a bug:
>
>            struct timeval tv;
>            clockid_t clkid;
>            int fd;
>
>            fd = open("/dev/ptp0", O_RDWR);
>            clkid = FD_TO_CLOCKID(fd);
>            clock_gettime(clkid, &tv);
>
> The clock_gettime function requires a timespec not a
> timeval variable, so the code should be:
>
>            struct timespec ts;
>            clockid_t clkid;
>            int fd;
>
>            fd = open("/dev/ptp0", O_RDWR);
>            clkid = FD_TO_CLOCKID(fd);
>            clock_gettime(clkid, &ts);
>
> I have a running test application based on my changes,
> so I am confident the modified code works.

Thanks, Tony. I applied the patch below.

Cheers,

Michael

diff --git a/man2/clock_getres.2 b/man2/clock_getres.2
index c0e486c2a..8fc7c6fef 100644
--- a/man2/clock_getres.2
+++ b/man2/clock_getres.2
@@ -251,13 +251,13 @@ dynamic clock ID.
 #define FD_TO_CLOCKID(fd)   ((\(ti(clockid_t) (fd) << 3) | CLOCKFD)
 #define CLOCKID_TO_FD(clk)  ((unsigned int) \(ti((clk) >> 3))

-struct timeval tv;
+struct timespec ts;
 clockid_t clkid;
 int fd;

 fd = open("/dev/ptp0", O_RDWR);
 clkid = FD_TO_CLOCKID(fd);
-clock_gettime(clkid, &tv);
+clock_gettime(clkid, &ts);
 .EE
 .in
 .SH RETURN VALUE

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
