Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6488F1B1689
	for <lists+linux-man@lfdr.de>; Mon, 20 Apr 2020 22:02:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726988AbgDTUBf (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 20 Apr 2020 16:01:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46202 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726364AbgDTUBe (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 20 Apr 2020 16:01:34 -0400
Received: from mail-ed1-x544.google.com (mail-ed1-x544.google.com [IPv6:2a00:1450:4864:20::544])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0FDB6C061A0C
        for <linux-man@vger.kernel.org>; Mon, 20 Apr 2020 13:01:34 -0700 (PDT)
Received: by mail-ed1-x544.google.com with SMTP id w2so8434126edx.4
        for <linux-man@vger.kernel.org>; Mon, 20 Apr 2020 13:01:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:content-transfer-encoding;
        bh=uos5Czmo9U8IHgLc22Pde7Ypcf8TITUtz7VEaa+/joQ=;
        b=ff+pl/ezZE8ZQE0pOClV+AN/dYfI1YZbrBk73K5WFKikiRu93dSU4sCpiIBfZoo/nF
         WRDs/9+MFKXixrAGfa5WY9kDrj0yLfF4CPPToEveyCMRbGrryi6IbCegTJGdyKTIsU7/
         +l1R6nU3HSs+mOS+RyGnTiLhmGN6+yMRUsaTxjI3GamPVXZufTUUfeRSQsikoNbj7zbu
         be8/JeDwCQvS1VszpZSCf78j+ts2CM1uFfLKQUWlHeFVUTKfWuBfg+HdHBFp95P9fiI2
         4JG+v2UtO8tJXEg/+rGlbfDlq5osG76H2DfS8529rFBOyIUrvH52epAlwIG/UuD/ZNlb
         tCIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc:content-transfer-encoding;
        bh=uos5Czmo9U8IHgLc22Pde7Ypcf8TITUtz7VEaa+/joQ=;
        b=b7Kdh/ncGb2+p/GCUNQky1OQNpIrleBxC3QWbIlfi2rjetv45yZm7nb5SZErfEa5pV
         6nfmUOPhnaEPHSMcQRjHS0sjohB9DOpufFP1FLGNdfA3/S9hQNKwfB7qSkKZQj1eWL8S
         zUp00Sn7gkfsecLPaUB3jqp+xFE3EQKtXtrYsipKNSfMt5hQk4G3CLkZUAVMcm708NWl
         3GW3GdODsurqmyDTFuxViTp1+sFf6vBkQVlAEr3gd87ZCK9r0thjvL7Wo/0cATKqZDES
         H87TSLe9iJbHsiy1/Raf+a+K8hNfdm/6mfPFXiPf4B/GQcBMfW5AVWxtjKIMM7PFF+R3
         ajvg==
X-Gm-Message-State: AGi0PuaKO+NXTgenGlXf2WsPH3pvrPUgqH+5LS1Ri+dpi9F/TBpxEG/2
        3pIOJdMboz+xz4vXmBdHZDlgdAbh1ua5hgTVzak=
X-Google-Smtp-Source: APiQypIYWN6B6lSyOZpHC/B7UwbvMFS7a/jdnq5bcr24T2/nKPSIaib2yzY/uh5+erFUaBkFGhIeIJPDin1MDszXLMo=
X-Received: by 2002:a05:6402:7d6:: with SMTP id u22mr15681558edy.149.1587412892759;
 Mon, 20 Apr 2020 13:01:32 -0700 (PDT)
MIME-Version: 1.0
References: <20200419064802.GA30701@Debian-50-lenny-64-minimal>
 <2318ec0f-bc6b-c202-3fca-42c10c714372@gmail.com> <20200420194855.GE19913@Debian-50-lenny-64-minimal>
In-Reply-To: <20200420194855.GE19913@Debian-50-lenny-64-minimal>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Mon, 20 Apr 2020 22:01:21 +0200
Message-ID: <CAKgNAkjrHK_-9QTaisW_8zom66UwcT8EO_8jg3NcR_B-d0n_qg@mail.gmail.com>
Subject: Re: Errors in man pages, here: gethostbyname(3): Space/Formatting
To:     Helge Kreutzmann <debian@helgefjell.de>
Cc:     linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Mon, 20 Apr 2020 at 21:48, Helge Kreutzmann <debian@helgefjell.de> wrote=
:
>
> Hello Michael,
> On Sun, Apr 19, 2020 at 10:09:16PM +0200, Michael Kerrisk (man-pages) wro=
te:
> > On 4/19/20 8:48 AM, Helge Kreutzmann wrote:
> > > **
> > >
> > > Space between true and (1) and mark up
> > >
> > > "The B<sethostent>()  function specifies, if I<stayopen> is true (1),=
 that a "
> > > "connected TCP socket should be used for the name server queries and =
that the "
> > > "connection should remain open during successive queries.  Otherwise,=
 name "
> > > "server queries will use UDP datagrams."
> >
> > I don't understand this report. Can you elaborate please.
>
> We translator understood the "(1)" as the section number for the man
> page of true. So actually it should also contain markup, i.e.
>
> true (1) =E2=86=92 B<true>(1)
>
> And there is no space between the man page name and the section. If
> another meaning was intended, then we translators misunderstood this
> sentence completly.

Another meaning was intended.

The B<sethostent>()  function specifies, if I<stayopen> is true (i.e., 1)

Oder: "wenn I<stayopen> wahr (d.h., 1) ist"

Thanks,

Michael

--=20
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
