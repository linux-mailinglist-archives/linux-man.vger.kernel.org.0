Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 98A2D1ADAC7
	for <lists+linux-man@lfdr.de>; Fri, 17 Apr 2020 12:13:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728144AbgDQKNe (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 17 Apr 2020 06:13:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51942 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-FAIL-OK-FAIL)
        by vger.kernel.org with ESMTP id S1728102AbgDQKNe (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 17 Apr 2020 06:13:34 -0400
Received: from mail-ed1-x541.google.com (mail-ed1-x541.google.com [IPv6:2a00:1450:4864:20::541])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AB803C061A0C
        for <linux-man@vger.kernel.org>; Fri, 17 Apr 2020 03:13:33 -0700 (PDT)
Received: by mail-ed1-x541.google.com with SMTP id i7so1068830edq.3
        for <linux-man@vger.kernel.org>; Fri, 17 Apr 2020 03:13:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc;
        bh=z/AG9pLrk1rfPdI8J4QZgS4aceTrx+qodwe0Q8Ul//Y=;
        b=AGtKTG/eIAPKNkd0fMpYrNA7cvFLHq6c7vC0yLqgVvlNw+kzKcUJUW/T7jlg3dfOEz
         wK1Jb3jfeVvJz8LTVk6z2DvUa8eTUnX40c2yPQQ9j/yvoErrXhIYmJlIb3OSyJig9Ss4
         9wRmuu7L9j2L22U7IvXvC+k6J+VSYGCdWzG9g888u54eHyu470wD8ylFTXi0O6LFOUeS
         wWXHW7zyOWn3a2tdMcmMwYah+G/drDYz+3AVQeVrxiZKTqeqSOruugOG8W6sczM3MVEj
         ZfcLgDtZqfZonQbyhtefxAb46QMmVEFyUFCti8AGNoozynII28fRNOfPBWg0nYlLyOSC
         /lgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc;
        bh=z/AG9pLrk1rfPdI8J4QZgS4aceTrx+qodwe0Q8Ul//Y=;
        b=EMwusDw70/Etl/pNLj44uzj5pbL4+hnZ7F5zWXKLdPZ8d6jRgpXQhMxAAzIsZINVP8
         py5/GM8ILJPp9qI1iHNVT5u1n1WokvvtgBRfkCzE/kfVsfjFT2oO2iG4SnF+ENefiELm
         PIYKDaE636kti7ZQC1kafjm/NB3oF+Hu4NKRABExwJGTuBfDID52Es3gTogbHA0gIVMt
         Egd9ML6Mvy4sVOdrHl7m0reMU4poA/QtDuhU3l9H/QOrG4QrnIxU+rKJxFM793nMhp3c
         6p1R6vRGxo0oRhqLM+dqUCIMccsn0vY6eWQkuXoejrnxyc1q9JTGlhr08mayCpNqju7x
         F/TA==
X-Gm-Message-State: AGi0PuYAUONdN1akew6BssdxAQLbE16pdsc0/z3XqOanQwEQgzjv3jGU
        am5MPXRmVUi2b49fD3dZv+mxcHLt+6iqk5hP6Q8=
X-Google-Smtp-Source: APiQypJVAKLPN1EgaqQdUG2sQPqUQjEMiSltcV/TtbHHKKBPr7cxnuF5mG7ktfoTr5+Tb7pC7orReFynltAiHGx9hqM=
X-Received: by 2002:a05:6402:1b08:: with SMTP id by8mr2171638edb.286.1587118412298;
 Fri, 17 Apr 2020 03:13:32 -0700 (PDT)
MIME-Version: 1.0
References: <20180818065028.20083-1-ktsanaktsidis@zendesk.com>
 <CAKgNAkhVcyLqe_wrVCi+VYWwb587Qe=2EuHCiLLJUttoU7vCAw@mail.gmail.com> <20200417084747.3t7zrzygyejksank@jwilk.net>
In-Reply-To: <20200417084747.3t7zrzygyejksank@jwilk.net>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Fri, 17 Apr 2020 12:13:20 +0200
Message-ID: <CAKgNAkjA4xHtESyYU8g+6tMf0Bh--65OFC-OQ3BFPcSJqCYxuA@mail.gmail.com>
Subject: Re: [PATCH] clone.2: Document ENOSPC due to exhaused PIDs
To:     Jakub Wilk <jwilk@jwilk.net>
Cc:     ktsanaktsidis@zendesk.com, linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Jakub,

On Fri, 17 Apr 2020 at 10:47, Jakub Wilk <jwilk@jwilk.net> wrote:
>
> * Michael Kerrisk (man-pages) <mtk.manpages@gmail.com>, 2020-04-17, 09:18:
> >>   $ cat /proc/sys/kernel/pid_max
> >>   30000
> >>   $ gcc clonetest.c -o clonetest
> >>   $ ./clonetest
> >>   Got a clone(2) failure; 28 (No space left on device). Made 28822 children.
> >
> >I *don't* reproduce this. On my Fedora 31 system, the error I see is EAGAIN.
>
> AFAICT this was fixed in the mean time, in v4.19:
> https://git.kernel.org/linus/f83606f5eb007adc33bc8541ede00590f477bdeb

Thanks for clearing that up!

Cheers,

Michael

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
