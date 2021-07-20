Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5BF903CF576
	for <lists+linux-man@lfdr.de>; Tue, 20 Jul 2021 09:46:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229588AbhGTHGD (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 20 Jul 2021 03:06:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35636 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229527AbhGTHGC (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 20 Jul 2021 03:06:02 -0400
Received: from mail-pl1-x631.google.com (mail-pl1-x631.google.com [IPv6:2607:f8b0:4864:20::631])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1F573C061574
        for <linux-man@vger.kernel.org>; Tue, 20 Jul 2021 00:46:40 -0700 (PDT)
Received: by mail-pl1-x631.google.com with SMTP id x16so11042080plg.3
        for <linux-man@vger.kernel.org>; Tue, 20 Jul 2021 00:46:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=bWzv//PMVPWksAYks59bkGI53s70SjMkh99ubBR63Ho=;
        b=tOj9SIMB9NfKFm+8ayBIku7cb0DgF1hoDxtmtI8CwFb/zryt4e05cUPwCvgNsxyxSv
         K/JJDkqDFB6q6sdcAQcG7/oFbYAdlDo9Yd+U8IIfZLKNsaiVsazsUvwMUiF4VZ4GX0UX
         D6E3EWH+AWzSavA4dxyoQUF6fHJqsNCgpo4b/MNYGx0mz+Hj3Jm6EiRIMYj4fASNfzKP
         DzIpB7bMxHbjReQpSu3Oh1UKbD3eRXq1LdYIQ9IRRbTnLClTaxljD0cIuSaQu9MBr2l/
         7agsSnkRlRHqI+aFikHWSHPaipA+s/zIdY40N7adTZdRwZRtpzb+YjBeRSRmyoqcxYKw
         0FXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=bWzv//PMVPWksAYks59bkGI53s70SjMkh99ubBR63Ho=;
        b=eaR1aMspwoRTrUrJDsX75e9FYhAwKrbv4kOdPxotjMnQVZaM6IYwgLTvNLTNUha3/e
         H4nQINPuOgpLWtHS8fPW6ETqAnAAlqba2T2CYwJF0TwaGGS6u4M/0ABFFA2h1U6h5XMC
         avI181jYUMcQxHIZRxbEvdvDBbyu5OXLv+lJhdBbO511Tj6L2IfUT2G1uOTB3cZyf3mu
         AbBc2JQB9TWAIVgEqZfbDlgo96i02mRCvbZ3A5KYej4GVXsKJLb/JemArkcQojlf5A8Y
         4axzgdvgs+nunZqhsRXk8gHQOMVE2CG2kQ0kWt+R6zwn/iiUDl1eiVw6ZyhkjAtqBSxB
         OlzA==
X-Gm-Message-State: AOAM532rAfaRORGznx89hC1Mrx/bQw+Dp9ovwUQyQaHjsxTGaxs8gg8e
        ehokGrahlmw2fqucMFS+JNefVCRm/uLbn2bApco=
X-Google-Smtp-Source: ABdhPJwyg15DSxQxjgRr39icswUCb4xi6VjG6KO4bxyN67plFmYHXhJJnugiP/bLD1BS8EI85Bq2fMZD0vqUS2Z4glI=
X-Received: by 2002:a17:90b:a15:: with SMTP id gg21mr34506836pjb.190.1626767199665;
 Tue, 20 Jul 2021 00:46:39 -0700 (PDT)
MIME-Version: 1.0
References: <CALBoereYSTo=9qfsWN-FSbRtdtYsqSKrkZAYuQRA_fBj0Nhq2Q@mail.gmail.com>
 <CACKs7VCZf50RULi_c5Eto1Oqjyi9JWyJSQemEb8J+5JSe66SBQ@mail.gmail.com>
In-Reply-To: <CACKs7VCZf50RULi_c5Eto1Oqjyi9JWyJSQemEb8J+5JSe66SBQ@mail.gmail.com>
From:   Stefan Puiu <stefan.puiu@gmail.com>
Date:   Tue, 20 Jul 2021 10:46:28 +0300
Message-ID: <CACKs7VCpBzZaF-cXaAnT1we4A_8yZ5OVOGf7=wEWOeZ6DYZJ8Q@mail.gmail.com>
Subject: Re: typo in systemd.unit(5)
To:     snow under <hikigaya58@gmail.com>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>,
        lnx-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi,

On Tue, Jul 20, 2021 at 10:45 AM Stefan Puiu <stefan.puiu@gmail.com> wrote:
>
> Hi,
>
> On Tue, Jul 20, 2021 at 5:59 AM snow under <hikigaya58@gmail.com> wrote:
> >
> > location: [UNIT] SECTION OPTIONS > Upholds= > first line "but as long
> > a this unit is up"
> > checked from online page:
> > https://man7.org/linux/man-pages/man5/systemd.unit.5.html#[UNIT]_SECTION_OPTIONS
> > thanks for your great work.

Note this page is from the systemd package (see the page colophon:
https://man7.org/linux/man-pages/man5/systemd.unit.5.html#COLOPHON),
so any bug reports should go to that project, I guess.

Thanks,
Stefan.
