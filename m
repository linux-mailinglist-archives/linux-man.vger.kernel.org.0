Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B337D29817D
	for <lists+linux-man@lfdr.de>; Sun, 25 Oct 2020 12:42:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1415456AbgJYLmM (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 25 Oct 2020 07:42:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50874 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1731992AbgJYLmL (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 25 Oct 2020 07:42:11 -0400
Received: from mail-ot1-x344.google.com (mail-ot1-x344.google.com [IPv6:2607:f8b0:4864:20::344])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9E61EC0613CE
        for <linux-man@vger.kernel.org>; Sun, 25 Oct 2020 04:42:11 -0700 (PDT)
Received: by mail-ot1-x344.google.com with SMTP id f37so5587670otf.12
        for <linux-man@vger.kernel.org>; Sun, 25 Oct 2020 04:42:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc;
        bh=7i9Fy1ndRvjMZXd8G3m7KdSrrEDK+DIbML1WSgNojMI=;
        b=XTm7hRaAaRJ5hF7nqJThrBw9t5XGLdavxECEvsRlMs+6k//IiSyyzoLjOM2D0FNTJ/
         mnhYHlxmdpt24TlNv/e0uitunF37P8zpzJQH72hR2Fi4mOQtmsZ1s7gPGM0rBH8xdn8C
         0j9SqcKL3a1QQroBws9zPSh1Ptpu3Ejy1qfO1JQweNr955xYMn+G8zuV0Artv8L3pqcj
         MC8TQA+RvoP9/A3m9E9/6zyKLLOsO3gjUorvvoP3dfTBJcA3aQzBipCX4oV6fVh4+drV
         4kYvvsWx2Af1zWp8cZ0yjYNrhjmDO4nrV0LIeME4H97bCiqtZPnezSLnlwLuGpqAoE4l
         +oow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc;
        bh=7i9Fy1ndRvjMZXd8G3m7KdSrrEDK+DIbML1WSgNojMI=;
        b=FoVKvqSyi9ySAoT1ZJPzRXViSUgk2kSG1bR/iztIQfP4sU+vMkqeGEVcu3UkLrMR6I
         4JA/n21se4BLuwfwnTGngGEmj+HIh5Yg7MBoHqzLejIapyZrxsdqXniWKZHaJNkvrNgo
         CYOaOlxOOWPmStrMJjQIkU7BWVjkoU7VhL+SgsAL75GsybhWX1nhzHVh6eAxoEHNs+mY
         41TW5xoDhBllB7mzJMnI+kv6bQtFRPlUIloI3fEXWZi1KjmRbAhSZdH+JTaTIEuSyDDw
         7X4npzbur4mKCHS+5l9pASRX8TF0UEM3OLLUTop/qR2zYBpBYiviSgJOuOeSwS0axAE1
         ZHnw==
X-Gm-Message-State: AOAM532qivcTtXLefyni7Flez/CRvVD9RtDzUERGZ7cu5Ka/26BQTi1Q
        VXwfmjfmjnSyfBXEkqLSP/eZbqAzyNKvc+dm5F5U2Or7
X-Google-Smtp-Source: ABdhPJwBSHgVygk2aNE38CEeEt52f8RdzMBy6kTsdAQuYvLIk1SeCRi0llxWNTXIDZkj4mGsNCQxFZrFmOFTRnvJzuY=
X-Received: by 2002:a9d:5183:: with SMTP id y3mr10205016otg.308.1603626131072;
 Sun, 25 Oct 2020 04:42:11 -0700 (PDT)
MIME-Version: 1.0
References: <20201025104623.54594-1-colomar.6.4.3@gmail.com>
In-Reply-To: <20201025104623.54594-1-colomar.6.4.3@gmail.com>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Sun, 25 Oct 2020 12:41:59 +0100
Message-ID: <CAKgNAkj_TGUN6_UNpYjrfZ=EppM4X+Oxbm7zjc7jgtgrFVuKLQ@mail.gmail.com>
Subject: Re: [PATCH] circleq.3, list.3, slist.3, stailq.3, tailq.3: Use the
 'struct' keyword when appropriate
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On Sun, 25 Oct 2020 at 11:46, Alejandro Colomar <colomar.6.4.3@gmail.com> wrote:
>
> This helps differentiate 'TYPE' in some arguments
> from 'struct TYPE *var' in others,
> and is technically more correct.
>
> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>

Thanks. Patch applied. Everything is not pushed.

> ---
>
> Hi Michael,
>
> This should be the last patch for queue.3 and its forks.

Thanks for all the work!!

Could you please check my commit 9484d926f to make sure it's the right
correction.

Thanks,

Michael



--
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
