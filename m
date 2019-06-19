Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 85DBC4C13A
	for <lists+linux-man@lfdr.de>; Wed, 19 Jun 2019 21:10:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726265AbfFSTKm (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 19 Jun 2019 15:10:42 -0400
Received: from mail-ed1-f65.google.com ([209.85.208.65]:34524 "EHLO
        mail-ed1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727068AbfFSTKl (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 19 Jun 2019 15:10:41 -0400
Received: by mail-ed1-f65.google.com with SMTP id s49so889849edb.1
        for <linux-man@vger.kernel.org>; Wed, 19 Jun 2019 12:10:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc;
        bh=JBD6TUH3KaSP2IowqNiaG7Ez2AdMIy/k8z3S8iCVd0g=;
        b=eNwC8c7bq6UiGfmkQHWpDqMtPPMKaYzQckrgPou+GTntemG2QJTy3bu2HklwjVmf5V
         PGyAT6BDQ8j6Y4p1lsMS3pbN5K889VtROiLIxMlS9EY3w1DLS1tbNJ8K5tgJiay2Cb27
         WqUB8w9W2YpQ7YiWaTEObVePL+EWD2PAYfXHxORyVsyDHpQsZhFQ6Et+QcWqcBZgBiJ3
         +ueSjU8lgkjS40arHRha1G5cKqjlLjbVDjV09KAZobdYiZottnywI72UF+97acCFEEqE
         oKSLs/OWHmpbSlMyrEAitN6jjqVT3NZEM8MHTR5k3d+gmG9BVNWGeaJnVLiWvn+vQA0c
         oC2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc;
        bh=JBD6TUH3KaSP2IowqNiaG7Ez2AdMIy/k8z3S8iCVd0g=;
        b=i5+pndn3Q5RwmOUODIlkll/ST032ePN9oj7stEMT5uHPHTQL3rAk5ojfNU9PeNMKhQ
         PrW3mDEhLL8hIfTslqvOV2dYpkfavdgrFqGuxVHNa4uOCdGXjF8TsvowOyilOwWPXsz8
         q+ML3TU4sNcS6/xllyxNJVNdGzSOurwVLIlQ1h8Sr5earyS2hxQFMjCzArEnc1htc1N+
         bNOhlWOiLXJQ0CXGyV1XPMXZXCC+vX9fyfSiKOeAT+CkIv1nWeRzf2gI0YSCv2g1TUEk
         UiQL+xNcUMjdWvbTURW8HXVdIIMz4rblb/24aUCL6M2dbVmA08J8FzLrBmooqq+lX18z
         y2jA==
X-Gm-Message-State: APjAAAWX3/nnEqwU9nM7zj/zKH5wA2G/jE2pHNJnfJs4nWtTB2KnkCSQ
        8oNo6H7jWEkOdDR3+asY4IyGdEb5sCYCU6PFY0g=
X-Google-Smtp-Source: APXvYqzGweBR44IIt187RJP7/ZNJmljF4n4n3OBID+voJDu8ROZC1x3+mgx74MtoO1gb0SZVt/Arzm6zdGmyPTSkSaE=
X-Received: by 2002:a17:906:644c:: with SMTP id l12mr57194289ejn.199.1560971439158;
 Wed, 19 Jun 2019 12:10:39 -0700 (PDT)
MIME-Version: 1.0
References: <20190321232349.20023-1-shawn@git.icu> <CACGkJdtsNSii+=H4zryATJJvNmQZdJrpDBnNAbYRW8wNxsXy1g@mail.gmail.com>
In-Reply-To: <CACGkJdtsNSii+=H4zryATJJvNmQZdJrpDBnNAbYRW8wNxsXy1g@mail.gmail.com>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Wed, 19 Jun 2019 21:10:27 +0200
Message-ID: <CAKgNAkgQ75TTV6ASxuQz4pqXZrmZW7NGEEP76qc7rWO1ak84yw@mail.gmail.com>
Subject: Re: [PATCH] execve.2: add more detail about Shebangs
To:     Eugene Syromyatnikov <evgsyr@gmail.com>
Cc:     Shawn Landden <shawn@git.icu>,
        linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Eugene,

On Fri, 22 Mar 2019 at 01:04, Eugene Syromyatnikov <evgsyr@gmail.com> wrote:
>
> On Fri, Mar 22, 2019 at 12:24 AM Shawn Landden <shawn@git.icu> wrote:
> >
> > Signed-off-by: Shawn Landden <shawn@git.icu>
> > ---
> >  man2/execve.2 | 8 ++++++++
> >  1 file changed, 8 insertions(+)
> >
> > diff --git a/man2/execve.2 b/man2/execve.2
> > index a052f34b0..c363214c0 100644
> > --- a/man2/execve.2
> > +++ b/man2/execve.2
> > @@ -336,6 +336,14 @@ For portable use,
> >  should either be absent, or be specified as a single word (i.e., it
> >  should not contain white space); see NOTES below.
> >  .PP
> > +The maximum length of the shebang line is 128 bytes,
> This is already documented with the phrase "A maximum line length of
> 127 characters is allowed for the first line in an interpreter
> script".
>
> Moreover, this is likely going to change in Linux 5.1, due to the
> commit v5.1-rc1~118^2~33 ("exec: increase BINPRM_BUF_SIZE to 256").

Thanks. I've just added documentation of this change to the execve(2) page.

Cheers,

Michael
