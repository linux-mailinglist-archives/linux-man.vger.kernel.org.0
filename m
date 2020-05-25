Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 70A331E0AA9
	for <lists+linux-man@lfdr.de>; Mon, 25 May 2020 11:33:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2389328AbgEYJdQ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 25 May 2020 05:33:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56228 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2389251AbgEYJdQ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 25 May 2020 05:33:16 -0400
Received: from mail-ed1-x544.google.com (mail-ed1-x544.google.com [IPv6:2a00:1450:4864:20::544])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BD5C0C061A0E
        for <linux-man@vger.kernel.org>; Mon, 25 May 2020 02:33:14 -0700 (PDT)
Received: by mail-ed1-x544.google.com with SMTP id l25so14490659edj.4
        for <linux-man@vger.kernel.org>; Mon, 25 May 2020 02:33:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:content-transfer-encoding;
        bh=LFg84/Bdhu0F6bVc42mQhXUZ9CHI0mfeYij1smS7fgU=;
        b=IdBKlmTa7nPlQd9+CJ4WzofRn0IUDlIrXuloDvD5Frr7Y0DQAHjTLR8WaL3bVlDMkC
         kOF51TIAE2+ayY+ljswse654/MXNLK64Gz7OoNq2bWBqKpwSF/8P+nRxu6q0ls+qhw8Y
         hOfpZHaxVWy5vSqwbjUaHci+iDJYPsGnsCMRwWRAcBhmD4o8b1RiP5OP4yO5bItsg9dm
         yy2Ti70P19PYrvHx0n9e4Qo8beRUlK4YHFduaqXnQwBgVfj2hizdbsUMnUIrgeLoBXR+
         8qMQYk7u5GN1orhJPSX/BXttUuoUuDzpgaxBnc0q2iyTDSsGYpTZZelVG7k6T6oKMrmL
         Ex4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc:content-transfer-encoding;
        bh=LFg84/Bdhu0F6bVc42mQhXUZ9CHI0mfeYij1smS7fgU=;
        b=B8I4bcFrVupfIJJh6XPtMmx6CZapFQzr86smWQKDiezIl2QGSBnEP6uMKRjnq0/yhs
         4ZnjGFAg70ZpoVoAaiKJuMuxQ45xxYvpIvl140SYO1qU7Kqej4yzf9iIYX/1b3gf511Y
         /cyzwBeLUpy7tyokFhwLtJWrkE+ML5DYDNe7P5D8jXmNfVvC1YOYgS+xv3RYuxZwZ1vN
         RmddJIiA1iPrE9OUan9zK5LsBSsoleVox2yZZWVL+0xlvrpnEI7cAtAEpQH85qCc11rZ
         JzuJn24iJ9Q9QpbGOF9o6WFtn2HE0Zr0K8TCZRgdvfkoSDGHqeIbWO/AvbqlzsxpnVUC
         2Bkw==
X-Gm-Message-State: AOAM53060ma3AOtVj/VlQmCznh0xqr9t/OtKm6cqX+WpiM6y62TXXuMy
        OvCthOARTjjmxO0b4TfpXH3/2S7HM1LKfLlsKDnVwusv2e8=
X-Google-Smtp-Source: ABdhPJyP15a3/mc+piSqFBXy/M7Vel9M9KqN2AoP5EF3k2TiDdqK5o5D4KqEK9XlGbxVDOjv0tX3dI5lqZwog9t/CEE=
X-Received: by 2002:a50:8d5e:: with SMTP id t30mr13958127edt.332.1590399193472;
 Mon, 25 May 2020 02:33:13 -0700 (PDT)
MIME-Version: 1.0
References: <a258513b-a5c3-d772-df3f-e490768b73eb@juergen-sauermann.de> <20200525082243.rzjsn2fmco5pam4i@jwilk.net>
In-Reply-To: <20200525082243.rzjsn2fmco5pam4i@jwilk.net>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Mon, 25 May 2020 11:33:02 +0200
Message-ID: <CAKgNAkhz-fU_f298U8NChiodVUTZKvMeyZPNkGLVQSusQaitog@mail.gmail.com>
Subject: Re: scanf() and friends
To:     Jakub Wilk <jwilk@jwilk.net>
Cc:     =?UTF-8?Q?J=C3=BCrgen_Sauermann?= <mail@juergen-sauermann.de>,
        linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Mon, 25 May 2020 at 10:22, Jakub Wilk <jwilk@jwilk.net> wrote:
>
> Hi J=C3=BCrgen!
>
> * J=C3=BCrgen Sauermann <mail@juergen-sauermann.de>, 2020-05-24, 16:11:
> >This lets me wonder if the fact that my glibc version accepts (and
> >discards) a 0x prefix in a 'X' conversion is merely a convenience that
> >may disappear at some later point in time, or an intended feature on
> >which a programmer may rely on.
>
> It's an intended feature. C99 (and POSIX) requires stripping "0x".

Thanks for checking that Jakub. Of course J=C3=BCrgen is right that the
manual page should leave the programmer in no doubt on the behavior
here. I applied the patch below. Thanks for the report, J=C3=BCrgen.

Cheers,

Michael

--- a/man3/scanf.3
+++ b/man3/scanf.3
@@ -427,7 +427,12 @@ pointer to
 .IR "unsigned int" .
 .TP
 .B x
-Matches an unsigned hexadecimal integer; the next pointer must
+Matches an unsigned hexadecimal integer
+(that may optionally begin with a prefix of
+.I 0x
+or
+.IR 0X ,
+which is discarded); the next pointer must
 be a pointer to
 .IR "unsigned int" .
 .TP



--=20
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
