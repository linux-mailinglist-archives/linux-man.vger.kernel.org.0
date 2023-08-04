Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E56B37702D6
	for <lists+linux-man@lfdr.de>; Fri,  4 Aug 2023 16:21:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231467AbjHDOVH (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 4 Aug 2023 10:21:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49206 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231693AbjHDOVC (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 4 Aug 2023 10:21:02 -0400
Received: from mail-pf1-x433.google.com (mail-pf1-x433.google.com [IPv6:2607:f8b0:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A8B561990
        for <linux-man@vger.kernel.org>; Fri,  4 Aug 2023 07:20:56 -0700 (PDT)
Received: by mail-pf1-x433.google.com with SMTP id d2e1a72fcca58-686efa1804eso1559912b3a.3
        for <linux-man@vger.kernel.org>; Fri, 04 Aug 2023 07:20:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1691158856; x=1691763656;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Iz1q3qLBkr2wu0jpjjYwn8mCF4FWjXIKtgig55+2/Ys=;
        b=EabsW+q0q9n3uvb7zwVqilcCo1VtrVf57CWZZ69yJ4OlMvS7RFPwVSAF7NWkgtPvv3
         WS3ttINxM3fL2CROjuw+dp7SzC/dO4B5C+Ceemw/If+tVkL8ybxBD2fxFXZOwXBK7Kp2
         uKpyqJ3+i4e9cPo3fWI70Fq7K1htmbDTD1/DS1TKWXRegS0RCevXqDP0Q2mqpug6TIvs
         Ri7Z/9TP2TrHNJSnZWWB2+c4uQr1AyDtdutkB25aA1AN7TzsYdqKY8DHP2k/b7OXspJY
         7Q+8ti21R+rzshmzd5Rm/6PVqufOGKTHt3Q2u2tkRtyin5rQfgzL3yLsBMYsCY21no5v
         L+5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691158856; x=1691763656;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Iz1q3qLBkr2wu0jpjjYwn8mCF4FWjXIKtgig55+2/Ys=;
        b=XgTnWqiPAaQgLEQkWczK2UlWf1ztHbhNaHsohi2q2HK1XjtP0lWCt44imeMVdqbILO
         fGtZBDAqFoxoNN6+b+igsD6c8n1CUCJnnhHfk+pAw66dFpjAaObirPOUXeOLfr0hCgpb
         7cmWOh7lvaZZ/Aij5g1vpZtQViyDadZD1aXsAG4akZn1XjrbF0DLT5ASnA2we9FD2fY1
         jOWTMgH5tQhp3m7QzXfyigdNUc4OQm0FY50QRk8fQ8fqwUYdGKS69sD/FTlWzf8HKSNQ
         U1MOSG+w0JoLtlwiaKUAiA4ake3josACbkFCTcLhG95Fh7A5QDLAB2IA1jhYm41PakRN
         ywGg==
X-Gm-Message-State: AOJu0YxgHG5NAxOTBF853XzkO6VS+34RLV+xmu+hlzHo90xUKU2ZIkS0
        weZmNgmcG5sADjg8PXsKJx4fRMbheqtzmEN+N4A=
X-Google-Smtp-Source: AGHT+IGDHtNlU7DEJ8ApN84sy+A1YmnPWN5PgQYrPviCv9+4RbE5vH1KYPLaeC2VzGsJQDpOtd/rsvfDntpGshXzLsQ=
X-Received: by 2002:a17:90a:7545:b0:267:75ce:f6d9 with SMTP id
 q63-20020a17090a754500b0026775cef6d9mr1410175pjk.3.1691158856035; Fri, 04 Aug
 2023 07:20:56 -0700 (PDT)
MIME-Version: 1.0
References: <9d2898a0-239a-1bc7-4929-aa042f727ff4@kernel.org>
 <b1f2b859-d223-eb90-994b-8741ab7af087@kernel.org> <CADo9pHjqNx9_DspLB2sx3pDRJv-vqO8s7PJYNk5LoQLXhvwTxQ@mail.gmail.com>
 <309fb0c2-46e2-9caf-c9c5-13111603ac1f@kernel.org>
In-Reply-To: <309fb0c2-46e2-9caf-c9c5-13111603ac1f@kernel.org>
From:   Luna Jernberg <droidbittin@gmail.com>
Date:   Fri, 4 Aug 2023 16:20:43 +0200
Message-ID: <CADo9pHg9mgbyjD6JP3kR96WOGSqRgyj=Jp9nrL3g9VzG03G_1A@mail.gmail.com>
Subject: Re: man-pages-6.05.01 released
To:     Alejandro Colomar <alx@kernel.org>,
        Luna Jernberg <droidbittin@gmail.com>
Cc:     andyrtr <andyrtr@archlinux.org>,
        linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Not with 6.0.5, i did not package 6.0.4

Den fre 4 aug. 2023 kl 14:04 skrev Alejandro Colomar <alx@kernel.org>:
>
> Hello Luna!
>
> On 2023-08-04 05:40, Luna Jernberg wrote:
> > Hello!
> >
> > Here comes and updated PKGBUILD for Arch Linux, sorry it took a while,
> > was watching Fedora Flock 2023 yesterday
>
> Nice!  :)
>
> Out of curiosity, did you notice any issues while packaging 6.05? (and 6.04?)
>
> Cheers,
> Alex
>
> >
> > Den tors 3 aug. 2023 kl 00:32 skrev Alejandro Colomar <alx@kernel.org>:
> >>
> >> Gidday!
> >>
> >> On 2023-08-01 15:19, Alejandro Colomar wrote:
> >>> Gidday!
> >>>
> >>> I'm proud to announce:
> >>>
> >>>       man-pages-6.05 - manual pages for GNU/Linux
> >>>
> >>> The release tarball is already available at <kernel.org>
> >>>
> >>> Tarball download:
> >>>       <https://mirrors.edge.kernel.org/pub/linux/docs/man-pages/>
> >>> Git repository:
> >>>       <https://git.kernel.org/cgit/docs/man-pages/man-pages.git/>
> >>
> >> There was a small problem while packaging for Debian.  quilt(1)
> >> produces a .pc/ dir in the root of the repository, and the patches
> >> stored in there confuse the build system to try to lint those patches
> >> as if they were manual pages.  If you successfully packaged 6.05
> >> without noticing this issue, you can safely ignore this bugfix
> >> release.  If you noticed the issue, or haven't yet started, I suggest
> >> you package 6.05.01.
> >>
> >> Changes since man-pages-6.05:
> >>
> >> man-pages-6.05.01:
> >>
> >> -  Build system:
> >>    -  Ignore dot-dirs within $MANDIR
> >>
> >>
> >> Cheers,
> >> Alex
> >>
> >> --
> >> <http://www.alejandro-colomar.es/>
> >> GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5
> >>
>
> --
> <http://www.alejandro-colomar.es/>
> GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5
>
