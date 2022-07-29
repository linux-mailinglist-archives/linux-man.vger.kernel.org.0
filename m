Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 65E5C58564B
	for <lists+linux-man@lfdr.de>; Fri, 29 Jul 2022 22:55:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230160AbiG2Uzt (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 29 Jul 2022 16:55:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52452 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229683AbiG2Uzs (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 29 Jul 2022 16:55:48 -0400
Received: from mail-lf1-x12d.google.com (mail-lf1-x12d.google.com [IPv6:2a00:1450:4864:20::12d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4C71667CA6
        for <linux-man@vger.kernel.org>; Fri, 29 Jul 2022 13:55:47 -0700 (PDT)
Received: by mail-lf1-x12d.google.com with SMTP id w15so8948900lft.11
        for <linux-man@vger.kernel.org>; Fri, 29 Jul 2022 13:55:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=LKv72zSgPAQhant12Es/ROi/q7rXDdqzxaVnKDNJBoA=;
        b=P03iEYkZIOIwiZ1VZv/6En5ekGIpfbiHFCdkbKt/pDRQxl53PR+sF+1o0ToK1iegAI
         C38weKgYZCPh5jB5tECkAIDW8sFGgXvxcQHgYUvzoQAfD3ue9iS0pWr4sDS3ftc7Kj4Q
         kyvNSKYG+qz2O9/LyjFc+Y0W/YbXuLuRXY9XF9EIBRIyqi5P1jVXkpSbmceRCEQor21t
         c2ARbrKZQUzciDTY0LPJRglh9NUI47lUlxnEsOcIOIyn24if2W6RQ11CgD40GyXufbpe
         uuCm2A5irubis4PHuM2J0V/R8N2co6u3b0ctYX0ptHAYjix6P6rMjS6/oEMbfVO+6Mul
         DXTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=LKv72zSgPAQhant12Es/ROi/q7rXDdqzxaVnKDNJBoA=;
        b=nBsLClf1bGpv2mbkVADtWhqrNW40pNLDPvG6X/ROBcN56pOUvV06OdlcQLYhfqjXrl
         Lz6MadyLDQxB2N+kTRfz2vZFo4faGxLIoD+g7ilDMpfazUXIPsk73lONp/WHsxfUQi2z
         6aFGCZHYl5vkyabIn+WLGGEeonz5si5/qNwtQPh3CCUjiiML511dKgNihyn97tmJD8iy
         oFAe9nQAVOpJ/hZRQ70zXfrXRson1p+HfoInZNCPaOvn23xKPfAIhippOZcW7sGfKxDp
         EeU2NH8wrZI116OXIygW0suO8dBEza198QcW1JmsbKJnskw1CrFGN2CDXkZtv7caJ4f2
         On0w==
X-Gm-Message-State: ACgBeo3Co2S/NCJbNktXIKl5RwUseY53/HZn+e9STNOrmRYF9bzH3hZu
        n6vjj6YM3Pq60OW10+tXFYmrOPeB525Fu92bo/8bsQ==
X-Google-Smtp-Source: AA6agR4dACHinDOXt0kCMXRQ1FIn7U48STpAAd2D5dGddQAq00B+hknsK5DOAbYALkP8K7RZZ4JldNcq7YiYzSmqjZU=
X-Received: by 2002:ac2:58e7:0:b0:48a:e968:fee0 with SMTP id
 v7-20020ac258e7000000b0048ae968fee0mr232666lfo.553.1659128145176; Fri, 29 Jul
 2022 13:55:45 -0700 (PDT)
MIME-Version: 1.0
References: <CAJgzZopm7h_0_4j=grKiOu5tWr87ik4-nNvMRy1gxxH_b5b7dQ@mail.gmail.com>
 <20220729205238.6yf4c4xc2i5ritp3@illithid>
In-Reply-To: <20220729205238.6yf4c4xc2i5ritp3@illithid>
From:   enh <enh@google.com>
Date:   Fri, 29 Jul 2022 13:55:33 -0700
Message-ID: <CAJgzZopDP90Yej0q0YY--EV2x746absuj_-y0xvbBxZXx2KDsw@mail.gmail.com>
Subject: Re: [PATCH] getline.3: wfix.
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>,
        "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>,
        "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-17.6 required=5.0 tests=BAYES_00,DKIMWL_WL_MED,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        ENV_AND_HDR_SPF_MATCH,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        USER_IN_DEF_DKIM_WL,USER_IN_DEF_SPF_WL autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

i actually just copy & pasted that from the top of the file :-)

On Fri, Jul 29, 2022 at 1:52 PM G. Branden Robinson
<g.branden.robinson@gmail.com> wrote:
>
> Hi Elliott,
>
> At 2022-07-29T13:22:22-0700, enh wrote:
> > Clarify in the RETURN VALUE section that it's necessary to free the
> > buffer, since at least one person missed this up at the start of the
> > DESCRIPTION.
> [...]
> > +If
> > +.I "*lineptr"
>
> The quotation marks are unnecessary; macro arguments are space-delimited
> and you have none here.  (Even if you had multiple arguments, macros
> like `B` and `I` treat them all the same.)
>
> Regards,
> Branden
