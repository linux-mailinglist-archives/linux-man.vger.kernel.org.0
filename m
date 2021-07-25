Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BAD9B3D4FF6
	for <lists+linux-man@lfdr.de>; Sun, 25 Jul 2021 22:42:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230116AbhGYUBv (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 25 Jul 2021 16:01:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43894 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229518AbhGYUBt (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 25 Jul 2021 16:01:49 -0400
Received: from mail-oi1-x233.google.com (mail-oi1-x233.google.com [IPv6:2607:f8b0:4864:20::233])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C82AEC061757
        for <linux-man@vger.kernel.org>; Sun, 25 Jul 2021 13:42:18 -0700 (PDT)
Received: by mail-oi1-x233.google.com with SMTP id u10so8627963oiw.4
        for <linux-man@vger.kernel.org>; Sun, 25 Jul 2021 13:42:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc;
        bh=+GtK8MAyF+FDUAgD7IpV/uOeQvQHNV9MCMq/Nc5uLyg=;
        b=iA0mipyODU9XtrG9nCpFyGh7qHeDreY58DshlYhVoZYpbIKlX35Q9bNJyBTIdkdIFc
         mj/HiJqy3QLE/KkFopRxWDsZUd5iwo8UqTYu8BphxaregPwvQdple243SRrDhCacSeCo
         jWF/loCTAYUvHDpXXUtgSaDFFtMqy+igtqi207iDQA3xswlwTRAPWjm7qm5Ibx/Odonq
         rWymCsLDWfbub8wO6YWgnAzzj+Hhw92u9fscNU5CrddumSOC+piqyL2Wag+1jqk0OQIG
         HIDJ1qfcFzPbTWIvI5+h0sMMeP98yOr2qPU2yESxjdS6RQpVJdtQbn+yxojMCQMGITpJ
         eBxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc;
        bh=+GtK8MAyF+FDUAgD7IpV/uOeQvQHNV9MCMq/Nc5uLyg=;
        b=A0GlT6EZZpiC0Pd2jHcTywkT49v6cNc4nzxVDCxHio8nc2IV26BQLlIXXdcRS2Zyaz
         oni9U9Bs4bCriJnR7QljOPe0BtLTXf/ND9kfB/EfXpmKTJAuffOh7UJJi86AzBvGef85
         k+qzYwB5y6ElyB4FZijX099IaSWtKUDQJy7Z0v6v41WHTWfDcW9m4E2dsm8hTNXMNQDf
         SSp2BacPNV2ggnqgku7D2caT9UDeoxkBLlcWQBlpVo2kFOqrDxJLKEjACL9cWrK0iVXY
         TMn6S0F0QXvA3jzdNDB4dD+r6DtKk9pfKIfWUZcwtL/k/HjU+F5uFfICym1EsECuQB0x
         Es5A==
X-Gm-Message-State: AOAM5334S/cGAZkNhqwGMopyjg+X9RB21i8QvB3HhtDfrxovq2vFi9Ve
        yio6saYzJSjQ2RVJP8DdnDNyenjubsVdsDpqbvI=
X-Google-Smtp-Source: ABdhPJzwsZuObcuBElMGHQy2KmfAeA7CtOx/6u0kEs/EwevmSw7bOVcdUt4UVl+/EdVcL9h3siramSkCwhfy3VvnjWw=
X-Received: by 2002:a54:4094:: with SMTP id i20mr8980447oii.159.1627245738292;
 Sun, 25 Jul 2021 13:42:18 -0700 (PDT)
MIME-Version: 1.0
References: <20210725170607.GA16334@Debian-50-lenny-64-minimal>
In-Reply-To: <20210725170607.GA16334@Debian-50-lenny-64-minimal>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Sun, 25 Jul 2021 22:42:07 +0200
Message-ID: <CAKgNAkg5bdFd9ZMfZEKZSMBpfgWc-17v7_tBFZLj4_Y7k484HQ@mail.gmail.com>
Subject: Re: Errors in man pages, here: clock.3
To:     Helge Kreutzmann <debian@helgefjell.de>
Cc:     linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

> Man page: clock.3
> Issue: Previously POSIX, now XSI requires?
>
> "POSIX.1-2001, POSIX.1-2008, C89, C99.  XSI requires that B<CLOCKS_PER_SEC> "
> "equals 1000000 independent of the actual resolution."

Hi Helge,

This report is too brief. I don't see an issue here, but also I do not
really understand the intent of the report.

Thanks,

Michael

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
