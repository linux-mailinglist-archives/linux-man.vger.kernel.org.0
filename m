Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 04E0428048D
	for <lists+linux-man@lfdr.de>; Thu,  1 Oct 2020 19:05:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1732287AbgJARFy (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 1 Oct 2020 13:05:54 -0400
Received: from youngberry.canonical.com ([91.189.89.112]:52633 "EHLO
        youngberry.canonical.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1732159AbgJARFy (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 1 Oct 2020 13:05:54 -0400
Received: from mail-ej1-f71.google.com ([209.85.218.71])
        by youngberry.canonical.com with esmtps (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
        (Exim 4.86_2)
        (envelope-from <christian.brauner@canonical.com>)
        id 1kO21g-0007Sl-0d
        for linux-man@vger.kernel.org; Thu, 01 Oct 2020 17:05:52 +0000
Received: by mail-ej1-f71.google.com with SMTP id dc22so2496683ejb.21
        for <linux-man@vger.kernel.org>; Thu, 01 Oct 2020 10:05:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=Aap9MP/HBi9/qankX0BesgfqzXvo4bvGgH/pO8G9acQ=;
        b=Lg8rr94BO53CcaPJ5jirECw7IcI2yyxGuggnFk4cyk6Vq9eG3qqAp0lddWmCQmHE7+
         hU+XaQJS832IOG+k+hbbQCxhVB67w71mBUAvJcZe5U1/W2EtMz78CjWt/bFEZhb6HH6F
         mrJvcai+Ey8q6EfbG9OtIWwGfdc+KZC8qwFR4wUKwJvNsfR3nxnZrlo0cLqJIRpmKhCK
         rgCzZ71yz8YW0V7Fip1UFX7gmQXxpKlI4Q/5PwNQdGIm4wkfMV9hbGNuowJoXo+xyeSK
         dOFZ28IFnf29dDBAS6coLXDPPro/RHjKgrm/UjjrnuGoIhDQGXCIUlX6voqoNuUwRt8F
         XAwA==
X-Gm-Message-State: AOAM533pyymUNQDH9XV+u0YaYeYaWyjukhBrU/UIB/jXJAFZ5xpctPLD
        pbiXYpeytVA386pljHpaueZqZ4L1U6xzhnj3Jyfe6NwKXcwCusOngGwEGXHHzmkPrl0sb7QsgIT
        JMKcMgCXDbL1fkOQG7QMb1dA1CeB6cKpXExGnQQ==
X-Received: by 2002:a17:906:71cc:: with SMTP id i12mr9027284ejk.507.1601571951467;
        Thu, 01 Oct 2020 10:05:51 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJy2qQHjfUA/p72XDvjFE/grmCBGTMHvF+wL+iK51zUzW2MkqzKMh3QQkZ07n2iwyU6nbvl5MA==
X-Received: by 2002:a17:906:71cc:: with SMTP id i12mr9027243ejk.507.1601571951125;
        Thu, 01 Oct 2020 10:05:51 -0700 (PDT)
Received: from gmail.com ([176.32.19.8])
        by smtp.gmail.com with ESMTPSA id s7sm4481136ejd.103.2020.10.01.10.05.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Oct 2020 10:05:50 -0700 (PDT)
Date:   Thu, 1 Oct 2020 19:05:43 +0200
From:   Christian Brauner <christian.brauner@canonical.com>
To:     Jann Horn <jannh@google.com>
Cc:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>,
        linux-man <linux-man@vger.kernel.org>,
        Song Liu <songliubraving@fb.com>,
        Will Drewry <wad@chromium.org>,
        Kees Cook <keescook@chromium.org>,
        Daniel Borkmann <daniel@iogearbox.net>,
        Giuseppe Scrivano <gscrivan@redhat.com>,
        Robert Sesek <rsesek@google.com>,
        Linux Containers <containers@lists.linux-foundation.org>,
        lkml <linux-kernel@vger.kernel.org>,
        Alexei Starovoitov <ast@kernel.org>, bpf <bpf@vger.kernel.org>,
        Andy Lutomirski <luto@amacapital.net>,
        Christian Brauner <christian@brauner.io>
Subject: Re: For review: seccomp_user_notif(2) manual page
Message-ID: <20201001170501.7umqgtfdx6jenkla@gmail.com>
References: <45f07f17-18b6-d187-0914-6f341fe90857@gmail.com>
 <CAG48ez3aqLs_-xgU0bThOLqRiiDWGObxcg-X9iFe6D5RDnLVJg@mail.gmail.com>
 <20201001125043.dj6taeieatpw3a4w@gmail.com>
 <CAG48ez2U1K2XYZu6goRYwmQ-RSu7LkKSOhPt8_wPVEUQfm7Eeg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAG48ez2U1K2XYZu6goRYwmQ-RSu7LkKSOhPt8_wPVEUQfm7Eeg@mail.gmail.com>
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Thu, Oct 01, 2020 at 05:47:54PM +0200, Jann Horn wrote:
> On Thu, Oct 1, 2020 at 2:54 PM Christian Brauner
> <christian.brauner@canonical.com> wrote:
> > On Wed, Sep 30, 2020 at 05:53:46PM +0200, Jann Horn via Containers wrote:
> > > On Wed, Sep 30, 2020 at 1:07 PM Michael Kerrisk (man-pages)
> > > <mtk.manpages@gmail.com> wrote:
> > > > NOTES
> > > >        The file descriptor returned when seccomp(2) is employed with the
> > > >        SECCOMP_FILTER_FLAG_NEW_LISTENER  flag  can  be  monitored  using
> > > >        poll(2), epoll(7), and select(2).  When a notification  is  pend‐
> > > >        ing,  these interfaces indicate that the file descriptor is read‐
> > > >        able.
> > >
> > > We should probably also point out somewhere that, as
> > > include/uapi/linux/seccomp.h says:
> > >
> > >  * Similar precautions should be applied when stacking SECCOMP_RET_USER_NOTIF
> > >  * or SECCOMP_RET_TRACE. For SECCOMP_RET_USER_NOTIF filters acting on the
> > >  * same syscall, the most recently added filter takes precedence. This means
> > >  * that the new SECCOMP_RET_USER_NOTIF filter can override any
> > >  * SECCOMP_IOCTL_NOTIF_SEND from earlier filters, essentially allowing all
> > >  * such filtered syscalls to be executed by sending the response
> > >  * SECCOMP_USER_NOTIF_FLAG_CONTINUE. Note that SECCOMP_RET_TRACE can equally
> > >  * be overriden by SECCOMP_USER_NOTIF_FLAG_CONTINUE.
> > >
> > > In other words, from a security perspective, you must assume that the
> > > target process can bypass any SECCOMP_RET_USER_NOTIF (or
> > > SECCOMP_RET_TRACE) filters unless it is completely prohibited from
> > > calling seccomp(). This should also be noted over in the main
> > > seccomp(2) manpage, especially the SECCOMP_RET_TRACE part.
> >
> > So I was actually wondering about this when I skimmed this and a while
> > ago but forgot about this again... Afaict, you can only ever load a
> > single filter with SECCOMP_FILTER_FLAG_NEW_LISTENER set. If there
> > already is a filter with the SECCOMP_FILTER_FLAG_NEW_LISTENER property
> > in the tasks filter hierarchy then the kernel will refuse to load a new
> > one?
> >
> > static struct file *init_listener(struct seccomp_filter *filter)
> > {
> >         struct file *ret = ERR_PTR(-EBUSY);
> >         struct seccomp_filter *cur;
> >
> >         for (cur = current->seccomp.filter; cur; cur = cur->prev) {
> >                 if (cur->notif)
> >                         goto out;
> >         }
> >
> > shouldn't that be sufficient to guarantee that USER_NOTIF filters can't
> > override each other for the same task simply because there can only ever
> > be a single one?
> 
> Good point. Exceeeept that that check seems ineffective because this
> happens before we take the locks that guard against TSYNC, and also
> before we decide to which existing filter we want to chain the new
> filter. So if two threads race with TSYNC, I think they'll be able to
> chain two filters with listeners together.

That's a bug, imho. I don't have source code in front of me right now
though.

> 
> I don't know whether we want to eternalize this "only one listener
> across all the filters" restriction in the manpage though, or whether
> the man page should just say that the kernel currently doesn't support
> it but that security-wise you should assume that it might at some
> point.

Maybe. I would argue that it might be worth having at least a new
flag/option to indicate either "This is a non-overridable filter." or at
least for the seccomp notifier have an option to indicate that no other
notifer can be installed.

Christian
