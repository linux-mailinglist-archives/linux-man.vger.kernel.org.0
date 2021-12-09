Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C4B1746E016
	for <lists+linux-man@lfdr.de>; Thu,  9 Dec 2021 02:13:01 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232836AbhLIBQd (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 8 Dec 2021 20:16:33 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48922 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231643AbhLIBQd (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 8 Dec 2021 20:16:33 -0500
Received: from mail-lj1-x234.google.com (mail-lj1-x234.google.com [IPv6:2a00:1450:4864:20::234])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7BED9C061746
        for <linux-man@vger.kernel.org>; Wed,  8 Dec 2021 17:13:00 -0800 (PST)
Received: by mail-lj1-x234.google.com with SMTP id p8so6616963ljo.5
        for <linux-man@vger.kernel.org>; Wed, 08 Dec 2021 17:13:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=wILQJXkirJdMTLYklT63ar/7iroEoMRTLe6DP0URWlM=;
        b=WcvNqxyqh5ash5d5vjfotHRJzgtaDygpiPluu9JAwg1tB390L2DqZRTAyMK27/4hJs
         nspzdy5sOVsLV5OUSxhpJZB1XnH4BpY6FmrwHfdBnCvDJoVcX87+l7lxpXLKYj5oDC6J
         0c6nuY/hDMKc3I6JrzF2+VkMtme6379QYRp7hFNNbDbXqHadP+jiuiOBKOMfoWnxiJ8R
         oKMFBlJ3MWrALNa7InSdNEMVkIb8rIqL1Yv8oIne5TdzbLt9Qpob7ZBvwfikT0QDITl7
         gzywqqHvwf+m7Rxwv8S79lVJKsaxFblFJOVPgxHrFxKgPSh92XAB72F+blFBqFWUgEFR
         h0mQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=wILQJXkirJdMTLYklT63ar/7iroEoMRTLe6DP0URWlM=;
        b=cK6g5zxTdu+cwyhx5O/fiIW7yjd/3k2FkVyAiUTEo+upxbmxWLrg5fw65ProXTbLOj
         MQXJAZywoUAiyq9SBjuFUQq/cCaVtgBisCBSpWWLO6vBVFcQs+HTDAj7exRTWJJu20VV
         JFLyCzDlF4d6kXHjFKJy93bkUmRgUfAY+UcX6btI6deMbSUSFl7Zkn02Lop+5FUk1VvA
         k7GCPWAKu+5rk25Ps6PmJzybAyN0QyEoxYP1y7CXD7IlDh4BGQ4KeVDC2kE3QaWQ9Kvd
         /sd5sejHVST1sUR6ENhC0fQQtw1k8VExd/W8xK+XHSefHOpSdq75r4w/KA9LrmVhGbEe
         HE+A==
X-Gm-Message-State: AOAM533L5iPnzyEJ5OaQEkeHAf176bgEf3W8xlw3OITex4VvwAfP9IEl
        f7lAguEbhXv+3F4ibw3ARJAmyRjhjd/MHo+xkJ6tOw==
X-Google-Smtp-Source: ABdhPJxnNjgeURNHOxc72ddlSIBQ7n5UVlEznYc5n+Zo5VkOnZ0Ct6m7W0dpTvlZG4EsBTLKyEAGyN5fMia+kIOMd5o=
X-Received: by 2002:a2e:95d2:: with SMTP id y18mr2880528ljh.93.1639012378427;
 Wed, 08 Dec 2021 17:12:58 -0800 (PST)
MIME-Version: 1.0
References: <20211208234433.2392940-1-jannh@google.com> <15d7e025-255d-798b-81a1-1229b5ae16e0@gmail.com>
In-Reply-To: <15d7e025-255d-798b-81a1-1229b5ae16e0@gmail.com>
From:   Jann Horn <jannh@google.com>
Date:   Thu, 9 Dec 2021 02:12:31 +0100
Message-ID: <CAG48ez2dxykh3v1Eg540OH1iZRRi74gbtLeRPTc_45=Fiaz2ww@mail.gmail.com>
Subject: Re: [PATCH] kcmp.2: still depends on kconfig
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>, linux-man@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Thu, Dec 9, 2021 at 2:09 AM Alejandro Colomar (man-pages)
<alx.manpages@gmail.com> wrote:
> On 12/9/21 00:44, Jann Horn wrote:
> > The manpage claims that kcmp() is now available unconditionally. That's
> > not true; from kernel/Makefile:
> >
> >      obj-$(CONFIG_KCMP) +=3D kcmp.o
> >
> > This new Kconfig flag is forced on by CONFIG_CHECKPOINT_RESTORE as
> > before, but also by CONFIG_DRM, which means that pretty much any kernel
> > built to support desktop systems will implicitly have it available.
> >
> > But if you compiled some kind of server/embedded kernel without DRM and
> > without CHECKPOINT_RESTORE, you'd have to flip on the expert config
> > option to get KCMP.
> >
> > Signed-off-by: Jann Horn <jannh@google.com>
>
> Thanks!  Patch applied.

Oh, that was quick! Thanks.

> I slightly modified the patch for the following reason:
>
> man-pages(7):
>     Use semantic newlines
>         In the source of a manual page, new sentences  should  be
>         started  on new lines, and long sentences should be split
>         into lines at clause breaks (commas, semicolons,  colons,
>         and  so on).  This convention, sometimes known as "seman=E2=80=90
>         tic newlines", makes it  easier  to  see  the  effect  of
>         patches,  which  often operate at the level of individual
>         sentences or sentence clauses.

Ah, thanks for the pointer. I'll try to remember it for next time...
