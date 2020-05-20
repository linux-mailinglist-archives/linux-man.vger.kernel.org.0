Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 81B9F1DA9A9
	for <lists+linux-man@lfdr.de>; Wed, 20 May 2020 07:08:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726463AbgETFIi (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 20 May 2020 01:08:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53236 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726403AbgETFIi (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 20 May 2020 01:08:38 -0400
Received: from mail-ed1-x543.google.com (mail-ed1-x543.google.com [IPv6:2a00:1450:4864:20::543])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F161EC061A0E
        for <linux-man@vger.kernel.org>; Tue, 19 May 2020 22:08:37 -0700 (PDT)
Received: by mail-ed1-x543.google.com with SMTP id d24so1380571eds.11
        for <linux-man@vger.kernel.org>; Tue, 19 May 2020 22:08:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc;
        bh=0H4wVrkTYrNFeIpQrl6Rap3w0Z3xDNZcvAxsUGi6g4s=;
        b=sDRkQ8jhLMTXYNSy4b43psMyvKS7I91rEyUAleGcRPgM69ZzLvA0+7UWK6cggt1XAh
         jHtmSwZOIiNDW1Yr27jgj/HRdnmLu5xAwyp5pAMiNWXa+JG9FukimvHqciWrxApxBGUk
         M/ksvuh43riG611+XtTyN4KUM7XmgWkfll+wrdSSigHfRklAOi0kUGTNjEsaBaPQIc7f
         etrEJHKFU+fxmqPGdFNbYbKJMvY7FZiHWChFDoo3UpdEB6pRsBvpD6Nko+kp+4jcYRRS
         Uf9EHQT+Ni24VBVvBjuknyr7haf7dQlRkm0veanFVPqeJjrzdGZzoQydFfb1qlsFq7fO
         I2tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc;
        bh=0H4wVrkTYrNFeIpQrl6Rap3w0Z3xDNZcvAxsUGi6g4s=;
        b=stNPnXUzlqxs6wqbfp3b8eASzcJdi/S8jMYuUFrEIAWiZ+BqzkihKQkXHWe730d7bq
         3x5E8+zYwd0SaXv7kkv11k2sfGmQVP7Kaa+QcEcxwZHdRsZ8FJMutYnB/POsaT3AUSMP
         owFaHmg9boyDOSKi1lZIN+9dAfzAWJxmDQFGQViJ8A935Qhql70BpHtqfwIKkHHZJ3kT
         2S+Y9kMeSXCdqOvYcTD7862K8swcNzDOH/saoiOdJwqnWmLvHTrJ/TiG5u1ODmxtImUh
         B1cZeUbPVd2FKaAqdrAwMHdWQQB+OlT3OJFCWE82eJDrMOhKT6E6Tmu8RwKxjUM0mn4A
         Sl9w==
X-Gm-Message-State: AOAM530B/bDKd3B00k8MhSYR7U3TzHnrQIONJ1YeqO3ph/krh6KsFCsB
        3ev4yLVVv2/UDPSJusolYc0ocjcFKUEk83sSz9zMLreOsY4=
X-Google-Smtp-Source: ABdhPJzZ5jXnKqDbdhUtlbs6fua18ndVsZX+OIhFq0AfF6kz4tmO4C5DtTWbZCMVQmHMtUa8LS7baoXiKrQgvR9/X8Y=
X-Received: by 2002:aa7:cb4f:: with SMTP id w15mr1767905edt.239.1589951316539;
 Tue, 19 May 2020 22:08:36 -0700 (PDT)
MIME-Version: 1.0
References: <20200518030053.GA72528@juliacomputing.com> <20200520011900.y4fgsiprg6evaxm4@two.firstfloor.org>
 <CABV8kRy7XTSv=hJbVSyyKPbT6US7y9AgmG5r9g8AjBJCiVSntw@mail.gmail.com>
In-Reply-To: <CABV8kRy7XTSv=hJbVSyyKPbT6US7y9AgmG5r9g8AjBJCiVSntw@mail.gmail.com>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Wed, 20 May 2020 07:08:25 +0200
Message-ID: <CAKgNAkgEz5fKjrhZz7yR6Jk7UJ1Lrbfje6eKMhwrPNS_WdAVvg@mail.gmail.com>
Subject: Re: [PATCH] ptrace.2: Describe PTRACE_SET/GETREGSET on NT_X86_XSTATE
To:     Keno Fischer <keno@juliacomputing.com>
Cc:     Andi Kleen <andi@firstfloor.org>,
        linux-man <linux-man@vger.kernel.org>,
        Andy Lutomirski <luto@kernel.org>,
        Dave Hansen <dave.hansen@intel.com>,
        Peter Zijlstra <peterz@infradead.org>,
        Thomas Gleixner <tglx@linutronix.de>,
        Ingo Molnar <mingo@redhat.com>,
        "maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>,
        "H. Peter Anvin" <hpa@zytor.com>, Borislav Petkov <bp@alien8.de>,
        Dave Hansen <dave.hansen@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Wed, 20 May 2020 at 05:30, Keno Fischer <keno@juliacomputing.com> wrote:
>
> > > +.SS The layout and operation of the NT_X86_XSTATE regset
> >
> > Should rather have a complete table of NT_* entries first. The others
> > can be dummies for now.
>
> Oh boy, I'm not sure my man-page-formatting-fu is up to the task of
> creating a nice looking table :).
> Michael, can you help?

The general form is simple enough. Assuming, say, a three-column
table, write something like this:

.TS
l l l
---
l l l.
HEAD1<tab>HEAD2<tab>HEAD3
val<tab>val<tab>val<tab>
val<tab>val<tab>val<tab>
...
.TE

I've simplified things somewhat, but if you write your table like
that, I'll fix up any needed formatting afterwards.

For a more complicated example, see the source of syscalls(2).

Thanks,

Michael
