Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3A4FE3D5010
	for <lists+linux-man@lfdr.de>; Sun, 25 Jul 2021 23:02:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230116AbhGYUVm (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 25 Jul 2021 16:21:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48262 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229829AbhGYUVm (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 25 Jul 2021 16:21:42 -0400
Received: from mail-oi1-x22f.google.com (mail-oi1-x22f.google.com [IPv6:2607:f8b0:4864:20::22f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 05827C061757
        for <linux-man@vger.kernel.org>; Sun, 25 Jul 2021 14:02:12 -0700 (PDT)
Received: by mail-oi1-x22f.google.com with SMTP id u25so8662893oiv.5
        for <linux-man@vger.kernel.org>; Sun, 25 Jul 2021 14:02:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc;
        bh=ceItACkBoIvgJHGfv0ZeSbAlAJkjXUvHjXmdIugiaDs=;
        b=nN0Fpj0ZUinEgENbKeonRr2ArZMzX3NNLxH5HEO44c+lKbFlX5vrUT/jAqsGxRkMAR
         1kERZ2lmETO7IVWucrja09a+KkEYBoZrLnyQ33Cox4MxjMSVy1iv+PmxbzRbiVDvaXGX
         lPp1b1EfJjib4qAcvBL/FnfQzkoJKID5K6pXs2fFBfJJ/nuJh0JHwF+6i0gogMMHazqe
         Bmie5MI6Y2xLOwlHvPIyFK4zkuLTR/DTg7nkG3nFDbKdioPLsWXHGobRQyxuTPeykTGP
         Hi3y2/fGXeQ+SvZPaymIOS+UANLC/UDRsyJCT2UZyV+e/O5Sp1S93J9E+PcO6RsJo54b
         sl+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc;
        bh=ceItACkBoIvgJHGfv0ZeSbAlAJkjXUvHjXmdIugiaDs=;
        b=e5ZQiVdBvMgoZn7DxmbiUeQxwkpMo/yyyoaZrM/bYvkx9hmoBtp7TxX5C6ur70evTE
         JTuU7w8TpfUdanWMdRxDXmdo9QL/OnEX6qDXxE3C5qPF6bQaei4uh+klIjZcps+ZMm0x
         11MyN0VeX5CsfxuCrSJmmkFNBiup5SuSmrvFjrP9mJIvH0IXaouNjjW2OtCY9RgtrtsS
         g7sj6ikThL/opTmXeoS3x9RYdJYoiLpOaw5O5FYEy4qYP8jMHu5N0YHSpsSgOX4QNQLC
         CZa7DbQkq5Ni0yveUfY8ZPJBgj7/Wfcdm8CkEa7NunUSFbIXkRbddy/lTcAZDYQvBw6p
         +soA==
X-Gm-Message-State: AOAM5335LWlIJvhixUBl4HYwwWOyK0nMthNZLDdWqLw0Kle8Y+b3tEpt
        NoS3Kg+kzUArP1DElWYsC8cndP54gOqBY0Q7okQ=
X-Google-Smtp-Source: ABdhPJwNW6ghaKOaVjAbgqi7FkMNSX8Rhrp3UTkybHlOu7GFCOFnxGz01w3SYLIg0NJWizKQLRQtuLRMgmes0snLoyY=
X-Received: by 2002:aca:ab16:: with SMTP id u22mr14804339oie.177.1627246931502;
 Sun, 25 Jul 2021 14:02:11 -0700 (PDT)
MIME-Version: 1.0
References: <20210725170929.GA16841@Debian-50-lenny-64-minimal>
In-Reply-To: <20210725170929.GA16841@Debian-50-lenny-64-minimal>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Sun, 25 Jul 2021 23:02:00 +0200
Message-ID: <CAKgNAki+-u-7MY8pD5WB95ss_0_f=2B4zk7HnckxNDD6mD=UDA@mail.gmail.com>
Subject: Re: Errors in man pages, here: signal.2
To:     Helge Kreutzmann <debian@helgefjell.de>
Cc:     linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Helge,

> Man page: signal.2
> Issue: Such paragraphs shouldn't be no-wrap
>
> "B<WARNING>:\n"
> " the behavior of\n"
> "B<signal>()\n"
> "varies across UNIX versions,\n"
> "and has also varied historically across different versions of Linux.\n"
> "B<Avoid its use>: use\n"
> "B<sigaction>(2)\n"
> "instead.\n"
> "See I<Portability> below.\n"

I don't understand this report, and can't see a problem. Please elaborate.

Thanks,

Michael
