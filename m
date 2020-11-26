Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2A1FF2C514C
	for <lists+linux-man@lfdr.de>; Thu, 26 Nov 2020 10:32:56 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1733020AbgKZJbh (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 26 Nov 2020 04:31:37 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47962 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1732969AbgKZJbg (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 26 Nov 2020 04:31:36 -0500
Received: from mail-oi1-x229.google.com (mail-oi1-x229.google.com [IPv6:2607:f8b0:4864:20::229])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 80BC0C0613D4
        for <linux-man@vger.kernel.org>; Thu, 26 Nov 2020 01:31:36 -0800 (PST)
Received: by mail-oi1-x229.google.com with SMTP id c80so1646891oib.2
        for <linux-man@vger.kernel.org>; Thu, 26 Nov 2020 01:31:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc;
        bh=EAg3BfhvanArE8er1kA2+HpFKCk4s64y/aodF6xQvqk=;
        b=kxt/9hT6pXpK9uBy3VIWULJHxe2nHKQmZUvpzRKhQDc72WJ470L36h8HONjAPnOU8C
         e78QXP0SeMscrH8/CPNxt4VD8BKOpynMt2sedKnNOrP0QYRMXxL0iqIW1VhVL+rOVbL7
         Se4Vwu97CpL72Qj7J08DsVfutOBrQXpCVjvJL5ImYdnLaQqJx+oWoQeFZ61Wu1Sv6iN8
         AFlJ+0V3rNBKGnghAsfV8SlvtBu/bxPxiJiSR/gr/L4ToBNtK43FCHk6P5PpNmunXXBb
         eRqXyxAaSuT53p0g02Rv8Z6Pzg9HZO3Q2DdEhnR77l0OEbG5csbP42hflWwFyhUXaP85
         Viwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc;
        bh=EAg3BfhvanArE8er1kA2+HpFKCk4s64y/aodF6xQvqk=;
        b=kw+9UIvpTiO2rmuyLPI01+45CiPvM+KCq///fY144UImhb+3GLz42sMdHO2y3YpaaZ
         2ZY99OBe+qe84xGHlRiyQrunnVZCeJASXKGLVFNr0O08I4ZQdrFTt/t4wJle0CpHqkjq
         /sKrAf0Nr5zUacsh4RAH49zQm2UJkgvPLY/aWolAzBMBZaN00NTtoVUMT/XFtHFWBvfm
         gMWJvAqWgALPWmz/aFVqScd9dxqwvtzxPUlDd576njTjOVLVvuGHt5iXyJKXpVoOfj9D
         9As8fkKK58yktLVl6/rdKCte7gpdCuKFhE6v8cZAbDIM4QIcV2Plz6mJbRlWzdltvRwM
         Ekaw==
X-Gm-Message-State: AOAM5309AXpyY3BjVt2jwt0uNDa6f9e6SNq+h4WcMDmNFQYObTx9lbOc
        4Qm06xci5DHkq83amLmtZ1hbaE76NeMfqcYxfcuf2d42kBQ=
X-Google-Smtp-Source: ABdhPJxXNMmxLnmjkIx6mHPqAWJ6aJXLlj3Jo5eXN36yfMUrCOcoMjYOJdM9rvImoVjnFtRHQMzeP28fI8T8ygQ70J0=
X-Received: by 2002:aca:b605:: with SMTP id g5mr1521610oif.177.1606383095872;
 Thu, 26 Nov 2020 01:31:35 -0800 (PST)
MIME-Version: 1.0
References: <dafbcfa6-666e-d596-6481-f35802dc56f1@giorgiodavide.it>
In-Reply-To: <dafbcfa6-666e-d596-6481-f35802dc56f1@giorgiodavide.it>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Thu, 26 Nov 2020 10:31:24 +0100
Message-ID: <CAKgNAkhqn+NRbrmnaTpjMuj96eC6M94vxm8X4w9-F=_cqZi8gg@mail.gmail.com>
Subject: Re: pivot_root - wrong check on mount(2)
To:     Davide Giorgio <davide@giorgiodavide.it>
Cc:     linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Davide,

On Thu, 26 Nov 2020 at 01:01, Davide Giorgio <davide@giorgiodavide.it> wrote:
>
> Good morning,
>
> reading the pivot_root man page
> (https://man7.org/linux/man-pages/man2/pivot_root.2.html)
> there seems to be an error in the example source program
> "pivot_root_demo.c".
> In particular, there is a wrong check on the return value of mount(2).
> https://man7.org/linux/man-pages/man2/mount.2.html#RETURN_VALUE
>
> The error is in this line
> if (mount(NULL, "/", NULL, MS_REC | MS_PRIVATE, NULL) == 1)
>
> that should be
> if (mount(NULL, "/", NULL, MS_REC | MS_PRIVATE, NULL) == -1)
>
>
> Thank you for your work, kind regards

Thanks! Fixed!

Cheers,

Michael

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
