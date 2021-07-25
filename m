Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 679EF3D4FFA
	for <lists+linux-man@lfdr.de>; Sun, 25 Jul 2021 22:46:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230284AbhGYUF3 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 25 Jul 2021 16:05:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44686 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229518AbhGYUF3 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 25 Jul 2021 16:05:29 -0400
Received: from mail-oo1-xc33.google.com (mail-oo1-xc33.google.com [IPv6:2607:f8b0:4864:20::c33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 60574C061757
        for <linux-man@vger.kernel.org>; Sun, 25 Jul 2021 13:45:57 -0700 (PDT)
Received: by mail-oo1-xc33.google.com with SMTP id k7-20020a4abd870000b029025e4d9b0a3dso1782770oop.6
        for <linux-man@vger.kernel.org>; Sun, 25 Jul 2021 13:45:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc;
        bh=tMyhpnOqrwm/GPRyrX22lhCjhZ0l6ypmSB82sXLR63Y=;
        b=PkR/sK2MsxCfighy8b+Bdmj4JcJM6h64TbODl6dJeQhOwYT+vAi/QAdC1n7dofTOBH
         U/0OkskSKL5Y9DSs9fvwJKyTlBXnkDKaxpfWSMkh09AbU3YdebnVb8dgA+4lO4YHeX2J
         90dgSz4fhYd4VhUzCpDblZkyFR6n4PL7GVQiEOy4tE17Z7x9p9S0/RoAL5d/B0OGC6pN
         vfE54gbmVSWvOJ5Bx4juCeZ7gRs0/VmEOf50oErEOKKRPovOFA0jShfDZp0F93fmKqeU
         2uP7KhjcfTYwZl1FIYf9NUU9fO0/7zMzUI2s/FA6YhdRaHwC0wQN/clQSxHTwo9fVFv7
         lysg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc;
        bh=tMyhpnOqrwm/GPRyrX22lhCjhZ0l6ypmSB82sXLR63Y=;
        b=kA0KQ7A6Ks0kSEVvH5KFDTa0z5/tJI0yQg7s9vyBlmeWFCF5D+uPhhg+smxorfhZhP
         JoIR7iYuVDeV6HqsQQ4vJFQ7p2d8zPNC6n4cvqsCuW9bnOWFLV3NvBfrHVtGuQzRf911
         zD8itCfNGquiKrm8lf9TwClvEoblQDypZhZKx4IRXovGRQ90w9zs1VuhzX8IKN/apVcX
         1szhX01oOKbp7lWBIuBG0FH3skpwOxuBl0h/TpxBtjVuiwZzOpt9mPh7nFWPSFS32Yo/
         Wec2rhYhj/r2yOGY/mA6e5OD5nY3ejMTnoUH0JYlGxBJFKpuDaWTP7d0/vaanTjLVVyL
         ugBQ==
X-Gm-Message-State: AOAM5312+bxEIQ1N9dpS85Iol46JAsGYao6oovbrvxQoNmKBJ+7WkZiT
        A+nfBCzMhxAFL6FLp3PcRswEtukXX+/dVEk1Z4o=
X-Google-Smtp-Source: ABdhPJzlDk+5xNETk9g8XrguSyW2TlHeh9uUlNY6n6EM5R9o+hGDfMoso8EsB4Xq+/ZuwjQkBH+Dwi2c5tdaRbjiUGY=
X-Received: by 2002:a4a:b6ca:: with SMTP id w10mr1799089ooo.17.1627245956667;
 Sun, 25 Jul 2021 13:45:56 -0700 (PDT)
MIME-Version: 1.0
References: <20210725170511.GA16224@Debian-50-lenny-64-minimal>
In-Reply-To: <20210725170511.GA16224@Debian-50-lenny-64-minimal>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Sun, 25 Jul 2021 22:45:45 +0200
Message-ID: <CAKgNAkhsN2-FfpRiyK++jGc2hpy2YCsNPjVhWHDdkG6t2tBcjA@mail.gmail.com>
Subject: Re: Errors in man pages, here: access.2
To:     Helge Kreutzmann <debian@helgefjell.de>
Cc:     linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Helo Helge,

On Sun, 25 Jul 2021 at 19:05, Helge Kreutzmann <debian@helgefjell.de> wrote:
>
> I'm now reporting the errors for your project. If future reports
> should use another channel, please let me know.
>
> Man page: access.2
> Issue: FIXME: The if construct does not reeally work well, better: B<access>() and B<faccessat>() return the following exit codes:
>
> "B<access>()  and B<faccessat>()  shall fail if:"

I think the wording is okay. It appears in a number of pages.

Thanks,

Michael
