Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 6D9C6AD948
	for <lists+linux-man@lfdr.de>; Mon,  9 Sep 2019 14:42:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728254AbfIIMm3 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 9 Sep 2019 08:42:29 -0400
Received: from mail-ed1-f67.google.com ([209.85.208.67]:42177 "EHLO
        mail-ed1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728549AbfIIMm3 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 9 Sep 2019 08:42:29 -0400
Received: by mail-ed1-f67.google.com with SMTP id y91so12793318ede.9
        for <linux-man@vger.kernel.org>; Mon, 09 Sep 2019 05:42:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc;
        bh=pfAWUF+KG6VfTEi7k4RU64rapT/EWDyD5n7IoiKdV9k=;
        b=Owt4F0sb9WqcSltKYu44qqqGKctRQFusZT27o25QwMMQCCzyvXprrZXkVXeyyZrlqJ
         BFkP6iJYK4OQBVdzjDyp3Wwf0sGvZBKPB+o8s+voQymRdGwF9B2wP8kDtTfFTfraIowK
         RaZ7Gmaym4HQFBukbPv/bMstqobY1KxvkhYhamHTHCunyutbz4mxco4DomOkSYTEpwdM
         FIx9cp1U+YcepqWluI0hCG7yVgZ3AMoq5RFVCPKS/LKQ4U9biWDapn/521TvbxiVHTw0
         1JVwXGO1+E5NBs0hwj2wJ8GiOqTrcMm7tA3VIRf2IzoF3uxPHUf5U+2kSsiCf0t8AI4n
         wbLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc;
        bh=pfAWUF+KG6VfTEi7k4RU64rapT/EWDyD5n7IoiKdV9k=;
        b=Zmgjq0yjxSk6IZzZzLPj9I70NI7SbxfnOrgN5I76NgXVww7nyIwFIfxlTytwySZljL
         c+quwhBLox3dfEqcByuOGQorfNrT6JJjbdnDNu762GWUBAqJiBcKGhCKIt93h4qNNNBa
         iW2aD0kT12b+/YXNpA4Qy1uXo5XcLsYGTPOyJ0XnNFbhzNP4ajdBvpkIdE6+x8ZehoEP
         SHls/NXu1ImCeW4jWPreOJE9o11Oq+2TB7yKUWUUYzR2ac6kjrkE8W260LtmYWrInDOh
         DPY+/+RqSXLJLUCutteK9l3AWDvlEkwVyvsz56GwXPufFDHPrZVVugPuyrbWHACQ+3zw
         PbjA==
X-Gm-Message-State: APjAAAWJideUw//e+J7D94YSHk6JNLW4F09VGOfXN0u95E1cBdvbizWJ
        cz2d7GhnnUzDcWV4qZa5YemtqKW3cidZyEk3ua8=
X-Google-Smtp-Source: APXvYqxkaDvJctO8CbB7QLqRKFpue5CvY05+cMKzrZkKlKWQ12cpWCVm0mM4i2wWRxreUcp/i7TncGBka2s2l5UeEdA=
X-Received: by 2002:a05:6402:1845:: with SMTP id v5mr18916323edy.130.1568032947372;
 Mon, 09 Sep 2019 05:42:27 -0700 (PDT)
MIME-Version: 1.0
References: <CAMkHNDzkn10oZLyK9S8-UnjGn=OyMy=P8Bx7+vf0iEBwpc5p2g@mail.gmail.com>
 <CAKgNAkhOCxB_go-+qSJBAabJxi67c=iBXfajTY09CXUMUj=hnQ@mail.gmail.com> <5D761692.9090905@bfs.de>
In-Reply-To: <5D761692.9090905@bfs.de>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Mon, 9 Sep 2019 14:42:16 +0200
Message-ID: <CAKgNAkhx2GxfW85C8Ef7ZYmohpYLpV2vX_N-PDrsturmmgb2oA@mail.gmail.com>
Subject: Re: Quick fix for syscall man page
To:     Walter Harms <wharms@bfs.de>
Cc:     Florin Blanaru <florin.blanaru96@gmail.com>,
        linux-man <linux-man@vger.kernel.org>,
        Adam Borowski <kilobyte@angband.pl>
Content-Type: text/plain; charset="UTF-8"
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Walter,

On Mon, 9 Sep 2019 at 11:08, walter harms <wharms@bfs.de> wrote:
>
>
>
> Am 09.09.2019 10:52, schrieb Michael Kerrisk (man-pages):
> > [Adding Adam Borowski in CC, since he wrote the riscv text back at the
> > start of 2018, andand he may have a comment.]
> >
> > On Thu, 5 Sep 2019 at 18:35, Florin Blanaru <florin.blanaru96@gmail.com> wrote:
> >>
> >> http://man7.org/linux/man-pages/man2/syscall.2.html
> >>
> >> In the first table, for the riscv Arch/ABI, the instruction should be
> >> ecall instead of scall.
> >>
> >> According the official manual, the instruction has been renamed.
> >> https://content.riscv.org/wp-content/uploads/2017/05/riscv-spec-v2.2.pdf
> >>
> >> "The SCALL and SBREAK instructions have been renamed to ECALL and
> >> EBREAK, re-spectively. Their encoding and functionality are
> >> unchanged."
> >
>
> Maybe it would be helpful to add a "footnote" that this is a rename only.
> Otherwise people may get confused.

Yes, perhaps that would be helpful. I updated the patch to be as below.

Thanks!

Michael

diff --git a/man2/syscall.2 b/man2/syscall.2
index 77e6bccdd..53118c297 100644
--- a/man2/syscall.2
+++ b/man2/syscall.2
@@ -196,7 +196,7 @@ mips        syscall v0      v0      v1      a3      1, 6
 nios2  trap    r2      r2      -       r7
 parisc ble 0x100(%sr2, %r0)    r20     r28     -       -
 powerpc        sc      r0      r3      -       r0      1
-riscv  scall   a7      a0      a1      -
+riscv  ecall   a7      a0      a1      -       7
 s390   svc 0   r1      r2      r3      -       3
 s390x  svc 0   r1      r2      r3      -       3
 superh trap #0x17      r3      r0      r1      -       4, 6
@@ -298,6 +298,11 @@ in the system call interface, even if it is
defined in the System V ABI.
 .in
 .ft P
 \}
+.IP [7]
+On riscv, the
+.I ecall
+instruction was formerly named
+.IR scall .
 .PP
 The second table shows the registers used to pass the system call arguments.
 .if t \{\





-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
