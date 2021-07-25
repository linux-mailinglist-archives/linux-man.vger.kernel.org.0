Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 77C4C3D508A
	for <lists+linux-man@lfdr.de>; Mon, 26 Jul 2021 01:02:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229808AbhGYWVw (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 25 Jul 2021 18:21:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46268 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229531AbhGYWVw (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 25 Jul 2021 18:21:52 -0400
Received: from mail-ot1-x32b.google.com (mail-ot1-x32b.google.com [IPv6:2607:f8b0:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 17A80C061757
        for <linux-man@vger.kernel.org>; Sun, 25 Jul 2021 16:02:22 -0700 (PDT)
Received: by mail-ot1-x32b.google.com with SMTP id 61-20020a9d0d430000b02903eabfc221a9so8355218oti.0
        for <linux-man@vger.kernel.org>; Sun, 25 Jul 2021 16:02:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:content-transfer-encoding;
        bh=iaOVIxHDsA5sEP2JJv0IKdzpHiCxAFm+uIRSe/8NzjI=;
        b=r8zcGYyoFV/33bchrGUXIuJuHlKjCuKKVlIql4/t4niZ44+7W7207dO4dweoKWfJxV
         v4eKjKQ4c20Qyt+XOyW8RRemUuPXqSoNdW10tvHWdIhZIbGgk0OCMo/JsJLfndMdlOlF
         tEjZtsnkebdykZAjfQmUpreOmGvQk5ibcAAQw5hEDxQ5K23nBNJXSNJZx2BzDkRzYI1l
         2opn+pEvaYHOQK/97W2AEOnmi+wWoLlwjqHSI+adym2YZIzABAB1Jhn2+tFioS0TOCyh
         nnUBEx+as9s+BYKpiPnX98YK9eBlmmOfiK4SIG+LxVNjQXuDOzepAQyc+NBfplWL4Ito
         wAHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc:content-transfer-encoding;
        bh=iaOVIxHDsA5sEP2JJv0IKdzpHiCxAFm+uIRSe/8NzjI=;
        b=uDrVSomQXv8/ERhqLuqucxp+lyjqBzEzHnl6St6hC116niSIXM/NfiAC1TGvp7BsHr
         a0Q+zviCg+ZHfbgiUdvHAwTUB1n/mSiuo9ONJMZjnz92hrN433CVmke4OWCr42B+o4np
         +laY0o9BmS3m6vhAq+usICWOV5RhpcvXDLjvgO4ibIWeObQBrfabbG9Eyd2y62MFOlJa
         0mfzpyNsfc9oiz6WNt9gFrc35jn4SCpFPxuwkIGa3X1MfaiEGYHpgAZTJCS7DVt0xOdn
         hV8eXWFWRAX11xff1s4e4OgvkdVt7W67vGBb7vKCgas3oNDihUisW8T7t6Dd8HodVyPE
         BjcA==
X-Gm-Message-State: AOAM531IyzZ910cP6yxoSBdApA8LLof+p5mG+oIT2EriYmWJt7e/BWn6
        sVz5JPqT8s+hEKv914qTIw15q6mYBnf+/KX+Zro=
X-Google-Smtp-Source: ABdhPJzo+nZsuPjY4SSQAFbz3qPu3R88brMbTx0U+fX3tAeYZrymeAFolqvBLcaNU4JU4Opr1IKyVz1qpXuJvMuioDo=
X-Received: by 2002:a9d:3a49:: with SMTP id j67mr10652151otc.114.1627254141536;
 Sun, 25 Jul 2021 16:02:21 -0700 (PDT)
MIME-Version: 1.0
References: <20210725170914.GA16816@Debian-50-lenny-64-minimal>
In-Reply-To: <20210725170914.GA16816@Debian-50-lenny-64-minimal>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Mon, 26 Jul 2021 01:02:10 +0200
Message-ID: <CAKgNAkizm0xZ3vr=mGRDgMOBZwps2RSkQxfR3vP-6Z8x_6MEJw@mail.gmail.com>
Subject: Re: Errors in man pages, here: shmop.2
To:     Helge Kreutzmann <debian@helgefjell.de>
Cc:     linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Helge,

> Man page: shmop.2
> Issue: file =E2=86=92 files
>
> "The following header file is included by the \"reader\" and \"writer\" "
> "programs."

The existing text looks correct to me. Please let me know further
details if you still think there's a problem after reviewing.

Cheers,

Michael

--=20
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
