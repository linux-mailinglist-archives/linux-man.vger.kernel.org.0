Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5BCBD1B4DBC
	for <lists+linux-man@lfdr.de>; Wed, 22 Apr 2020 21:55:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726109AbgDVTzE (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 22 Apr 2020 15:55:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39826 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-FAIL-OK-FAIL)
        by vger.kernel.org with ESMTP id S1725779AbgDVTzE (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 22 Apr 2020 15:55:04 -0400
Received: from mail-ej1-x644.google.com (mail-ej1-x644.google.com [IPv6:2a00:1450:4864:20::644])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C6E69C03C1A9
        for <linux-man@vger.kernel.org>; Wed, 22 Apr 2020 12:55:03 -0700 (PDT)
Received: by mail-ej1-x644.google.com with SMTP id gr25so2809631ejb.10
        for <linux-man@vger.kernel.org>; Wed, 22 Apr 2020 12:55:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc;
        bh=B9Ky9qEwFygT6wOf5IPC3dCybrvsgA0RCipmj1l0/9Q=;
        b=dchwwqIo8OhpiuiSbibFlLaz+umQFVWNcOVF84aiP14USscTUFNGY+4LvuEQF4bWW9
         9Okka0SzgHq3rx2nHKGsvE3qVmF/4KCsC7pJZPmlqAKI0ZCcpwETZTMoJJb+tNxo1JkU
         6jKQjdcQ8TaM2KOEMHJMmCgEWWCS2FSgyzvKWbVyQsuuc2fDLMjwKH2p8lZd/sn57ZFG
         Gd4MmXHFnrkkh5QGR/ONvgCYQQ7o07/t7k9JcfgrBhCzbxdY6yk/j1IhJCYDyE0Ul7d3
         +agsQ6eDrqWz3GZbCi59g1dmQLuep0GtN6Rk3JBRM0myMkwoaeO+7RNrC4kMwYA5FDMJ
         cyvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc;
        bh=B9Ky9qEwFygT6wOf5IPC3dCybrvsgA0RCipmj1l0/9Q=;
        b=kxnhAASh7bPX1gdjwd4Ps65AuwZtaAx9JD8Xz4BmSFSIoPl1PooaMEK8HPOLPvhqpC
         0lUTo7wzZKSwMdqka21A+WGEq2o0E0AXlqRx0UHYMGAeELqGIaTGMlG6fACzXwx/e58v
         be4IFOMKgb+6Td1ZgdELrKWWe16yas6fOxyn09bAjGvnRUZUu1Zx9Y6jJ+i+7bhU6y7H
         /hSH2vws2Y6PNYy7h1h5HU2o+9ZgI2R+VxEZVhQtkQVKad6DYofIOMRstBPb9UxrEEpI
         U8lAHW+qzeevXGxZHf2U1Mxx6G6k7Ol/elf0L9k3ajDDREsh5lUbUjlU/is235o4kfYY
         ubIw==
X-Gm-Message-State: AGi0PuaaWK9RH1IKu4Dr9su7JCUBdQ25gQTapG5cjw8PCavEXE7K3JnJ
        fZN1jACL+SmkRKufIdlX3bvu+1KH1M/QnFUXxl+FmA==
X-Google-Smtp-Source: APiQypJLQTjW2W/blKAtFqivbbG/JAbDJLoGTr0FiaRZ/JJH5ai1eSl9ZLDhadnBpIy9ES6jSLhIyaQDLeHUTb3IKMM=
X-Received: by 2002:a17:906:54cd:: with SMTP id c13mr3733ejp.307.1587585302499;
 Wed, 22 Apr 2020 12:55:02 -0700 (PDT)
MIME-Version: 1.0
References: <20200419064754.GA30214@Debian-50-lenny-64-minimal>
 <84846ce0-881a-e882-8bbc-8fe93d7e4607@gmail.com> <20200422192409.GB26557@Debian-50-lenny-64-minimal>
In-Reply-To: <20200422192409.GB26557@Debian-50-lenny-64-minimal>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Wed, 22 Apr 2020 21:54:51 +0200
Message-ID: <CAKgNAkgPzgimcwkK9gMJaq_=gkEFpSKdBVdsNcDQbyY69paVLQ@mail.gmail.com>
Subject: Re: Errors in man pages, here: copysign(3): Suggested improvement
To:     Helge Kreutzmann <debian@helgefjell.de>
Cc:     linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Helge,

On Wed, 22 Apr 2020 at 21:24, Helge Kreutzmann <debian@helgefjell.de> wrote:
>
> Hallo Michael,
> On Mon, Apr 20, 2020 at 08:36:37AM +0200, Michael Kerrisk (man-pages) wrote:
> > On 4/19/20 8:47 AM, Helge Kreutzmann wrote:
> > > **
> > >
> > > Description, of what is really done, should be improved
> > >
> > > msgid "copysign, copysignf, copysignl - copy sign of a number"
> >
> > I do not understand the report. Please elaborate.
>
> If you read the text below the description, the function does
> something more complex than siply copying the sign of a number, where
> I would expect the the result to be either a "+" or a "-" (or maybe 1
> or -1).
>
> The translator simply found this discrepancy when comparing the body
> and the NAME part.
>
> Of course, as this is an improvement request, if you do not think it
> can (or should) be changed, then please leave it as is.

Given that the NAME description should be concise, no real
idea for an improvement springs to mind. I suggest
closing this.

Thanks,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
