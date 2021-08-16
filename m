Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 015953EE03F
	for <lists+linux-man@lfdr.de>; Tue, 17 Aug 2021 01:14:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232692AbhHPXPG (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 16 Aug 2021 19:15:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45562 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232597AbhHPXPF (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 16 Aug 2021 19:15:05 -0400
Received: from mail-ot1-x329.google.com (mail-ot1-x329.google.com [IPv6:2607:f8b0:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AEFF5C061764
        for <linux-man@vger.kernel.org>; Mon, 16 Aug 2021 16:14:33 -0700 (PDT)
Received: by mail-ot1-x329.google.com with SMTP id f16-20020a056830205000b00519b99d3dcbso1922190otp.2
        for <linux-man@vger.kernel.org>; Mon, 16 Aug 2021 16:14:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:content-transfer-encoding;
        bh=EHptxUIJBQBGq+Gs+W6WMyzbJV7L8FGfjoKbI+QNFQY=;
        b=CoCvjucizPgW1wsWlAdOzh1g9R0wUCV96sXNxcqIdWtmkChd19bkoKoIIs9/VmHTDS
         RvLdjBL3csMLMgGqvIs2VomduFdZUc+EQp9f+x34rIB4hjqVGTEtivrGlosVpSKftnYu
         us7avygVs54zrjC+KxII+sl7PTKpWxxOG8zD/jfjJiDzVuOKSy+F15fG1bZ5v8bswlGB
         nR3Z9Q85xJNLNTcgC+TNRJlggGH+ZnBRh9t0bVAiejoCuiSowxor/WqBhQgVOxoCJFpL
         9JfAirvooSdexGQmdfhqPjgz9/jgASHv1WD511suio4/aL84cXQTohf6k4HhHR9/8pym
         37/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc:content-transfer-encoding;
        bh=EHptxUIJBQBGq+Gs+W6WMyzbJV7L8FGfjoKbI+QNFQY=;
        b=l5QMgckdMtX3CNpr8MKcps9DUly1M8yEZt/U+2GpCA3vftfP7V+sVYDbfV9coszfJ9
         3rRa+5wetGqAF+QXwo+zZf05hfdK/sBmMG3/toIsNYPzggdATErWI0vqqAwrEt7dWBMe
         2re0ZwEo4WdSUarpAAG5PqBM9mMSKoKRgR7DDuP+ohyGH51iuWdwLNEp0o5Z+zOze20n
         GzjQnFI51j1hCSpGNVWdd/sN5MK7vlOlqhjCPFLewegriYh8CgN2X3f3QWDxPFw5Jf/e
         C5SmMUjJ0lTLHWfa4+37A2XJpZx/bwO/1kxHN+KRjHnTEzYHE1pCzEmV0UYwm8TQrkT/
         BnXQ==
X-Gm-Message-State: AOAM532heEtSZ6cPzl5Qt/ykfeGUl7mnmpf+gYww+uzf0jPxWd/QLTIv
        zcD1e6to7tJLasP925+ZVxkSVVV4rGhzehlJ89amXsaYLqg=
X-Google-Smtp-Source: ABdhPJz3F1NJ6oqRDXDUTe6HDD/AChaPRG1xEQFOpJWeywJThGMfQ+D+drXbnGRjqYQ+WP7R+mNSxCIX0pLyQzuGCEc=
X-Received: by 2002:a9d:6a09:: with SMTP id g9mr394135otn.308.1629155672986;
 Mon, 16 Aug 2021 16:14:32 -0700 (PDT)
MIME-Version: 1.0
References: <Pine.BSM.4.64L.2108162130380.2192@herc.mirbsd.org>
In-Reply-To: <Pine.BSM.4.64L.2108162130380.2192@herc.mirbsd.org>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Tue, 17 Aug 2021 01:14:21 +0200
Message-ID: <CAKgNAkge=h68w=5Vd9g9i8-vZnrPuN+pyVd=NgTxq9DNLUu-aA@mail.gmail.com>
Subject: Re: request: calling conventions documentation
To:     Thorsten Glaser <tg@debian.org>
Cc:     linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Thomas,

On Mon, 16 Aug 2021 at 23:39, Thorsten Glaser <tg@debian.org> wrote:
>
> Hi,
>
> I hope I=E2=80=99m right here, I wasn=E2=80=99t sure whether Bugzilla is =
also for
> feature requests.
>
> syscall(2) on my Debian systems has these wonderful tables for the
> calling conventions on all kinds of CPU architectures. I often have
> to debug various things in various libcs on various platforms for
> various bugs =E2=98=BA and would love it if this information could someho=
w
> be extended by the relevant userspace calling conventions (so I can
> read =E2=80=9Cforeign=E2=80=9D, i.e. not i8086/i386 Intel, assembly more =
easily,
> figure out the bugs in their {,sig}{set,long}jmp implementations,
> write patches without extra digging, etc.
>
> I=E2=80=99m aware that linux-man is probably more kernel-oriented and
> conventions can differ by libcs (e.g. I=E2=80=99ve seen libcs that use
> a regparm convention on i386), but the =E2=80=9Cstandard=E2=80=9D case sh=
ould
> be sufficiently on topic (especially as I think the vDSO would
> also use these conventions).
>
> Things like, what arguments go into which registers, which are
> saved by who, etc.

So, the manual page already has the info below. And from your mail
above, it's not immediately clear to me what you would like to see
added. Could you provide a concrete example for a specific
architecture?

Thanks,

Michael

=3D=3D=3D
       Arch/ABI      arg1  arg2  arg3  arg4  arg5  arg6  arg7  Notes
       =E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80
       alpha         a0    a1    a2    a3    a4    a5    -
       arc           r0    r1    r2    r3    r4    r5    -
       arm/OABI      r0    r1    r2    r3    r4    r5    r6
       arm/EABI      r0    r1    r2    r3    r4    r5    r6
       arm64         x0    x1    x2    x3    x4    x5    -
       blackfin      R0    R1    R2    R3    R4    R5    -
       i386          ebx   ecx   edx   esi   edi   ebp   -
       ia64          out0  out1  out2  out3  out4  out5  -
       m68k          d1    d2    d3    d4    d5    a0    -
       microblaze    r5    r6    r7    r8    r9    r10   -
       mips/o32      a0    a1    a2    a3    -     -     -     1
       mips/n32,64   a0    a1    a2    a3    a4    a5    -
       nios2         r4    r5    r6    r7    r8    r9    -
       parisc        r26   r25   r24   r23   r22   r21   -
       powerpc       r3    r4    r5    r6    r7    r8    r9
       powerpc64     r3    r4    r5    r6    r7    r8    -
       riscv         a0    a1    a2    a3    a4    a5    -
       s390          r2    r3    r4    r5    r6    r7    -
       s390x         r2    r3    r4    r5    r6    r7    -

       superh        r4    r5    r6    r7    r0    r1    r2
       sparc/32      o0    o1    o2    o3    o4    o5    -
       sparc/64      o0    o1    o2    o3    o4    o5    -
       tile          R00   R01   R02   R03   R04   R05   -
       x86-64        rdi   rsi   rdx   r10   r8    r9    -
       x32           rdi   rsi   rdx   r10   r8    r9    -
       xtensa        a6    a3    a4    a5    a8    a9    -



--=20
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
