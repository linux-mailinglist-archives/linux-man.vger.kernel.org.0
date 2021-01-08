Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0E9C82EF143
	for <lists+linux-man@lfdr.de>; Fri,  8 Jan 2021 12:30:37 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725793AbhAHLaN (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 8 Jan 2021 06:30:13 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55188 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725791AbhAHLaN (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 8 Jan 2021 06:30:13 -0500
Received: from mail-oi1-x233.google.com (mail-oi1-x233.google.com [IPv6:2607:f8b0:4864:20::233])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D817CC0612F4
        for <linux-man@vger.kernel.org>; Fri,  8 Jan 2021 03:29:32 -0800 (PST)
Received: by mail-oi1-x233.google.com with SMTP id d203so11044757oia.0
        for <linux-man@vger.kernel.org>; Fri, 08 Jan 2021 03:29:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc;
        bh=PrfzBi6ajaTN9s5nJg7dq2RTdPbpcvXl0beo0Bqq3K4=;
        b=W9RqxZfvMJCsTvzz0cBnj9g1zq7OGe5HpAJgdDwjfOfGxvfT75coYUcveD6EgwqH7U
         ZX9tl6cQOfjrOY8l0TfZDZn2r+KRUWl+WP7dTasm/08Z0AP24sdXtM0Ylzgw8C+O8gsA
         i+B8CMe0lH2hNNJY2uHM3/7KyWCrveRR5aMss5v7W60079CU5e+T9lm7Xjb0gmL//Aas
         1QFOjRaBp66p8xmE+3KwUgc4j71qL5xOUTPsCLbyoSJjg0A9xhake6NWqD9URAgR/ApC
         +VSuXdDshDah8ByJmK+cVXkTQa+LcLQA9esFjUQ4aqy3Ouuzdt+kpJ/1W96OK+C8SgPT
         hjyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc;
        bh=PrfzBi6ajaTN9s5nJg7dq2RTdPbpcvXl0beo0Bqq3K4=;
        b=W1SlJ36r7FCjLFtd/j1mFbyb2NUWPlBZhzET79sa63NFZfauZ43uwEWbWwE1CoXSMk
         7HLSrWp4Z+/WmWhTfxaaOHAIFayE2kHOZk4QoD9DKM7wCBFfROCKFzPRpPTsb1EiXo+D
         tRL5mb8A0BkOeJ/D4yh+7fbHhaRbohuE2oHEQZMe5vkL3D7oGip7WP7STOzCIJcZ5rC3
         ocUb+GX9swViud/fCssXEhHp8LoEN6q/Q9b0XtZti8qaRb/ouIUAibZcKQ6eKZor67SU
         qTLvF9vaQ27mUR4touWWQfY+tfvhyyQgG1lNNN4Y61LOWZmQTidtWKqsU5SDRsdqlLYa
         jLxw==
X-Gm-Message-State: AOAM532iElLF87J5G/OgMANfPJ3QE3862/C1PQp5jpIQtq0wNJM0JLRD
        yT/VUXu0PpnuFzKpluD2Zkuy6zXxsLC6IWqvJUk=
X-Google-Smtp-Source: ABdhPJzIhnZucpqtMYjbjTcxLXw/BU1XIra9Eh+qxD/sB2d5DfMl5DlBhvzAuaGgPI0FikWtqLLVSX84jM5H2JOoXpI=
X-Received: by 2002:a05:6808:91a:: with SMTP id w26mr1955126oih.159.1610105372293;
 Fri, 08 Jan 2021 03:29:32 -0800 (PST)
MIME-Version: 1.0
References: <307e6584-f163-4768-ffe9-b6b4f439e4a0@gmail.com>
 <5058547d-c021-0aa9-4698-667c4917a12b@gmail.com> <d5e5fc9f-d283-1457-167b-d2716648656d@gmail.com>
In-Reply-To: <d5e5fc9f-d283-1457-167b-d2716648656d@gmail.com>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Fri, 8 Jan 2021 12:29:21 +0100
Message-ID: <CAKgNAkjntXg1yzsp3mwoH4coocUiAh_6UFHoA_2hXcaLimWn-A@mail.gmail.com>
Subject: Re: Escaping whitespace
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On Thu, 7 Jan 2021 at 18:11, Alejandro Colomar (man-pages)
<alx.manpages@gmail.com> wrote:
>
> Hi Michael,
>
> On 1/6/21 1:51 PM, Michael Kerrisk (man-pages) wrote:
> > Hi Alex,
> >
> > On 1/5/21 10:56 PM, Alejandro Colomar (man-pages) wrote:
> >> Hi Michael,
> >>
> >> While having a look at your latest commits,
> >> I saw that there's a bit of inconsistency in escaping whitespace
> >> (existing previous to the commit):
> >>
> >> Sometimes it's [!\ (], and sometimes it's [! (].
> >
> > Thanks for prodding me about this.
> >
> > Yes, it's inconsistent. And given the use of .nf/.fi
> > around the text blocks, escaping the spaces serves no
> > purpose. So I made a more radical fix; see commit
> > 5c10d2c5e299011e34adb568737acfc8920fc27c
>
> Nice!
>
> After your following commit (422d5327a88fa89394100bafad69b21e50b26399),
> I found that there are many such cases.  Just [[grep -rnI '\\ ' man?]]
> and you'll see.  Some of them are valid, but a lot of them aren't.

Can you point me at some examples?

Thanks,

Michael
-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
