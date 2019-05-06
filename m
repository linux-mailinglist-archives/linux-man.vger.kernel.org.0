Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id BCA161548C
	for <lists+linux-man@lfdr.de>; Mon,  6 May 2019 21:43:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726145AbfEFTmw (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 6 May 2019 15:42:52 -0400
Received: from mail-ed1-f68.google.com ([209.85.208.68]:36251 "EHLO
        mail-ed1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726175AbfEFTmu (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 6 May 2019 15:42:50 -0400
Received: by mail-ed1-f68.google.com with SMTP id a8so16480913edx.3
        for <linux-man@vger.kernel.org>; Mon, 06 May 2019 12:42:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc;
        bh=XTyfK4jJYapzJZ6V8/kENFf8JvOJdxMbJFS8lSWXyOc=;
        b=KPKk6RyWQhYV/dFKQZqd7Qd5fe3oEWYXV5IZGDZiSXZHTq27G0AjDt/86OCTfbXmEo
         uO6ZVigpnyCyeJtOispW3U4XGxuMhbUgHm32NqzWn/HrdldH1F0kR5U7HU0dbuAnCwaq
         Qj5W+KrCyc6m4+F2jSzJApNSf5AHhne6SkfZ8/GaE7SmFkmBc1KHvbYfy9evnfaUqwAo
         /26xdydsSpZz3VS1aL9HzIhdbh4R3rn02EBsJhTFKQZyzSOexpQT7W7LECbpu7JBROWN
         sR0yOAwIRKfkAY7VrWMOccGBce4nVVx23GzftI9URvX7PbWKJVLSwFgKVFi1hppB78S/
         RWtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc;
        bh=XTyfK4jJYapzJZ6V8/kENFf8JvOJdxMbJFS8lSWXyOc=;
        b=hjRugB1bZ1wNOEJOeG6pe9CbDGXCAGSoiwzH1y5C7exNgMRQ/qPvEBHzIyDRzkJikQ
         I3BuH7btfejO1NF7M9X5to3pXhfl0hXm6OuNhAIuyengPCB+auDERHI/3d5wCIMLYdKW
         xY7HzrPYw///UIRM4TqFWDZoPLZ3ONLUWI52JYtdpWDtIOC3uNmnO2RVQnw9bSMUp5Sv
         zGephrq1uoAVs7YMcClVMGxIhJDuZBBrFvrCb+KJlzfDAStZiSbzUJsZC1+SgBpJCTod
         aENscuIsk5ILLtNT0v7r9s8dx05AzVJ27K38/t5vtwgP2uC82z7F3d/BiCVhDvzLK7L4
         c/1Q==
X-Gm-Message-State: APjAAAU0mYDour/p4VSJQNUfD9VGi8qIIHiwyqExzkQwDeR1j1THtgjc
        06MPAEE54NGyIrhCrdakM3enGZXYhNLxFuFgw3kUqA==
X-Google-Smtp-Source: APXvYqwD3g5BRingTPdeLHxZpJOgU0kIWCfFDA1zQCyPzH5+rovQfcNEuRpqx5q5ZbmRW2tkarCSm3eyyK/yUj8ONS4=
X-Received: by 2002:a05:6402:16d2:: with SMTP id r18mr27821624edx.261.1557171768252;
 Mon, 06 May 2019 12:42:48 -0700 (PDT)
MIME-Version: 1.0
References: <20190506054107.25321-1-shawn@git.icu> <20190506130637.26455-1-shawn@git.icu>
 <20190506133139.3hvur2xwdqqx6ror@jwilk.net>
In-Reply-To: <20190506133139.3hvur2xwdqqx6ror@jwilk.net>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Mon, 6 May 2019 14:42:36 -0500
Message-ID: <CAKgNAkh70pt2165j52TKbPG9EA+4+OpyZhtpxRXZ6pih2Dagxw@mail.gmail.com>
Subject: Re: [PATCH] read/write: documentation of limits v3
To:     Jakub Wilk <jwilk@jwilk.net>
Cc:     Shawn Landden <shawn@git.icu>,
        linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Jakub,

On Mon, 6 May 2019 at 08:31, Jakub Wilk <jwilk@jwilk.net> wrote:
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
>
> I've attached the program that I used for testing.

Yes, I concur, and thanks for your independent testing. This is
longstanding Linux behaviour (see my other reply on the list a few
minutes ago).

Thanks,

MIchael

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
