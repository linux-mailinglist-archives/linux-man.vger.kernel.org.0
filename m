Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 550673BBAEA
	for <lists+linux-man@lfdr.de>; Mon,  5 Jul 2021 12:13:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230511AbhGEKPr (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 5 Jul 2021 06:15:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51746 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230506AbhGEKPr (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 5 Jul 2021 06:15:47 -0400
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com [IPv6:2a00:1450:4864:20::12f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6093AC061760
        for <linux-man@vger.kernel.org>; Mon,  5 Jul 2021 03:13:10 -0700 (PDT)
Received: by mail-lf1-x12f.google.com with SMTP id a18so31522340lfs.10
        for <linux-man@vger.kernel.org>; Mon, 05 Jul 2021 03:13:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=kinvolk.io; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=GExpgTo2fR/PC2nA/nAqw0PO/8x/AjGll0LbGkgr9Mc=;
        b=L7QZL1AAeELymL85Plqb/6yVhcPRpMHv/ZdYklDD8lrQhkm8mLiMtz/Ns/wiUAZumO
         cGhDFOrejurd1ppn5uSJTe13dSNRw0V9vNH6IuRofWqnegXoYLWgwwtnbBidbRiEXUA8
         t1mpLz5coz3LHa9CLugCc9EnBMOByrj2CiU34=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=GExpgTo2fR/PC2nA/nAqw0PO/8x/AjGll0LbGkgr9Mc=;
        b=Wu524+vcyTZODAS4sqHic5DIKnqp2eaY3b8tTOqJllH4+mH9PHRmwU9ZPztNpBejZO
         S89rsXjk8QDnY+1gEsHkS7gt1HssU+n7LVCeO4onBYdsXTaF9ObkVfPyzjtUJyv8n1lu
         xjxESkVooBZKXo15J/YTZwln1D87ViwJJVW8ZHiK+vmMfJgarp+jczX/M91/itrAqnSB
         aMpAlz4uh2gGFsNZIJvPwlEEiw7/pSgYUdz7DuGDPs3docnIWQqfrt/TZGeYqKxOFvmG
         sSAgQMXOie2NqYgkWisYZuQGtGCpy7BzIvjMaw+et8UTPVjlADC49XPya8As9b2IGd/V
         rpsQ==
X-Gm-Message-State: AOAM531Rmsz0kuZoHiDP9NIOLvJaSbwC7SBqSBTpLOvPoKfeFlLxcVra
        MkOkgEoMA2F0qHrCQvR/8zzyTQd90rkK/RLNFTwpbw==
X-Google-Smtp-Source: ABdhPJxi3Z9xMcnjdldizxfeiaOewZ8kyVIUzwyWuUK/+gzdIe1WoF6KLirjl/81SVCVOP5OlxXFp6PToHEZMdVWcvg=
X-Received: by 2002:a05:6512:b92:: with SMTP id b18mr10087892lfv.11.1625479988649;
 Mon, 05 Jul 2021 03:13:08 -0700 (PDT)
MIME-Version: 1.0
References: <20210702163744.265749-1-rodrigo@kinvolk.io> <6322ac90-3491-df4f-7505-db4081bacb79@gmail.com>
 <82b7b6a4-14bf-23d9-dad9-f348fe905d8e@gmail.com>
In-Reply-To: <82b7b6a4-14bf-23d9-dad9-f348fe905d8e@gmail.com>
From:   Rodrigo Campos <rodrigo@kinvolk.io>
Date:   Mon, 5 Jul 2021 12:12:32 +0200
Message-ID: <CACaBj2aR1J8O-5ssLy7DkANVwCADQfHux-Z=hkoBRYnur872Rg@mail.gmail.com>
Subject: Re: [PATCH] seccomp_unotify.2: Add doc for SECCOMP_ADDFD_FLAG_SEND
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     LKML <linux-kernel@vger.kernel.org>,
        Alban Crequy <alban@kinvolk.io>,
        =?UTF-8?Q?Mauricio_V=C3=A1squez_Bernal?= <mauricio@kinvolk.io>,
        Sargun Dhillon <sargun@sargun.me>, linux-man@vger.kernel.org,
        Michael Kerrisk <mtk.manpages@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Sun, Jul 4, 2021 at 1:25 PM Alejandro Colomar (man-pages)
<alx.manpages@gmail.com> wrote:
> On 7/3/21 11:25 PM, Alejandro Colomar (man-pages) wrote:
> > It looks quite good to me.
> >
> > There are a few minor changes that I applied in a following patch.  I'l=
l
> > explain why in your patch inline.  And then you have the diff below you=
r
>
> And I meant: patch applied!

Oh, thanks!

Rodrigo Campos
---
Kinvolk GmbH | Adalbertstr.6a, 10999 Berlin | tel: +491755589364
Gesch=C3=A4ftsf=C3=BChrer/Directors: Benjamin Owen Orndorff
Registergericht/Court of registration: Amtsgericht Charlottenburg
Registernummer/Registration number: HRB 171414 B
Ust-ID-Nummer/VAT ID number: DE302207000
