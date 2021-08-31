Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2BA4F3FC267
	for <lists+linux-man@lfdr.de>; Tue, 31 Aug 2021 08:05:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239509AbhHaGBS (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 31 Aug 2021 02:01:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34934 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238470AbhHaGBP (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 31 Aug 2021 02:01:15 -0400
Received: from mail-oi1-x234.google.com (mail-oi1-x234.google.com [IPv6:2607:f8b0:4864:20::234])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2FEE4C061575
        for <linux-man@vger.kernel.org>; Mon, 30 Aug 2021 23:00:21 -0700 (PDT)
Received: by mail-oi1-x234.google.com with SMTP id bi4so19262081oib.9
        for <linux-man@vger.kernel.org>; Mon, 30 Aug 2021 23:00:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:reply-to:from:date:message-id:subject:to:cc
         :content-transfer-encoding;
        bh=9mhA/4am/t9EmXtO3PUDQcLh6Lm4Xb9hvluO+PkfwGk=;
        b=hsYtofw2NyEPtNVo4wWVI0apu55emI6i646ATI7I1AsOTjCiSfh/qC88ig2zx27Xu3
         0nfU3NJi4QhY8fe+9KHb7NuE3m8t+Ghe3N8DPEp+HjLU11w0PFOvrvMvhiFqcr2RXEC1
         Rz8a7fA5Yrs+GNqiurAUfgBZPkE2qLwMZ8uzdRRe3WFkGv96OWagIQ2X1+lsuSDivkoR
         D9PLSpru7xsbakSUZbf0FBSZJzpEHJeKb3HemCcEdTXbblrfJInIz1PA7iZxYqp2paK4
         esc7r3HAYGKgiwv62crbGgpH7VnCd7iVbrQ124l+/gOgsHeSqZNl5qvVLmhq77uEyFHC
         2OcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:reply-to:from:date:message-id
         :subject:to:cc:content-transfer-encoding;
        bh=9mhA/4am/t9EmXtO3PUDQcLh6Lm4Xb9hvluO+PkfwGk=;
        b=GX3tNb0QKc8HYRkRoohDWiJvjVNt3hQJEbGXAlzrwqXi0LiIq/IjOmVsTJbxxvjaK6
         BfQwMeoTI8LH4nIsDdNw4eyxhSkc/PxLz2rFkvD+NBWhCPhsekQU1cMJGuvzyuGnPNmg
         Ey7ag/XmLyZHYxa+1tc7kqAzUuMmMsqkzwomaDwyvPj7S9x0GogCzSGMVoINkS/PFHqO
         MQw6rxDckUyWozyoyZk8pzxgZrXzsWv+fOw6+12qTv3tszN6AB8HDIDPdJNYIwEzlgDx
         TUpLDkHh6tYeby/WwguaUJ6By99DrZzv8p5sGTGzVIrXAJbG7guCE0vi5KZv4p2sn2wx
         85Vw==
X-Gm-Message-State: AOAM532efa1+PoMIj3jqk8SGFB6pdjhlGiwFQRrg54GO0AFpWNeraNAK
        1tKWpWbq0Tkp3YzFIgrbEC5vjKCcV78j6COKiClBDsYHD+8=
X-Google-Smtp-Source: ABdhPJzBGmClvlGe8l8HyOZ9V7CUMt/Vz1Age/HNAmvHqgLz4Tk/8N5l1pucpTfD8D6r65CpQOn02R3hdEqIPNmcPSY=
X-Received: by 2002:a05:6808:291:: with SMTP id z17mr2045218oic.177.1630389620563;
 Mon, 30 Aug 2021 23:00:20 -0700 (PDT)
MIME-Version: 1.0
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Tue, 31 Aug 2021 08:00:00 +0200
Message-ID: <CAKgNAkjv2vVDU+z4ActGqo8gcZekCnZFRVESz_hhNjdPvbV96w@mail.gmail.com>
Subject: Adding a realloc() usage note to the malloc(3) manual page
To:     "libc-alpha@sourceware.org" <libc-alpha@sourceware.org>,
        linux-man <linux-man@vger.kernel.org>
Cc:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>,
        Florian Weimer <fweimer@redhat.com>,
        Paul Eggert <eggert@cs.ucla.edu>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello all,

I plan to add a note on the correct usage of realloc() to the
malloc(3) manual page. I would be happy to receive comments and
improvements to the text below.

Thanks,

Michael


   Correct usage of realloc() (and reallocarray())
       Since, on the one hand, realloc() (and  reallocarray())  may  move
       the block of memory, and on the other, it may return NULL on fail=E2=
=80=90
       ure and leave the memory contents and location unchanged,  correct
       usage is something like the following:

           void *ptr, *nptr;
           ptr =3D malloc(origsize);
           ...
           /* In the following, we presume 'newsize' is not 0.
              (If 'newsize' is zero, realloc() may return NULL,
              and that is not an error.) */

           nptr =3D realloc(ptr, newsize);
           if (nptr =3D=3D NULL) {
               /* Handle error; the block pointed to by 'ptr' is
                  still usable. */
           } else {
               /* realloc() succeeded; update 'ptr' to point to
                  the (possibly moved) block. */
               ptr =3D nptr;
           }

       Similar remarks apply for reallocarray().
--=20
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
