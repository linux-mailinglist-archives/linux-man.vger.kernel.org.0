Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0791322D989
	for <lists+linux-man@lfdr.de>; Sat, 25 Jul 2020 21:15:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726681AbgGYTP5 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 25 Jul 2020 15:15:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60434 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726381AbgGYTP4 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 25 Jul 2020 15:15:56 -0400
Received: from mail-oo1-xc41.google.com (mail-oo1-xc41.google.com [IPv6:2607:f8b0:4864:20::c41])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A49D3C08C5C0
        for <linux-man@vger.kernel.org>; Sat, 25 Jul 2020 12:15:56 -0700 (PDT)
Received: by mail-oo1-xc41.google.com with SMTP id w1so2451195ooj.2
        for <linux-man@vger.kernel.org>; Sat, 25 Jul 2020 12:15:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc;
        bh=6Z28/vuPCvGoKNZi//miVGoX48KcWlmHPNbIeWlw7ZA=;
        b=qENK7WTizKyf7C4BpQZsy6jzHi2XtQZ3OBGvztDUbWKQn4VNWrVvdCoOTpDewMnmlv
         yuwvZjBWrNHjLYvvH552p9wugEshiE8Memnl+cDVddHFwR/DvR10YCZlMUM81CCksOFP
         0KVIV3awNXmJ4GO05nVuSU1zt4odw75cAlybKcK2OOJB+Q3RigX+xV2m29crJpUKpmUw
         mv6vatQCKRW/euUJr523Rbq1SpOw3kSpUJBtq9IJx/0ITxhBGnhO439BLaiORKBRGaCT
         1r6KxVHpw730Ji0wiyy85K6jnY7zF6cM1UEZlzSZAvq9cjOzGJ43DRFVu7XDpka7qvHs
         at4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc;
        bh=6Z28/vuPCvGoKNZi//miVGoX48KcWlmHPNbIeWlw7ZA=;
        b=DsHTzpMKBDFQuQtXbBOjC8lv6S8Qqq3mw7bkxoz7lfqTLSJwywAIcmkBIB8Ex/AhE0
         ulK1A5Y/8lq0lLMtjvP6nTTYzZU7OXPESmVYAedShBXUOR4FkFA7SmcL1C4E7lYKI0BR
         EoJbXfPh+xwjur7y8v1/OjGOt25JgoMitr5hXgKNKyp/uHSjEiUy5xUOXmEGZOneAJSS
         yoC1R42LFclT1ArQL4Ni+PQUd7Gj4cmkXinIVrjME6HPtadoR6myB6rVLFpF6eAz4MCL
         nmLjKXROdBsGBzVS+Xt2zmQ4O//MGMwhTxB474oHlphqzxAJYjS7IT7i1iHj+mV0qQqk
         E1Ow==
X-Gm-Message-State: AOAM5328YvPLj9aeOEQSqoFDXWdrCTPcyZeCBNxqbiGaLGXklpZX2Pvg
        b/qkFrfGrtJKlIQBLgPOds+EHvUjlivVw6I1Ahw=
X-Google-Smtp-Source: ABdhPJx0VLK7BaUtxgWrUZoJ3FtQfh13ZChPupVtYenepJUXvkahv9Lo9j8+we+50B96l4/x21Y+c7MicjYA+I7+88w=
X-Received: by 2002:a4a:d988:: with SMTP id k8mr7477354oou.14.1595704555793;
 Sat, 25 Jul 2020 12:15:55 -0700 (PDT)
MIME-Version: 1.0
References: <581130f1-f6eb-5845-40e1-220f7edae526@gmail.com>
In-Reply-To: <581130f1-f6eb-5845-40e1-220f7edae526@gmail.com>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Sat, 25 Jul 2020 21:15:44 +0200
Message-ID: <CAKgNAkiCbfZjjTGp6Dy02ejMKRz5+NbKeNN8Et9yW8yvSbuVhA@mail.gmail.com>
Subject: Re: queue.3: Document CIRCLEQ_ macros
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Alejandro

On Sat, 25 Jul 2020 at 12:13, Alejandro Colomar <colomar.6.4.3@gmail.com> wrote:
>
> Hi all,
>
> I'm going to use CIRCLEQ and I found out that it's undocumented.  I'm
> going to document it in queue.3 and I would like to know if someone is
> already working on that to not duplicate efforts.

No one is working on this, so it would be great if you could document CIRCLEQ.

Thanks,

Michael

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
