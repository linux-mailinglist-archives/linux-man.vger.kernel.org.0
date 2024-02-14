Return-Path: <linux-man+bounces-446-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 12B29854A79
	for <lists+linux-man@lfdr.de>; Wed, 14 Feb 2024 14:27:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A7F4C281594
	for <lists+linux-man@lfdr.de>; Wed, 14 Feb 2024 13:27:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0AB87524D1;
	Wed, 14 Feb 2024 13:27:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="HUySoBEH"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 300E429437
	for <linux-man@vger.kernel.org>; Wed, 14 Feb 2024 13:27:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707917238; cv=none; b=KwnjeU13B+ChidcngDHk+dC1bV9YGbz++jsJtRd7mgS2ftWGkt6FGR8PCfYHoHxfb4bGGFVFXhweqr3B0HHvcBrbhPFbgm+C8U3AzB8EawYiVw5lQBvsZM4USfJugL0c+4pmS8CUS0XtaKOwiRmOssnhEMDpcwdqgMd8PCU89uA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707917238; c=relaxed/simple;
	bh=8lr8w2/DR28ympeNwC59TLVPx5cAlvdINeEEPMikCaY=;
	h=MIME-Version:From:Date:Message-ID:Subject:To:Cc:Content-Type; b=kOhTTzVcmTy3lHAgXogfBwg067ByrHi+qA0cnsADBve+0mIwrG3N6o8hTXMjfm62pWbmGXK4nymfuQoF8RlN6zxTrf5H/wYixXzw/PU1Akz1oP4MoUNqleqnUk0VR8Rma+nyrAb2kvb13qn89mD/56kLdqrYL1/z3X3244QImhI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=HUySoBEH; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-411f439fbdbso2998515e9.2
        for <linux-man@vger.kernel.org>; Wed, 14 Feb 2024 05:27:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1707917235; x=1708522035; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=EqIKMGImbVYNEr2eZkHJ/bJ+2Hey17vceh1OV48doDk=;
        b=HUySoBEHWWgauSZIdB6RfA41xPPJsCHFWiXRjBh5pnQa6mA9wJRh+TSsQMOG5wuJ/Y
         iB+peFA2OeRuktFjh3Fn80yrCZZmDwXLNGHM1lvsk3zGI3LbSKTDAxrziravPExm6rVf
         IJQr04gKB5bYYhN4F/WCEG3OPMB/UFhfMM2DdT+3hZDKbf/JpsMoD4q2OoBUzNVleIRD
         fmnMgjtuHT0SYJe8UVRdfIz6P2hanVBFAjQW53tYTeETh+OV0O/pleXIacfNh3IyB7/h
         9z8I9+3dkTRy3xgWFVS6RSFjxV5wS+GmR25QU3GsWKMm7K/T4ZVfkMRs7X+0RZI90Cw3
         wWhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707917235; x=1708522035;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=EqIKMGImbVYNEr2eZkHJ/bJ+2Hey17vceh1OV48doDk=;
        b=fcVuh3Y4K/hmJMmZ3jQj7s/oHdL8b2I+BS94hHX6KnQzKF2r5il7uuDbeBVnJPQW2s
         ySzVMgpZUzRPN45HUYpkpHOPRUx6GZQ9aUgl7HZFdt3Jk3xcdBFC0DxyN5gat4zmgSFi
         EbPbyZ/qBP3WM/3AHN22QvUYQ8qJcRsmCtHDP3qfXqdP0f5TcbpO4wQM2jaaz1IRnQTE
         aNHiSoS2BLQv8rwcWuLTNKK3N+4pCbHLsrlpntfZtSW8NetKhg5CFBf/bfGSGgRVXwpy
         Bueskyh/KV7UoBsJCRR65o4PIJKLaz3GU1ApQn+wTGfBx/VumtWhByGYrmD4a5BMUEHA
         jZJw==
X-Gm-Message-State: AOJu0Ywzjwr/cCuu4i2VNxVnEzT5BzjpPA+gySvSGWzcN6F2xKrnZ8yN
	HFuiU7AjNwrYdEd+YQlJLbtkpuppU4aKkdBim+h3tTqnR/CA/UZltbHStoXGRiyJgT6oXRPSE5q
	CwZ36xlv6MeGyQy0eErB2UbdiY0oJBlYwC9Q=
X-Google-Smtp-Source: AGHT+IEzuqaVBYNnySbFEqpFoLs/Uvqg6IApPViXaCy7X9LRkhNpzcw6I25MvQm4+XcKfCh/96zX7q0AbhJ+tFI4x+8=
X-Received: by 2002:a05:600c:4f48:b0:411:c3d3:94dd with SMTP id
 m8-20020a05600c4f4800b00411c3d394ddmr1905937wmq.28.1707917235161; Wed, 14 Feb
 2024 05:27:15 -0800 (PST)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: Ronald Monthero <debug.penguin32@gmail.com>
Date: Wed, 14 Feb 2024 23:26:39 +1000
Message-ID: <CALk6Uxoss7s-rxsKW=dcGWd9rmj3xnLksQvLn7Cyb7EvdSA2Ag@mail.gmail.com>
Subject: Documentation: Architecture/ABI calling convention table - syscall( )
To: alx@kernel.org
Cc: linux-man@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello,
Below is in relation to architecture calling standards table for man
syscall, for the indicated at [1] , [2]  and [3]   need to be changed
perhaps.  ( arg4 of x86-64 architecture needs to be rcx instead of r10
and the x32 arch table values needs replacement with exx register
naming respectively. And also the return value register table for x32
needs to be eax and edx for return val and return val2 respectively )
------------

       Arch/ABI      arg1  arg2  arg3  arg4  arg5  arg6  arg7  Notes
       =E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80
       alpha            a0    a1    a2    a3    a4    a5    -
       arc                r0    r1    r2    r3    r4    r5    -
       arm/OABI     r0    r1    r2    r3    r4    r5    r6
       arm/EABI      r0    r1    r2    r3    r4    r5    r6
       arm64          x0    x1    x2    x3    x4    x5    -
       blackfin       R0    R1    R2    R3    R4    R5    -
       i386            ebx   ecx   edx   esi   edi   ebp   -
       ia64            out0  out1  out2  out3  out4  out5  -
       m68k          d1    d2    d3    d4    d5    a0    -
       microblaze    r5    r6    r7    r8    r9    r10   -
       mips/o32      a0    a1    a2    a3    -     -     -     1
       mips/n32,64   a0    a1    a2    a3    a4    a5    -
       nios2          r4    r5    r6    r7    r8    r9    -
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
                                                 ^^-----   =3D=3D> need to
be rcx ?          <<   [1]
       x32           rdi   rsi   rdx   r10   r8    r9    - =3D=3D>  to be
exx regs   << [2]


       =3D>  For x86-64 architecture the function calling standards
         the arg4 register should be rcx

       =3D> And for x32 it needs to be replaced with x86 32 bit register va=
riants
         as arg1 =3D edi , arg2 =3D esi , arg3 =3D edx, arg4 =3D ecx


    2)  Also noticed the return value register table needs similar
change for x86-32 bit
     it needs to be eax instead of rax and edx instead of rdx.

       Arch/ABI    Instruction      System  Ret  Ret  Error    Notes
                                                 call #    val   val2
       =E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80

      < snipped >

       sparc/32    t 0x10                 g1      o0   o1   psr/csr  1, 6
       sparc/64    t 0x6d                 g1      o0   o1   psr/csr  1, 6
       tile             swint1                R10     R00  -    R01      1
       x86-64      syscall                rax     rax  rdx  -        5
       x32            syscall               rax     rax  rdx  -        5

^^^-----^^^--^^^------------------->            <<  [3]

         =3D>      for x32 return register has to be changed as
                   rax =3D> eax  and rdx =3D> edx


BR,
ronald

