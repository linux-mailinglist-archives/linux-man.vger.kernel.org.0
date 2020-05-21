Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 78D921DD82C
	for <lists+linux-man@lfdr.de>; Thu, 21 May 2020 22:22:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728365AbgEUUWA (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 21 May 2020 16:22:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53862 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726814AbgEUUWA (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 21 May 2020 16:22:00 -0400
Received: from mail-ej1-x643.google.com (mail-ej1-x643.google.com [IPv6:2a00:1450:4864:20::643])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 34640C061A0E
        for <linux-man@vger.kernel.org>; Thu, 21 May 2020 13:22:00 -0700 (PDT)
Received: by mail-ej1-x643.google.com with SMTP id z5so10449406ejb.3
        for <linux-man@vger.kernel.org>; Thu, 21 May 2020 13:22:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc;
        bh=2W42M4NsM1WJGggDzNeKV56HBXAcjkTGKHEQEzvDqyU=;
        b=lXjg+87Xej8mbWC2JPUM5GN+sFNFUIvqYCGEpXHLbodkc9/aFizNNqscXj2Xve1dbg
         4umfjXKG5C4H7HyTLPlI8AuXEPatbHpCWtQSF73MF9ZrrnJ9LTVB+S0sPCZ5rRx0H3UF
         HlgSCeBjT4p/QG2bGSU6CpZkyhf3f03ko1UrIFlThwAJKvJ4GanH2xxoUdk+3VGnHGC/
         4EGNglIFKdxUoDPbMPk2SZXOE/jX0tcOm2FCQ/wi87DZatX1lE7Q0mGC/7YhepwYR+gK
         1DGByLb1CBmVFI5io79IRUHbfhMTs2tTISu1jfE/4SvTUHw6jbRpd68MRLQ+oBd0zzoe
         WULg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc;
        bh=2W42M4NsM1WJGggDzNeKV56HBXAcjkTGKHEQEzvDqyU=;
        b=trwKWrR3KYVIpPdQA5jXHbypk4fUlK3tKHtrLILwkO3bY4+APFmKnkcGDhOvZMznlg
         CBt+E9KX92pOOnrh+smiJDigwCLjYclUI4tB1v2K75ljVWFsGfBRfN64oDCbKoQnAFAr
         QQH5L0Ox1Jb7VHtJjAK8S8zyFbljJHi1UUbRnkiZhuIab+UnRiQ9+pVn/Wox1f4p7Gb8
         eHdcoHCnIzfznSpRuLf3LHJM12kdmrgUu7Y26UanbEbJ0sLPH3Dmtf8ZVy3D1zYQYsU3
         kkBcWqMBklwk9Vr1k0NSu5Jr+XUKRkLg5pYzjRTqgYBTvfdt0yCYdq8J+Jy7RTd4fEnw
         B9Yg==
X-Gm-Message-State: AOAM532gW/1nvsF73h5F/Iji3RyyclXCMK+OGDHHy01qzjy+Kj2KuDAg
        vwh56FYgNocu7yPMBH5ezcR2qbQ/k4J2RduYLJW30DAR
X-Google-Smtp-Source: ABdhPJx3FYNpaNMxZ+F6OiZiq2RrlGf/nmw0w3xHJ4AMOXMtfao3esoHb3I4o3NTbuxNJ7mhSerfCfCqTApgjSWrcug=
X-Received: by 2002:a17:906:41a:: with SMTP id d26mr5438417eja.217.1590092518806;
 Thu, 21 May 2020 13:21:58 -0700 (PDT)
MIME-Version: 1.0
References: <228293bd-7d21-b08e-f7c4-c832e9c84dbb@deloquencia.de>
In-Reply-To: <228293bd-7d21-b08e-f7c4-c832e9c84dbb@deloquencia.de>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Thu, 21 May 2020 22:21:47 +0200
Message-ID: <CAKgNAkjyLhP8Qk=Bz5JyJVN1RTxGrgXaP8=R5gASw8zYvsZNUg@mail.gmail.com>
Subject: Re: Question about projects bugzilla and personal tags not being so personal
To:     Thomas Piekarski <t.piekarski@deloquencia.de>
Cc:     linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Thomas,

On Thu, 21 May 2020 at 22:14, Thomas Piekarski
<t.piekarski@deloquencia.de> wrote:
>
> Hello,
>
>
> when skimming through the reported bugs at man-pages bugzilla I tried to
> tag a few bug reports with personal tags for my own workflow and own
> custom search filters (something like to_triage, to_ask and to_do).
>
> When I added one tag and saved that changes I got an:
>
> Changes submitted for bug 205763
> Email sent to:
> inout@users.sourceforge.net, on2014nm@gmail.com,
> zeno.endemann@googlemail.com
>
>
> Wondering, isn't the field personal tag meant only for me? I thought it
> should not sent out notifications. At least that is what the description
> of the field is saying. Am I doing something wrong here or do I have to
> configure something at my settings of bugzilla?

So, this is really a bugzilla question. I don't know the answer (I'm a
very simple user of bugzilla). It _may_ be that someone on this list
knows something about this, but you might best ask on a bugzilla
mailing list if you really need the answer.

Thanks,

Michael



-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
