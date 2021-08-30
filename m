Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9EE9C3FBE7C
	for <lists+linux-man@lfdr.de>; Mon, 30 Aug 2021 23:46:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238674AbhH3Vqv (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 30 Aug 2021 17:46:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37852 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238438AbhH3Vqu (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 30 Aug 2021 17:46:50 -0400
Received: from mail-ot1-x332.google.com (mail-ot1-x332.google.com [IPv6:2607:f8b0:4864:20::332])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 78998C061575
        for <linux-man@vger.kernel.org>; Mon, 30 Aug 2021 14:45:56 -0700 (PDT)
Received: by mail-ot1-x332.google.com with SMTP id 107-20020a9d0bf4000000b0051b8be1192fso10053733oth.7
        for <linux-man@vger.kernel.org>; Mon, 30 Aug 2021 14:45:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:content-transfer-encoding;
        bh=PRXML5Wnrpld2RV52BQJFeBa3q+S+buhwWqhznW4SPs=;
        b=kg29iFQ1MU8cqBc4W/I7wtW3MHoS7FYNXFnN6QFncbEWS/TkOz2e1p0HSQaBNZDZaj
         Lvasv/l5rfrT+/JeZyXK6/ZTHoLioad6Vt3BWm1N+vfH8BRtTdc7E0bh6i1ZqJYp04GK
         Tm2TuV6zQRcPDM5fxTzCaE5UFk9XGTyEURcrfXNTkAYC7C/sBk1ABdTJHB3pFj45qfa6
         nIriWWIEUINlZNEoyPSd5xqSdjKXmc9bWWO7lcSrUf5Xy8zRRY3Unbj10lR0zsUu07/6
         WhI7IZ5krMv/lFNWpHjLSBvIt7oGN4Cgawt7ryUnDXM3JTxnOFdyzEEYBQ6G2mEk/6OT
         Q6qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc:content-transfer-encoding;
        bh=PRXML5Wnrpld2RV52BQJFeBa3q+S+buhwWqhznW4SPs=;
        b=hnkR/YmN4Ou1dVgNVRoz76spnfaC/alxcJtyNtBS3bjqsM1k3WvgkCkPJVhF2pmP2U
         iE6AZ7/hhsypPnGTCBBHCP/E5o2OMXk/1/XxxrLDWpEfqDo2p/k8EKggJhfVzoyko55o
         e4poJZPC/MfAwN4gglG7wvGpDC04iS8U8DTF1OSVZpdBeV0GaaEg5SpVwx32TgIkLMQ+
         R1YcmLk1u3662IPRNCvcJ4RrLJ54VBJAb3OMTljdc7/F3vAJIR39d04br5AE/KiV0Q4i
         WEu+7C5AU9WBCWzgwJQkZiMi7CEKK07rabGvFQU1U3ohIbcoFGUbeMNz7zOMjYljBedn
         c6ng==
X-Gm-Message-State: AOAM531VbG5gc+KQSEUUL5+NhPZpc7r+ECOzQVscHY+YL7xUZE74/4e/
        NZ8yEVMV6PFk+74wT9ROnQ5MCnUNw9hfDi5t7uM=
X-Google-Smtp-Source: ABdhPJz+90T0Z1kyOLJ6LFRBE+hFa115qDK9Dd+S0/NOAl+UN+DL3JA0IBqPhwP0FMwqUhbcGyAuPvSP5rryZ6sPhPA=
X-Received: by 2002:a05:6830:438d:: with SMTP id s13mr21364762otv.308.1630359955838;
 Mon, 30 Aug 2021 14:45:55 -0700 (PDT)
MIME-Version: 1.0
References: <268231613796665@mail.yandex.ru> <4c169a8f-4368-3423-1af1-e7f6ba7df8b9@gmail.com>
 <90ba66dc-8c1e-fea9-20f5-16ed65535d00@gmail.com> <20210830113934.h3bu6oemxhun2jwc@jwilk.net>
In-Reply-To: <20210830113934.h3bu6oemxhun2jwc@jwilk.net>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Mon, 30 Aug 2021 23:45:44 +0200
Message-ID: <CAKgNAkhZsEYDRX8NRZquJOT5ovN-vfspto18WTEp1S6_bSARNw@mail.gmail.com>
Subject: Re: exit: Bug reporting
To:     Jakub Wilk <jwilk@jwilk.net>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        Dave Chupreev <cdn.dev@yandex.ru>,
        linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Jakub,

On Mon, 30 Aug 2021 at 13:39, Jakub Wilk <jwilk@jwilk.net> wrote:
>
> * Alejandro Colomar <alx.manpages@gmail.com>, 2021-02-20, 11:05:
> >In the Linux kernel, there's only one system call, and it's called
> >exit (its entry point is sys_exit(), and can be called using
> >syscall(SYS_exit, ...) *but don't*), BUT it implements the
> >functionality of _exit() (as the standards call it; see above).
>
> To clarify, that's how it used to be, but since 2002ish there's also
> sys_exit_group, and glibc's _exit() uses that.
>
> BTW, the exit_group.2 man page could use an update (possibly by merging
> it into exit.2): it says that the "system call is is equivalent to
> _exit(2) except that it terminates not only the calling thread, but all
> threads in the calling process=E2=80=99s thread group", which isn't helpf=
ul
> these days.

Fair enough. I applied the patch below.

Cheers,

Michael

diff --git a/man2/exit_group.2 b/man2/exit_group.2
index fc8cbe9ef..a6a6d9b26 100644
--- a/man2/exit_group.2
+++ b/man2/exit_group.2
@@ -39,9 +39,7 @@ glibc provides no wrapper for
 necessitating the use of
 .BR syscall (2).
 .SH DESCRIPTION
-This system call is equivalent to
-.BR _exit (2)
-except that it terminates not only the calling thread, but all threads
+This system call terminates all threads
 in the calling process's thread group.
 .SH RETURN VALUE
 This system call does not return.


--=20
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
