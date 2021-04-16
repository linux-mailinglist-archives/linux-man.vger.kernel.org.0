Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A93523625D1
	for <lists+linux-man@lfdr.de>; Fri, 16 Apr 2021 18:39:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235809AbhDPQjr (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 16 Apr 2021 12:39:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44888 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233976AbhDPQjq (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 16 Apr 2021 12:39:46 -0400
Received: from mail-pl1-x62a.google.com (mail-pl1-x62a.google.com [IPv6:2607:f8b0:4864:20::62a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0072FC061574
        for <linux-man@vger.kernel.org>; Fri, 16 Apr 2021 09:39:20 -0700 (PDT)
Received: by mail-pl1-x62a.google.com with SMTP id u7so12466516plr.6
        for <linux-man@vger.kernel.org>; Fri, 16 Apr 2021 09:39:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:references:date:in-reply-to:message-id:user-agent
         :mime-version;
        bh=/LkUrB0Ul/Puf1uaVf0pnpXLtAlk7n8qRcgr8YE2KII=;
        b=fPVnUDVKroeXoSqlu83oZSCfcpDrvlkAsv+6TawET0PWO+zljNXcGLUN+qv0aeweLD
         JcU36lM/+CgxDHsFsstKJKHqPrWccMHPEYt26odabmgyKrdyFdFYnlvMM/qlJh4CrBK1
         E6nPMVmavhrvyI1ru35W11iYDthwj4XyjAAiPoxFJKp+KdbzMIWC/E2HJYrKjC+A14WY
         E0SvWKCBOarvFAZNPQRQefouEIFvb1Vvp6iq+0a2oVZze0tZ1ajTHofkAEItxAnve03g
         D6h5RsMXa2upRchJD3zsdBtsO+D7HmCT8gCuGD5yERrWKtJhTGoTOsXrrGvsSw6UJnva
         pNWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:references:date:in-reply-to
         :message-id:user-agent:mime-version;
        bh=/LkUrB0Ul/Puf1uaVf0pnpXLtAlk7n8qRcgr8YE2KII=;
        b=fu3qAjus92m6Dw6FxJyyLTyB7fkRaxGPwxW8qCsOWP7nQJXOjQRIxvSXnPhwVgKmMg
         Za8wSKQYwlhkF4qFuqFZR+Q+KLgZSnkBgg4w1wVFhwDumUDAdhIAfGijfzKozOvYKUQw
         zCHN2O3gb1wu0yeeryUdkfZH//QjxArCekcAxFrwNyhIZe7Bokg9z1I2SjWx8cSv/osR
         BNFoJ8bpqDiffZDvL/hW7JxD4tfiCtJDIMPAdsHZ5Xl2A3wY2vU4phqAJoHSiZuKZGur
         /9iQHFKqWVyQslFI6u8/qKeR8D1ygGhQSwMnD4QRXtJmnU3VQOYvBtgrXDBj9Wv7yKh/
         jI8g==
X-Gm-Message-State: AOAM531Vbzgz0/45JUUp7OGl/CP1cw4DiYiy12/YPg5GcSX899wFQxP7
        vcBdokCyx2Ulb95IOJra+10=
X-Google-Smtp-Source: ABdhPJxzOyppt3RLchaSFwvvaHT3V1zwvZnwTt0qNdMdVIA7ZVX20C1rAST8ImFYxGDPwZkqgyWi0g==
X-Received: by 2002:a17:902:b210:b029:eb:535f:852 with SMTP id t16-20020a170902b210b02900eb535f0852mr10338023plr.80.1618591160510;
        Fri, 16 Apr 2021 09:39:20 -0700 (PDT)
Received: from localhost ([45.251.50.123])
        by smtp.gmail.com with ESMTPSA id t10sm6008837pjy.16.2021.04.16.09.39.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Apr 2021 09:39:19 -0700 (PDT)
From:   Utkarsh Singh <utkarsh190601@gmail.com>
To:     Walter Harms <wharms@bfs.de>,
        "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>,
        "alx.manpages@gmail.com" <alx.manpages@gmail.com>,
        "mtk.manpages@gmail.com" <mtk.manpages@gmail.com>
Subject: Re: AW: umask.1p: Can we add a table for octal and symbolic notation?
References: <878s6cbmm1.fsf@gmail.com>
        <747334490ab842f7b7816bad09a6d2fd@bfs.de>
Date:   Fri, 16 Apr 2021 22:09:20 +0530
In-Reply-To: <747334490ab842f7b7816bad09a6d2fd@bfs.de> (Walter Harms's message
        of "Fri, 16 Apr 2021 15:46:32 +0000")
Message-ID: <878s5ichfr.fsf@gmail.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/28.0.50 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 2021-04-16, 15:46 +0000, Walter Harms <wharms@bfs.de> wrote:

> Hello everybody,
> i did no see any answer. 
>
> How is maintaining the posix-pages organized ? 

There some misunderstanding from my side on how POSIX manual pages are
'distributed' with Linux man-page project.  Here is message posted on
this mailing list some time ago.

Message from Michael Kerrisk on Wed, 22 Jan 2014 16:56:48 +0100:

> In 2004, the IEEE and The Open Group decided to grant permission to the 
> Linux man-pages project to distribute parts of the then-current version
> of POSIX.1 in manual page format. That decision provided an extremely
> valuable resource for Linux programmers who wanted to write applications
> that are portable across UNIX systems. Evidence of that value has been
> demonstrated by regular requests in the last few years that the project
> should update its copy of the POSIX manual pages to the latest
> version provided by The Austin Group (the umbrella group that works
> on development of the POSIX.1 standard).

This means that Linux man-page project only distribute standards in
forms accessible offline using man command and doesn't edit them.

Confusion aside, you can always download Wikipedia pages or in fact any
HTML pages using wget or curl command.  For ex:

$ wget https://en.wikipedia.org/wiki/Umask

You can use a graphical browser like Firefox or a text browser like lynx
to view them.  For ex:

$ lynx Umask.html

-- 
Utkarsh Singh
http://utkarshsingh.xyz
