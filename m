Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3B3C926C8C6
	for <lists+linux-man@lfdr.de>; Wed, 16 Sep 2020 20:57:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727751AbgIPS4c (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 16 Sep 2020 14:56:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36512 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727658AbgIPRyS (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 16 Sep 2020 13:54:18 -0400
Received: from mail-oi1-x243.google.com (mail-oi1-x243.google.com [IPv6:2607:f8b0:4864:20::243])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 19DF7C002176
        for <linux-man@vger.kernel.org>; Wed, 16 Sep 2020 07:29:27 -0700 (PDT)
Received: by mail-oi1-x243.google.com with SMTP id z26so1067399oih.12
        for <linux-man@vger.kernel.org>; Wed, 16 Sep 2020 07:29:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc;
        bh=X9NMXwInDopmCpsjlbVQOuM/4YchFlZyCvkh9ODwMWw=;
        b=Mkv5yuwzO1QcJwU3mRjLdAmjFL4TTDv/OtIZRPh3O8UJaaBfIrWJTzhNvwq+sgDiN9
         m4Foh1cCSbd+zYPbDKzbsERNhZjZUXZM+TfWqqMeHORnn4laNFLc4hQPThRYlTmhxOQO
         d4kBOMyNJ6kGmp3UoFiGSKuXD5EmrWAoGo6ryPi0ZRPwB7jFNWZdchp0crIRm/DCnqoM
         UEdIhlaJhLUVo9kGsVjfvl7fHsyMy/RHJnlLYzsv/fTSErU/tweu8ASkXO5woXw01RRA
         bC9Ewcd57srAmAth9Hix7wQfRXwD3luL4BAIMesOyjZkrYSqUjILUJ55rwElbv6HU/dg
         XE2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc;
        bh=X9NMXwInDopmCpsjlbVQOuM/4YchFlZyCvkh9ODwMWw=;
        b=RYDtQ1ObsYtVYALdICsv9dUonxRDJoo1c60S6W5fURiRjuUctAzbS81AXMyOsM9kqC
         Z31458yLMSk2FOUOoAm5gWqyF2Za4lG4WMT+wtT/J1fqkGBO/FvFEG6LUoqvUXDxisWy
         EZoy/WCeKO2n9WWB5jjeCKt8rHinQbEYTE2EXnYzLeyQW5538xT8eNR79NSRxTygwONy
         htBmpkfi+xHEItFWNrEY7aaVdNjRuKJwo1GEKUXwuYoLhArTpsbRJjLLf9AiOCZJdeGf
         hbwlGse8vO7nvat3xaFsq9kFE5K9ammPTMlPMpjduEhnpA93y/ubuD2+GZpzhM4qnStO
         /xWA==
X-Gm-Message-State: AOAM53092zC9YhuSy1iqmz1YggAPACm9l8Uc7AdBFgv9rqQU8+1vYA+6
        LX9ft0dIX10zByIIQAofJHSEC6maIVCQ6nC9fyU=
X-Google-Smtp-Source: ABdhPJyX8F/wP+wzl5If5NCXQieKEj5pVH0HX98E5CxkVQ9Wl1LKQP0fpFwQp3xMaAiC6KkLs1mpba+KksAocY/Zoi8=
X-Received: by 2002:aca:2301:: with SMTP id e1mr3452184oie.177.1600266566519;
 Wed, 16 Sep 2020 07:29:26 -0700 (PDT)
MIME-Version: 1.0
References: <181e9d30-baf7-cc5c-3016-71e83504ab04@gmail.com>
In-Reply-To: <181e9d30-baf7-cc5c-3016-71e83504ab04@gmail.com>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Wed, 16 Sep 2020 16:29:14 +0200
Message-ID: <CAKgNAkj=VVewPjew6MvjGcx5_UYx_pCi6AniR1a7fV7ufZFUZw@mail.gmail.com>
Subject: Re: [BUG] sigaction.2: s/sigval_t/union sigval/
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Alex,

On Wed, 16 Sep 2020 at 15:14, Alejandro Colomar <colomar.6.4.3@gmail.com> wrote:
>
> Hi Michael,
>
> sigaction.2 uses the name 'sigval_t', which is:
>
>
> // <x86_64-linux-gnu/bits/types/__sigval_t.h>
> /* Type for data associated with a signal.  */
> #ifdef __USE_POSIX199309
> union sigval
> {
>    int sival_int;
>    void *sival_ptr;
> };
>
> typedef union sigval __sigval_t;
> #else
> union __sigval
> {
>    int __sival_int;
>    void *__sival_ptr;
> };
>
> typedef union __sigval __sigval_t;
> #endif
>
>
> and then:
>
> x86_64-linux-gnu/bits/types/sigval_t.h:16:typedef __sigval_t sigval_t;
>
>
> I think the man page should use the POSIX naming, shouldn't it?

Yes, it should. Thanks for spotting that. I've fixed it.

> ___________
>
> BTW:  I sent Draft v6 for system_data_types.7 2h+ ago, but I don't see
> it on lore.kernel.org.
>
> Did you receive it?  Should I wait, or send it again?

So far, I didn't see anything except v6, about 3.5 hours ago.

Thanks,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
