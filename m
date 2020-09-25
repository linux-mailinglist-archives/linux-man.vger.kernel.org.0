Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2484E278F76
	for <lists+linux-man@lfdr.de>; Fri, 25 Sep 2020 19:17:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727874AbgIYRRc (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 25 Sep 2020 13:17:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51806 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726990AbgIYRRb (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 25 Sep 2020 13:17:31 -0400
Received: from mail-ot1-x343.google.com (mail-ot1-x343.google.com [IPv6:2607:f8b0:4864:20::343])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8505AC0613CE
        for <linux-man@vger.kernel.org>; Fri, 25 Sep 2020 10:17:31 -0700 (PDT)
Received: by mail-ot1-x343.google.com with SMTP id c2so2987760otp.7
        for <linux-man@vger.kernel.org>; Fri, 25 Sep 2020 10:17:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc;
        bh=YEH/XSpkvhX+dtbjahNhALhDbRc8yzIZJCZCiqlNFNw=;
        b=dh1WeciZXfL5dKH5jkyP2371IeagCBiC+oLQP35N1uJyX1c/vbtkOKvUasstGw9vy3
         i8IIwaBxPcbxra8fAg/K6LtlwbhcBOxZzZtqIOJZ2ceCQ0kRav5G3VQZptOZDX23KpqA
         Y1Bl7GHlqtqfPit8FCSorVSrUzOudEc2n5d9IACP5A1nLXMBGqjWTmoz8nSTYfQAxr1H
         +qa3DwhL25Y1XRiuFCOKbqfklQq0OruCVyV8qLZGEK2kFQsufTFkRNUaGqohZj5G6DAx
         zg2lEewG9aWfjEdPvMzScbfEC88TutvNe0cFFHTuDd87ctUzTywW2/nPCXyMQqrAMgeg
         DpMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc;
        bh=YEH/XSpkvhX+dtbjahNhALhDbRc8yzIZJCZCiqlNFNw=;
        b=HnOw+KHtQdkO44L2fNtJw3s+zMe1/9eo0YjS57YQFHC6aXbXnojVBeiCorCRwCJEB9
         0uLyN1ZjdVsnMgTm+62cQO+lUlLv5j2WNarRpupMOC+SaVUHZR6jmLxdS8WeRNEOCoCa
         wYaVQmq8ElMI4oYur5xxKvX1/Yacp1koligbACfTOyF+/e7VrWbl7eNQr/TTQiRC8F1Y
         Rb/kEGRrU7VWGnqXr/LAT/k13Adc+YIEPwxpGvTz/95AlSxnZ6kXmwZH7o2057RZV/8f
         AL8uCpXTs9CNWg+2t3NhRyMOhQdgZYyRVy6ja5Gb0b/yB65R96JlBmQiZ1GVbriFM73x
         FaZw==
X-Gm-Message-State: AOAM530z/SQOInkBnisb36mVNmCeSkVy9Bf9BzSCT8/2XJgwoyMd8n/v
        ostYsIfzS6SihLobelffmLBjGhjNqBI2ag7KW930shKM
X-Google-Smtp-Source: ABdhPJxGLPwNGnSgzDHqQDFZ0DZfyS1ePHnkk7h26TQ+rP9E0zxYVOSB2Rgoq+buSVseNKIG1ffpBFDjXuJ5mxvRHi0=
X-Received: by 2002:a9d:6d0b:: with SMTP id o11mr1009262otp.114.1601054250912;
 Fri, 25 Sep 2020 10:17:30 -0700 (PDT)
MIME-Version: 1.0
References: <87k0wifdi2.fsf@oldenburg2.str.redhat.com> <299e6651-fa82-8350-f36f-e578e8180859@gmail.com>
 <1f2734bb-fed4-07f9-94d8-4dbce661b5cf@redhat.com>
In-Reply-To: <1f2734bb-fed4-07f9-94d8-4dbce661b5cf@redhat.com>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Fri, 25 Sep 2020 19:17:19 +0200
Message-ID: <CAKgNAkg6wNytOZ4mbO26A6GvDRY1czSvAH1TMpSZogj7kSJzmA@mail.gmail.com>
Subject: Re: [PATCH] rtld-audit.7: Clarify la_version handshake
To:     "Carlos O'Donell" <carlos@redhat.com>
Cc:     Florian Weimer <fweimer@redhat.com>,
        linux-man <linux-man@vger.kernel.org>,
        "libc-alpha@sourceware.org" <libc-alpha@sourceware.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Fri, 25 Sep 2020 at 18:14, Carlos O'Donell <carlos@redhat.com> wrote:
>
> On 9/25/20 6:47 AM, Michael Kerrisk (man-pages) wrote:
> > On 9/25/20 10:48 AM, Florian Weimer wrote:
> >> Returning its argument without further checks is almost always
> >> wrong for la_version.
> >>
> >> Signed-off-by: Florian Weimer <fweimer@redhat.com>
> >
> > Hello Florian,
> >
> > I've applied this patch locally. I'll merge into master
> > in a few hours. Perhaps in the meantime there are acks/reviews
> > that come in.
>
> Just for the record. This version looks good to me and addresses
> my previous comments.
>
> Reviewed-by: Carlos O'Donell <carlos@redhat.com>

Thanks, Carlos!

Cheers,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
