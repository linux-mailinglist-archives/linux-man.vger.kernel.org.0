Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4B5663D5004
	for <lists+linux-man@lfdr.de>; Sun, 25 Jul 2021 22:52:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230471AbhGYULk (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 25 Jul 2021 16:11:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46038 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229518AbhGYULk (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 25 Jul 2021 16:11:40 -0400
Received: from mail-oo1-xc31.google.com (mail-oo1-xc31.google.com [IPv6:2607:f8b0:4864:20::c31])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 30A14C061757
        for <linux-man@vger.kernel.org>; Sun, 25 Jul 2021 13:52:09 -0700 (PDT)
Received: by mail-oo1-xc31.google.com with SMTP id h7-20020a4ab4470000b0290263c143bcb2so1791282ooo.7
        for <linux-man@vger.kernel.org>; Sun, 25 Jul 2021 13:52:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc;
        bh=/ovcqFEe6TZPWACpJa51AQywG+BRwLZzyQQMtrAZKwM=;
        b=AqczhrvGxgM4YFONp1thG6N17L2HbkWOk0uh4a9jjMxXDf8PUhfRKWmljQk3cVZcyz
         GVW47RZadCFbPoinDThZh9f9h4j6CiUhGkG4wQuEsq+yn2XVvpQv+v4DKJiikr0XHcQB
         9SYn7IwXKFv7xx8vWvq/na0+MYNT/PV0PNO6h0uUqDidCBdVfF0fBlaV6ejt80Wvicqf
         /19wWakkpMmYldE8KhTdYZezfx/OB3U7NrJ5SK+AVt+366wkPQ2pKL3rZy7VKakOFPyC
         frudJhlPxTFNqYvydLGulH00j1orQimTjpOnlbh83ljTH402QVwsupeNIuPzqikTGVLO
         XT4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc;
        bh=/ovcqFEe6TZPWACpJa51AQywG+BRwLZzyQQMtrAZKwM=;
        b=GIDyYFTsfRTrG3z0iFCiLVbmhr3d4ujICerz9h6fITEMWjjB6Z54eS4lt8mREKSNkt
         SHAJdiQJPv0z/Aaa1Cj9vT0B0PLNi6+9yc0nV5gK2DqA9O+JboQpottnM0QJ9VkjqMf5
         U+lxcyzytEIgqqsDXzbdLduw9oGTFBxIU7+agA0KSnm9yMWwYse+0h01yghuao8Hyl0w
         0eZo5WkB/1DXr3gIQ2Yf4+65p7Q/awbOMZgAtR33upWA4FpDuqwtzKwiztYSnd0PirIw
         Zq+qlkGLdTfWqGi3MXDbT5L4DvUNOWRi1zNp3F3GjzTMYoHHSkptKhm1Mjea+yX9tg1C
         D5dA==
X-Gm-Message-State: AOAM530IofYT7e4XRrYg9WSmLHA7apQajdlr9lTXuFi6v/VWQtGg7CnX
        QUSHp6Okfv/grvOISFI79uEFW8iE1Kx4pmUv18I=
X-Google-Smtp-Source: ABdhPJyF6TlM+Ku2JWeCjjAH+ShsRz1b3cRyeBixamhgyzalWDOiVwCFiTLDvLBlQGzCm4lqD4RTHjHn75ZxT9VTldo=
X-Received: by 2002:a4a:df02:: with SMTP id i2mr8662571oou.14.1627246328636;
 Sun, 25 Jul 2021 13:52:08 -0700 (PDT)
MIME-Version: 1.0
References: <20210725170636.GA16387@Debian-50-lenny-64-minimal>
In-Reply-To: <20210725170636.GA16387@Debian-50-lenny-64-minimal>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Sun, 25 Jul 2021 22:51:57 +0200
Message-ID: <CAKgNAkg=92Omt1VNMGCwYWSP3L6E+vWYYCMhaXJB5v=o95Vohg@mail.gmail.com>
Subject: Re: Errors in man pages, here: crypt.3
To:     Helge Kreutzmann <debian@helgefjell.de>
Cc:     linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Helge

On Sun, 25 Jul 2021 at 19:06, Helge Kreutzmann <debian@helgefjell.de> wrote:

> Man page: crypt.3
> Issue: Use tbl macro
>
> "ID  | Method"

Fixed.

Thanks,

Michael

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
