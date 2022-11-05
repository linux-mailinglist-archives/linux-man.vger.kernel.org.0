Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D96E261D7F8
	for <lists+linux-man@lfdr.de>; Sat,  5 Nov 2022 07:50:22 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229495AbiKEGuW (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 5 Nov 2022 02:50:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49846 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229486AbiKEGuV (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 5 Nov 2022 02:50:21 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5DCC4C75A
        for <linux-man@vger.kernel.org>; Fri,  4 Nov 2022 23:50:20 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id E79A1604EF
        for <linux-man@vger.kernel.org>; Sat,  5 Nov 2022 06:50:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 27143C433D6
        for <linux-man@vger.kernel.org>; Sat,  5 Nov 2022 06:50:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1667631019;
        bh=SepDzBh6WYKJNn6UTU4aGeVN+4JZct/10HJVPFLkHCA=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=ddiQwFszi0FihsI6BrtIlRAd9sm4nC9zI89Ju9XELFDVx8ocoDemRYq8EplgIdMpV
         ltp7Bm9EE/Bc/7NMqIWvID18n2dmw1n/MCRmzxArucqLUx9eQl/aOi4U2HJFMPIuuS
         LCfoXAi7rnUjmJ6+6E5z89XbXQxs0kaFsEfOUvxNVbJVm4B3eHAcYE1Sxg/QahTWr+
         3yPEh+Pe3AaZE/l+JGNk2FjcLFRJTiS8sRV4NTL4ItYpzC4SiJY+ZXehFk6V6+xH0e
         +LcfJbwR1BXFJhZQTgHHi6fyQlGm/biunYT6Lok2vyz9/wG3vqIN+FlW0woMC0zcXI
         R/tn6DYhK4OHA==
Received: by mail-ed1-f46.google.com with SMTP id s12so865585edd.5
        for <linux-man@vger.kernel.org>; Fri, 04 Nov 2022 23:50:19 -0700 (PDT)
X-Gm-Message-State: ACrzQf0vwWyTfJaAfzzH5mBXUEWD5cFD+XlNYIcRMn4r5EYJwT2sBBTG
        v8l0Phr+6cN2VqDQHy19ORQ9wRCP20n/x51qv7s=
X-Google-Smtp-Source: AMsMyM4IS0LZhUdYmoOACHK/koIeZDFuVuXrS+5iUGJHovwgjRBoRpM8Z6mF0LkhvwczPKtdlFmmnjIfSCHcBAi9jOE=
X-Received: by 2002:a05:6402:2937:b0:461:32aa:32da with SMTP id
 ee55-20020a056402293700b0046132aa32damr38277788edb.78.1667631017355; Fri, 04
 Nov 2022 23:50:17 -0700 (PDT)
MIME-Version: 1.0
References: <20221105021514.8344-1-xry111@xry111.site>
In-Reply-To: <20221105021514.8344-1-xry111@xry111.site>
From:   Huacai Chen <chenhuacai@kernel.org>
Date:   Sat, 5 Nov 2022 14:50:06 +0800
X-Gmail-Original-Message-ID: <CAAhV-H4eWeLNtRQg+nuZZH-BH-z7BB_Jy-JQBvxt9gvsJp6HLQ@mail.gmail.com>
Message-ID: <CAAhV-H4eWeLNtRQg+nuZZH-BH-z7BB_Jy-JQBvxt9gvsJp6HLQ@mail.gmail.com>
Subject: Re: [PATCH] syscall.2: add loongarch
To:     Xi Ruoyao <xry111@xry111.site>
Cc:     Alejandro Colomar <alx@kernel.org>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        linux-man@vger.kernel.org, Wang Xuerui <kernel@xen0n.name>,
        loongarch@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-8.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Reviewed-by: Huacai Chen <chenhuacai@loongson.cn>

On Sat, Nov 5, 2022 at 10:15 AM Xi Ruoyao <xry111@xry111.site> wrote:
>
> Link: https://lore.kernel.org/loongarch/1f353678-3398-e30b-1c87-6edb278f74db@xen0n.name/
> Link: https://sourceware.org/git/?p=glibc.git;a=blob;f=sysdeps/unix/sysv/linux/loongarch/sysdep.h
> Signed-off-by: Xi Ruoyao <xry111@xry111.site>
> ---
>  man2/syscall.2 | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/man2/syscall.2 b/man2/syscall.2
> index 1bac0b9d7..a2aef6d33 100644
> --- a/man2/syscall.2
> +++ b/man2/syscall.2
> @@ -176,6 +176,7 @@ arm64       svc #0  w8      x0      x1      -
>  blackfin       excpt 0x0       P0      R0      -       -
>  i386   int $0x80       eax     eax     edx     -
>  ia64   break 0x100000  r15     r8      r9      r10     1, 6
> +loongarch      syscall 0       a7      a0      -       -
>  m68k   trap #0 d0      d0      -       -
>  microblaze     brki r14,8      r12     r3      -       -
>  mips   syscall v0      v0      v1      a3      1, 6
> @@ -301,6 +302,7 @@ arm64       x0      x1      x2      x3      x4      x5      -
>  blackfin       R0      R1      R2      R3      R4      R5      -
>  i386   ebx     ecx     edx     esi     edi     ebp     -
>  ia64   out0    out1    out2    out3    out4    out5    -
> +loongarch      a0      a1      a2      a3      a4      a5      a6
>  m68k   d1      d2      d3      d4      d5      a0      -
>  microblaze     r5      r6      r7      r8      r9      r10     -
>  mips/o32       a0      a1      a2      a3      -       -       -       1
> --
> 2.38.1
>
