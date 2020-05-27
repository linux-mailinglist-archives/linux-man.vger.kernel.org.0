Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F19701E43BF
	for <lists+linux-man@lfdr.de>; Wed, 27 May 2020 15:32:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2387901AbgE0Nc5 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 27 May 2020 09:32:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35568 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2387730AbgE0Nc5 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 27 May 2020 09:32:57 -0400
Received: from mail-ej1-x643.google.com (mail-ej1-x643.google.com [IPv6:2a00:1450:4864:20::643])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2565DC08C5C1
        for <linux-man@vger.kernel.org>; Wed, 27 May 2020 06:32:57 -0700 (PDT)
Received: by mail-ej1-x643.google.com with SMTP id h21so28126941ejq.5
        for <linux-man@vger.kernel.org>; Wed, 27 May 2020 06:32:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc;
        bh=HJvFMm1KWNZVPUn2aOgIANVTolokzeUmNFSbcG7igOc=;
        b=mFdGleVQbGMA7l69kpI1EPTPhugty0jTh0/IiRCVKuDEsYWIxiGWE2SSlVILNcyjPg
         WNoG6iRSWwCWMdmEeqFqP5/cC1223I0d4KMq4Ahc0FWrymUfv7l3OQb1/39KZ/rVEeE9
         SNdGUtTuNjhxYVejw6iFECvEHnDE/TRJUX42A2G1Yu+CijPajIToRm/Foo/aRsoP7VGG
         OkpcAB8nbooZ6HK0n2FVzx9GmAxjKM7Bo0x7dSCkYeNz4pMgSRQcUYDrQa3DR6PHxbB6
         mgBy7srHdIEitJQnXa41xq1E1e5Bgs3QUJgcNDWzMpHQFRtDXWH2OoqNqAonlYiy8O9q
         pEgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc;
        bh=HJvFMm1KWNZVPUn2aOgIANVTolokzeUmNFSbcG7igOc=;
        b=bWAGY0Xpao81OOv8SdKYwhWXrMyYWeJWoSafhhSJuoG9e9M/pJXB84C6g9/I18/Os1
         HldYjNAJZaZtUJNkE+2Zq48DrEwNcjLNXetNAo1RlRogmEmrA5lFoXF0sAiDHtJ+xrHh
         hWydmG2miMUP6CKZN93q8OiJrYGC+tlds8WLHwkc1h9coBoyIcTgIwVgNZx0d2NoipkR
         ZMme5oNZPqt7H7KjnCKAYiEv1oXxS5T/C3VRXgbaRfxVnbup8W4+Ezo+ofwmPauJ3Jyj
         5HdMEbGzBffJpB2nY2Y+m1h45cIncMv1tS0e9AMO8ApnaX+Nk4c4fSFZ5y2m5AuienE3
         c7pQ==
X-Gm-Message-State: AOAM532S7dHdClpq2D57C959iERjWGRJaqT6QFBPPZII3krRd1sOoX6N
        QUUMSl9YYAxNPSKF5dw1dLip+DqvNN9328ndEfJdhmF0
X-Google-Smtp-Source: ABdhPJwR9LRytWHlX0XYe33xIwsaJe5AZiJtT4SRl5JeJt1aoYP31o/i+5glFHODFx8Lx2jMy4S5SkGg8iV6hZA5OJw=
X-Received: by 2002:a17:906:41a:: with SMTP id d26mr6316614eja.217.1590586375851;
 Wed, 27 May 2020 06:32:55 -0700 (PDT)
MIME-Version: 1.0
References: <9e98156e-3ba9-e656-bb8f-c54229b5ac11@jguk.org>
 <CAKgNAkhkASJ8+Xe64_ifM1_GgrNSCd6Vx0GDdkJ7aFfJ7RG=7A@mail.gmail.com> <0e0f3d4e-b811-3423-ffe9-2fd68900c1a0@jguk.org>
In-Reply-To: <0e0f3d4e-b811-3423-ffe9-2fd68900c1a0@jguk.org>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Wed, 27 May 2020 15:32:44 +0200
Message-ID: <CAKgNAkgRSAf2MVA-XMbvoQTk88T5j=Hn2-nyzZBo-tVrLxvbsA@mail.gmail.com>
Subject: Re: core sysctl
To:     Jonny Grant <jg@jguk.org>
Cc:     linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Jonny

On Wed, 27 May 2020 at 15:23, Jonny Grant <jg@jguk.org> wrote:
>
>
>
> On 27/05/2020 14:06, Michael Kerrisk (man-pages) wrote:
> > Hi Jonny,
> >
> > On Mon, 25 May 2020 at 17:08, Jonny Grant <jg@jguk.org> wrote:
> >>
> >> Suggestion for some additional information on this page:
> >>
> >> http://man7.org/linux/man-pages/man5/core.5.html
> >>
> >> Could "Core dumps and systemd" be extended to give an
> >> example of sysctl making a temporary change?
> >>
> >> eg set to the filename and signal that causes the core dump:
> >>
> >> # sysctl -w kernel.core_pattern="%e-%s.core"
> >
> > I'm a little confused: what do you mean by "making a *temporary*
> > change" (i.e., where does "temporary" come into it)?
> >
> > Thanks,
> >
> > Michael
> >
>
> As I understood, this core pattern is set until reboot.

Okay, now I understand. Next question: what's the value in having the
signal number in the filename?

Thanks,

Michael



-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
