Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C0E6D375367
	for <lists+linux-man@lfdr.de>; Thu,  6 May 2021 14:03:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232085AbhEFMEX (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 6 May 2021 08:04:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42520 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231560AbhEFMEW (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 6 May 2021 08:04:22 -0400
Received: from mail-vk1-xa31.google.com (mail-vk1-xa31.google.com [IPv6:2607:f8b0:4864:20::a31])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 901D1C061574
        for <linux-man@vger.kernel.org>; Thu,  6 May 2021 05:03:18 -0700 (PDT)
Received: by mail-vk1-xa31.google.com with SMTP id j19so1167131vkj.0
        for <linux-man@vger.kernel.org>; Thu, 06 May 2021 05:03:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=I3reThr/2hJAJOvB8L8LSwHp3lwyQJapAouBG+/CqHs=;
        b=noL3qg4wSNnWlV2OQvN+hW+jVr0S1b30mZIVYg1ETkxD9MDvWhs3G9h8N5lK3DGxm3
         H21CaEzlaqpdwX1kmmOfYMAJkmlx8Bz/q9ipJDU9hPktMHSwSl1HG2j1bcPPPsgUH3W+
         pVf/Yf0A6CDQpN8GiTHTi3yO58JnR6drO/jWToCWLnhA5Hd4g81SwmkJqORGdSzmlMWt
         7fRC6GupQzDwb6031+OUI8vilUq+Sf/3fq4mZapIbSMZ4y/vpgzcrazfuz7l+jJ9aMZP
         BZv/5UngoNiD94ukbybclNKOVBZIMYnGBFKvoFDlZWJBVeGsegXD//x4w5Vd6fmbb0M4
         3TCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=I3reThr/2hJAJOvB8L8LSwHp3lwyQJapAouBG+/CqHs=;
        b=WWK76jGuXwMmHA8cAdx/0qJwA5hLYd0D/8VXD6EjOD/Vrx6n4vFrrbxBdLD9+rYQKs
         aq8ba0xTmcqoAtNW3VXk3Rw2ibHP6ySqHZ2Q4gD9GJjfezgMhLj7aPG657yq8ZaHOgs+
         Xl91l8Sij1LL37XEGMPeu8miVnvL+YpgBiUV3n6mgeljEKS21wxevSHvo6rA17ebRMRi
         6yVSCa5m4zbmhI7wowf9e7c2c/dQqLFb0rKZdDfv10pJux+XfwfDUL39FGDTitUm4Sf4
         JQAbiCeDpVoYOsxiAn8J7wPITZSKgaaSQA70FW3Hp9pDHgIRsBzJo79e4iwkjhPYEXXv
         1a2g==
X-Gm-Message-State: AOAM530G/LpusWHW1yNigEBh5uJtiZWgIMnemvP8cwcUdg0PBarAw9fg
        7Xs3fW2+QVijDYYntahcVryQRYVQ1055DbOr9MKatvb9pSQ=
X-Google-Smtp-Source: ABdhPJzs/ZaBAgMYKmDS1/RBcfJ36XlEBwouqu9AnrAGfUwpyeX2or0LvgE1yFaHeIYPAM8iXZvIdy9anorCLc+iUTU=
X-Received: by 2002:a1f:5682:: with SMTP id k124mr2246708vkb.20.1620302596511;
 Thu, 06 May 2021 05:03:16 -0700 (PDT)
MIME-Version: 1.0
References: <CALhU9tkuovaHEhB6u6iL=V7+B51FYWEuBgRuekSojiibXnUzOw@mail.gmail.com>
 <cf2e3ee0-1ecc-8eb2-cd1e-df2568aefe8e@gmail.com>
In-Reply-To: <cf2e3ee0-1ecc-8eb2-cd1e-df2568aefe8e@gmail.com>
From:   Akihiro Motoki <amotoki@gmail.com>
Date:   Thu, 6 May 2021 21:04:33 +0900
Message-ID: <CALhU9tmOLL=JuYLpDD7OCEK9+mSfq5DvWLaMVSQKZA3x9j18FA@mail.gmail.com>
Subject: Re: [patch] fanotify.7: ffix
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org,
        "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Thanks.

I just posted an output of "git diff". Is the output of git am preferred?

On Thu, May 6, 2021 at 9:00 PM Alejandro Colomar (man-pages)
<alx.manpages@gmail.com> wrote:
>
> Hello Akihiro,
>
> Patch applied.  BTW, I had to apply the patches manually (`git am`
> complained).
>
> Thanks,
>
> Alex
>
> On 5/6/21 1:46 PM, Akihiro Motoki wrote:
> > diff --git a/man7/fanotify.7 b/man7/fanotify.7
> > index ebe5c1d7f..6a7e70d75 100644
> > --- a/man7/fanotify.7
> > +++ b/man7/fanotify.7
> > @@ -147,7 +147,7 @@ influences what data structures are returned to
> > the event listener for each
> >   event.
> >   Events reported to a group initialized with one of these flags will
> >   use file handles to identify filesystem objects instead of file descriptors.
> > -.TP
> > +.PP
> >   After a successful
> >   .BR read (2),
> >   the read buffer contains one or more of the following structures:
> >
>
>
> --
> Alejandro Colomar
> Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
> http://www.alejandro-colomar.es/
