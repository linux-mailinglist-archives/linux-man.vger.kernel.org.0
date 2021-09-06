Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 93F62401DD7
	for <lists+linux-man@lfdr.de>; Mon,  6 Sep 2021 17:54:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238788AbhIFPzi (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 6 Sep 2021 11:55:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51936 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231359AbhIFPzh (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 6 Sep 2021 11:55:37 -0400
Received: from mail-ed1-x535.google.com (mail-ed1-x535.google.com [IPv6:2a00:1450:4864:20::535])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9E101C061575
        for <linux-man@vger.kernel.org>; Mon,  6 Sep 2021 08:54:32 -0700 (PDT)
Received: by mail-ed1-x535.google.com with SMTP id r7so10054829edd.6
        for <linux-man@vger.kernel.org>; Mon, 06 Sep 2021 08:54:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=cs.unc.edu; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=san7qX0mbPUSg0vRLp8luTOwkDU+BxFwiNv8C0tOfrA=;
        b=ZkvL+DnKT/hBxUTRgxwgjvpU07driUUgekNeZ/lUL5yL2NgLOyLG+k2KjRXKdUoFQS
         OpERbL22x1pv+CA+C2XTHO290s6MdIcFWSlGT3jUm9uDpAZ3ZKe1IJqkw6fMbJLyinel
         p5rbLi0m/5lFyDK6Rqg18XRfkkXFYCIoJAWto=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=san7qX0mbPUSg0vRLp8luTOwkDU+BxFwiNv8C0tOfrA=;
        b=qA/CXr2kZD0wAn/o3vYo18Y6BWu71SK2M5ZBmsnTP0+MxXlFFXgTmjmnhOZVtLMofA
         kxysDDuE9anlKL6j9MQiPdTpjyQ0mLg11AXlD5pr2rLgwA4quaLTODbK+Khx/tUUcReg
         qf4lcFYzU2rUqoy6eFeN9eNdfQTUU6O7xfyQJO53IzFv6a6ueXNU5J0vnVuUveOHNO+t
         01cAdzIjgWXW69ZsZGgsxR0XNHMnY0ib1/UShzFDPduWL86nIL29GayqZQ2J6ePhLnmR
         GWf9Ffy9EViNVuOaOH/OSvfmnMzKVejSVlx4/m1OGLJBSkAWazSBDtSLWTI7gGdon/zu
         DFag==
X-Gm-Message-State: AOAM5306AduRg62J4gDmduG7jLAO3ry4eOxjug31wJwTATY1dgzL3pTL
        5SEU6rsyQT4/RyhP9FgUmIH8TdS8wJP6JCbM/a51qXzZl+Q=
X-Google-Smtp-Source: ABdhPJxdz5+nljFNIf3lvfaJFUUVzQ7l4oi6HqRx7UDaaeMOLRgvUJCCvu8a8DkWky7qT4DtjwR83X/IXACgRj4+ARk=
X-Received: by 2002:a05:6402:51d0:: with SMTP id r16mr13940462edd.98.1630943671218;
 Mon, 06 Sep 2021 08:54:31 -0700 (PDT)
MIME-Version: 1.0
References: <CAMGmevBaX-PAuNfN6fANjipxnMO9JmnKdjTxaRVWMM78zC3mCQ@mail.gmail.com>
 <CAKgNAkjDsKw1PgHhVZSVvtWuBQDyCrqhLq8HDWh9brLm4f0_Kw@mail.gmail.com>
In-Reply-To: <CAKgNAkjDsKw1PgHhVZSVvtWuBQDyCrqhLq8HDWh9brLm4f0_Kw@mail.gmail.com>
From:   Sagar Patel <sagarmp@cs.unc.edu>
Date:   Mon, 6 Sep 2021 11:54:19 -0400
Message-ID: <CAMGmevCS7SGkDDGJkHm7JzquZsUHzivG=Wuj7xJ4h-yYikfpFw@mail.gmail.com>
Subject: Re: Meaning of "Signed-off-by"
To:     mtk.manpages@gmail.com
Cc:     linux-man <linux-man@vger.kernel.org>,
        "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Thank you for the clarification, Micheal.

Would it be a good idea to add this information somewhere on the
website, or in the CONTRIBUTING file? I wasn't sure whether it was
implied that the kernel's DCO applied to this project as well.

=E2=80=94Sagar Patel

On Sun, Sep 5, 2021 at 3:47 PM Michael Kerrisk (man-pages)
<mtk.manpages@gmail.com> wrote:
>
> Hello Sagar
>
> On Sat, 4 Sept 2021 at 04:29, Sagar Patel <sagarmp@cs.unc.edu> wrote:
> >
> > Hello,
> >
> > Does the man-pages project define the meaning of the "Signed-off-by"
> > clause in a commit message? Per git-commit(1),
> >
> > > The meaning of a signoff depends on the project to which you're commi=
tting.
> >
> > But I couldn't find a reference to the meaning for man-pages. Is it
> > the same as the linux kernel [1]?
>
> The intention is that the meaning should be the same as for the kernel.
>
> Thanks,
>
> Michael
