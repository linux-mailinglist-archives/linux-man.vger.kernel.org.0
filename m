Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A422540A943
	for <lists+linux-man@lfdr.de>; Tue, 14 Sep 2021 10:33:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230487AbhINIeQ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 14 Sep 2021 04:34:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39154 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229574AbhINIeP (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 14 Sep 2021 04:34:15 -0400
Received: from mail-ej1-x629.google.com (mail-ej1-x629.google.com [IPv6:2a00:1450:4864:20::629])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E5C5CC061574
        for <linux-man@vger.kernel.org>; Tue, 14 Sep 2021 01:32:57 -0700 (PDT)
Received: by mail-ej1-x629.google.com with SMTP id qq21so21203421ejb.10
        for <linux-man@vger.kernel.org>; Tue, 14 Sep 2021 01:32:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=iW+JuIfI4Sw0k/A4v6GRqemHmaLXTfH0D4NcfhjD51Y=;
        b=WuhF9Nn6vjw+UVvPck6cKefnbDGSeo+PF9tUVAJ75Ib6fAWf5CxPc6M4rU9YGOEC6g
         6t37P4hQ0N+iWrc3E2lWkSY3PaTtly70ItFjzdR1MgTHBMrbKsMI7gydeDZf6G4vkJ4S
         rCgJd/QUJ3jb/rwGp/AZOhkQuKkoiMHHKraKEAkNpn4jZtkMJYGfNh3Dgxj2tlRvU44z
         b39xRIJJ6z/TDMbwrl7rUwgzPjYnRh/EJ6pG7XJ5DNbNCX9QiS0l/rNrHt5z/bhmshUx
         w7U5LCYBryalIusRenYFmpx5App5XKWw1QEEVt/XqpAY6ueP5tADdkhH6wSKEO884qrm
         as3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=iW+JuIfI4Sw0k/A4v6GRqemHmaLXTfH0D4NcfhjD51Y=;
        b=gN0bsGYk34ogH+G3sCH6LNZM0178qXGNVE7+gmBkqrp/P14UZjSeAdPe8Y9Sy4Sx+O
         jelYNZQZxghpH5aPeMpR7X4bitg6OnqlhLG1+5IVFVPXJRkfndac2+FZO5aVj1xnc5wx
         4Wis3XHcZ7EkxQvzLTLNk2fPu6k74oQDRunL4D/IbdJKEyw5O14mKaoXD8zOI6ll3rcG
         FYIT6siSWk5UwFit9GYmad5LLTHAqr1P+SceLnuj/dhWWhbRrCx/BmMY7ZXemm/z//Wq
         mAuVpcnrRQ/Ey0HeaZ7+Z3I7ytXqhLBYTgClkQhyem2RupyXh+xipLGiXdTBVoxif3Xm
         4Ulg==
X-Gm-Message-State: AOAM5304XAMUkMdtEn3t52y43VNPFO+2IKGLrvJIHHbiMc1xAfudYNmk
        6xBVS3QBerH2sQVDBtUBfzJMDZrXLV5Yai9Ma3h3x2w1
X-Google-Smtp-Source: ABdhPJyQq2Ujb46T0fg1bkFYHJRChFxnzKnkf1bWcdoIYvGu2vHN+Bjmsc/P5ojrf5PA3E/EdltXu4/DJ0cbJZGPAWg=
X-Received: by 2002:a17:906:2bc7:: with SMTP id n7mr16913630ejg.238.1631608376492;
 Tue, 14 Sep 2021 01:32:56 -0700 (PDT)
MIME-Version: 1.0
References: <20210911160117.552617-1-alx.manpages@gmail.com>
 <CACKs7VA=y2t3iGjKyzp-p1tt1hW3YsD6LMCqn0rotttOvk4pfw@mail.gmail.com> <CACGkJdt0Yg2i-R3dkuANSqKoDu0oCk7bz43tAP4dojTHeCL6Gg@mail.gmail.com>
In-Reply-To: <CACGkJdt0Yg2i-R3dkuANSqKoDu0oCk7bz43tAP4dojTHeCL6Gg@mail.gmail.com>
From:   Eugene Syromyatnikov <evgsyr@gmail.com>
Date:   Tue, 14 Sep 2021 10:32:53 +0200
Message-ID: <CACGkJdsBoEh6iA=bUpe=G2oUi=KopiGYFbEogLf66Sk6guQS7w@mail.gmail.com>
Subject: Re: [PATCH 00/45] Add LIBRARY section (based on FreeBSD manual pages)
To:     Stefan Puiu <stefan.puiu@gmail.com>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        lnx-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Tue, Sep 14, 2021 at 10:30 AM Eugene Syromyatnikov <evgsyr@gmail.com> wrote:
> Isn't it covered by the
"by the gcc manual in the -nostdlib option description"

-- 
Eugene Syromyatnikov
mailto:evgsyr@gmail.com
xmpp:esyr@jabber.{ru|org}
