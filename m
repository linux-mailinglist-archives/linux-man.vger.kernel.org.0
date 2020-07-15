Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0343A221589
	for <lists+linux-man@lfdr.de>; Wed, 15 Jul 2020 21:51:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726785AbgGOTvB (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 15 Jul 2020 15:51:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44724 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726736AbgGOTvA (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 15 Jul 2020 15:51:00 -0400
Received: from mail-oi1-x22c.google.com (mail-oi1-x22c.google.com [IPv6:2607:f8b0:4864:20::22c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4227DC061755
        for <linux-man@vger.kernel.org>; Wed, 15 Jul 2020 12:51:00 -0700 (PDT)
Received: by mail-oi1-x22c.google.com with SMTP id k4so3188828oik.2
        for <linux-man@vger.kernel.org>; Wed, 15 Jul 2020 12:51:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc;
        bh=Zr0djk8U/pKZNtH0a3LzCcpHVBvumtjXUpc3nIOVVJQ=;
        b=YqK3eVL87s+kWD9HXy8N4yjaFzw2UcOw3PeljpZ4zb8tY5r2UZ6sEXKwNldAntmjHU
         xcllF/vHJR+DX571rnYfmK8aacJbUewFFbzoP/BiccPwW4NFZfYvmCoc1b7tPkiAAzdd
         kz5mSGWARPYee9So2B+oEAF/EMJ4SZOYALlp6TtKT8x1zq3PtoRpGeD7NkHewCDGqUHy
         kdxF0oSidVDi0hrpXcsxBdiCIctKEeyVVNfehAMUhRbx5CaiPWw0dDpZxQqr1Yw0yR13
         /SmaLSz+58Ox/aZF6eYjPH96hloflQn2HQdKxBrtttYvU1HxPMVqXkjbN2MfCJ1ap/Rr
         NOfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc;
        bh=Zr0djk8U/pKZNtH0a3LzCcpHVBvumtjXUpc3nIOVVJQ=;
        b=E+UQ55jig3x2N3YuvL3YYOCb7eQAQ0or7deTS42rxM40l6GHrm5aHH34JDcaHM8nOp
         w4E5mVnJ641p3WJvcMr61+j9KIKtCwXA9uA+Co81Olatmx0NYGKj5spwfV5jgaZ0dGbg
         uaaIdinxwRSkyzyKnDtzigj79BilleGVzC1YMXmBDMbyVZfD+itDf8tBtzQWWkRrAj2S
         gi5xwQGt8KcocuPX5Zz/OA/ogpKc7Z4bMSzbqo8PC9cprTicEyCYXf1e+wC/P/CVIl8Q
         z5vTdhtZ8wN7Xi9Qil1nZVhKXUrYOFoYa33njmSw4FgX0joo/19oRFrIFZ/+gFwwPdNh
         83mQ==
X-Gm-Message-State: AOAM5321PDqh+5KoSNNbgQgNfOce6SERTpAdjXrTxOIaftmLBBpkoYIg
        PeUd8ZlnLvKvACBBkCgzA3Bo1EGOjXxRh4IEdIM=
X-Google-Smtp-Source: ABdhPJwAQD7f2EBS/1xBI8ASuhONTgNiHMXOQYqemaYcub+X/bCknThwddN0mKr1wUaikY21JHJ3fUrQY9hblEcbuQ8=
X-Received: by 2002:a54:4798:: with SMTP id o24mr1131087oic.148.1594842659593;
 Wed, 15 Jul 2020 12:50:59 -0700 (PDT)
MIME-Version: 1.0
References: <CAP01T764kz5T+m+8sV0o30enBL1TagF7RQSjU0XcVJ0PvL0PTg@mail.gmail.com>
 <8d7edc37-6b5f-1dd9-5f7f-b4e15a9ae39a@gmail.com>
In-Reply-To: <8d7edc37-6b5f-1dd9-5f7f-b4e15a9ae39a@gmail.com>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Wed, 15 Jul 2020 21:50:48 +0200
Message-ID: <CAKgNAkhLgzog_DjePBh5mHMfesmc5aWpURPHrCXLJMXQWZFYTg@mail.gmail.com>
Subject: Re: POSIX writer locks can't be recursive
To:     Kumar Kartikeya Dwivedi <memxor@gmail.com>
Cc:     "Carlos O'Donell" <carlos@redhat.com>,
        linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Carlos,

Ping!

Thanks,

Michael

On Fri, 26 Jun 2020 at 10:54, Michael Kerrisk (man-pages)
<mtk.manpages@gmail.com> wrote:
>
> Hi Carlos,
>
> Could you comment here, as this was your text in pthread_rwlockattr_setkind_np(3)?
>
> On 6/25/20 2:32 PM, Kumar Kartikeya Dwivedi wrote:
> > Hi,
> > In pthread_rwlockattr_setkind_np(3), the explanation for
> > PTHREAD_RWLOCK_PREFER_WRITER_NP reads:
> >
> >> This is ignored by glibc because the POSIX requirement to support
> >> recursive writer locks would cause this option to create trivial
> >> deadlocks;
> >
> > I think this should be "reader locks" instead, since it is
> > undefined[1] for a thread holding a write lock to call
> > pthread_rwlock_wrlock(3) again (glibc returns EDEADLK, musl simply
> > deadlocks). There's no such requirement in POSIX either. Please let me
> > know if I'm missing something.
> >
> > [1]: https://pubs.opengroup.org/onlinepubs/007908799/xsh/pthread_rwlock_wrlock.html
>
> Cheers,
>
> Michael
>
> --
> Michael Kerrisk
> Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
> Linux/UNIX System Programming Training: http://man7.org/training/



-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
