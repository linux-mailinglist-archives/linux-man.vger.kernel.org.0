Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 451333D5074
	for <lists+linux-man@lfdr.de>; Mon, 26 Jul 2021 00:46:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229543AbhGYWFa (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 25 Jul 2021 18:05:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42700 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229531AbhGYWFa (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 25 Jul 2021 18:05:30 -0400
Received: from mail-oo1-xc2e.google.com (mail-oo1-xc2e.google.com [IPv6:2607:f8b0:4864:20::c2e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CDA45C061757
        for <linux-man@vger.kernel.org>; Sun, 25 Jul 2021 15:45:58 -0700 (PDT)
Received: by mail-oo1-xc2e.google.com with SMTP id y16-20020a4ad6500000b0290258a7ff4058so1838859oos.10
        for <linux-man@vger.kernel.org>; Sun, 25 Jul 2021 15:45:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:content-transfer-encoding;
        bh=ltjlmFB1rYkpjOZ/DZzUpTOhhNfKpNBConlf6eYaRps=;
        b=uyKiIpQnp3RWSmIwKDL0NbNTL+UZX7yG1EoNzQ5GHKC9jVfNuiULa6omvNkZ/DVmZ9
         H5ykkWrNy6tujIrBAKeC+29RmFoLV6L3E8szeL8ywbRSobUFPv+9cDucc82eoi4pGV31
         UVwKrP6KUyZuwgR9czwIRfqJ/1WaGMKAsWVFL0uoHl8Ru9eFU1FCZgtOUjeiWXw3M6fs
         ajfKsqGw1NItMxB/8PvJIO0tWCGRwQAW2ZaHibhkOsL+r0wi5GpZxZGn2N8iIj7Sikb+
         qloRAHbJztRU+/35NMnT24cEuJqk/S5CnsnhwDUrrsk+0eT/TH1l+FhnSYFQun76XPmr
         Gd4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc:content-transfer-encoding;
        bh=ltjlmFB1rYkpjOZ/DZzUpTOhhNfKpNBConlf6eYaRps=;
        b=IATzWoNqM55U1CtA1U2QGFf68kbZ8r5lXkD41THAeMFo8JBpOcTo5a5gpQ47oVtOnY
         2nQdxolQ86tkdoRgTC+ztI1T9gD2qWg912AoshAoYHZJsM7hXY+XTuEW5gavxYNU7po9
         dCfPkTinH6/5CnxsVLc2WHaRqXNuhwv30DsK0mhYbS2AeRxErhQafM2bySUSTTZGOXA1
         HwGg6xxdLzJcOqpYj2tHwmX4ZZiPZxuVP8u2koGuyed3Z+8E4hssX1nGVQ8Y1xM8aIWN
         jQjGnX6QpC6sU4nkQTa9KTatqqQ8BzTEDXEBMDCy77gV9DneaS1aRJJTL2ggO3zoYINZ
         L81g==
X-Gm-Message-State: AOAM531BvgvRGwOIoTrFqJziRi1/hY7KCzzULUMu/wICPujYvjhNPzt+
        Q2/8HWIjVMYuu0mWCofaIQoMCQSzPn1Y9S8A3JAwBGm/knU=
X-Google-Smtp-Source: ABdhPJx6MntskWETaR4eCZcijMs4VkaOYkkrTDEqlsvk/a8UqxEmpAEOot5Hg4xTkeaH7DexozZ5EKAWyAmksd4tszo=
X-Received: by 2002:a4a:df02:: with SMTP id i2mr8815327oou.14.1627253157633;
 Sun, 25 Jul 2021 15:45:57 -0700 (PDT)
MIME-Version: 1.0
References: <20210725170750.GA16562@Debian-50-lenny-64-minimal>
In-Reply-To: <20210725170750.GA16562@Debian-50-lenny-64-minimal>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Mon, 26 Jul 2021 00:45:46 +0200
Message-ID: <CAKgNAkiPpAceVgyis8PGwu7Jsh2hqLEK2rxO8OJnDfCL618F4w@mail.gmail.com>
Subject: Re: Errors in man pages, here: locale.5
To:     Helge Kreutzmann <debian@helgefjell.de>
Cc:     linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Helge,

> Man page: locale.5
> Issue: Better single-character string =E2=86=92 single character?
>
> "followed by the single-character string that will be used as the decimal=
 "
> "delimiter when formatting monetary quantities."
>
> "followed by the single-character string that will be used as a group "
> "separator when formatting monetary quantities."
>
> "followed by the single-character string that will be used as the decimal=
 "
> "delimiter when formatting numeric quantities."
>
> "followed by the single-character string that will be used as a group "
> "separator when formatting numeric quantities."

"Single-character string" seems okay to me. No change is needed, I think.

Thanks,

Michael

--=20
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
