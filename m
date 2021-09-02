Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4A1A93FE6A0
	for <lists+linux-man@lfdr.de>; Thu,  2 Sep 2021 02:34:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243639AbhIBAWm (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 1 Sep 2021 20:22:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54452 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243369AbhIBAWm (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 1 Sep 2021 20:22:42 -0400
Received: from mail-ot1-x32d.google.com (mail-ot1-x32d.google.com [IPv6:2607:f8b0:4864:20::32d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0F985C061575
        for <linux-man@vger.kernel.org>; Wed,  1 Sep 2021 17:21:45 -0700 (PDT)
Received: by mail-ot1-x32d.google.com with SMTP id g66-20020a9d12c8000000b0051aeba607f1so358530otg.11
        for <linux-man@vger.kernel.org>; Wed, 01 Sep 2021 17:21:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc;
        bh=ffvtWlkdDDvKQcUx6cdvVye+XDWp9MaEHlYjhOOPYwQ=;
        b=SoaoorR7R+MM8EWaGaDZmhR7vtkpeHQ81m0B6Me0EN0wHG0/iuN50Hyx9WYnN0Pkh9
         3La4C2NPWGsMtmB0LMtRhnCIEVtYDg8GOZ1qjsEqHjIHsi8z+DyE2mE4hWdBEWXyIc2P
         Zbne8gVk4dJ6aPSkaOBydCraYY8TtSF5kF+IywMFmKW5XFcZHY/xCE1L62fBTgiAhVTn
         QARETnY1DvEYLjIpQZ0iBGL7ijNZsbLC2/h6MqzJTNR1j0l2ulMY6x9FV4WLe98t6cEp
         NOO7A2lmpY2MZ9e+/fMAVQJf7zdCTtpfXIuksUm0QWLBpDXfZ5OjHjoVYVYpRmQb4G5L
         OZLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc;
        bh=ffvtWlkdDDvKQcUx6cdvVye+XDWp9MaEHlYjhOOPYwQ=;
        b=YiNXUYvJR9A7m4uaokKFluH9mmjepQwpCXOB+VoXZCTIP57gzKAykD9uGfbc8yUsg/
         A44fYxHutyu5UXs/AQZMN4Xppz6fJnPlp+t0itB80KJjGvk+GZ56SGmVcCvTfn8MDlsA
         tF1diq4UrBBVF50rB0tbkATOOF7v+tq+UlOTlEDD/3BsFCBFiLHQRgHEOxFT5UubRg00
         pHl3Y2ib5/CKrXDckY+vymFuaQD4XHEPiaQx8RJ33QHLeFtaheXFKI8J580tHFNd1ON/
         ZBKaL6ydqXlK2HIxLc7fk79XlYdfHAgt8Ji28iot7sIsFUsIp0OyFzwHgR3qfTb9qZP8
         BE7w==
X-Gm-Message-State: AOAM533FGaiebrBuwOhZnY6enFr+nDZn2zXflI9D1sOfhtGpus0J/Yt9
        i+9xWyTRRhR+aKN9lRkwCGPw9L0bTi7Aliz0ue8=
X-Google-Smtp-Source: ABdhPJy7RsK9dG733k4AotSRkJdXTeKE29WejDZBl7y49qyZrZJizd8WL+0gTOaro6uyJgVBBrLd1rRKnLRKtAvD5Gw=
X-Received: by 2002:a05:6830:438d:: with SMTP id s13mr303450otv.308.1630542104320;
 Wed, 01 Sep 2021 17:21:44 -0700 (PDT)
MIME-Version: 1.0
References: <CAKgNAkjv2vVDU+z4ActGqo8gcZekCnZFRVESz_hhNjdPvbV96w@mail.gmail.com>
 <87lf4im6sf.fsf@oldenburg.str.redhat.com> <03f3b96f-1dd4-e9cb-2f24-7fc8ae7252bc@cs.ucla.edu>
In-Reply-To: <03f3b96f-1dd4-e9cb-2f24-7fc8ae7252bc@cs.ucla.edu>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Thu, 2 Sep 2021 02:21:32 +0200
Message-ID: <CAKgNAki2zUjpw8BJDvmAN_8ZAMsBZx_dYn8RM4+KDefFbQq7UQ@mail.gmail.com>
Subject: Re: Adding a realloc() usage note to the malloc(3) manual page
To:     Paul Eggert <eggert@cs.ucla.edu>
Cc:     Florian Weimer <fweimer@redhat.com>,
        "libc-alpha@sourceware.org" <libc-alpha@sourceware.org>,
        linux-man <linux-man@vger.kernel.org>,
        "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Tue, 31 Aug 2021 at 11:29, Paul Eggert <eggert@cs.ucla.edu> wrote:
>
> On 8/31/21 12:07 AM, Florian Weimer wrote:
> > the somewhat common idiom of adjusting internal pointers in the
> > allocation to point to the new allocation is invalid.
>
> Good point.

Yes, thanks, Florian.

> Also, the example call to malloc should check the return value.

yes...

> Something like this, perhaps:>
>    char *ptr = malloc(origsize);
>    if (ptr == NULL)
>      return NULL;
>    char *p = ptr + some_random_value();
>
>    /* In the following, we presume 'newsize' is not 0.
>       (If 'newsize' is zero, realloc() may return NULL,
>       and that is not an error.) */
>
>    ptrdiff_t p_offset = p - ptr;
>    char *nptr = realloc(ptr, newsize);
>    if (nptr == NULL) {
>      /* Handle error; the block pointed to by 'ptr' is
>         still usable. */
>    } else {
>      /* realloc() succeeded; update 'ptr' and 'p' to point to
>         the (possibly moved) block.  'p += nptr - ptr; ptr = nptr;'
>         would be invalid here, since 'ptr' is invalid immediately
>         after the successful realloc().  */

I don't get something here. Obviously, '*ptr' is invalid after a
successful realloc(). But why is 'ptr' invalid?

Thanks,

Michael


>      ptr = nptr;
>      p = nptr + p_offset;
>    }



-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
