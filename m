Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 09CCB708C47
	for <lists+linux-man@lfdr.de>; Fri, 19 May 2023 01:31:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229600AbjERXa7 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 18 May 2023 19:30:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39464 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229539AbjERXa6 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 18 May 2023 19:30:58 -0400
Received: from mail-qk1-x730.google.com (mail-qk1-x730.google.com [IPv6:2607:f8b0:4864:20::730])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EC78FE66
        for <linux-man@vger.kernel.org>; Thu, 18 May 2023 16:30:56 -0700 (PDT)
Received: by mail-qk1-x730.google.com with SMTP id af79cd13be357-759219bed84so144665785a.0
        for <linux-man@vger.kernel.org>; Thu, 18 May 2023 16:30:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20221208; t=1684452656; x=1687044656;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZaTIPQCHf45qhEihTGeRl1+eo4gmmOHxg1PZSyZbbJU=;
        b=nENehHBNuLkN4AoGdY4990EUYKPPX2SJhTz0MwyrV9dRnuAiiDYZCLzeNmckleE2Oo
         6H9Ukj+VAsNhYj46QXsUX9q5rzDuHzkTxkP7lbG+NzirwE4XgStYnWSRBp8W/FWBcEvC
         0/4XMAtbb/wj+2N5aYUiK8H+e3FnPptwQZZArIYx4QR8tDVMrn8sI9w6VYhJJU3agSDC
         Zw1l7/1/tkG4ajs1+fLghNANTUVYiWZcX5idgiV8wl9QGyTV2wPGBGbcOh6MfCR0m+Q4
         8/sSQ8mthigf8v5GlDG5/JIBKtOr25atDeBQHwT4DFOQJaS8CoYODaIyS+n6uEIkAPDc
         IGYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684452656; x=1687044656;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZaTIPQCHf45qhEihTGeRl1+eo4gmmOHxg1PZSyZbbJU=;
        b=GChQaXX/FR60mng+B+RrIsG08kL+OKdZIwZi+0ym6B6kSimwHO0tZQWwYlTAUzK3f1
         xO+Gip1uLigl5xZMMprcQgXylT218sIVwL54CAhll7E3+F6imwMpJUAD97fj3kNmvdc4
         N0kp5n+rNi97gKqY2Qy+JxiqxQCVd28eXR2hmH7QWDxy5o2ekWYM6/xysOFe293x6c8J
         Gi6rE//iJQcQpcPz4hLFbdoDGXnTEDdSqa5ol0Hb6XQ9DmoB5nwyLvIU2x/X0pIF8znV
         Ea6no9iLio58f8W9VNVjbFu1yIPu4ABaOv0akWDKanGjznFIzifmGnxpb3LKY5GHd20X
         Z9lw==
X-Gm-Message-State: AC+VfDxLN2jL+lIs77NDZUvk+ZSPjr/QoSZnGbpSxhPpjzvTvA+qajmY
        z3vQ2RYz5eyf0d5MCVH/pSTz0PSQbw6we+ljxoj8XQ==
X-Google-Smtp-Source: ACHHUZ6zjS1ph4NpKWzs6Wkmk5ScqoXTnf4OniqcP8809J4i758N5XM0/xbYWwej0Gm2aoNZdSnQIpy0YHdm1XojLr0=
X-Received: by 2002:a05:6214:e4c:b0:621:2478:f75a with SMTP id
 o12-20020a0562140e4c00b006212478f75amr1474737qvc.45.1684452655954; Thu, 18
 May 2023 16:30:55 -0700 (PDT)
MIME-Version: 1.0
References: <CAELULbeXgZWn+Nw_rpUzkGgNCtb7oFf1+JS=KnNVuLhcF5Vabg@mail.gmail.com>
 <CAELULbf=z2WWpHm5QDTK81oWTC9zMZJg2MA69mjOorJQ5QAzGw@mail.gmail.com>
In-Reply-To: <CAELULbf=z2WWpHm5QDTK81oWTC9zMZJg2MA69mjOorJQ5QAzGw@mail.gmail.com>
From:   enh <enh@google.com>
Date:   Thu, 18 May 2023 16:30:44 -0700
Message-ID: <CAJgzZopuptYOKHQ32-mau9gzwaWOmRtTACqdmfZvox=c2itp7w@mail.gmail.com>
Subject: Re: [PATCH] Fix the man page
To:     Zijun Zhao <zijunzhao@google.com>
Cc:     alx@kernel.org, linux-man@vger.kernel.org
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

should probably remove the "The compilation warning looks to be going
away in glibc 2.17 see glibc commit
4b7634a5e03b0da6f8875de9d3f74c1cf6f2a6e8" above, since this patch
fixes that, but leave the FIXME because it looks like there are more
FIXMEs below?


On Thu, May 18, 2023 at 4:27=E2=80=AFPM Zijun Zhao <zijunzhao@google.com> w=
rote:
>
> Hi there,
>   We are annotating settimeofday(), gettimeofday() and we will make tv
> Nonnull if compilation warnings will
>
> result. But after checking
> https://elixir.bootlin.com/linux/latest/source/kernel/time/time.c#L199
> nd https://elixir.bootlin.com/linux/latest/source/kernel/time/time.c#L224=
,
>
> we think tv is okay to be nullable. So we make the fix to make it more cl=
ear.
>
> Best,
>
> Zijun Zhao
