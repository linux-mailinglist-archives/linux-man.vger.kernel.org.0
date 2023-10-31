Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 79FEE7DD699
	for <lists+linux-man@lfdr.de>; Tue, 31 Oct 2023 20:16:08 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231281AbjJaTQH (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 31 Oct 2023 15:16:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53488 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230078AbjJaTQG (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 31 Oct 2023 15:16:06 -0400
Received: from mail-oi1-x22a.google.com (mail-oi1-x22a.google.com [IPv6:2607:f8b0:4864:20::22a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5EA1C91
        for <linux-man@vger.kernel.org>; Tue, 31 Oct 2023 12:16:01 -0700 (PDT)
Received: by mail-oi1-x22a.google.com with SMTP id 5614622812f47-3b2e330033fso3550218b6e.3
        for <linux-man@vger.kernel.org>; Tue, 31 Oct 2023 12:16:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1698779760; x=1699384560; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CbPo9pLb94eBiO16qkaGzpFEjv61wlY/9XkgDruQ2lQ=;
        b=xit4sVDt/GaisaRVvyz94fWuYtUXa4WEqEBQu9TKVLknlDQW2dOPDQlvhMus7tqn68
         f/sBdZxJK1nsq45ARIoieyOblY7ZkO0CXp8Z2XvQW70MaC+lafDiE5LNG8+HXS3zgtbb
         ZPYyRFWFxrDtSMNtMo5zSX0VcLgI4sjTiP1fZfC3jFJMyW9sKRm8l8qp1LGFqOqM7xIg
         Xis+0tiXSxZRNmtyfy0BY9LLonOyD1kFkAZvEWxE/oIyv9kNTIbYBOWlZtMcAbEEOES4
         w1tBTbAmYHObJsuHlY9CpoHA7fIf1lPfnfFzuQh0LXGUr16hqQ2P72+OH2HB3TbPSMBB
         X1OA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698779760; x=1699384560;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=CbPo9pLb94eBiO16qkaGzpFEjv61wlY/9XkgDruQ2lQ=;
        b=ur2wu8RKr2hmTPJHFeCulm5nJ1GRrHF2bu9PVnZIGVoF7ttEx0Arynz7m6kviFFzx7
         0XnrgygwyDZUpfIq2yUWIxgPHOXpATD3wAosJBJLhcLNGINGzrFDH2FcAZKUy9RtKKre
         6zRHnsZleZil7l6tKeDqfJLJ+FhnD8t0aVNyFiGZiYxi1nbaHSHI6Lim4J+FqWrVEhGG
         N11OYUhdjL+LrFQQmQaLxA9EL1k4EQb18BRcwJ/Ea0q5l+qkPlzgyM9UfOlJG1Y81laR
         ufSbp19SsHdzkFhAbUwU4y0X4RhRW4scCHZqwZpng6whNHyx9DOn57u/6Yaf0mRchzlE
         Jvrw==
X-Gm-Message-State: AOJu0Yyb6SalLQT5TPLJJSVnMYDDl6CA0GLkjDE62ZaiA+Xiwgn9qHF7
        8D5CU7fevG1trshZbrcI6Sj4TpPXOtenrVdtDOtB3w==
X-Google-Smtp-Source: AGHT+IHjZBvR9Kw6wYPNF4h1yxq1FqR5y7ic2xKLmXumZnRA9grr1r0SfQrL/f9OlitluMq9uMTsR1NvnFxtxoe4PvM=
X-Received: by 2002:a05:6808:1311:b0:3a4:316c:8eeb with SMTP id
 y17-20020a056808131100b003a4316c8eebmr19109709oiv.40.1698779760470; Tue, 31
 Oct 2023 12:16:00 -0700 (PDT)
MIME-Version: 1.0
References: <4678853.9Mp67QZiUf@nimes> <ZUD12kxqzd0PsT_E@debian>
 <CACKs7VCi-MZfrhPLGqPDz71ciTBkKGriMwJQAy16WoP--P6=QQ@mail.gmail.com>
 <ZUEnQmDDLwwfCd_g@debian> <CAJgzZorygh1++Nk3b+t_DhiROL5PQAme+H-ZaKjW9oscu2=LSg@mail.gmail.com>
 <ZUFKMkXrsvahfK3k@debian>
In-Reply-To: <ZUFKMkXrsvahfK3k@debian>
From:   enh <enh@google.com>
Date:   Tue, 31 Oct 2023 12:15:43 -0700
Message-ID: <CAJgzZoo+szFoHqY-V+1Fuv0wp6tvGwwxsc0na89FYdqZ3Z7gfA@mail.gmail.com>
Subject: Re: [PATCH] prctl.2: Fix typo
To:     Alejandro Colomar <alx@kernel.org>
Cc:     Stefan Puiu <stefan.puiu@gmail.com>,
        Bruno Haible <bruno@clisp.org>, linux-man@vger.kernel.org,
        GNU C Library <libc-alpha@sourceware.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-17.6 required=5.0 tests=BAYES_00,DKIMWL_WL_MED,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        ENV_AND_HDR_SPF_MATCH,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE,USER_IN_DEF_DKIM_WL,USER_IN_DEF_SPF_WL
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Tue, Oct 31, 2023 at 11:40=E2=80=AFAM Alejandro Colomar <alx@kernel.org>=
 wrote:
>
> Hi Elliott,
>
> On Tue, Oct 31, 2023 at 09:19:56AM -0700, enh wrote:
> > > I think a consistent use of operation instead of option would improve
> > > things.  We just need to make sure it's consistent.
> >
> > i certainly like that idea philosophically --- i actually tried to use
> > the minimal number of different words when naming arguments in
> > bionic's headers, to minimize the number of words folks who don't
> > speak english would need to learn.
> >
> > looking at man7, i note that ioctl() and ptrace() have "request".
> > fcntl() has "command". flock() has "operation".
>
> Hmm, interesting.  I think operation would be the most accurate one.
> What do you think?  Should we uniformize by using operation in all three?

"operation" is certainly the most general, and i struggle to see any
value to the current wording --- it's not like any of them help the
reader know "what goes here" without accompanying documentation.

TL;DR: "yeah, if you change the man pages, i'll definitely change
Android's headers to simplify them in this way" (and i have no
particular opinion about _which_ word, and that sounds like a bikeshed
it's not worth going near :-) ).

> Cheers,
> Alex
>
> --
> <https://www.alejandro-colomar.es/>
