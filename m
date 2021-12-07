Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3A0E746B9B7
	for <lists+linux-man@lfdr.de>; Tue,  7 Dec 2021 12:02:40 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235525AbhLGLGI (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 7 Dec 2021 06:06:08 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52624 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230293AbhLGLGI (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 7 Dec 2021 06:06:08 -0500
Received: from mail-pf1-x432.google.com (mail-pf1-x432.google.com [IPv6:2607:f8b0:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 44E78C061574
        for <linux-man@vger.kernel.org>; Tue,  7 Dec 2021 03:02:38 -0800 (PST)
Received: by mail-pf1-x432.google.com with SMTP id k26so8747955pfp.10
        for <linux-man@vger.kernel.org>; Tue, 07 Dec 2021 03:02:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=MbXzy/y/l7MeVSzIOBeFyAibrY8kA/xx54eeOV5oTFg=;
        b=jmJvXPLGm/hgZhUdfVaGC9R+fyYy82fCH5SECfea15AfPDEvHLAZl3+fKqxfFzNCz1
         GoZTeEyXyHkXx52ulpEfL7Xgi1B3aOGH3XXwf7xYkHfRDanW9A88sJt5zQOTwtUPCkU5
         aj8NEBm8/wPs6uApnHPwH1XtbOa0rzvap9VZYLmhH4UravfTopaM5D2Rgv0VOlK/Hn97
         emYdw363vuSzdGV9yIhekvsSPK72ycXQBrWI/ZWwHAtLeK+epXBlbQPJaq/c33o0I5Vb
         wFnc9d0fM4znebykW1i6eALF6hUs3JuTxsb5ymlo0DmgdVvUxIg7NJqN7mLrzl+B9AxI
         cbAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=MbXzy/y/l7MeVSzIOBeFyAibrY8kA/xx54eeOV5oTFg=;
        b=mYonWqJmfcoA0NMJkKwt4jJHkV/vQmzDWoDbmpVI1tx5eo4/R4f+vOSqNkmDBFB5+o
         IRpg/52wg1p7tw44NauDdBDHI6bgpaBdXGkpXkv89YZVwLeXSSh7Bi4rG1IQPrEPzUSU
         3RVZJhLdJJz18NykPRX01hHo6iIJ5UBc09qL8E7wPoUCQFacFFW4j4tNHlNLLm0eLGv8
         /pR1FM41pLsCkd+sxa5uzhi/kl+7Iz1E6symfekfubuJHeXt7ek3oDXTN/bRZGK+Fn4m
         DQ4ozKffHnM2l1yA9db/ZkdXOv4dDt+UnbB9pLy4bbq4Atmn4FOhpKubO8qA9An3iLgq
         DxGQ==
X-Gm-Message-State: AOAM533Kvm3QAtK6UVN+2nYI6dq0yhVVhl7eQJpCb/QDyDTV9TPTYy1P
        Sy/B1EPVJD9rD9RFZE5DKqUEbCKZ3Elcd+/C/3807DKC
X-Google-Smtp-Source: ABdhPJzzb1giPp2UCuz4yYJ38LjY7dySziOkkzwdI2ykZOSUZ5qMbFeGTjpq5YtOplPdYUxlTKIFEBiOSRcNgwDhnvY=
X-Received: by 2002:a63:4559:: with SMTP id u25mr23144335pgk.15.1638874957526;
 Tue, 07 Dec 2021 03:02:37 -0800 (PST)
MIME-Version: 1.0
References: <8d80e54b-6881-ee5e-0d14-305b510a28b1@gmail.com>
 <cover.1638821152.git.nabijaczleweli@nabijaczleweli.xyz> <8e968437b301aa7487e84cce21822b56072e9217.1638821152.git.nabijaczleweli@nabijaczleweli.xyz>
 <a6f79435-1d9c-2c12-168b-035164a3b938@gmail.com>
In-Reply-To: <a6f79435-1d9c-2c12-168b-035164a3b938@gmail.com>
From:   Stefan Puiu <stefan.puiu@gmail.com>
Date:   Tue, 7 Dec 2021 13:02:26 +0200
Message-ID: <CACKs7VDHgVLAOPteGjTwo8FD_WGMcuiX7uxpGq0VnZTinkpeEQ@mail.gmail.com>
Subject: Re: [PATCH v2 3/4] system_data_types.7: correct struct
 timespec::tv_nsec type for x32
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>,
        lnx-man <linux-man@vger.kernel.org>,
        "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi,

Just a little nitpick below...

On Tue, Dec 7, 2021 at 7:56 AM Alejandro Colomar (man-pages)
<alx.manpages@gmail.com> wrote:
>
> Hi =D0=BD=D0=B0=D0=B1,
>
> On 12/6/21 21:12, =D0=BD=D0=B0=D0=B1 wrote:
> > diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
> > index 1e6a3f74c..80679b180 100644
> > --- a/man7/system_data_types.7
> > +++ b/man7/system_data_types.7
> > @@ -1544,7 +1544,11 @@ or
> >   .EX
> >   struct timespec {
> >       time_t  tv_sec;  /* Seconds */
> > +#if !(__x86_64__ && __ILP32__ /* =3D=3D x32 */)
> >       long    tv_nsec; /* Nanoseconds [0 .. 999999999] */
> > +#else
> > +    long long tv_nsec;
> > +#endif
>
> I prefer showing there the (simple) POSIX definition, and then in Notes
> add a message that glibc uses a different type on most systems.
> Otherwise, we're loosing the information that non-glibc systems use long.
>
> How about something like the following?:
>
> Notes: glibc uses long long instead of long for tv_nsec in some
> architectures:
>
>         #if !(__x86_64__ && __ILP32__ /* =3D=3D x32 */)
>                 long      tv_nsec;
>         #else
>                 long long tv_nsec;
>         #endif

The #if condition is actually "we're not on x32", so maybe the comment
could say /* !=3D x32 */? Otherwise it looks like the comment
contradicts the code; I know the comment is inside the paranthesis,
and the negation ('!') is outside, but the negation might be easy to
overlook.

Or maybe leave the x32 field size for a note? (E.g. something like
"This is true on almost all arches, but see NOTES", and then under
NOTES specify that "actually, on x32 tv_nsec is long long"). The #if
in the definition doesn't *exactly* match the code anyway.

Thanks,
Stefan.

>
>
> BTW, I don't understand why long long, if long can perfectly represent 0
> .. 999999999.  If you know the rationale for such extension, it would be
> a great addition to Notes too.
>
> Thanks!
>
> Alex
>
> >   };
> >   .EE
> >   .PP
> >
>
>
> --
> Alejandro Colomar
> Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
> http://www.alejandro-colomar.es/
