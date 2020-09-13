Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1406D2680B6
	for <lists+linux-man@lfdr.de>; Sun, 13 Sep 2020 20:17:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725938AbgIMSQ4 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 13 Sep 2020 14:16:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49324 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725936AbgIMSQx (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 13 Sep 2020 14:16:53 -0400
Received: from mail-ot1-x342.google.com (mail-ot1-x342.google.com [IPv6:2607:f8b0:4864:20::342])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C477DC06174A
        for <linux-man@vger.kernel.org>; Sun, 13 Sep 2020 11:16:52 -0700 (PDT)
Received: by mail-ot1-x342.google.com with SMTP id c10so12862484otm.13
        for <linux-man@vger.kernel.org>; Sun, 13 Sep 2020 11:16:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=LlHSOFeg/fWbCwmzXZJb5RpBK50EMOgRutABNgghJxo=;
        b=oaYzoR4DHryhsopHvlD0qCNwjaDMVCJd3xNqyOXgc0zvFIOaheil9rpnc/4RU0k8GQ
         16DXEAv4mo+jnY3QWh2BqPup0Rpwt4JB5QAywoUjgdIiVAMbFzSc4iacT9vBpLP5jthx
         WOl1V35pRxtXxpNSSzbUim8DTpSnaMi/ax2CZK7UgbnM3jxjrvCk57Ihs2Vc4+bsxmih
         mqh7PYwl349RBnBZNdzFagfp6V85rU0NZmuI1R2HfsBbZVJC59uwE6xqxmDwJP5aoHTo
         iTWu+PnZpDoUv4qk3talvcUUagx6iom2sbg9swcNqHFm5Ysc+jocWLRP/f1bnI9HdNBl
         yYJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=LlHSOFeg/fWbCwmzXZJb5RpBK50EMOgRutABNgghJxo=;
        b=jDJUSvNgLmLqfsqmgdUykPFmAiht3bZ/w13UfUafZkfWHjDSeQdcMF0IcjOt+zLPak
         lI6xjPSIpacNbQvYyxETpRyE6ugXL7hWwpI/VTkgBJxYl0kI1J/nsMsIjaFja5O//LEf
         UWsdEA8cLwCJz/FUjc61Vxqu/jUqm1BhCV+BCduz3J7qrmvxlMnlylFJBCopPthD47u2
         fayPZI4owz8CWaUqrof9lUT45hnZFA9mSQbsFkUFNPq7KOTccjW0ttMQB+GqBFEeML7J
         1YPOyxctBaC9r9lvbf+fAT6iQEDqep+OSK+OtDtNHtZ4vJykF4fwO008Jw6Ncs+vCcg3
         L/tQ==
X-Gm-Message-State: AOAM533MA0+rrPSkxd19H0UG6hoFydKPRPjuru2Uj09+6Cr42gFIK3SR
        W1siewA5vqXQEoJNG1RpU7nsMxIwztX1HQHHBdiXI6W66LU=
X-Google-Smtp-Source: ABdhPJw1oO/K8dEukViOsGdo4FSkrFDNMlis8371sBn1swMoj/mWHK2I1Bmp4Vfx1YhbdFUJT1wLMEi2XMHLeMWrcLs=
X-Received: by 2002:a9d:6f98:: with SMTP id h24mr6872135otq.101.1600021011776;
 Sun, 13 Sep 2020 11:16:51 -0700 (PDT)
MIME-Version: 1.0
References: <20200913173801.GA15488@altlinux.org> <9f5d1d00-9946-5cc0-cc74-3c4820b37c59@gmail.com>
In-Reply-To: <9f5d1d00-9946-5cc0-cc74-3c4820b37c59@gmail.com>
From:   Konstantin Bukin <kbukin@gmail.com>
Date:   Sun, 13 Sep 2020 11:16:40 -0700
Message-ID: <CAF98MAKanUQtQN18Rh1F-YEhUqFix9+6aWVHuqSPLWHrJA93TA@mail.gmail.com>
Subject: Re: [PATCH] stat.2: fixed inode printing in example program
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
Cc:     "Dmitry V. Levin" <ldv@altlinux.org>, linux-man@vger.kernel.org,
        mtk.manpages@gmail.com
Content-Type: text/plain; charset="UTF-8"
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

> Do you agree it solves this problem?

No, that does not solve the problem. There is still casting to a
signed resulting in printing negative inode.

Using %llu might be better since that would not require including an
extra header.

Mind I'll send a new patch?

On Sun, Sep 13, 2020 at 11:04 AM Alejandro Colomar
<colomar.6.4.3@gmail.com> wrote:
>
> Hi,
>
> Please, see the patch I just sent:
>
> https://lore.kernel.org/linux-man/20200913175506.576683-1-colomar.6.4.3@gmail.com/T/#u
>
> Do you agree it solves this problem?
>
> Cheers,
>
> Alex
