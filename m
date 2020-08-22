Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8A2DF24E70F
	for <lists+linux-man@lfdr.de>; Sat, 22 Aug 2020 13:31:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727827AbgHVLbP (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 22 Aug 2020 07:31:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41284 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727113AbgHVLbM (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 22 Aug 2020 07:31:12 -0400
Received: from mail-oo1-xc42.google.com (mail-oo1-xc42.google.com [IPv6:2607:f8b0:4864:20::c42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E845BC061573
        for <linux-man@vger.kernel.org>; Sat, 22 Aug 2020 04:31:09 -0700 (PDT)
Received: by mail-oo1-xc42.google.com with SMTP id j16so906010ooc.7
        for <linux-man@vger.kernel.org>; Sat, 22 Aug 2020 04:31:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc;
        bh=oShCORvSWK28td8NWeRnWpsW643KqS7fzamCzbs3nPc=;
        b=AXhDBnmJedz3lze5n8vOi9Y763mmAEuRJtcvg+fetd5HxyRG7Io0HFQoCsxhaAYuco
         S7EBGpbVreRoDRkuwTL6CLTNGxShJ+xHuzd/+IEwVdzv8bI+AxtLd030xBx1Hbc24uL1
         gczdtvK9+kSglYLtcELpmy1fyxs74Xg8cvbOEwqulGnAxriEf3Xor6pUR1pzh2zpL0ZZ
         FJ87YdNU4ySU3WNcJDB+xZSAdvTdrv96iMltpIIDZeMTmqHuXFeForxm4zx1SoXzz1Nk
         QWk9SLRJEwDvhPYC5P3qIYYurrI601yVmfN4qcAGdrCFGzyiQcy9rF4Lv7Gsn178+6Hz
         XUhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc;
        bh=oShCORvSWK28td8NWeRnWpsW643KqS7fzamCzbs3nPc=;
        b=j+elIDMekKz2BNbj9rBPYP4fiZDYyCUXz+wnTtj1rHieuct8MTO022m9wFMWN0beZy
         NDP7EFcJw3oAIzUanQKEVH+9xCYfRBZzVjXb2t5fZHUKxVFKPw9rMfgRb7iDv/4ceP5I
         ayN8qB+lIOi5jdgEoB8gnDL0v19ZVvtQcRcYxF36WfcuJJZ3UHPVOpSy/r3nKvj6DqTM
         MLOLXLWM7fLx4l6DUThjiXeuEOJmrPMvNSjARKbpbCMNmBOLV1gFZOBWD4HIBFtuIyCU
         64lUzFmhBTwiK6pghDZaFYQib+o38gKynnaJrpkistgHWkmjxU6dPAue4bknK6Uju/DT
         ziqQ==
X-Gm-Message-State: AOAM530jAto3WRMsCW5Lo4TQUeVy2fb6SMpZIvC0wBsYVC/a0SgB0Xu5
        jKgk5M3JTRR6AO3CY3AhBqhaNCoCJ75tHmZSCdOnUoSCdnU=
X-Google-Smtp-Source: ABdhPJxPpv1HwshdJrm1mIpd+f5qHfRbydyuZ4w8Kh8t3k9G++tj/WzCVFH0cI+QwRJs0bZVDLQfNRIGzBX3GnB72YY=
X-Received: by 2002:a4a:2514:: with SMTP id g20mr5442213ooa.80.1598095869243;
 Sat, 22 Aug 2020 04:31:09 -0700 (PDT)
MIME-Version: 1.0
References: <e95bd107-7a2a-1595-a796-8305badf97d7@deloquencia.de>
 <3e3f07ef-d48c-2469-f95c-0964f7ae42d9@gmail.com> <20200822084238.o5g4ethy5uhpng6m@jwilk.net>
In-Reply-To: <20200822084238.o5g4ethy5uhpng6m@jwilk.net>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Sat, 22 Aug 2020 13:30:57 +0200
Message-ID: <CAKgNAkiW7ZLmf9z9rjxfHQVqOQ+Rzm9h4SUjO2664-Yjyr5xBw@mail.gmail.com>
Subject: Re: [PATCH] bpf-helpers.7: wfix
To:     Jakub Wilk <jwilk@jwilk.net>
Cc:     Thomas Piekarski <t.piekarski@deloquencia.de>,
        linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Sat, 22 Aug 2020 at 10:42, Jakub Wilk <jwilk@jwilk.net> wrote:
>
> * Michael Kerrisk (man-pages) <mtk.manpages@gmail.com>, 2020-08-22, 10:26:
> >On 8/19/20 5:18 PM, Thomas Piekarski wrote:
> >>Removing repeated word "will"
> >>
> >>Signed-off-by: Thomas Piekarski <t.piekarski@deloquencia.de>
> >
> >Hi Thomas,
> >
> >
> >This one is a little difficult, because the page is generated from
> >scripts. (It is pretty much unique in this respect in the man-pages
> >set.)
> >
> >Looks like a patch is needed against the kernel source file
> >include/uapi/linux/bpf.h. Do you want to send a patch for that?
>
> It's already fixed there:
> https://git.kernel.org/linus/bfdfa51702dec67e9fcd52568b4cf3c7f799db8b

Thanks for checking that Jakub. I just regenerated the page from the
current kernel source.

Cheers,

Michael

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
