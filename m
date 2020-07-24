Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8ED0522C2DC
	for <lists+linux-man@lfdr.de>; Fri, 24 Jul 2020 12:13:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726892AbgGXKNq (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 24 Jul 2020 06:13:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35280 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727808AbgGXKNp (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 24 Jul 2020 06:13:45 -0400
Received: from mail-oo1-xc41.google.com (mail-oo1-xc41.google.com [IPv6:2607:f8b0:4864:20::c41])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CAF4EC0619D3
        for <linux-man@vger.kernel.org>; Fri, 24 Jul 2020 03:13:45 -0700 (PDT)
Received: by mail-oo1-xc41.google.com with SMTP id o36so1686419ooi.11
        for <linux-man@vger.kernel.org>; Fri, 24 Jul 2020 03:13:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc;
        bh=37LF4If0zQNvAMNurj0rHBEzT6s1sGcntldhSyGL+Is=;
        b=LJ6K15P7YpeBJtjLk7pLFWCZq4C4Uq/3kBcsrFVZpARDP+GfGbpNz3H37mjweSUuIT
         q9AMY4VqcBjdKaWhVpFFZNJZ/HIPaTXZBytdLh7DlVyKS9cBOAAd5zmKEnZaneiVwY34
         sx1w4JtthwlqxduTzRl8CD1d7iMUkhTMec/GozFV8q1aVBYeTiHIkt/L2biCPwza8Wed
         My7zdR+uPgdN8eayKcteQNs3l5jQNmJbJ3M3BAA9YO2l+JBHSTr7dDLeRnb3j+gyS9R5
         9Ne0bMeDQQQg1j+IthbUyr5Qh/hgmSPCVnpfEzG5uXngWewm/cAq7ZyF4CeYoV/Rk2BR
         Pr/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc;
        bh=37LF4If0zQNvAMNurj0rHBEzT6s1sGcntldhSyGL+Is=;
        b=QSsViqOkGgW/g4LdUmhQIxyUpxwUKaogio0H+f1TP0zRXRLlv5MeTYmBe7tIDlZEHj
         U1pLx+o+CthAMciLD9m6D0Ou1/hftA6hPeJbWqSv+/FHzmATLAZFGaEMHEW0fM5onYi5
         phK63+IapCzJ4ls2eVNPH8uEgnrC4lTFu7srQCPY20rkkX+JhJuNp+jQV24bTPPeGCoU
         b27ehtRFf0XLJbH/I9kID4C1vuKAzlEpg5xdwlJbb868Ww2Tbw7JFUVXBr/ySYowzYIo
         5DxB8wGD3EOIiTjC5giPJyJUvOO95+a+cDD5pK7rNjv15H1N/v8gT1Iqjl3xyFhQlysf
         Gsag==
X-Gm-Message-State: AOAM532BK5AeofRN6lS6zNN5RCvgNXOdrLe76ebwqRTsQoadtWSJ1nzt
        9A/Rg4giNhp05qSMWQwVipbR1SGqV/Y+O5p18Aw=
X-Google-Smtp-Source: ABdhPJxTt5Nft650xmANUY+3791acf5P0FyTYrg0DlAXguN3oTP4E9WGXvhHO7SPzFXmVysyqHRgE28poT5QacvU/TE=
X-Received: by 2002:a4a:ba8b:: with SMTP id d11mr8667572oop.80.1595585625041;
 Fri, 24 Jul 2020 03:13:45 -0700 (PDT)
MIME-Version: 1.0
References: <20200723215333.13779-1-vapier@gentoo.org> <20200724000315.yx5otylik6oqqy6d@localhost.localdomain>
In-Reply-To: <20200724000315.yx5otylik6oqqy6d@localhost.localdomain>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Fri, 24 Jul 2020 12:13:33 +0200
Message-ID: <CAKgNAkjwwxrM_ry-b1rtrVc8YjfNE=p4iAht85P+mBs6Eq0U-w@mail.gmail.com>
Subject: Re: [PATCH] drop spurious t comment header
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Branden, Mike,

On Fri, 24 Jul 2020 at 02:03, G. Branden Robinson
<g.branden.robinson@gmail.com> wrote:
>
> At 2020-07-23T17:53:33-0400, Mike Frysinger wrote:
> > From: Mike Frysinger <vapier@chromium.org>
> >
> > A bunch of pages have this random comment at the start of its header,
> > but most do not.  Just trim it everywhere.
>
> It's pretty misleading to call it "random";

(True.)

> it is a hint to the man
> program to preprocess the man page text through tbl.

Yes, that's my understanding. But I believe that these days it's no
longer needed(?). tbl(1) just gets used as needed, regardless of the
presence of the 't' comment, right?

> This is documented in subsection "Interaction with preprocessors" of
> groff_man(5).
>
> The patch itself might be fine; the first couple of pages it alters
> indeed use no tables, according to the check I ran:
>         grep -l '^\.\s*TS' man[1-8]/*
>
> ...but the comment is certainly not meaningless noise, which is what
> "random" suggests, and I would not characterize the change this in a
> commit message.

See my comments above. For 15 years or at least, I've not paid any
attention to adding the 't' comments when I added tables to pages, and
I do recall anyone reporting ill effects. So, I'm inclined to apply
Mike's patch, but will hold off a moment, in case there's other
feedback.

Cheers,

Michael

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
