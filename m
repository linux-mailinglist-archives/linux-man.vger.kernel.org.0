Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 19ABC3BBAE1
	for <lists+linux-man@lfdr.de>; Mon,  5 Jul 2021 12:11:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230367AbhGEKO2 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 5 Jul 2021 06:14:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51424 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230050AbhGEKO0 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 5 Jul 2021 06:14:26 -0400
Received: from mail-lj1-x232.google.com (mail-lj1-x232.google.com [IPv6:2a00:1450:4864:20::232])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F3BC3C061574
        for <linux-man@vger.kernel.org>; Mon,  5 Jul 2021 03:11:49 -0700 (PDT)
Received: by mail-lj1-x232.google.com with SMTP id h6so23952616ljl.8
        for <linux-man@vger.kernel.org>; Mon, 05 Jul 2021 03:11:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=kinvolk.io; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=69UZcCblC7DITscasI5FJxuBm/RyIh3ZM+S6o0gf5ag=;
        b=jGFLnkKsTRnv8cz3E4UqyqL0rq9KI/7H7ZEwo8Xmazs7PlNMGO9bCldgqjUX3bFqxJ
         jfJwMK1UMO25c+TM8F0JW1CIukhzmDyna4CxN9og6txlvgZYYCuGoDpEK84RDMsFQg+D
         lQK6yBejQGOaYSdtyADFbup1d8sl8tNMdccxU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=69UZcCblC7DITscasI5FJxuBm/RyIh3ZM+S6o0gf5ag=;
        b=gnk5CicAc5r6gMKtrrl/bc3gnBsNWp5+hUKSp4KaV63UDvZ0Z9rnV4IwRKUOmjKxTx
         5aS247zFUuFxPTWtMJG2U1a4ON2/8MlFR/pK652F/Q+xtsO6Qg+Tr7VgtaDZ/JGBvZG1
         0wkokuk5llE5H32bIOPEjvkkiab1ekpvjTKeHmuxm5z2PwDkQYJATci53QGIMSwWUxWS
         4rheV4JiV6HrBnwCNDXVuaKeRi4BkF27jU1Qy5Ho38AifL6VDr1TKko7hTOZyY+sg5nL
         1y5TabkH7lE1I8xTElbhMnDXDgbQAFalCAP87zfBeGx6dWO4auzRVU0VcdYrCtRWZzrr
         9SgQ==
X-Gm-Message-State: AOAM532/GVA5/XTgqowKDh/toIwDNKvmK9UbUZF+/B9ycn8edNNFF5Gm
        bSAU3BrJQrh0d3hr49dgktmbA0GMSqKA+0Bz7iRRow==
X-Google-Smtp-Source: ABdhPJy8tQLyQnPzDq8CCLbBk58hYeMzZX/9JPQnd4jLwa7UW5WnK8IdeTzv1Ixh0amrYYCpAh3AOcvjurVbhgnDQKU=
X-Received: by 2002:a2e:710f:: with SMTP id m15mr3282648ljc.327.1625479908365;
 Mon, 05 Jul 2021 03:11:48 -0700 (PDT)
MIME-Version: 1.0
References: <20210702163744.265749-1-rodrigo@kinvolk.io> <6322ac90-3491-df4f-7505-db4081bacb79@gmail.com>
In-Reply-To: <6322ac90-3491-df4f-7505-db4081bacb79@gmail.com>
From:   Rodrigo Campos <rodrigo@kinvolk.io>
Date:   Mon, 5 Jul 2021 12:11:12 +0200
Message-ID: <CACaBj2b4PPrP442Kg4X8faOR27=5ozHjwja2FQLSsoOXL+uc8Q@mail.gmail.com>
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

On Sat, Jul 3, 2021 at 11:25 PM Alejandro Colomar (man-pages)
<alx.manpages@gmail.com> wrote:
>
> Hi Rodrigo,
>
> On 7/2/21 6:37 PM, Rodrigo Campos wrote:
> > This flag was recently added to Linux 5.14 by a patch I wrote:
> >       https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.gi=
t/commit/?id=3D0ae71c7720e3ae3aabd2e8a072d27f7bd173d25c
> >
> > This patch adds documentation for the flag, the error code that the fla=
g
> > added and explains in the caveat when it is useful.
> >
> > Signed-off-by: Rodrigo Campos <rodrigo@kinvolk.io>
> > ---
> > Hi! Here goes the documentation for the flag I just added. Please feel =
free to
> > amend as you want and let me know if something is not clear :)
>
> Thanks for documenting your own addition!
> That makes things much easier :-)

No problem, thank you! :)

>
> It looks quite good to me.

Thanks! It helps to know that the explanation makes sense for others too :)

>
> There are a few minor changes that I applied in a following patch.  I'll
> explain why in your patch inline.  And then you have the diff below your
> patch.

Thanks very much for the explanations, I will try to remember for the
next time. And thanks for sending the patch here :)


Best,

Rodrigo Campos
---
Kinvolk GmbH | Adalbertstr.6a, 10999 Berlin | tel: +491755589364
Gesch=C3=A4ftsf=C3=BChrer/Directors: Benjamin Owen Orndorff
Registergericht/Court of registration: Amtsgericht Charlottenburg
Registernummer/Registration number: HRB 171414 B
Ust-ID-Nummer/VAT ID number: DE302207000
