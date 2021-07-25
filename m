Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5A6593D500C
	for <lists+linux-man@lfdr.de>; Sun, 25 Jul 2021 22:59:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229661AbhGYUSd (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 25 Jul 2021 16:18:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47556 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229518AbhGYUSc (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 25 Jul 2021 16:18:32 -0400
Received: from mail-oo1-xc35.google.com (mail-oo1-xc35.google.com [IPv6:2607:f8b0:4864:20::c35])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 400FFC061757
        for <linux-man@vger.kernel.org>; Sun, 25 Jul 2021 13:59:01 -0700 (PDT)
Received: by mail-oo1-xc35.google.com with SMTP id w24-20020a4ac1980000b0290251d599f19bso1791044oop.8
        for <linux-man@vger.kernel.org>; Sun, 25 Jul 2021 13:59:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc;
        bh=CeLSG868yN7VaRNsk/H46WfFHOpXTdJqzFmCKf8O2J4=;
        b=nmXupgpmSyu0KgKURQljCbWth75Bh8kSD6MU/acY5AtJ7ThLz9mCNKLNCmGXFx4ZpN
         au93BSZp+VhKrHlmvE6+Uk08w2dr9LwKKEWfud1UCqwR9CLJiAu5DaE81Fu+2Xu/LtFs
         eHhMzAuAZ+0ME3Xneku+ttzCr+P6o2bMiUEMDLczukdtKzi8P8nQqpJzvXfbiocY9mRc
         p2fgpjhHtwNprgDTAWheAwLbtY5rVV5AZPbzLciIQjkhX6aOROeIQav9Gz7Pg5Q2x/uh
         zEExgZyC+AHGTmEmzPfS610jrahicYUJF2E8snikB/CdCCKzNsjUBx3nwplbX8o3+/kR
         XB6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc;
        bh=CeLSG868yN7VaRNsk/H46WfFHOpXTdJqzFmCKf8O2J4=;
        b=Ntr5yvIE0RHLI3f+xJzI/mmuUySART3tAUiHaqxJj4xFkIBuA8+PhiBV0W4sSSw9YJ
         wlPiUaE+raETRFuX7q5acHSdLMeFKUN/7FjNjbSAmJkGHvPUFAEWUoOm4tSsa1+RlQEx
         LTSTNSv5mj2pGzFRStRwpXERVmyagGrsz13Vp4+Y3a2VkVpYPouO6oUxev7cnMj4RlHj
         r/62vrUPNRvsdnXZDfERFC9dLv/DMlkT6UpF9wXB4zJuN53DZke5pogje0aUHvo8OQRK
         Lw0O2iiSLehtUX36rDIE6pVcPcGldAGufbxM0yzN09td446hcWBcDFchRNG4/Xq8MN5d
         UB2Q==
X-Gm-Message-State: AOAM530mW8vbXbDSJwbvMoFEU8tQbt7zJE6IXraONlAGw7180DXruW1u
        g6HyrpK2A0MeCOWmM/xcRCSpOhFNQ5jlgr1BzjM=
X-Google-Smtp-Source: ABdhPJwcSlizCIDzHnsm011HmDVrgVimOC9JywLCgqQxWUxOu9cSHOVtJsNPwhH71VFse7a0uE7bOCXkIds7kN4a5lo=
X-Received: by 2002:a4a:9783:: with SMTP id w3mr8496428ooi.80.1627246740539;
 Sun, 25 Jul 2021 13:59:00 -0700 (PDT)
MIME-Version: 1.0
References: <20210725170955.GA16896@Debian-50-lenny-64-minimal>
In-Reply-To: <20210725170955.GA16896@Debian-50-lenny-64-minimal>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Sun, 25 Jul 2021 22:58:49 +0200
Message-ID: <CAKgNAkg4Kxy0mi4p2to9zKohFXuZ7QWN7bCS4vRX46=YgAK67A@mail.gmail.com>
Subject: Re: Errors in man pages, here: sysvipc.7
To:     Helge Kreutzmann <debian@helgefjell.de>
Cc:     linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Helge

> Man page: sysvipc.7
> Issue: Missing full stop after actions
>
> "System V semaphores allow processes to synchronize their actions System V "
> "semaphores are allocated in groups called sets; each semaphore in a set is a "
> "counting semaphore.  POSIX semaphores provide an alternative API for "
> "achieving the same result; see B<sem_overview>(7)."

Fixed. s/action/actions./

Cheers,

Michael
