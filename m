Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 914113D930A
	for <lists+linux-man@lfdr.de>; Wed, 28 Jul 2021 18:20:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229537AbhG1QUo (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 28 Jul 2021 12:20:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36836 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229515AbhG1QUn (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 28 Jul 2021 12:20:43 -0400
Received: from mail-ed1-x533.google.com (mail-ed1-x533.google.com [IPv6:2a00:1450:4864:20::533])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C02C8C061757
        for <linux-man@vger.kernel.org>; Wed, 28 Jul 2021 09:20:41 -0700 (PDT)
Received: by mail-ed1-x533.google.com with SMTP id h8so4024367ede.4
        for <linux-man@vger.kernel.org>; Wed, 28 Jul 2021 09:20:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=cs.unc.edu; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=a0a9RPSYNXuweYuuwnE9Tq4AMNe7VEm8Ma7MkN7arMM=;
        b=S5XYKm+fHz8L2caHMAcYekt2y2S4ntanC8y5p+eiacx+f9VFT9k9TnrTzn9YU5mefN
         +3Yb/x1gg8csc6Xs7Xx6hOgS9tcqK+KSYAvqeyOCtM3fnTqjZ6cfmDf0/lsPyOp3ye7q
         37qH59GHoEvpLxNegJGoy2Ra42/byU4Rwqsh0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=a0a9RPSYNXuweYuuwnE9Tq4AMNe7VEm8Ma7MkN7arMM=;
        b=ZRhJUGlAp0JTlytDAkQ/2kC6ugEaZ3kGGJHeteEVyKh+ifYnAgaeogJsbRWTQb3ZwA
         YBJUtl6szLqNJrKOCE7lMurluZEoYaF2ZAFWR0lbSOSbec61HBYtzLg5drS+3CVNRiU0
         Q0sh0QsJe9Tg+dt4EpzC0IKSIu6Y6FYn3PSuYCrb6hARV4wdy6UK/RQtCBuP/eOx29Z0
         e0bMKpVh5oyS2Y0tnFqr1AAGvUYiWXwBZDjN9nqYr4WNilaSNDhovZ0oOrP7UdkbZp6K
         hon4YS0ZLkGNEJlIhf8CkSKJ2DkgM+nt2/8cFXY/Zk17yVKovr32VAOuYHZK/zyiSjq/
         fAKQ==
X-Gm-Message-State: AOAM531rCUFpJF5wWYOmCGWxHtx1Ft3b3fUMlzt121pVkJEOeGOz5yDs
        Ga6rVQbGQGbkxebK/aUv1e/BwXyJRaO1HjzCZyfTnA==
X-Google-Smtp-Source: ABdhPJxhPJsCCa81devEzV5RfSuVzKZPikEp9q0nOZNYbPEUp0pDZo96/p3vbndbHrcEY/Aaaw4uq7AAXZ0bXudGbSA=
X-Received: by 2002:a05:6402:5:: with SMTP id d5mr698406edu.359.1627489240459;
 Wed, 28 Jul 2021 09:20:40 -0700 (PDT)
MIME-Version: 1.0
References: <20210724045855.82231-1-sagarmp@cs.unc.edu> <92994df0-fec0-3e5b-74ea-14a7d4a31411@gmail.com>
In-Reply-To: <92994df0-fec0-3e5b-74ea-14a7d4a31411@gmail.com>
From:   Sagar Patel <sagarmp@cs.unc.edu>
Date:   Wed, 28 Jul 2021 12:20:28 -0400
Message-ID: <CAMGmevCXTOx+WgnJAzob8TVP5_Zi=T0W9=jcJSWQzAjRsendXA@mail.gmail.com>
Subject: Re: [PATCH] tkill.2: tfix
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Thank you, Alex!

> Oops, my bad!  Patch applied.

If you don't mind me asking, where has the patch been applied? I don't
see it on the kernel.org repo [1].

[1]: https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/

=E2=80=94Sagar Patel
