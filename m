Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7FD983D500E
	for <lists+linux-man@lfdr.de>; Sun, 25 Jul 2021 23:00:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229709AbhGYUTx (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 25 Jul 2021 16:19:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47850 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229518AbhGYUTv (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 25 Jul 2021 16:19:51 -0400
Received: from mail-oi1-x22a.google.com (mail-oi1-x22a.google.com [IPv6:2607:f8b0:4864:20::22a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 70AF5C061757
        for <linux-man@vger.kernel.org>; Sun, 25 Jul 2021 14:00:20 -0700 (PDT)
Received: by mail-oi1-x22a.google.com with SMTP id u25so8657476oiv.5
        for <linux-man@vger.kernel.org>; Sun, 25 Jul 2021 14:00:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:content-transfer-encoding;
        bh=xnZPcTIPkh4zs4eqIswDKlN8AksjpEuaP1Gv2un4LQU=;
        b=AAaHEvk4DupZxb8tjJ3wEaD6fyFjP4zy0FsJUC128oIB56ZpDNd5A1mImFlkEcxYw+
         4qoQa7Eelc0P1f1jmWsYGTgB8oWFB5kEvBikjEZOX+KLxVyaXFFabXkoGyFkNNsTL9QX
         yID5nbQltY02GzF9WCRjhITk6vCQ7KeG/pv6QklAZtqkb1qcAGY23n4oowK+mGCMGKbW
         n5Uczvb0b8d24vxnb8bXDvbh6YDN97zSN2Rxm5WtU3kXMvl7ompGdbl22dpVW/4RmbzI
         O1eTfhQpfKsSnkJ2+p3UyIWMca0PZjKFh3C3Yi8YUuSl39QMiRaneanCpHxTlz835APl
         4aig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc:content-transfer-encoding;
        bh=xnZPcTIPkh4zs4eqIswDKlN8AksjpEuaP1Gv2un4LQU=;
        b=CBX1TL0d9pK25y5XgAkZDriym7OXYnpZpLgJpTSLa7CGwm3XcgxzoCdRJ+hiqKnSwn
         KRpVEJ1BUbYX9b2poAdZBkZSeqyYp606JBDU1FLn5tZ/y2+4VaPr3iQ8O47+rR1EOI72
         CA21+TPJFa5WACiGFoRulAlW5EEtTlQyfSNIBjUZLADnIM0I2HnfJAwOev0GrMS5W/3g
         ew1Gh/HsRUIOsuci+loJm50vVyGPWnQ9f6I+BxKjz7ORo5asVL4OwM4Lsfdmrm/voV05
         CqjcEdikiOCWGSXdON7ydGhpYmEKRvRcXQ3J4cKKx6dOxdPF62hrig5TyqCqw43sJCbM
         AfhQ==
X-Gm-Message-State: AOAM532pLEsm0A9ZEe6VH2DLl7+PALpO9U7R2KnyVUZsBnG1Q8m0XOLF
        X69bWtpPgNk+nhpRdnWwNiliRmkO8yX639l6kis=
X-Google-Smtp-Source: ABdhPJyCfe0A6QF5SBddjtroqMvyTsboFRLqJaIkRwVEl/3jjQxerXIRCnIsGj9PdNFA2zsnrGMRAyHDlNF91DCLGe0=
X-Received: by 2002:a54:4094:: with SMTP id i20mr9005794oii.159.1627246819918;
 Sun, 25 Jul 2021 14:00:19 -0700 (PDT)
MIME-Version: 1.0
References: <20210725170941.GA16868@Debian-50-lenny-64-minimal>
In-Reply-To: <20210725170941.GA16868@Debian-50-lenny-64-minimal>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Sun, 25 Jul 2021 23:00:08 +0200
Message-ID: <CAKgNAkjS0auS3DFa2s618d65nj7Uv-=eSd7iyPu7VKJLCkYrtg@mail.gmail.com>
Subject: Re: Errors in man pages, here: sync.2
To:     Helge Kreutzmann <debian@helgefjell.de>
Cc:     linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

> Man page: sync.2
> Issue: to a files =E2=86=92 to a file
>
> "Data was written to a files on NFS or another filesystem which does not =
"
> "allocate space at the time of a B<write>(2)  system call, and some previ=
ous "
> "write failed due to insufficient storage space."

Thanks. Fixed.

Cheers,

Michael


--=20
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
