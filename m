Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EB0EC3D500A
	for <lists+linux-man@lfdr.de>; Sun, 25 Jul 2021 22:54:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231285AbhGYUNg (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 25 Jul 2021 16:13:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46470 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230507AbhGYUNg (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 25 Jul 2021 16:13:36 -0400
Received: from mail-ot1-x32a.google.com (mail-ot1-x32a.google.com [IPv6:2607:f8b0:4864:20::32a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3A4A2C061757
        for <linux-man@vger.kernel.org>; Sun, 25 Jul 2021 13:54:06 -0700 (PDT)
Received: by mail-ot1-x32a.google.com with SMTP id c2-20020a0568303482b029048bcf4c6bd9so6640678otu.8
        for <linux-man@vger.kernel.org>; Sun, 25 Jul 2021 13:54:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc;
        bh=heyLt+hGd7mD3ZTjGMnhAnTXt1VMwvOObvTyinjkdTA=;
        b=QkCHtXORTiuVzy67vdjZTGBe8rTPG22C/Z4NHLtOts0Zk+MsH4ssIa7yp+bjikHn0c
         nvXyKS656V5wCphJKZemaDoy+d2EGqAyavXO90xurRQZQuoHBpy7smz1TdkjAeeOE5gx
         3K8NcA5Qx9ic9F10PsPsX5EsEVhqYk80t87Ak3ni8pwe3OhYoeu+ovbzBBESzZt9vkqW
         Q92PlW8Fk4u8VT2Oq3x2IGro8DiB6OPqFxZxllCipbeOW1mOj73BsFKtDMDt4kn5FPML
         lcObDNlK8VTqN2rZbnVCPSYrbfK6lWv/QauEUoX5LNaEXfD3pgKqzQuJcFce6qn3nVzg
         FQbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc;
        bh=heyLt+hGd7mD3ZTjGMnhAnTXt1VMwvOObvTyinjkdTA=;
        b=kg1MFrJlDEfFoSLE0wXSA1Xb7Ptoe4eNTRtf4eAOKqeMKCru1aLhPIXXaY+kJa/p1B
         uwr/L6zPbaPYxpboIHeTVnIdzZTI2FtGpaLidfVECK8uyX1n+wW2E9mXa0oCMWYpQlxo
         8uezViqg/rjoSjWEPnEk8J3QOQLXFA5MSQVUvBAvJCcRyRWTSxCD3ieXLZwUAUSIbQ4W
         Y73nipL+O72gSaO4GN2D570d/EZ9mCG8/WzTgVj0p+n3jCeeiZO5Aix3yrNXxdrVHcQN
         +FxtHtU5koRKb9EN+Ue1c4g2pQSjB2vJR1EOjJutheul7HFlewgfSYqko16+/sdH4Vgv
         SJTQ==
X-Gm-Message-State: AOAM531OtucZAReKOyC3WpFXVMAX5LrI2W0ScKuNqvwvsOzp9/vI2Mwg
        ZbwMgbMKzJemsoDTL0bN0h1jRYoFqzpfeqigGaI=
X-Google-Smtp-Source: ABdhPJxBFosdc3qZOuIg2ofYhRgymF7pP26Sdc5HUjo9pHV+SgEbRrPEEhj/iEl86+GKdIXOMsHLNQBM3nJIiCqXP9s=
X-Received: by 2002:a9d:3a49:: with SMTP id j67mr10418240otc.114.1627246445698;
 Sun, 25 Jul 2021 13:54:05 -0700 (PDT)
MIME-Version: 1.0
References: <20210725170649.GA16415@Debian-50-lenny-64-minimal>
In-Reply-To: <20210725170649.GA16415@Debian-50-lenny-64-minimal>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Sun, 25 Jul 2021 22:53:54 +0200
Message-ID: <CAKgNAkixVnwZBRnXN-SPxgL0A4a+V0LBT4V=BrXauycf5nryog@mail.gmail.com>
Subject: Re: Errors in man pages, here: environ.7
To:     Helge Kreutzmann <debian@helgefjell.de>
Cc:     linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Helge


> Man page: environ.7
> Issue: "set a login time" twice
>
> "A user's login directory, set a login time.  Set at login time, see section "
> "NOTES below."

Fixed. s/, set a login time//

Thanks,

Michael
