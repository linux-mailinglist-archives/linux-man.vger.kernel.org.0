Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 94998241C3B
	for <lists+linux-man@lfdr.de>; Tue, 11 Aug 2020 16:20:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728788AbgHKOUO (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 11 Aug 2020 10:20:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49334 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728516AbgHKOUN (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 11 Aug 2020 10:20:13 -0400
Received: from mail-ej1-x644.google.com (mail-ej1-x644.google.com [IPv6:2a00:1450:4864:20::644])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E089DC06174A
        for <linux-man@vger.kernel.org>; Tue, 11 Aug 2020 07:20:12 -0700 (PDT)
Received: by mail-ej1-x644.google.com with SMTP id t10so8923716ejs.8
        for <linux-man@vger.kernel.org>; Tue, 11 Aug 2020 07:20:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=VtVNUXL/pcdG1uzLUlw0dL+8bXGpofZHcxiTfjeo5mY=;
        b=mTcI9lNn7p4ScJNSgzMtlrYCH/QfMpo6KStZwWtrFavM2PdimJaoRX93OPFK1vDG1H
         WUIet6D6Bt9fzbIr1t3J5qgGEMGMywZQwsD01mQ2HRCvFFBrtJbf70V3HvGp6ja+KSoS
         MUJldwWFBHIThsEakVZsLP0wDVXbVIyXnL/cHyLhXtT+vcsImathZ0/E9JoReKU+ys1q
         9FgGciEB79zHVeo8kWYiwLLNSohRlu6G2ckqwnv1WdORZ60PAfXLm6+F58tjtpD2PLrR
         5WK5nDzV0CT1HFilcSV2za5+myvbqmlX5ED3ooQEJPNNtOBXtr3UxADboS7oE1nMeBUw
         hBIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=VtVNUXL/pcdG1uzLUlw0dL+8bXGpofZHcxiTfjeo5mY=;
        b=TZS42YRov7j6sQvnv3A8zrllz5KM+a8t+vjkML9nOQLoaj1bWrg+dFTqCulcCGGM9f
         l37nDzTmXg/D3oIvBDw+ioFSPwhFCivbZHuVAzxaLQSXM9KHNKoSEpm7L3u2ydsZRfw2
         kBXgBN/8lm8KmKmbvIx/MgOQQ9SNEdbGIkdDcXuqGgM50P5VPKK6QMmE/swexvki1SPf
         0IbMPEkBZNoxjyOk/WXRXCdUi4uuMvcieGdvFHVlMNlv0shPOLDL5HacPxC8mPfnZImU
         NoieUp00irfr3punyx4CJzyenxMJV5DcfgHCb9DUb3k5QWbU0gcu2b1GwYVXuz6W2186
         mwjg==
X-Gm-Message-State: AOAM532z/rxfHsL0RSC0018+KsEddGvpJ6TpGfQtRl21QZ/JuZq3vrth
        X+0BWygG0OzLAKXZSs9F+eognTW8ucRdrvlJ5Fuqv3JWmDc=
X-Google-Smtp-Source: ABdhPJzGr3Ua/nn4H6XA11I12hDbLwgfj64UyuqIyfU/w9K3LJacuMx9/xLIRkhU7WmC61mHlpxKIjzV/buoa+DCo/I=
X-Received: by 2002:a17:907:20db:: with SMTP id qq27mr27739976ejb.550.1597155611674;
 Tue, 11 Aug 2020 07:20:11 -0700 (PDT)
MIME-Version: 1.0
References: <CALxWeYrisuzEPVEHOQSFJ8G_=8-VTAOTNBquyszOZMid7YfT=Q@mail.gmail.com>
 <6425d636-7f48-3a73-ef0e-7bb5b991360c@gmail.com> <20200810135821.GA11918@panix.com>
 <3ace6e62-d3cc-ef7b-56b2-9b6b5c724d5b@gmail.com> <20200811115121.GA29807@panix.com>
In-Reply-To: <20200811115121.GA29807@panix.com>
From:   Michael Kerrisk <mtk.manpages@gmail.com>
Date:   Tue, 11 Aug 2020 16:20:00 +0200
Message-ID: <CALxWeYo=h6D3GDrGVLER7amw8S1XoVq2KuDT9u_D=zV3oDreDg@mail.gmail.com>
Subject: Re: Pseudoterminal terminology in POSIX
To:     Thor Lancelot Simon <tls@netbsd.org>
Cc:     Larry Dwyer <larryd.kbd@gmail.com>,
        Florian Weimer <fweimer@redhat.com>,
        linux-man <linux-man@vger.kernel.org>,
        Geoff Clare <gwc@opengroup.org>, austin-group-l@opengroup.org,
        Andrew Josey <ajosey@opengroup.org>,
        libc-alpha <libc-alpha@sourceware.org>,
        Elliot Hughes <enh@google.com>,
        Joseph Myers <joseph@codesourcery.com>
Content-Type: text/plain; charset="UTF-8"
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Tue, Aug 11, 2020 at 1:51 PM Thor Lancelot Simon via austin-group-l
at The Open Group <austin-group-l@opengroup.org> wrote:
>
> On Tue, Aug 11, 2020 at 10:31:58AM +0200, Michael Kerrisk (man-pages) wrote:
> > On 8/10/20 3:58 PM, Thor Lancelot Simon wrote:
> > > On Sat, Aug 08, 2020 at 04:18:10PM -0700, Larry Dwyer via austin-group-l at The Open Group wrote:
> > >> How about the "control" side and the "terminal" side (of the paired device
> > >> files)?
> > >
> > > How about the "pty side" and the "tty side"?  It seems hard to be more
> > > neutral than that and we can be sure there is no ambiguity.
> >
> > This is an option that came up in the glibc/Linux man-pages discussion.
> > My objection is that I want proper nouns that one can use in a prose
> > description of pseudoterminals.
>
> All names are proper nouns.
>
> They might not be the particular proper nouns that we're used to seeing,
> but they are still proper nouns!

Let me clarify then: my preference is to have natural language nouns,
words that a speaker who was unfamiliar with the domain would know (or
could reasonably guess) how to pronounce when reading them.

Thanks,

Michael
