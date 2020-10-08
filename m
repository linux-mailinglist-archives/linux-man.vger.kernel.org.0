Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A77C22872AB
	for <lists+linux-man@lfdr.de>; Thu,  8 Oct 2020 12:43:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725935AbgJHKnw (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 8 Oct 2020 06:43:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50058 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725616AbgJHKnw (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 8 Oct 2020 06:43:52 -0400
Received: from mail-oo1-xc43.google.com (mail-oo1-xc43.google.com [IPv6:2607:f8b0:4864:20::c43])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 66E28C061755
        for <linux-man@vger.kernel.org>; Thu,  8 Oct 2020 03:43:52 -0700 (PDT)
Received: by mail-oo1-xc43.google.com with SMTP id f2so637505ooj.2
        for <linux-man@vger.kernel.org>; Thu, 08 Oct 2020 03:43:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc;
        bh=AztNVuITSuSSnqk6edJA0rHH0Vv/UVk0+lTH69BlWqc=;
        b=LgsCoCJPDGkueihaHF69wrfQudCE9optmP4rMYpxzv9YUgCjiYgkP8p5eoHNclmlQD
         aL8w+oq35U5bO1oLa8VuB2UKVl27gCAIkFdFS0KFI4XQjsrIH9tRQno4yy+l9+3OImSU
         hr5KUvdmslCeKdheVfOKsxjQ1FWMt6UhTyUOy4QnvY7o8m6VWjYEAhCiW7U5cpmDjSev
         4n97/lPeO4EXYMFoJ4VqLfBYRWRsmdn+CHBN48um+J35bSlezxy83gJNtH+W+VMnA3+E
         1rhs5I/7L2NmDu0xmr9C0PDv9uqosWGMFQP8mg4QGIWEFc4l3MIX6rCNgO3Kez4/yc54
         Yj6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc;
        bh=AztNVuITSuSSnqk6edJA0rHH0Vv/UVk0+lTH69BlWqc=;
        b=Zcme4SO5dBUWT5rcJSlk7fMSVZltLjvTmg44NX7PZoVcK0p2hCcAOQMGpKsZYI+Qbg
         LqMh9PnfdzB2TSDxrzL1lfovofkanSnWnsrVohbCt2iZCfk9+c4raH52m6kTjObf9AyW
         QxzpG/g0AxF7Ns66K1N6nW40J/QsO0n3DCM9tua8AnMtYmrUuat4xdqlhBMrArI0cKhg
         zphTMBYHseFJKfRDXOJ/F2OGIqMgjUzkYk78OHpPRUk9h5W9JUbxuCl8ySjKco52MTvk
         8vvNWYGzBRkXNGDqg9we605QoqHmsv1itvyfhS3zlDTkBSYdGF3QBmKXCyj7uVrMWy1j
         c7DA==
X-Gm-Message-State: AOAM531hxeT5heCnykBAhB3ANEv24aNQQStF4pO8v2hOoYMFxJAfCyn/
        N3XeXPmzPgJsLbGUbPL2sX1dSfgUDkzYDTBfAOc=
X-Google-Smtp-Source: ABdhPJz2796uDssvObV2gQD5rYxOqmgiWeTZBQvyw+/Zr6vrGdxbpAjoP7PJJU4bTJSo0C9kowCYHB/zJnI4HvIjrIc=
X-Received: by 2002:a4a:96a3:: with SMTP id s32mr4971692ooi.17.1602153831735;
 Thu, 08 Oct 2020 03:43:51 -0700 (PDT)
MIME-Version: 1.0
References: <20201008080451.8248-1-colomar.6.4.3@gmail.com>
In-Reply-To: <20201008080451.8248-1-colomar.6.4.3@gmail.com>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Thu, 8 Oct 2020 12:43:40 +0200
Message-ID: <CAKgNAki7jWqR3tKUMKRdpK_5gvG+N1RC+sZ_GrK6QO0UvD8SGA@mail.gmail.com>
Subject: Re: [PATCH] system_data_types.7: Add 'fd_set'
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>,
        "libc-alpha@sourceware.org" <libc-alpha@sourceware.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

Thanks for the patch. See below.

On Thu, 8 Oct 2020 at 10:05, Alejandro Colomar <colomar.6.4.3@gmail.com> wrote:
>
> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
> ---
>
> Hi Michael,
>
> There's no link for this type, because it would conflict with FD_SET.3,
> which is a link to select(2).

Okay.

>  man7/system_data_types.7 | 17 +++++++++++++++++
>  1 file changed, 17 insertions(+)
>
> diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
> index b0e0d2b48..adddf823f 100644
> --- a/man7/system_data_types.7
> +++ b/man7/system_data_types.7
> @@ -151,6 +151,23 @@ See also the
>  .I float_t
>  type in this page.
>  .RE
> +.\"------------------------------------- fd_set -----------------------/
> +.TP
> +.I fd_set
> +.RS
> +Include:
> +.IR <sys/select.h> .
> +Alternatively,
> +.IR <sys/time.h> .
> +.PP
> +A structure holding a fixed size buffer of file descriptors.

"buffer" feels wrong.

I think this would be better as something like:

"A structured type that can represent a set of file descriptors."

And then you could perhaps say somewhere: "In the glibc
implementation, the maximum file descriptor number that can be
represented is 1023."

Thanks

Michael
