Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 59F28262B4B
	for <lists+linux-man@lfdr.de>; Wed,  9 Sep 2020 11:07:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725948AbgIIJHL (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 9 Sep 2020 05:07:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44512 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725917AbgIIJHL (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 9 Sep 2020 05:07:11 -0400
Received: from mail-ot1-x344.google.com (mail-ot1-x344.google.com [IPv6:2607:f8b0:4864:20::344])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D9740C061573
        for <linux-man@vger.kernel.org>; Wed,  9 Sep 2020 02:07:10 -0700 (PDT)
Received: by mail-ot1-x344.google.com with SMTP id g96so1644791otb.12
        for <linux-man@vger.kernel.org>; Wed, 09 Sep 2020 02:07:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc;
        bh=CSdV1odzRDUfBl61rFWoTjbUicjaEif2SP3alXzguME=;
        b=lYy2sjJS8SRvnvSd6m5455AG41tA7a9mntEW6UFr9abNY9CskmOdTJDV60sAAFTG3f
         VndwrDlrBfvLZ9QxQebgAUTqRngZ0hzbEYJNj+rlcHnoigID5PUr5Z3T/AeOMG4ffBOX
         /u7BIm2AONQG6KR8sHDGNQ9K7Yik/J9mSR/62KNGtCXBQqIOKx9eXcKK13E1gT7QWOlS
         MmBmEIwf7RForZOzbtCVYAXM91zFfw319gOGHu00oa1fWAL5CVi+f3xhroM0MU8prwQk
         43qFLrScVtCzYHl7ZqHFesnPGxK3QglKKmbPX1qoKn9ytJAr0q1oN3hJXdU2SZHJR9+E
         tipw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc;
        bh=CSdV1odzRDUfBl61rFWoTjbUicjaEif2SP3alXzguME=;
        b=txNK6+O3JxPrRGsnl98CBz0TDKRl1LQnpivBQnjlqWzFB6jeeaZ6QKaWQKJRb4IR2x
         XSTg7tIvpKJBC00CRW/XfW2ElH+//U4/JRtvxBPPXMAyQICfDbNTTAtVgQUQ6i0qm7UG
         PsQfxTkiMZHxbdexvTN3MsLPZ2GlBgadG6t/lmXMcVC350w9JSRvwvr08Vl/omYs8YC+
         EvGvgku19d9h0jaf+Vjwds/4YfIEIV2VzzDXwNC+k15KrE4uYWHWSPJyGU3DhB42r55+
         Q94nxdKq1yUzDFb+pcwsMkrQbqVxWBWzTR28DBtho5yrdAF0m/sMAt3yZ5arwRtX5kwG
         YnIg==
X-Gm-Message-State: AOAM532b8IlI/Fn2hK33JauCQO072o2pqjnGwPyBdcfIvGiAEaBugOV5
        Vb1r13Opyp0YcmiYT5+0Hfn2QTnsAdpnRt80WMM=
X-Google-Smtp-Source: ABdhPJxt4QiM2lYoneJfLE5kTzhbGY/UDRwZrGnOcHad2xODTT1pcwtlZUzIrPEcUksP8EjbZrDGOfbiUwLsSaaOnLQ=
X-Received: by 2002:a9d:a2b:: with SMTP id 40mr34911otg.308.1599642430296;
 Wed, 09 Sep 2020 02:07:10 -0700 (PDT)
MIME-Version: 1.0
References: <1596707314-2361-1-git-send-email-xuyang2018.jy@cn.fujitsu.com>
 <1596707314-2361-2-git-send-email-xuyang2018.jy@cn.fujitsu.com>
 <f25c32a3f4934b329523505796964f63@bfs.de> <2ba1ca61-cf3d-0103-d3de-b3bc6e8bd0af@cn.fujitsu.com>
 <81fa86757a3e463f8e103f23e06ab67e@bfs.de> <726b1166-e77a-0580-7927-d2f324fda4ff@cn.fujitsu.com>
In-Reply-To: <726b1166-e77a-0580-7927-d2f324fda4ff@cn.fujitsu.com>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Wed, 9 Sep 2020 11:06:59 +0200
Message-ID: <CAKgNAkjKvVRzeHbPkFzQmKc5pPJNH0GjzQx5TNXT-KHNM7jt6g@mail.gmail.com>
Subject: Re: AW: AW: [PATCH v2 2/3] loop.4: add some details about lo_flag
To:     Yang Xu <xuyang2018.jy@cn.fujitsu.com>
Cc:     Walter Harms <wharms@bfs.de>,
        "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Yang Xu,

On Tue, 8 Sep 2020 at 11:55, Yang Xu <xuyang2018.jy@cn.fujitsu.com> wrote:
>
> Hi  Walter
>
>
> > ok, i understand now (i hope).
> >
> > maybe this version is more clear:
> >
> > The LOOP_SET_STATUS can neither set the
> > .B lo_flags
> > LO_FLAGS_READ_ONLY  nor the LO_FLAGS_DIRECT_IO
> > because they are exclusively set from kernel.
> Sorry for the late reply.
> I think it is better.
> Thanks.
> Let's wait for Michael's review.

I think it is probably better as Walter suggests. Could you redraft
the patch please?

Thanks,

Michael



--
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
