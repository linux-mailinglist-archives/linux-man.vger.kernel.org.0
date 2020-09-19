Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8AF25270BEC
	for <lists+linux-man@lfdr.de>; Sat, 19 Sep 2020 10:46:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726097AbgISIqL (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 19 Sep 2020 04:46:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55852 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726054AbgISIqL (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 19 Sep 2020 04:46:11 -0400
Received: from mail-oi1-x242.google.com (mail-oi1-x242.google.com [IPv6:2607:f8b0:4864:20::242])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5BFBAC0613CE
        for <linux-man@vger.kernel.org>; Sat, 19 Sep 2020 01:46:11 -0700 (PDT)
Received: by mail-oi1-x242.google.com with SMTP id z26so10188160oih.12
        for <linux-man@vger.kernel.org>; Sat, 19 Sep 2020 01:46:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to;
        bh=kMjjLWC+QZCu49EToaaQWx/sJBNzzF8yZ1fQivdtIto=;
        b=F14/xJmRDDhnjGDddQs0Na42mi2U0ABlwkJtJ1l2mSokIJX9z/uMwiLFbFqniA1ATC
         03DwshHDDavFJZpN1sBllY1kXhib0qM6cdA4UikW9dTx71yP1dbibaQYd0vsnUGqKuFJ
         qWk3GRdhTmpaBWZHYAwx/AsrmA+YQj0F/Awbd3jrr9HmrtxL5GhMYVLPUlDX6a77veiU
         SZPVmL7He3tPUhsYI56mYlE95s42VhdPWxhZ2KmceYlFdnBfHyi/hDR6UbVajopg0ZgO
         jG4Tv6iVxpfWppCDbu9HBQRem0q2AGAuI3+VsGukc84v8UbFJz3qeNytlY5FA6slzaLN
         yyvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to;
        bh=kMjjLWC+QZCu49EToaaQWx/sJBNzzF8yZ1fQivdtIto=;
        b=dh/TG8VevTJy7KzG/gY53uicgPg5QnnVkY/w0ZCGWJk+x7F1H4Ov/NNpYbX+lgTmY5
         eyjxxSn3I5aulLBV+0T3+r4h1w7P+VhDdB14B6hYjJ7K1mRkhrh6JVSLqUToW4heyoHl
         8CYKULnAEx5gVlDbSYQJh/jEKfTy9B8DqAh/lRIo9XvVNcYGshHcC68iE2dsdxYUVkjL
         fLKFAysGD9sHJNs6ccu4FHnirR1V7BQK6P5Z13+waxCzI1LThZOJUp5ik/g5biGWmyMS
         Ees3b3SYmsb8RKRPZYWr9/QgwBer3Fu408R+ZcUhnvWmUh12caxB5FJ1dMGD/Vhp3ojq
         H7/w==
X-Gm-Message-State: AOAM530y7m4ajHfNtXNdIKGb4b0E1W2pNsoesitgh56uL0siR6Eh0wOW
        WZz7haBpx06SaESnjiqrRs4mgpQLQngSg8AvMlc=
X-Google-Smtp-Source: ABdhPJxnJdCZbOHxI9lx8e6602ZXLxQbsXGFmlJ0argIVs2WYH1iHno8BlLQr6M2NQy+0kAAJkPDFCT9ygOe3eTBNic=
X-Received: by 2002:a54:458f:: with SMTP id z15mr10148657oib.148.1600505170700;
 Sat, 19 Sep 2020 01:46:10 -0700 (PDT)
MIME-Version: 1.0
References: <fb6463f6-49d7-e473-d5e1-1cdf8375e498@gmail.com>
 <6c5b89f8-4281-4434-cbee-28f88d07920c@gmail.com> <4ea99048-4bfd-9cba-44cd-9c37fdad8fce@gmail.com>
 <CAKgNAkjys+LYn1qaSXhM2gJfkv_UOnpeNPyh3QCqNLcMNBKB+g@mail.gmail.com> <20200918021603.GA596604@thunder.hadrons.org>
In-Reply-To: <20200918021603.GA596604@thunder.hadrons.org>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Sat, 19 Sep 2020 10:45:59 +0200
Message-ID: <CAKgNAkgDFmqvUswP03+a-ibGxhP6XT-3sjwwT_dK5EUkFBReVg@mail.gmail.com>
Subject: Re: [IDEA] New pages for types: structs and typedfefs
To:     Guillem Jover <guillem@hadrons.org>,
        "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>,
        Alejandro Colomar <colomar.6.4.3@gmail.com>,
        Florian Weimer <fweimer@redhat.com>,
        linux-man <linux-man@vger.kernel.org>,
        libbsd@lists.freedesktop.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Guillem

On Fri, 18 Sep 2020 at 04:16, Guillem Jover <guillem@hadrons.org> wrote:
> Regarding conflicts, I specifically chose to place all libbsd man
> pages in the 3bsd section (both in filename and in the .Dt macro, to
> avoid an actual conflict, and to not override the system man pages.
> So once a man page appears in say man-pages, then that will take
> precedence:
>
>   $ man explicit_bzero # man-pages version recentish addition
>
> vs
>
>   $ man 3bsd explicit_bzero # libbsd version

Yes. Thanks for arranging things that way!

Cheers,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
