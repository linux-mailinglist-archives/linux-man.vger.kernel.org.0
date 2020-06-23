Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 82EAA2055D9
	for <lists+linux-man@lfdr.de>; Tue, 23 Jun 2020 17:26:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1732909AbgFWP0d (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 23 Jun 2020 11:26:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35150 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1732781AbgFWP0d (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 23 Jun 2020 11:26:33 -0400
Received: from mail-ej1-x633.google.com (mail-ej1-x633.google.com [IPv6:2a00:1450:4864:20::633])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 35553C061573
        for <linux-man@vger.kernel.org>; Tue, 23 Jun 2020 08:26:33 -0700 (PDT)
Received: by mail-ej1-x633.google.com with SMTP id a1so8019772ejg.12
        for <linux-man@vger.kernel.org>; Tue, 23 Jun 2020 08:26:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=TSk5I2XGyol57/zZG2K08TicM7Vn/98gFy9a9VX/YoM=;
        b=dYA+PlaS15gl+2RYImKY+B/iRL7czqEcptRrRsnCiYsZFozutpV4wDSLib6g0e16kI
         F7TPSULyLN8oSqUKUTxb0uGSdZCPbe58grmgykeim936MtNefLxnb3YG1pDil822kYVk
         a/AIoJ5c4PnLYlb5pEe4ouOQlYUximonNQ+b7BFE1IXPoD1cDmIi2uf1MbWNODRSfHaK
         dDu2XhEDMB9O8BmqpyOxWi3+KcuAgg9mjS82v4hTM8kkC2YE1P9CvCkQHHOYzB5dh/ZF
         BaXV5oh6aGRFFEPAxD6qUTxvqdcAaALwF1iON0VdhiUxN6eLvc4xshEv9BZy69lIbMkd
         p8pQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=TSk5I2XGyol57/zZG2K08TicM7Vn/98gFy9a9VX/YoM=;
        b=NPVnr3BauSoY7rv7SmzHFRb0W4bQugO/jijoMZ25yaei0/ddKzGhMHutH5D6eL9zqo
         XZ0OEtvsxwOwuts1KbjFHdW6JzORWOFHwp9cQmg2C57fXLAM5snXZqsM8kE5t5Sve1vG
         kSKKclIqJrJ+jV9/blY3sUew4HB7+IB6X3o91MkP1jmkgAr1H5dGB4y1ZwWmxXrkzlJA
         iBhy4+X+0PR0gKUw2+6vZH+PMHWOJlJ0z7pKUNxKr6hDAKvxEd3uNcoZ/GgXBCajBkPt
         m0Fc4PYi63mmgzUH3KTfb7iMV+22ZddhssIOv0/1d8OSvPKlmKRihvoA2wxc9MObaLc5
         MXxA==
X-Gm-Message-State: AOAM533B7IiI6cxjaARxdxygKsQwg0YDuKgpfLliGoBZ4mIg5rwZD9BQ
        tapnN0VZ5MVVtmzjG0Lwd8LyeJtZN+AzROTmi9x3H4KBkWw=
X-Google-Smtp-Source: ABdhPJyTczU/23sXQTRi6Uo75s3mO41TjMn8xksj/7EsUdlt4UMJ0auJNzH+zgztD5KEYgm+8eBEPR615qFyjGESHAk=
X-Received: by 2002:a17:906:3d41:: with SMTP id q1mr21307267ejf.12.1592925991897;
 Tue, 23 Jun 2020 08:26:31 -0700 (PDT)
MIME-Version: 1.0
References: <5d5d6c55-8736-0eec-aaa4-7ec86f925109@jguk.org>
In-Reply-To: <5d5d6c55-8736-0eec-aaa4-7ec86f925109@jguk.org>
From:   Ponnuvel Palaniyappan <pponnuvel@gmail.com>
Date:   Tue, 23 Jun 2020 16:26:20 +0100
Message-ID: <CAOL8xrWNebKaCbqewOApUW2OgHus-kDE7pVvd_aUDL0HuOuFhg@mail.gmail.com>
Subject: Re: cfree
To:     Jonny Grant <jg@jguk.org>
Cc:     linux-man <linux-man@vger.kernel.org>,
        Michael Kerrisk <mtk.manpages@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

In case it's deemed necessary to keep it, I think the sentence
"Starting with version 2.26, it has been removed from glibc." from the
DESCRIPTION section can be removed because:
    0. It's already been noted under VERSIONS
    1. DESCRIPTION is probably not the best place for this info in any case

Thanks,
Ponnuvel

On Tue, Jun 23, 2020 at 4:11 PM Jonny Grant <jg@jguk.org> wrote:
>
> Hello
> Is it time to remove this old man page? it's two years since it was removed from glibc
>
> 2017-08-02: glibc 2.26 released
>
> https://man7.org/linux/man-pages/man3/cfree.3.html
>
> Thank you, Jonny



-- 
Regards,
Ponnuvel P
