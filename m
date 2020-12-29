Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 88A672E734E
	for <lists+linux-man@lfdr.de>; Tue, 29 Dec 2020 21:01:26 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726158AbgL2UB0 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 29 Dec 2020 15:01:26 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52832 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726111AbgL2UBZ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 29 Dec 2020 15:01:25 -0500
Received: from mail-oi1-x22a.google.com (mail-oi1-x22a.google.com [IPv6:2607:f8b0:4864:20::22a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A15F8C061574
        for <linux-man@vger.kernel.org>; Tue, 29 Dec 2020 12:00:45 -0800 (PST)
Received: by mail-oi1-x22a.google.com with SMTP id 15so15760322oix.8
        for <linux-man@vger.kernel.org>; Tue, 29 Dec 2020 12:00:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:content-transfer-encoding;
        bh=er8eYmGxe8JMrx9Qt6B7fQrAIU81n/941OULKKgJV70=;
        b=ki7LYfo8OEI3QR4oj5gFQTbBynXqJEkId0iP9UvU6UaOz4d59QF+a3TpaF4fo09yTX
         yMM8SFtNlrW0zIwgebiroEcWC6JcvGKOqDS7f6x/sYh5F/hVVoMmPw3Vu3TSINL/l1w0
         xY0fNXiVCpPT5jBpC5oSLZATibtMHGdfW8G+7kMIsKeanRse0lkPjS3DY8vBw+tEQYM2
         TIcT0w68h7zSVXVxVcPohT3RdLMH8N62BdBQfPjtz8XxUYBUptxocQM6IpZjcghGqYR5
         9AwRgFyA4i0TB4nXP0grub1rmceF3vmya5rbK5RVl726CDhKkQI1kSc8+BfTyiEWs6+n
         EM3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc:content-transfer-encoding;
        bh=er8eYmGxe8JMrx9Qt6B7fQrAIU81n/941OULKKgJV70=;
        b=A6QAJE+Q1Bgu84LIni4DYm5lDsB5xBx5SA5lub/xqwDYEOFpcH8aKoUoWlUurLcMdK
         dTXBvpvHMjbtFfGT++pznAlxAEZAC4KxXH2agQQitPHie2ZEkQIFkts4+IG118WgcAxp
         5potEIaorOayzsfivwv53Qu2bsNMFGif/JKesGsfMb7qgHLq6r2WHWw/1RiIOBbrH3TX
         rOAc42xSQem0JhMuJofXg6GZO2iQQy+4ZLzBJM8mo/eRK6f8eI/hDotbCv6m06gpVZqi
         hQG3hsxfNMQgklyvHawTz5tWX+vEs0RJSbahqz6VNiVqWWuk3GzPk0hNwkzmJ4xBxy5Q
         MS2g==
X-Gm-Message-State: AOAM533qIpM8//M2Zu2P0dxqXadp7Vy2JvUcf4geCLpV1+TKsDyAexTm
        tdotpt3meO00WDrvNsd3DTGvWcar61Ap2LG+o1XZENcSU0g=
X-Google-Smtp-Source: ABdhPJxlQoXPaX8pw90xFhD4PDuAS5KBFe2wew+MMkj/LCXAKyjhhgVwQKfKx9/Lg/zSdTna4b1kyG4Q79ks6I0EYik=
X-Received: by 2002:aca:ded4:: with SMTP id v203mr3341643oig.148.1609272044917;
 Tue, 29 Dec 2020 12:00:44 -0800 (PST)
MIME-Version: 1.0
References: <20201218153036.25244-1-alx.manpages@gmail.com>
 <20201218153036.25244-4-alx.manpages@gmail.com> <3354d6f2-be51-243d-d042-3a07bfb5df11@gmail.com>
 <ee929f4a-7eca-e804-04b5-55e0fac1e13f@gmail.com>
In-Reply-To: <ee929f4a-7eca-e804-04b5-55e0fac1e13f@gmail.com>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Tue, 29 Dec 2020 21:00:33 +0100
Message-ID: <CAKgNAkjxhncQSgC-eN88YSL5T1yGVjg_mX3o450ApqWPEDVKtw@mail.gmail.com>
Subject: Re: [PATCH 3/3] filesystems.5: wfix: ntfs: remove FAT comparison
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alejandro,

On Tue, 29 Dec 2020 at 12:11, Alejandro Colomar (man-pages)
<alx.manpages@gmail.com> wrote:
>
> [removed some CCs]
>
> On 12/20/20 3:47 PM, Michael Kerrisk (man-pages) wrote:
> > Hello Alex and =D0=BD=D0=B0=D0=B1
> >
> > On 12/18/20 4:30 PM, Alejandro Colomar wrote:
> >> From: =D0=BD=D0=B0=D0=B1 <nabijaczleweli@nabijaczleweli.xyz>
> [...]
> >>
> >> Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli=
.xyz>
> >> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
> >
> > Thanks. Patch applied. I cleaned up the commit message a little
> > (removed leading white spaces, formatted to 66 columns as per the
> > man-pages norm).
>
> Hi Michael,
>
> Where is that 66 col norm?
> I've only found 75 for code in general (in man-pages(7)),
> but not 66 for the commit msg.

True. It's not documented anywhere. It's a limit that I apply so that
the changelog that I produce fits in 80 columns (66 =3D 80 - 2 * 8-space
indents). I quite frequently reformat patches for that limit. Don't
feel obliged to follow that, but I'll probably reformat your commit
messages :-).

Cheers,

Michael


--=20
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
