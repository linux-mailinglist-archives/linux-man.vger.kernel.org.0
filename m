Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0A35C209A59
	for <lists+linux-man@lfdr.de>; Thu, 25 Jun 2020 09:12:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2389406AbgFYHMT (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 25 Jun 2020 03:12:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35864 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726149AbgFYHMQ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 25 Jun 2020 03:12:16 -0400
Received: from mail-ej1-x642.google.com (mail-ej1-x642.google.com [IPv6:2a00:1450:4864:20::642])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 544E2C061573
        for <linux-man@vger.kernel.org>; Thu, 25 Jun 2020 00:12:16 -0700 (PDT)
Received: by mail-ej1-x642.google.com with SMTP id dp18so4883325ejc.8
        for <linux-man@vger.kernel.org>; Thu, 25 Jun 2020 00:12:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc;
        bh=JRCIC/fg75rQ/h+hBvabrPZGUz1sF08mHJuaEDDHGoE=;
        b=OaClEU3yXZttVCP3cYBYCrvMe+NDYahR/trCsmcd8tuWgc7oPrU1WMHU82H0m8xEs+
         T13SnqAlitOPMD9Ca5kk3XWluxQDL0E7NpCk6vwufFow1YtJBdGMKrNFWY94j+NAuZCk
         VcQJygF2MFA4u0prr9+mEKPkWoEDXEEpflRrhqJrLYeC04OXsFTxuhHCEwIomey8KYyx
         fG9KHJUbKA5LZFNoCcmqe36MdqNrC7rbQEVa8z96hQbGiMRT+hxh0IVnIyuydvdWrmRS
         UpPFHsLedD2jereN6iz79u1S4WsfLY4t4tEy/Cflfr/uHXTk0n4ycb/SKyz3ebZtio9t
         4vEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc;
        bh=JRCIC/fg75rQ/h+hBvabrPZGUz1sF08mHJuaEDDHGoE=;
        b=NrCzZ5wpLrdb3DO2SDqiAd4qjZmFW6Ej47rzBcoFCwGsZGeR3VZ+GjOYkc+lQmhzwc
         dBls9tnE2bt3NJWFGP3LkNnii9LqUs9yKUtsXXjFfAyKt7GG35QXAbqmaewfS0LPtSXn
         hzDJEJsWaZ4gfovFrD3sd7VyjtF8QG3Pdpwu3ONJG6JD4HkgiP8rHyGJmtzUdziF7Uv+
         rrM4vZzz9QHA98C2+chWbo3R67kL4egAXy5A7k5gbI4ayy5y5nVgJVs+8YgAAMcrhhFY
         qQMT9d/ytYTDMh4s26celGRoQMADtfVHHbexrifHcDcZvGqYuytjIre8GbB297Yz12qQ
         z1Qg==
X-Gm-Message-State: AOAM531NvGk4Ug/NF8i/2AoEr8dSo9rZug4qxkr7DSFX7kObmX1agKvh
        rLQf69wQPIpWBIipa8HOPE39BmMqovfu8FiS4AXKma34
X-Google-Smtp-Source: ABdhPJwwnVuW4cIvvxmr+U2BfzXu5509J00AQ0RNUtU3LRALz0x8rNPNOYW8eGT+0n7uFT/QeA+4pwDOurMU1w4AbP4=
X-Received: by 2002:a17:907:9495:: with SMTP id dm21mr28051282ejc.357.1593069135024;
 Thu, 25 Jun 2020 00:12:15 -0700 (PDT)
MIME-Version: 1.0
References: <5d5d6c55-8736-0eec-aaa4-7ec86f925109@jguk.org>
 <CAKgNAkgxGJad18cAJ53eHAow=nJo6bvpAdLUVGA4+vcjZ11FdA@mail.gmail.com> <3e87db0e-f7e2-d47f-2a91-e110ffaf343e@jguk.org>
In-Reply-To: <3e87db0e-f7e2-d47f-2a91-e110ffaf343e@jguk.org>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Thu, 25 Jun 2020 09:12:04 +0200
Message-ID: <CAKgNAkjNz-Jk4qXjob2Sbwh8f=H=1nh6bzBdm49tuNJO8N_=aQ@mail.gmail.com>
Subject: Re: cfree
To:     Jonny Grant <jg@jguk.org>
Cc:     linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Wed, 24 Jun 2020 at 16:46, Jonny Grant <jg@jguk.org> wrote:
>
>
>
> On 24/06/2020 09:09, Michael Kerrisk (man-pages) wrote:
> > On Tue, 23 Jun 2020 at 17:10, Jonny Grant <jg@jguk.org> wrote:
> >>
> >> Hello
> >> Is it time to remove this old man page? it's two years since it was removed from glibc
> >>
> >> 2017-08-02: glibc 2.26 released
> >>
> >> https://man7.org/linux/man-pages/man3/cfree.3.html
> >
> > The general philosophy is to maintain historical info in man-pages,
> > since new manual pages may be installed on an old system. Also, people
> > may need to look at old code, and understand what it does.
>
> Fair enough.
>
> Although I would imagine anyone trying to use a function called cfree() would already understand they should use free()
>
> Could the key point that cfree() is deprecated and removed be highlighted at the top of the man page?
>
> I'd be temped to just have :-
>
>
> DEPRECATED
>        This function should not be used, it was non-standard and removed in glibc version 2.26 2017-08-02.
>
> NAME
>        cfree - free allocated memory

I think the existing first sentence of DESCRIPTION suffices.

Thanks,

Michael

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
