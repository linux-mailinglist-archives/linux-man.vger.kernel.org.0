Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 48E46AD51C
	for <lists+linux-man@lfdr.de>; Mon,  9 Sep 2019 10:53:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2389303AbfIIIxI (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 9 Sep 2019 04:53:08 -0400
Received: from mail-ed1-f65.google.com ([209.85.208.65]:36827 "EHLO
        mail-ed1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2389292AbfIIIxI (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 9 Sep 2019 04:53:08 -0400
Received: by mail-ed1-f65.google.com with SMTP id f2so5858458edw.3
        for <linux-man@vger.kernel.org>; Mon, 09 Sep 2019 01:53:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc;
        bh=qlWmGYDW3l4dNVFkHNQh1zi8HLrcAu1ucejSLMvAYk4=;
        b=ebsvpFUh8IUXAfcMdPDIvlyfqGfQdeOdICTsVspdkvQukmxs8e8aV+7uL4D7yUQpbY
         lfBvJWMuk7MKp8w8KY0qgwYEj+V4+HXWma8zgNnjCouFk31/AGffU1hQjlx3fhl8sbw9
         lXkIeiU1rTZncqVbphL4oRopdz0aBF7RHOLRTW0DLV2Bl21V6mgEaZ1D/9yPoZHTRtEn
         kMxeXuvHa8dXCCJ579W2wAnfarsYZQsi4mHqMB381rFW5kVKOOW0AooMie0LRu/PuGbD
         A8pdS1A3R+NBUUNsNA0mEXgupXoHjt/KR/c4n8KH2A4EyiXYKB/akwVpxqHdM5wfwF8z
         HpNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc;
        bh=qlWmGYDW3l4dNVFkHNQh1zi8HLrcAu1ucejSLMvAYk4=;
        b=D2amBIkkWyzqtL68Qpoj3bpOIjC9LLXEGl/R7SEVjiLtslt2lMui7anpBvrq8JHj3L
         QLiYV8H1M1b6jGhicBsPTM+1NfSidBy0oD3pHGR9vITR1cj6iRUbeu4qt69N1PUWLWak
         RnT9MnoZd3Cj/ejlAn02JlUHUOjr7BUDdaWF81r0Mwr69PwW6BaQCxXScws/bIQ5YOKg
         Zepse/7cWHmPv84QLi1cwIUk2+zVhKoEU8kmE7LZXHrE0QoWacXzteMmKa1Xab1JAbDI
         vsAI8tIlqSWeoRjjGolS2FYSyKlNHOozTGOF9UU61nfTuvKPk5meGiDMfC8WhsesaLEn
         58/Q==
X-Gm-Message-State: APjAAAWvT2b3j2rcujOsajmxM0jd7/8eROTmGQ1CzL1H82YQQCP/rzE8
        V1w1G3Aobn3Gb9C7oRv4nu2nAvy+/ZNEwHmv5jE=
X-Google-Smtp-Source: APXvYqycLifz3XABw3IwN5n/6A9s1z4RdRVjR2hP2sQb2Zj3tR1cg21ffKFkKaIhOStEurdKgSbSp7kLcL0qmRWoGes=
X-Received: by 2002:a17:906:edcb:: with SMTP id sb11mr18259622ejb.144.1568019186822;
 Mon, 09 Sep 2019 01:53:06 -0700 (PDT)
MIME-Version: 1.0
References: <CAMkHNDzkn10oZLyK9S8-UnjGn=OyMy=P8Bx7+vf0iEBwpc5p2g@mail.gmail.com>
In-Reply-To: <CAMkHNDzkn10oZLyK9S8-UnjGn=OyMy=P8Bx7+vf0iEBwpc5p2g@mail.gmail.com>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Mon, 9 Sep 2019 10:52:55 +0200
Message-ID: <CAKgNAkhOCxB_go-+qSJBAabJxi67c=iBXfajTY09CXUMUj=hnQ@mail.gmail.com>
Subject: Re: Quick fix for syscall man page
To:     Florin Blanaru <florin.blanaru96@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>,
        Adam Borowski <kilobyte@angband.pl>
Content-Type: text/plain; charset="UTF-8"
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

[Adding Adam Borowski in CC, since he wrote the riscv text back at the
start of 2018, andand he may have a comment.]

On Thu, 5 Sep 2019 at 18:35, Florin Blanaru <florin.blanaru96@gmail.com> wrote:
>
> http://man7.org/linux/man-pages/man2/syscall.2.html
>
> In the first table, for the riscv Arch/ABI, the instruction should be
> ecall instead of scall.
>
> According the official manual, the instruction has been renamed.
> https://content.riscv.org/wp-content/uploads/2017/05/riscv-spec-v2.2.pdf
>
> "The SCALL and SBREAK instructions have been renamed to ECALL and
> EBREAK, re-spectively. Their encoding and functionality are
> unchanged."

Thanks for all of the details. I've applied the patch below.

Cheers,

Michael

diff --git a/man2/syscall.2 b/man2/syscall.2
index 77e6bccdd..33e5ea655 100644
--- a/man2/syscall.2
+++ b/man2/syscall.2
@@ -196,7 +196,7 @@ mips        syscall v0      v0      v1      a3      1, 6
 nios2  trap    r2      r2      -       r7
 parisc ble 0x100(%sr2, %r0)    r20     r28     -       -
 powerpc        sc      r0      r3      -       r0      1
-riscv  scall   a7      a0      a1      -
+riscv  ecall   a7      a0      a1      -
 s390   svc 0   r1      r2      r3      -       3
 s390x  svc 0   r1      r2      r3      -       3
 superh trap #0x17      r3      r0      r1      -       4, 6

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
