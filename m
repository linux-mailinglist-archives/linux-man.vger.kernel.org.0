Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2DB721D4F11
	for <lists+linux-man@lfdr.de>; Fri, 15 May 2020 15:19:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726219AbgEONTa (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 15 May 2020 09:19:30 -0400
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]:22947 "EHLO
        us-smtp-1.mimecast.com" rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org
        with ESMTP id S1726513AbgEONTP (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 15 May 2020 09:19:15 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1589548753;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=VVfnMaxbDJwdN3t1pb7+qmfm61G7CFVxjrzZ7nK0lKs=;
        b=iEZQ1MA6zRRxiv/TBD4Pvm9wJ9cFasGQEftC/kxnKq3nAT9Jbi81XQ8ldCor0FR+dUCzgZ
        ZXgwwYH5uRXqYZWV6ty0N8kgFB2tlmCuun4z4egxKkOy4V2Xs2RkSn6uAPiE2OGrRlsFjr
        0jS6yWvtFjqhOSDzyXHyt/oXYYaOad4=
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com
 [209.85.222.200]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-353-3-VjMHeOMvG2Ni4X27zpqA-1; Fri, 15 May 2020 09:19:11 -0400
X-MC-Unique: 3-VjMHeOMvG2Ni4X27zpqA-1
Received: by mail-qk1-f200.google.com with SMTP id d187so2132579qkc.18
        for <linux-man@vger.kernel.org>; Fri, 15 May 2020 06:19:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=VVfnMaxbDJwdN3t1pb7+qmfm61G7CFVxjrzZ7nK0lKs=;
        b=eQpg4ukpq2RZPZFUxxbBZO1v3ho/VOKxZLObnZCeqIGk07ghjIKxI+BDi3RYNvuIUw
         cZCtHP+d18sd3sRjzIsrBWgV/BqN4nnoJTpAauUGTD186+LVeWlLu7OX93rASdGPKr2T
         dQBtJKTvNYFHv85jMiDyVxvYDcm0Kjn2OHWKic+DwtYY0ttwdHLq0kZ8k1XOwsK/10g5
         beB3GSiQqkKcoBx3M9fa8tB168bY6Xapcn7ntX3kIZVp56nHqilWr5NAAAxAMojReurr
         cpidXFUSzJT/J/WK6zEVxvUIfKtRfw6czNF/olrAeJ4jAfKs7L9SZdTJF+F5tRKoADCi
         RWFw==
X-Gm-Message-State: AOAM531ufTIx4q40y9lBzwYGiGEcofDGZo76c+jPB6Mm2jhRpEFs5nWE
        S7NPltpXmOcGeS2nl9iJnv/i8fxCg5DqMFmAC2NYYNRM9c0569QQ2XzrXAiD6EzKXXRLItkPIZQ
        Z1N4au83Dkrfh4b/qB4sIR7pcVu5jKezD85Pc
X-Received: by 2002:a37:2783:: with SMTP id n125mr2067395qkn.335.1589548751338;
        Fri, 15 May 2020 06:19:11 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJw2B+IpGj1TzoDwxhUOvlZ0BoV1h+b7uDLIOJqPAZ+BTQYyL5XS0xoOnJyMwQ5EcW6b+8bWBU1/WT/ceTDe9b8=
X-Received: by 2002:a37:2783:: with SMTP id n125mr2067373qkn.335.1589548751140;
 Fri, 15 May 2020 06:19:11 -0700 (PDT)
MIME-Version: 1.0
References: <CAKgNAkioH1z-pVimHziWP=ZtyBgCOwoC7ekWGFwzaZ1FPYg-tA@mail.gmail.com>
 <CAOssrKeNEdpY77xCWvPg-i4vQBoKLX3Y96gvf1kL7Pe29rmq_w@mail.gmail.com>
In-Reply-To: <CAOssrKeNEdpY77xCWvPg-i4vQBoKLX3Y96gvf1kL7Pe29rmq_w@mail.gmail.com>
From:   Miklos Szeredi <mszeredi@redhat.com>
Date:   Fri, 15 May 2020 15:18:59 +0200
Message-ID: <CAOssrKeDE5XKEA62Kygiis+6AVZodOzLifsaQY=eR0jAa8Z23g@mail.gmail.com>
Subject: Re: Setting mount propagation type in new mount API
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     David Howells <dhowells@redhat.com>,
        lkml <linux-kernel@vger.kernel.org>,
        "linux-fsdevel@vger.kernel.org" <linux-fsdevel@vger.kernel.org>,
        Petr Vorel <pvorel@suse.cz>,
        linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Fri, May 15, 2020 at 3:04 PM Miklos Szeredi <mszeredi@redhat.com> wrote:
>
> On Fri, May 15, 2020 at 1:40 PM Michael Kerrisk (man-pages)
> <mtk.manpages@gmail.com> wrote:
> >
> > Hello David, Miklos,
> >
> > I've been looking at the new mount API (fsopen(), fsconfig(),
> > fsmount(), move_mount(), etc.) and among the details that remain
> > mysterious to me is this: how does one set the propagation type
> > (private/shared/slave/unbindable) of a new mount and change the
> > propagation type of an existing mount?
>
> Existing mount can be chaged with mount(NULL, path, NULL, MS_$(propflag), NULL).
>
> To do that with a detached mount created by fsmount(2) the
> "/proc/self/fd/$fd" trick can be used.
>
> The plan was to introduce a mount_setattr(2) syscall, but that hasn't
> happened yet...  I'm not sure we should be adding propagation flags to
> fsmount(2), since that is a less generic mechanism than
> mount_setattr(2) or just plain mount(2) as shown above.

Also note that only setting MS_SHARED makes sense on a new mount
returned by fsmount(2) because

 - MS_PRIVATE is a no op, due to mount already being private

 - same for MS_SLAVE, since it's only different from MS_PRIVATE  on
mounts receiving propagation, which a new mount by definition isn't

 - MS_UNBINDABLE just prevents move_mount(2) from working so that's
not really useful, though at least it does something

A more interesting issue is whether we'd want to control the
propagation of the target when moving into a shared tree.  I.e. should
there be a MOVE_MOUNT_DONTPROPAGATE flag for move_mount(20 that
prevents the new mount from being propagated...

Thanks,
Miklos

