Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F14692FDC38
	for <lists+linux-man@lfdr.de>; Wed, 20 Jan 2021 23:09:11 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730304AbhATWCP (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 20 Jan 2021 17:02:15 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53292 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2436712AbhATVEE (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 20 Jan 2021 16:04:04 -0500
Received: from mail-oo1-xc34.google.com (mail-oo1-xc34.google.com [IPv6:2607:f8b0:4864:20::c34])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4FF54C061575
        for <linux-man@vger.kernel.org>; Wed, 20 Jan 2021 13:03:24 -0800 (PST)
Received: by mail-oo1-xc34.google.com with SMTP id x23so6126805oop.1
        for <linux-man@vger.kernel.org>; Wed, 20 Jan 2021 13:03:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:reply-to:from:date:message-id:subject:to:cc;
        bh=ed/1L/C7s+spXcJCQPyW4+1zwAP6D/dpto/ucArwBP0=;
        b=Tnv6naeLyvdG/ir/PufP5lxnL+LG0uQrWMW8OUN5aanlQYDlgBBK2lNBsWvqItI7pR
         j6Q5zUdcJsr8EMWrhSNc8WlvS4IUzNr2gYWJGcnFb0XVr1dc+cvgkGpxCEs6idJYHfNo
         BoD5TegSbIRM72MAbffc1xB/wLBkku7wkRuFZySVAVxQdPXbcoN6S7NcoeQF5HaOgNIV
         uqgVfd6+7UbAyHGP8EBwxGY0Ux75vN/JYYWadsPyK+OZ4ITZ9gUFp6j5LwHP+PWnd8n0
         sgttjyvNTFnLCLgT48P1lChKy1FVAAtK1kPQPT5Mnqhu6/6FpfNhekw2oQgb+st9JglE
         uE6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:reply-to:from:date:message-id
         :subject:to:cc;
        bh=ed/1L/C7s+spXcJCQPyW4+1zwAP6D/dpto/ucArwBP0=;
        b=Rz+Y4iNAVoAvi3KarKXf/TPZLMmq8DUM+3j2CMDHtw2iQEa+SMYtmisCx+GS1BoHAz
         cW05MaPFAjm6S2ffkJA/oHak8yf1cX9YqdllL02oL0fSS2rzt1SAXTt2slApGEfVn9ov
         PRnxQpsj/OcyEbHe7Wa97uynZUqU4zSeWTDuZUIaGpD4BuiOVAmh/BOIkZ31/rsGAP3T
         phdTqQiiK3ezlV3TtIOrpWsocI7SzHmUViQq3/tM0ickTw81+MfRPEGGiuTTpBtHHyyI
         YMAu/bthGSHOb165g/MdoBkBL6VwdhGYrk2C9dyIMU2KYtiZZAUPSy3HMjmm1m3U1sfZ
         3O8Q==
X-Gm-Message-State: AOAM532KKXsfEBtkc7B4OOl1vXiedppmZt5jyGnmzXptVP/ZI3KB+eVy
        G033EDvSWpn/AvV4G7jCjtcVkI6wK5mvJwwP+cs=
X-Google-Smtp-Source: ABdhPJy/HCBd66I89w+9/R8eKkZI50n/wr8Q6hvqdXpe8e/nRCjQwG9S/nUr6nt3iXef4f8Oh49wAcrjuqCH80N9U5g=
X-Received: by 2002:a05:6820:3c8:: with SMTP id s8mr4007642ooj.14.1611176603606;
 Wed, 20 Jan 2021 13:03:23 -0800 (PST)
MIME-Version: 1.0
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Wed, 20 Jan 2021 22:03:12 +0100
Message-ID: <CAKgNAkihGY5W178QYHcRvs0f0E4HMQdWir9KOJsEzVF=1wi-sQ@mail.gmail.com>
Subject: Escaping hyphens ("real" minus signs in groff)
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Branden,

I wonder if I might ask for your input...

For some time now, man-pages(7) has the text (mostly put there by me):

   Generating optimal glyphs
       Where a real minus character is required (e.g., for  numbers  such
       as  -1,  for  man  page cross references such as utf-8(7), or when
       writing options that have a leading dash, such as in  ls -l),  use
       the following form in the man page source:

           \-

       This guideline applies also to code examples.

(You even helped with this text a little, adding the piece about
manual page cross-references.)

I'm having some doubts about this text. The doubts were triggered
after I noticed that many code snippets (inside .EX/.EE blocks) don't
follow this recommendation. I was about to apply a large patch that
fixed that when I began to wonder: is it even necessary?

Some thoughts/questions:

* I believe that when rendering to a terminal, the use of "\-" is
equivalent to just "-"; they both render as a real minus sign (ASCISS
055). Right?

* When rendering to PDF, then "\-" and "-" certainly produce different
results: the former produces a long dash, while the other produces a
rather short dash.

Certainly, when writing say "-1" in running text (i.e., not in a
.EX/.EE code example), one should use "\-1", since without the "\",
the dash in front of the "1" is rather anaemically small when rendered
in PDF.

The same is true when writing options strings such as "ls -l". We
should use "ls \-l" to avoid an anaemic hyphen in PDF.

When writing man-pages xrefs (e.g., utf-8), the use of "\-" produces a
dash that is almost too long for my taste, but is preferable to the
result from using "-", where the rendered dash is too small.

Inside code blocks (.EX/.EE) is there any reason to use "\-" rather
than just "-"? Long ago I think I convinced myself that "\-" should be
used, but now I am not at all sure that it's necessary. Maybe I forgot
something, and you might remind me why "\-" is needed (and I will make
sure to add the reason to man-pages(7)).

Are there any other things I've missed with respect to "\-" vs "="?

Thanks,

Michael

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
