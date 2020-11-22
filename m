Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B1D962BFCB8
	for <lists+linux-man@lfdr.de>; Sun, 22 Nov 2020 23:59:10 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726295AbgKVW6E (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 22 Nov 2020 17:58:04 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44200 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725831AbgKVW6D (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 22 Nov 2020 17:58:03 -0500
Received: from mail-ot1-x331.google.com (mail-ot1-x331.google.com [IPv6:2607:f8b0:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 97ED7C0613CF
        for <linux-man@vger.kernel.org>; Sun, 22 Nov 2020 14:58:03 -0800 (PST)
Received: by mail-ot1-x331.google.com with SMTP id n11so14269028ota.2
        for <linux-man@vger.kernel.org>; Sun, 22 Nov 2020 14:58:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc;
        bh=xMfNBvMjGuGnWwkSEyvEPKoYJd0lZOdthOlefW6SeDU=;
        b=lZq0PnQcildLhAwSpB59Y37wp3XavcIsLKdnyMXpQEsUqd1cs7lcNFhB9AAe1uIew/
         BRdgoTcYpmyFDRDdODjeBRlIuM8YEjNNHyWPfwPn7yj3GyC8cBFKw/xqIcphOuOPcKIV
         mV+1lfipSe2wQn3ETqkOEMzYwYsQtxKUQB+yVFXVdsebYbOuQ1f/SqxO2obJEZnKQqyg
         /GEl/VrMC4AKZ2uZ0wJhQFYC6MCKf7xqMfvyf5gkVSW4KsjpelBG2wMNnNDn+4ouq4HB
         YOrRXFjnfojhU73J2zkUiDrGaIxlvUhBNmxI6oodfyg2ldur2idgXsp0NyL+kigWmLv/
         9ppw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc;
        bh=xMfNBvMjGuGnWwkSEyvEPKoYJd0lZOdthOlefW6SeDU=;
        b=K5MrUoF6LTD569YOqQzj8Zvy8Jv1TyuyzzxWxYqgrqJb+GIJkhQBj7+wednCtHadd4
         DzJY4Rh2ftTG6edQYF/Bxp5AfMkaa2tEUOqNLC5TjdlAtYpktmFyzC/z0iCmGPxNmATw
         jc5fNQ5GcGH0MK2R5Mwnk2XVoypDtyO1qn+0LULZKqv6xJGxrMhPsGK3B/Tvj56ks2bQ
         DM33H44D+D/YzaB5IiILQBbl48WbOYO9aYgHSr64y/Q6S6XytqqlWvn3SP41PqmL0C9A
         bRgZ51ypSfRk6zePXaJxc0zA/Td39xCJ6vBS4wdWGJm3uAdjQUM+7Jutu4QAfgSucf6g
         1tWA==
X-Gm-Message-State: AOAM532WG6/9nFCxlzE8CtZmHCsOTRsMBgG8tCkfFnjhGZoRd0mG3v9A
        D2XcVlhg24u/cn2cLhB9Pc9pBZ68u/83VoiWlqs5ig4cdDE=
X-Google-Smtp-Source: ABdhPJzKsww48FSN5WeeXhMQbs2xueRbVN7Ohypzhf0L7XaaFoT4yaFfcqyDsiUkXCBxZ2A74ExKRd/n3ak7mfe3Fkg=
X-Received: by 2002:a05:6830:22eb:: with SMTP id t11mr21468938otc.114.1606085882791;
 Sun, 22 Nov 2020 14:58:02 -0800 (PST)
MIME-Version: 1.0
References: <20201122223707.GA7261@kirmayer.de> <921887e2-61ad-6212-c91b-beab3e4a7ab8@gmail.com>
 <20201122225339.GA8330@kirmayer.de>
In-Reply-To: <20201122225339.GA8330@kirmayer.de>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Sun, 22 Nov 2020 23:57:51 +0100
Message-ID: <CAKgNAkj9p-KkKa7OX_A-e=h9PhauXuAon6FAW1kr_D5=_Zs1pA@mail.gmail.com>
Subject: Re: [patch] getnameinfo.3: Fix _POSIX_C_SOURCE value for getaddrinfo()
To:     Sebastian Kirmayer <sebastian@kirmayer.de>
Cc:     linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Sebastian,

On Sun, 22 Nov 2020 at 23:53, Sebastian Kirmayer <sebastian@kirmayer.de> wrote:
>
> Hi Michael,
>
> On Sun, Nov 22, 2020 at 11:42:02PM +0100, Michael Kerrisk (man-pages) wrote:
> > Hi Sebastian,
> >
> > On 11/22/20 11:37 PM, Sebastian Kirmayer wrote:
> > > The minimum value of _POSIX_C_SOURCE for getnameinfo() was mistyped as 201112L
> > > (not a real POSIX version), it should be 200112L. This is the same typo that
> > > was fixed for getaddrinfo.3 in commit 94db8ae1824ada8561c3dbbbed88a8a9175c4886
> > >
> > > According to the current documentation, this file should not compile, but
> > > it does:
> > >
> > >     #define _POSIX_C_SOURCE 200112L
> > >     #include <netdb.h>
> > >     int (*mygetnameinfo)() = getnameinfo;
> > >
> > > (If _POSIX_C_SOURCE is changed to 200111L, the program does no longer compile.)
> > >
> > > man3/getnameinfo.3:
> > >
> > > @@ -27,7 +27,7 @@ Feature Test Macro Requirements for glibc (see
> > >  .RE
> > >  .PP
> > >  .BR getnameinfo ():
> > > -    Since glibc 2.22: _POSIX_C_SOURCE >= 201112L
> > > +    Since glibc 2.22: _POSIX_C_SOURCE >= 200112L
> > >      Glibc 2.21 and earlier: _POSIX_C_SOURCE
> > >  .ad b
> > >  .SH DESCRIPTION
> >
> > Thanks for taking the time to report, but I think you must be looking
> > at a rather old version of the manual pages. It looks like that typo
> > was fixed about three years ago in the Git tree!
> >
> > Thanks,
> >
> > Michael
>
> Oops, I accidently wrote getaddrinfo() in the subject. I meant to write
> getnameinfo(), and I'm actually referencing the commit from three years
> ago fixing it for getaddrinfo().

Ahh -- sorry, I should have looked more closely at your mail then.
Fixed now. Thanks for the report!

Cheers,

Michael

--
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
