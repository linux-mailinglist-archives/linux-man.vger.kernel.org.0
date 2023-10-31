Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 62CDD7DD165
	for <lists+linux-man@lfdr.de>; Tue, 31 Oct 2023 17:20:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1344895AbjJaQUM (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 31 Oct 2023 12:20:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42350 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1344890AbjJaQUM (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 31 Oct 2023 12:20:12 -0400
Received: from mail-ua1-x934.google.com (mail-ua1-x934.google.com [IPv6:2607:f8b0:4864:20::934])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 31C05DF
        for <linux-man@vger.kernel.org>; Tue, 31 Oct 2023 09:20:09 -0700 (PDT)
Received: by mail-ua1-x934.google.com with SMTP id a1e0cc1a2514c-7b610279c8aso2486913241.3
        for <linux-man@vger.kernel.org>; Tue, 31 Oct 2023 09:20:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1698769208; x=1699374008; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=aKGP2HhDsX4WmovGU/kCjAFFr1R6bRo2TQ+pDSfQ4X0=;
        b=Xlv/9Lh6LEaifns9/RFNMX3GOS14b0rWUx+k6x4EFcjgZrnVEq9Xu/9y17UCQZKPxl
         5dwALcaUdbsul1Eiw8rDfgFmzHkogNc2onX/wFfVozynttHk1IrwkfiZiA1yroj58n5n
         Xjt3WitAzQ/pQPPyAhLeMal80bqmPzDYBTPYjt7q21dBBRaZdBAha7Oo+WgJG1WY6LT6
         FAICYOlcR+zqH8S7vS4+kBOz4T+LzK/JCxcz9+33tf0HCswQByo0egtAwXtQxuZbgJQE
         Xnl7qdcMkyE9A0FQzbYsnNTEAMT0DTeUPs4J12W6Ah+efUoQ8lr7pSNIbKXAG8uRWwNz
         y9kQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698769208; x=1699374008;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=aKGP2HhDsX4WmovGU/kCjAFFr1R6bRo2TQ+pDSfQ4X0=;
        b=aJB5XoU9EMbeEuLMx+AIMk0Z3SGq13Cc2JK4U2l7nHrH5OoxfpkZyh8jZVi4lAJH4s
         KeVXj+ilvv5pBxzs8ZghneL3H/QleA/YyHPrxRzh2llkI2dF3zK3NmCYhVLjVnOdVCNO
         SqU2Ef2+yw97B1bWJ5ZNr36ikParogcqqh/mDvf9uXLECiqvKff2v0xRrej/qUlJ7BZ1
         Xj2p7pPQRklJTfwh1TgJRap53FHp0MADu1QmvtXjxYnBBBdaa62YbH8UygZDS34GocHc
         62k3+/ConQP8eSbvPlUNBVqJBy/MZhA70nHUVnUgpfw3JUmSqVJqRCGhsH+HN4x2YkuV
         YM1A==
X-Gm-Message-State: AOJu0YxiGiwYiTwPTjbn0AyB7XcjYBRjjRj61Lmh4V7QmhM9vW1wq1hU
        F1QVj/yKVxaH/wt8poxFjY+KMPSy97x/tXTjPZpeGClh8aaAViAImPmgbw==
X-Google-Smtp-Source: AGHT+IG2sqqhoB4K75mb+suwS+zAL1X8ulFktyUTq8OWeR9O7LqanzkHrCjP9tbIjVJh7Z65d+5CRWgkJgc/L3vNiLk=
X-Received: by 2002:a67:ac48:0:b0:457:bf8e:c53c with SMTP id
 n8-20020a67ac48000000b00457bf8ec53cmr12556142vsh.27.1698769208046; Tue, 31
 Oct 2023 09:20:08 -0700 (PDT)
MIME-Version: 1.0
References: <4678853.9Mp67QZiUf@nimes> <ZUD12kxqzd0PsT_E@debian>
 <CACKs7VCi-MZfrhPLGqPDz71ciTBkKGriMwJQAy16WoP--P6=QQ@mail.gmail.com> <ZUEnQmDDLwwfCd_g@debian>
In-Reply-To: <ZUEnQmDDLwwfCd_g@debian>
From:   enh <enh@google.com>
Date:   Tue, 31 Oct 2023 09:19:56 -0700
Message-ID: <CAJgzZorygh1++Nk3b+t_DhiROL5PQAme+H-ZaKjW9oscu2=LSg@mail.gmail.com>
Subject: Re: [PATCH] prctl.2: Fix typo
To:     Alejandro Colomar <alx@kernel.org>
Cc:     Stefan Puiu <stefan.puiu@gmail.com>,
        Bruno Haible <bruno@clisp.org>, linux-man@vger.kernel.org,
        GNU C Library <libc-alpha@sourceware.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-17.6 required=5.0 tests=BAYES_00,DKIMWL_WL_MED,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        ENV_AND_HDR_SPF_MATCH,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE,USER_IN_DEF_DKIM_WL,USER_IN_DEF_SPF_WL
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Tue, Oct 31, 2023 at 9:12=E2=80=AFAM Alejandro Colomar <alx@kernel.org> =
wrote:
>
> Hi Stefan,
>
> On Tue, Oct 31, 2023 at 04:31:58PM +0200, Stefan Puiu wrote:
> > Hi Alex and Bruno,
> >
> > On Tue, Oct 31, 2023 at 4:06=E2=80=AFPM Alejandro Colomar <alx@kernel.o=
rg> wrote:
> > >
> > > Hi Bruno,
> > >
> > > On Sun, Oct 29, 2023 at 09:51:55PM +0100, Bruno Haible wrote:
> > > > The synopsis of the prctl.2 page has:
> > > >
> > > >        int prctl(int option, ...
> > > >
> > > > This makes no sense, because
> > > >   - the first argument is not optional; it is mandatory.
> > > >   - the title of the page is "operations on a process or thread".
> > > >
> > > > It is thus clear that the first argument indicates the operation to=
 perform.
> > > >
> > > > Find attached the correction.
> > >
> > > Agree.  I've seen there are other similarly incorrect uses of the wor=
d
> > > "option" where "operation" should have been used in the same page (bu=
t
> > > there are some that are correctly used).  Would you mind checking the
> > > entire page for those other replacements?
> >
> > Hmm, 'option' is not the same as 'optional'. I guess the first
>
> Yes, I don't think it means optional, but rather a choice from all the
> available operations.  However, "operation" would be a more precise
> name.
>
> > parameter can be seen as an 'option' passed to prctl() along with some
> > other parameters, right?
> >
> > Also, there are multiple occurrences of 'option' in the page (e.g.
> > 'This option is mainly intended...'), so only changing the argument
> > name would introduce an inconsistency in the page. The argument is
>
> Yes, I think we should also update those when they refer to the first
> argument, that is, the operation that prctl(2) will perform.
>
> > also called '__option' in glibc headers on my system (in
> > /usr/include/x86_64-linux-gnu/sys/prctl.h):
> >
> > /* Control process execution.  */
> > #ifndef __USE_TIME_BITS64
> > extern int prctl (int __option, ...) __THROW;
> > #else
> > # ifdef __REDIRECT
> > extern int __REDIRECT_NTH (prctl, (int __option, ...), __prctl_time64);
>
> I've CCed glibc in case they want to rename it too.
>
> >
> > So, I would say I'm not sure this improves things.
>
> I think a consistent use of operation instead of option would improve
> things.  We just need to make sure it's consistent.

i certainly like that idea philosophically --- i actually tried to use
the minimal number of different words when naming arguments in
bionic's headers, to minimize the number of words folks who don't
speak english would need to learn.

looking at man7, i note that ioctl() and ptrace() have "request".
fcntl() has "command". flock() has "operation".

> Cheers,
> Alex
>
> >
> > Just my 2 cents,
> > Stefan.
>
> --
> <https://www.alejandro-colomar.es/>
