Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 414971B1471
	for <lists+linux-man@lfdr.de>; Mon, 20 Apr 2020 20:25:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726013AbgDTSZz (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 20 Apr 2020 14:25:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58364 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725784AbgDTSZz (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 20 Apr 2020 14:25:55 -0400
Received: from mail-vs1-xe43.google.com (mail-vs1-xe43.google.com [IPv6:2607:f8b0:4864:20::e43])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6BDE2C061A0C
        for <linux-man@vger.kernel.org>; Mon, 20 Apr 2020 11:25:55 -0700 (PDT)
Received: by mail-vs1-xe43.google.com with SMTP id e22so1518725vsa.12
        for <linux-man@vger.kernel.org>; Mon, 20 Apr 2020 11:25:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:content-transfer-encoding;
        bh=KzSqWuaJRYyf/hpCqE1hv+qrqkieFs8iKOKyBv3wzaw=;
        b=CvRcNK1PAIO/CY2ud7EdKToRTd++CpWCNMKq5sE8MwD4GmkV7nk1ndkEw37MBI0gqm
         eYsd+xZSYY/Sowac6nbqS6wGakxGnyXjwh+Fgby7EMBAvjAn8lhghfqmFnLlDKEewHCL
         aHm64/IL/QVsVKis4NYW9yu3M0CJ/an4yPR4IXuJQP9VBdfCjVhJ/P/0ahiuf9lgmnwc
         2B9khdmPqCEjubQ13tPOaE7zSuKWLcschAeWU0AvzYHHfMG8X+4wyBq+vba+a8Ghn7/c
         PlTJCi/Wrz4KShadBoaQEIYfR0cFPKA9LRFprehdpEtRYBaGiIPILL+neYXR49v4MEPL
         724Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc:content-transfer-encoding;
        bh=KzSqWuaJRYyf/hpCqE1hv+qrqkieFs8iKOKyBv3wzaw=;
        b=n99CiSiZdkqgMX6dGR8eJ3IOOHaOEHdJDWcm9+c7i6eS+7iM6Lf1uSU+xlPdzSQGG7
         PpOZE7wmMuaMa6phHldFlH+oZrg/75PTK0w1Uh2ChOI85S618BfMycBOYlGB2lJqZLG5
         NQlDN5sViu03h23VcPB8yyaKuiTdVBRm7zTFF3xc9ip6kyIlTgs4iR9GDqz0e70ct+9u
         eA2FxmzN3QzvXkqFqdPS3KV7p2noy9jE8V3Qycrz8IOhazHW4RKUk3hwpa3B1M45jmB/
         aDUyh4LhdL6q2zdmJVvG9s3CtAI9hZybxzRs+4KMBcJJDPKi+dQJsxsA4gw04WxYw0SM
         3mXA==
X-Gm-Message-State: AGi0PuY8nloGVq0Mwc/WOQF6SbMn68GKI7j5vvikgTEx4bVMMpwMu4OD
        Z+xYmhhboTaxHzHX265NKqCEvjjEeTyZC9yvzyk=
X-Google-Smtp-Source: APiQypLiZyBtvoLnDMYxZUF985zJCzFeTofJyF4Q9ZYJyoMdMLwU3/mpsABsTbDmstG1vyn3AoLKOQIQqavlzwYQOQk=
X-Received: by 2002:a05:6102:44c:: with SMTP id e12mr12653835vsq.10.1587407154633;
 Mon, 20 Apr 2020 11:25:54 -0700 (PDT)
MIME-Version: 1.0
References: <20200419064826.GA32071@Debian-50-lenny-64-minimal>
 <9342d9e7-5629-6908-918a-44270d4e7b4f@gmail.com> <60355D0B-FEDB-4F67-8B38-E3614B9BAC97@kolumbus.fi>
In-Reply-To: <60355D0B-FEDB-4F67-8B38-E3614B9BAC97@kolumbus.fi>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Mon, 20 Apr 2020 20:25:43 +0200
Message-ID: <CAKgNAkiQXgavV88Aou8e3MQ=HO2vyp4FFBZ7Q5GXuXD20EUMLw@mail.gmail.com>
Subject: Re: Errors in man pages, here: st.4.po: Wording
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

On Mon, 20 Apr 2020 at 17:59, "Kai M=C3=A4kisara (Kolumbus)"
<kai.makisara@kolumbus.fi> wrote:
>
>
>
> > On 20. Apr 2020, at 12.48, Michael Kerrisk (man-pages) <mtk.manpages@gm=
ail.com> wrote:
> >
> > [CC +=3D Kai]
> >
> > On 4/19/20 8:48 AM, Helge Kreutzmann wrote:
> >> Dear manpages maintainers.
> >>
> ...
> >> **
> >>
> >> media =E2=86=92 data
> >>
> >> msgid "Go to the end of the recorded media (for appending files)."
> >>
> End of media is the end of the tape. End of recorded media means
> after the last record/filemark that has been written to the tape. Usually
> (not always) you can write more data after what has been written
> so far. End of recorded media is standard tape terminology.
>
> >> --
> >> drive =E2=86=92 media
> >>
> >> "B<GMT_WR_PROT>(I<x>): The drive is write-protected.  For some drives =
this "
> >> "can also mean that the drive does not support writing on the current =
medium "
> >> "type."
> >
> This basically means that the drive refuses to write to the media. It can=
 be
> write-protected by the user. The additional text hints at the possibility
> that the drive can only read the media type in the drive. It is quite
> common that drives can read, for instance, several old formats
> (usually with smaller capacity) but can write only the newest types.
> Many times the user may not know very well the properties of the
> drive and wonders, why can=E2=80=99t I write even if the tape can be read
> and the write protect tab is off.

So, if I understand right, then no changes to the wording are required?

Thanks,

Michael

--=20
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
