Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8A34F2680AE
	for <lists+linux-man@lfdr.de>; Sun, 13 Sep 2020 20:05:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725938AbgIMSFE (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 13 Sep 2020 14:05:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47530 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725876AbgIMSFB (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 13 Sep 2020 14:05:01 -0400
Received: from mail-ot1-x343.google.com (mail-ot1-x343.google.com [IPv6:2607:f8b0:4864:20::343])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 58EA7C06174A
        for <linux-man@vger.kernel.org>; Sun, 13 Sep 2020 11:05:01 -0700 (PDT)
Received: by mail-ot1-x343.google.com with SMTP id e23so12866858otk.7
        for <linux-man@vger.kernel.org>; Sun, 13 Sep 2020 11:05:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=6s9EUinDjzRXHXpyT89qiNyMdc1Xc4WWDPbM+sweZw4=;
        b=lNJJZq2gt8pruVLYlpK047kf80dbalk9L/SJXiGd82Z+BHX/4RjCKkoiX8C7i9pavP
         TGCXmb1tt+/lrqIlQobpkkY5YCCmNFAOVkQHYb2Nco9M4qzYUZ/9aq7pnJgpv9lKCDOD
         UkwNAF7S71lyQ6rfiG1Jrbv6WKiydrin6L2Dfbb0cHNdxS/z0sxGLb+Rk7lMQVCLG9MN
         OKBFXGCrIB5jukEjQ9JZJWY1aj9jfA9VTtKzknFE2JG58u3QT+X7gRtMaENdniD9LlEP
         PSHoopii9Hduqlz+kNVPyK3/ucdArlxDCr4SxagSYTn1dxJ/+JGolVTU2GJyQuCu9sUJ
         Gacw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=6s9EUinDjzRXHXpyT89qiNyMdc1Xc4WWDPbM+sweZw4=;
        b=QCcHmrs2ArT4xoC5oXRXODPias/OgUqjqnKw37C4LrwgvIJlnM+NJVF1jIxSphKZ/6
         dlhe6CMVaGXTSrhUPJDjjbgf2jLFmn68dNMW39QgDlWn48QjbTyjAMKZCSCgdDpw/hVM
         /fBA2Sja7WXZk0zOSGhDP9s7Gn8zzz9l8aCXQv8CF8L4uB2W9A+f1FI4RPgBU49bwTae
         xbgMtnkD3lTqht9PAFvC5HmeYhs0g/sC2I0le7kdYQEvJ7f5RP2H5Yp7NlyOIXUK2kj1
         DUffXVUXAcvkOqlkuyTg9Y6Y2bbuZPVXpQq+UAckAuv8yB5J3IQtVn2K256kLBUGGJrj
         WKsQ==
X-Gm-Message-State: AOAM532zJNDNKO7WKzOAiq7wd+xpPGc8WIb1szDXIxGaT5tOp+gT8Uum
        NC/NYvaNSw9M6ZSh7vF2IeNCIlN2CCU9aeri6TRm9rx1
X-Google-Smtp-Source: ABdhPJyAtbNGnKcVh7FxHK5Tc6qGFkkoNnus+HJfMrLYeb/WdYGFItRc0VeInhEInVmRLN5YT6s/2Lkw82Vp/KBpcrE=
X-Received: by 2002:a9d:2667:: with SMTP id a94mr6569759otb.45.1600020300790;
 Sun, 13 Sep 2020 11:05:00 -0700 (PDT)
MIME-Version: 1.0
References: <20200913150449.11188-1-kbukin@gmail.com> <20200913151642.GA14054@altlinux.org>
 <CAF98MAKpdwqowXT9VnO=bZ5CNYPp1Z1OWHg5qVrH7d-0yyui0w@mail.gmail.com> <20200913173801.GA15488@altlinux.org>
In-Reply-To: <20200913173801.GA15488@altlinux.org>
From:   Konstantin Bukin <kbukin@gmail.com>
Date:   Sun, 13 Sep 2020 11:04:49 -0700
Message-ID: <CAF98MA+Lw1eEHJb2hyA1GNXX1aNioFC-L=TDdBmZG0bFK72DZA@mail.gmail.com>
Subject: Re: [PATCH] stat.2: fixed inode printing in example program
To:     "Dmitry V. Levin" <ldv@altlinux.org>
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

I didn=E2=80=99t know _FILE_OFFSET_BITS also affects size of ino_t. Do you =
see
any issues printing ino_t with %lld ?


On Sun, Sep 13, 2020 at 10:38 AM Dmitry V. Levin <ldv@altlinux.org> wrote:
>
> On Sun, Sep 13, 2020 at 10:24:23AM -0700, Konstantin Bukin wrote:
> > On x86 the size of ino_t does not appear to be larger than long.
>
> It depends.  For example, with glibc on all architectures ino_t is 64-bit
> when the code is compiled using -D_FILE_OFFSET_BITS=3D64.
>
>
> --
> ldv
