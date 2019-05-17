Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id A286321B0A
	for <lists+linux-man@lfdr.de>; Fri, 17 May 2019 17:56:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729236AbfEQP4r (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 17 May 2019 11:56:47 -0400
Received: from mail-ed1-f65.google.com ([209.85.208.65]:40154 "EHLO
        mail-ed1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728664AbfEQP4r (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 17 May 2019 11:56:47 -0400
Received: by mail-ed1-f65.google.com with SMTP id j12so11246658eds.7
        for <linux-man@vger.kernel.org>; Fri, 17 May 2019 08:56:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=ZsH90euM1C8SzbK69Ypu1kbrr/jJfLHIjdKbyqyFhPU=;
        b=ZXQ4RCmVuk0Ihb7E7buqsWYcDl1+WTl1DkaSHu8cVNjNxGvEDjUJW6yKMmXa8063FS
         kc9S8rucZpIMUEFPhIe7R9Kf7iesKacCQr1qmYsHujm/FOoYNlvIYZ4xXMorC+kddlIf
         KdEIgziJdWmgWahU4nZMqDSxp2zQCjgp3VdVywT0ZwTUUirCsu9FmtJOCfk+xzlYJt5b
         B+Z/Uy7qOIE5yMwY3KDjIFJ7k/IWnQ7y/xuyGTrP5YM272CPVMJAYECrYqwDbE65t5Md
         lvN+xXvwCyw7VAe9A3EJtpr8UlBh3VTL6n+CCdNZtc6uut4s2hVT2GhkePnR3/LLsc6L
         skUg==
X-Gm-Message-State: APjAAAUJSF0eFb3mXCQTXHVi8Qfaeby3TIeTMLTnYxB1B9AOliPZvWw8
        o7H2LIzaNt89W3hzPV4fRMlcD3WLaHzcSRFdODEOsw==
X-Google-Smtp-Source: APXvYqw2I6mm8y0LfZ3xJEJt9IQPHNBlaKf0VBnew71s0oncAjbVhXDFM4K6T8zXa5ZJYltRcWvKl98mMYqyxAnib4Q=
X-Received: by 2002:a17:906:a34e:: with SMTP id bz14mr25457428ejb.82.1558108605568;
 Fri, 17 May 2019 08:56:45 -0700 (PDT)
MIME-Version: 1.0
References: <20190511072049.2w7pp723iszp3gra@localhost.localdomain>
 <8736liit24.fsf@oldenburg2.str.redhat.com> <20190513141746.mail6ny43wh4t5oj@localhost.localdomain>
 <87y335m6fq.fsf@oldenburg2.str.redhat.com> <20190517155057.vr5uk6hfkyp44y3t@localhost.localdomain>
In-Reply-To: <20190517155057.vr5uk6hfkyp44y3t@localhost.localdomain>
From:   "Carlos O'Donell" <carlos@redhat.com>
Date:   Fri, 17 May 2019 11:56:34 -0400
Message-ID: <CAEMqeSrCMFZ8GQU=kR_+KXaqnd9m-3qUSQk1PNZ2xHjZ_YVHFg@mail.gmail.com>
Subject: Re: [PATCH] pldd.1: Document glibc's unbreakage of tool.
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     Florian Weimer <fweimer@redhat.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        linux-man <linux-man@vger.kernel.org>,
        GNU C Library <libc-alpha@sourceware.org>
Content-Type: text/plain; charset="UTF-8"
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Fri, May 17, 2019 at 11:51 AM G. Branden Robinson
<g.branden.robinson@gmail.com> wrote:
> What would you prefer?  That the man page not document the bug at all?
> Was it a mistake in your view to have added the information about the
> bug to the man page in the first place?

I think having the glibc upstream version information is useful.

Cheers,
Carlos.
