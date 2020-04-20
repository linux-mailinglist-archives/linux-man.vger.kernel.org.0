Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 091E11B147A
	for <lists+linux-man@lfdr.de>; Mon, 20 Apr 2020 20:29:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726492AbgDTS3E (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 20 Apr 2020 14:29:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58848 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725784AbgDTS3D (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 20 Apr 2020 14:29:03 -0400
Received: from mail-vs1-xe41.google.com (mail-vs1-xe41.google.com [IPv6:2607:f8b0:4864:20::e41])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B6FFCC061A0C
        for <linux-man@vger.kernel.org>; Mon, 20 Apr 2020 11:29:03 -0700 (PDT)
Received: by mail-vs1-xe41.google.com with SMTP id b5so6720893vsb.1
        for <linux-man@vger.kernel.org>; Mon, 20 Apr 2020 11:29:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:content-transfer-encoding;
        bh=ingzTTpTxQPWSD2b0GaOXkT/jV8ebf/H4GVKJ2ixn00=;
        b=pKbkatNn4mQsQ7Hzd1pZBxr3R8T8pzBjLwXpPdfcZ9Bg9wvil7HY4Dj0dhkyivYSta
         Czh49D2hbsCDUXRGef4ZQfkVefjV+AE9nxOKoahy6hL8F8oHkk4Zf8oNnyRGATtkoB07
         dbwoKFBSVs6lizQfPXoMLat005LgQK9y2mWSUwTw3Xwkix7jQdBMSfX/PWbJcRYUkd3k
         wAGfwozHz5hukJbjHbz0l8u4qOosuRIWcmanzU31LHhYHa/Oz5V60X70XaK13XedByKa
         stCRKKg9bROR0qjuGhEirhRPCOGGhLgoUcmtEJa+BlmzE/YJt45CsTLJk4765YFvgAVD
         BBWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc:content-transfer-encoding;
        bh=ingzTTpTxQPWSD2b0GaOXkT/jV8ebf/H4GVKJ2ixn00=;
        b=cl2IKOCImxzTte7w77lEIaKNh4yYq4KpLwjuj7deHZOQ/MsT2VDR2dHovfLgUnmUTC
         9yult+UWoYIRwCChqudv9haBPND9H77aaFHLaed22bmrlJ1RgPExMlgf00omNndutxh1
         t5ilM2wJ4nPN2t8yXGeRaEidcGA4ybItDopR0laSUGlDpeKWZvSerkYxEZggmi1Hs05+
         VYxidVXau73q842M5ZbEpzDhkuaRiIAFbm66xaxekyJTdLjI3DIj8/fidN2JBtfoWidv
         zro/ixx3Ih0QSQVNHZ/tQxzbHlMFVVCuLbLWMNEbuD63kMM9KhO946CpsxbJUi46Wtep
         jqHA==
X-Gm-Message-State: AGi0Pua1FBemqerQPRkdaII5KD1WbCdEoFKJOjloo0ulKYNRCLUj+Uwv
        0FSKfCTuburDlKq+s0p8w9ODQWMumzy0tngHcho=
X-Google-Smtp-Source: APiQypI4x80IE7cbs/EbcI9KFOJCj2p2HaP4UGejWwkSUAOeenuPo1gqBFIiitg6NZvqa39j3uCE5bu34tb1Q8aHr0I=
X-Received: by 2002:a67:2c97:: with SMTP id s145mr11836192vss.98.1587407342896;
 Mon, 20 Apr 2020 11:29:02 -0700 (PDT)
MIME-Version: 1.0
References: <20200419064828.GA32141@Debian-50-lenny-64-minimal>
 <532e2c98-09ca-ee0c-be4b-0c51d4b42eef@gmail.com> <C47149A4-47DA-4E85-A9D0-E9A4229B58C4@kolumbus.fi>
In-Reply-To: <C47149A4-47DA-4E85-A9D0-E9A4229B58C4@kolumbus.fi>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Mon, 20 Apr 2020 20:28:51 +0200
Message-ID: <CAKgNAki5L+=G+HeMfxVcAjbSPtyKru1N_fC8r+rY09GAEpYL8w@mail.gmail.com>
Subject: Re: Errors in man pages, here: st(4): Content
To:     =?UTF-8?B?S2FpIE3DpGtpc2FyYSAoS29sdW1idXMp?= 
        <kai.makisara@kolumbus.fi>
Cc:     Helge Kreutzmann <debian@helgefjell.de>,
        linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Kai,

On Mon, 20 Apr 2020 at 17:42, "Kai M=C3=A4kisara (Kolumbus)"
<kai.makisara@kolumbus.fi> wrote:
>
>
>
> > On 20. Apr 2020, at 11.11, Michael Kerrisk (man-pages) <mtk.manpages@gm=
ail.com> wrote:
> >
> > [CC +=3D Kai]
> >
> > On 4/19/20 8:48 AM, Helge Kreutzmann wrote:
> >> Dear manpages maintainers.
> >> the manpage-l10n project maintains a large number of translations of
> ...
> >
> > I do not know. Perhaps Kai can help.
> >
> > Kai, the text in question is
> >
> >              MT_ST_AUTO_LOCK (Default: false)
> >                     When this option is true, the drive door  is  locke=
d
> >                     when  the  device  is opened and unlocked when it i=
s
> >                     closed.
> >
> > I believe Helge asks whether the text should read:
> >
> >              MT_ST_AUTO_LOCK (Default: false)
> >                     When this option is true, the drive door  is  locke=
d
> >                     when  the  device  is CLOSED and unlocked when it i=
s
> >                     OPEN.
> >
> The orginal text is correct. This is section 4 man page meaning that it
> describes the programming interface, Opening the device means
> opening the device file, i.e., starting to use the device from the
> computer and the drive should be closed when the drive is operating.
> It can be opened when the device file is closed and the device is
> not in use.
>
> This might be clearer if the text would say =E2=80=9Cwhen the device file=
 is
> opened=E2=80=9D? I admit that the original text, while correct, may not b=
e
> obvious to non-programmers.

Thanks. And I made your suggested wording change, which I think is
helpful to prevent misunderstandings.

Cheers,

Michael

--=20
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
