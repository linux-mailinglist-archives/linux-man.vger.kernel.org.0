Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EB00A1F8D57
	for <lists+linux-man@lfdr.de>; Mon, 15 Jun 2020 07:43:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726440AbgFOFm6 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 15 Jun 2020 01:42:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41364 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725648AbgFOFm6 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 15 Jun 2020 01:42:58 -0400
Received: from mail-pg1-x52e.google.com (mail-pg1-x52e.google.com [IPv6:2607:f8b0:4864:20::52e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4D3C2C061A0E
        for <linux-man@vger.kernel.org>; Sun, 14 Jun 2020 22:42:58 -0700 (PDT)
Received: by mail-pg1-x52e.google.com with SMTP id h10so3400748pgq.10
        for <linux-man@vger.kernel.org>; Sun, 14 Jun 2020 22:42:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=oCmocoWTtWXRQ2cxihMauwC9ep2CSy/lTK3BYn7oRCI=;
        b=bMB7XyVN2bijomDKOSQFSlwKcww2on9m/7XxzRKFeIGXpi4a78HFOFxsOpykXe7FQS
         CFJFyQKtNQigQP88BYMBbshEJ7MwjRwTobBV57D0mU9UqJXF9A1TPbx7OT16S/9G3+RQ
         LUOnEMg6OVyCiYdWT31yLoEDsofaWt6ivw+e09SAwhGvaQ5CKH3W+eIvlCBJxa1y2Q1/
         86Ox14FLvmHCyDYdzHvXiOxz/YHMmcsuXr1XixkMRdho7dujQ1iScG7tRPBsnyPl3ix/
         fedwefXdj/WG6Mpnwby4IBQ5pddJq6kw//o7AGrqg06TBGlL/XgisICtntw1ieIeE40I
         HyVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=oCmocoWTtWXRQ2cxihMauwC9ep2CSy/lTK3BYn7oRCI=;
        b=bL/6KT5FQ5k9fO20s56DNn/6NU/a9f43CMh7JKQhbCvIWI/R8q2P7iFy02Al/lszyq
         fuw8IKhCY4m6Mgjn0Otl6LKis1Q2rvt3qHvpwqcn+Ya4o1XarXaxb42oBsNDen2s0/0p
         trUbGePBGVhnFmXbuz844cZ+TNZYwwwz7UNCR+nH4mAIbuhgp2uzkL3otRI4afLOY7IL
         CscM+/vzmvZMp7/FzNlLMvSFv2wVV4X5j53miCD/Lmdw91Y8+iu8Uku6JLodkEslqI/l
         93A2gkFsXQmmOE2SsHlzW8lGgNO8sBTkkcbrf07LsiWGH4dDcaJa5HECWK1aNM9GKr3U
         UFfA==
X-Gm-Message-State: AOAM533qvUkBTGGH6SKoos8TX68DNReOl/bLctXM4r8d1Gn1lcgTxaHx
        xJ0u9nmo9pSHx3dciaOfHCQzchG2BLZCsrXza/Y=
X-Google-Smtp-Source: ABdhPJwUDLBXXabpVQKX7TD2D7cHK5YNMCP0PqZ9bJ5ghYhxNhDdnYopHzVJSVKjsqwMn31n/2AIkyZQT2W6S5RORmQ=
X-Received: by 2002:a63:455c:: with SMTP id u28mr11029910pgk.374.1592199776990;
 Sun, 14 Jun 2020 22:42:56 -0700 (PDT)
MIME-Version: 1.0
References: <CACKs7VBdc4_gU=oVz82soZCuukgQzD4V33VcJ81cL7gimRto-Q@mail.gmail.com>
 <089aeecf-fed4-659b-5b5e-335100b3748b@gmail.com>
In-Reply-To: <089aeecf-fed4-659b-5b5e-335100b3748b@gmail.com>
From:   Stefan Puiu <stefan.puiu@gmail.com>
Date:   Mon, 15 Jun 2020 08:42:47 +0300
Message-ID: <CACKs7VB969xNR1NZbLLeYLqiMXD4Hq1ba+c41uipOy86AAcoXg@mail.gmail.com>
Subject: Re: connect.2: can return EACCES because of SELinux
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     lnx-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Michael,

On Fri, Jun 12, 2020 at 11:08 PM Michael Kerrisk (man-pages)
<mtk.manpages@gmail.com> wrote:
>
> Hello Stefan,,
[...]
> I thought I replied to this message, but it looks like I did not.
> As you may already have realized, I applied this patch. Thanks
> for sending it.

Yes, I did see my name mentioned in the release notes, together with
the patch title :).

Thanks!

>
> Cheers,
>
> Michael
