Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 4BAFC15364
	for <lists+linux-man@lfdr.de>; Mon,  6 May 2019 20:06:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726534AbfEFSGY (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 6 May 2019 14:06:24 -0400
Received: from git.icu ([163.172.180.134]:50026 "EHLO git.icu"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726376AbfEFSGY (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Mon, 6 May 2019 14:06:24 -0400
X-Greylist: delayed 513 seconds by postgrey-1.27 at vger.kernel.org; Mon, 06 May 2019 14:06:24 EDT
Received: from mail-vs1-f41.google.com (mail-vs1-f41.google.com [209.85.217.41])
        by git.icu (Postfix) with ESMTPSA id C950C220753
        for <linux-man@vger.kernel.org>; Mon,  6 May 2019 17:57:49 +0000 (UTC)
Received: by mail-vs1-f41.google.com with SMTP id e2so8678098vsc.13
        for <linux-man@vger.kernel.org>; Mon, 06 May 2019 10:57:49 -0700 (PDT)
X-Gm-Message-State: APjAAAV3AYzvbyW49B6hu8cA1jNJZTBGG2pe9pAJwx0+1qw2n4s9aHGa
        b0Jho07KqaHxdIWW0sLbWARTO9xv+mMvaYFH2Rg=
X-Google-Smtp-Source: APXvYqygo32t5ZU6vjyJ4rUn/3pahkgMvWBSVbVbidljNzg0MyPvAZPOEvAGcDblgRWoLTq9AObdYDMITX8XbVfBTC8=
X-Received: by 2002:a67:302:: with SMTP id 2mr3414546vsd.91.1557165469062;
 Mon, 06 May 2019 10:57:49 -0700 (PDT)
MIME-Version: 1.0
References: <20190506054107.25321-1-shawn@git.icu> <20190506130637.26455-1-shawn@git.icu>
 <20190506133139.3hvur2xwdqqx6ror@jwilk.net>
In-Reply-To: <20190506133139.3hvur2xwdqqx6ror@jwilk.net>
From:   Shawn Landden <shawn@git.icu>
Date:   Mon, 6 May 2019 12:57:37 -0500
X-Gmail-Original-Message-ID: <CA+49okohP9isEXpMTB6kHigJLSbq_E3p8mKTmReHhPqNG9mfJA@mail.gmail.com>
Message-ID: <CA+49okohP9isEXpMTB6kHigJLSbq_E3p8mKTmReHhPqNG9mfJA@mail.gmail.com>
Subject: Re: [PATCH] read/write: documentation of limits v3
To:     Jakub Wilk <jwilk@jwilk.net>
Cc:     linux-man@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Mon, May 6, 2019 at 8:31 AM Jakub Wilk <jwilk@jwilk.net> wrote:
>
> * Shawn Landden <shawn@git.icu>, 2019-05-06, 08:06:
> >--- a/man2/write.2
> >+++ b/man2/write.2
> >@@ -190,10 +190,18 @@ flag, and either the address specified in
> > .IR buf ,
> > the value specified in
> > .IR count ,
> > or the file offset is not suitably aligned.
> > .TP
> >+.B EINVAL
> >+.\" MAX_RW_COUNT in include/linux/fs.h
> >+The write amount is greater than
> >+.B MAX_RW_COUNT,
> >+which is
> >+.B INT_MAX
> >+rounded down to the page size (INT_MAX & ~PAGE_MASK).
> >+.TP
>
> I can't reproduce this. For me, write() behaves as it is documented in
> another part of this man page:
>
> "On Linux, write() (and similar system calls) will transfer at most
> 0x7ffff000 (2,147,479,552) bytes, returning the number of bytes actually
> transferred. (This is true on both 32-bit and 64-bit systems.)"
Ahh, it was changed in 2016 commit bc61384dcdd82a6faabafecdcd80040625db5e40

>
> I've attached the program that I used for testing.
>
> --
> Jakub Wilk
