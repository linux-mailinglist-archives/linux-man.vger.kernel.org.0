Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 78A1630497E
	for <lists+linux-man@lfdr.de>; Tue, 26 Jan 2021 21:06:32 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726438AbhAZF1e (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 26 Jan 2021 00:27:34 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35440 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726537AbhAYJZY (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 25 Jan 2021 04:25:24 -0500
Received: from mail-oi1-x230.google.com (mail-oi1-x230.google.com [IPv6:2607:f8b0:4864:20::230])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E62ACC0611C0
        for <linux-man@vger.kernel.org>; Mon, 25 Jan 2021 01:09:29 -0800 (PST)
Received: by mail-oi1-x230.google.com with SMTP id m13so6077947oig.8
        for <linux-man@vger.kernel.org>; Mon, 25 Jan 2021 01:09:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc;
        bh=t+c/OBPR2ylxL5CvI0QaKByUDecbEnh7BkhN1/yC3tQ=;
        b=ab0GNyMvYy926H/GAb8UEJxDBeUqTjmN1m6yOKiLu/LqJ+H4QUUjaznW3fOv5JFe4U
         79B3AxG7tUr/6zv8RVFU7lCbYn7Wh/+jtPOeVHe62tQXjgG3fCMN67Mj2G2wNzdjY9uN
         mCaMkH+BQGisI9UirMvqOl4unOk+DKw9bBHre4A47s2EyQ6zq9H3BsMsgF+I92m1jsll
         q/z0TRtu3u0f0INg0UoJO4NhRDnvPv06nRfr5SzgAfaWrrg5VhSOfJBlLudS1RP2W0Fv
         V7GCiO5x/bZzvKdaXWwGz4j/qnPDRYmol+x3aMhmc9K4LLXBimbCCB/8/8F6EvNpp6zk
         NQOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc;
        bh=t+c/OBPR2ylxL5CvI0QaKByUDecbEnh7BkhN1/yC3tQ=;
        b=GgTSRj3WRFKGosg6qQ6UWuLrIjDCWVXPCOATHDj7mS6cOU10ZOBdMLXFPY1HsUm2ll
         52R5leX0S47hD4UgWZo6aDmOYczJhG/YdydnoVm1437Jr9oL3taXb+P+JEdGkThN++kp
         Dl6Eta5uhFISwYBjPIV2VGPwAKOkK517EoVGrVtI454Es+ErtzdxZ8hSpzIA6oSl1gFn
         znmNSANn0c1gFwekDbEd8vbml5z+SVHZ6OZky23gmzY6nSDDqQ3QK950NJX6M2pazWPb
         k5QYW8JpShQKLCT5BONblH0lmUeGfbVZySBOUr0qmsTRxTvnoq5ur/KtFSZVVVadDLKR
         c9Cw==
X-Gm-Message-State: AOAM531qVidy+FBiEyMnyE4VNkm2yyOeT+xmpctjATUh9oat6P2ljXdW
        e+sUQS2YHr2Qpz+rqFem3vXWzotDTrAbTOvykgs=
X-Google-Smtp-Source: ABdhPJwdCcnZJITYvKC1YD4jSeWLZNFAmSi7Mw605V69xBbgTXFrEo6cMj7Ky77lcDWjkgOqBhTC4yWUEIypozgmCqk=
X-Received: by 2002:aca:fd81:: with SMTP id b123mr1723599oii.159.1611565769278;
 Mon, 25 Jan 2021 01:09:29 -0800 (PST)
MIME-Version: 1.0
References: <4530567.a0Z4EEqLWd@devpool47>
In-Reply-To: <4530567.a0Z4EEqLWd@devpool47>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Mon, 25 Jan 2021 10:09:18 +0100
Message-ID: <CAKgNAkiLEEoL1=+jGJMpR=y2O4j8R95SQQkVnXdCF7TTrseSng@mail.gmail.com>
Subject: Re: contradictional sentence in clone(2) man page
To:     Rolf Eike Beer <eb@emlix.com>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Rolf,

On Mon, 25 Jan 2021 at 09:33, Rolf Eike Beer <eb@emlix.com> wrote:
>
> In the discussion of CLONE_VM I find this sentence:
>
> > If the CLONE_VM flag is specified and the CLONE_VM flag is
> > not specified, then any alternate signal stack that was
> > established by sigaltstack(2) is cleared in the child
> > process.
>
> Which simply doesn't make sense. I guess one of them should have been the name
> of another flag.

Thanks for taking the time to report this. You are right. And by
chance this was reported and fixed just a few days ago:

https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/commit/?id=2a1b1111ca1a75e369afc6aaeb04f17acfcfdb41

Cheers,

Michael



-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
