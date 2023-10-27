Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F04B67D9561
	for <lists+linux-man@lfdr.de>; Fri, 27 Oct 2023 12:37:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230101AbjJ0Kh6 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 27 Oct 2023 06:37:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60344 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229503AbjJ0Kh5 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 27 Oct 2023 06:37:57 -0400
Received: from mail-ed1-x52e.google.com (mail-ed1-x52e.google.com [IPv6:2a00:1450:4864:20::52e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A7652186
        for <linux-man@vger.kernel.org>; Fri, 27 Oct 2023 03:37:55 -0700 (PDT)
Received: by mail-ed1-x52e.google.com with SMTP id 4fb4d7f45d1cf-53ebf429b4fso3010906a12.1
        for <linux-man@vger.kernel.org>; Fri, 27 Oct 2023 03:37:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1698403074; x=1699007874; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=N9P9bBcPV/VuHBLFNmxT04kZjvmZ3bel4kV2qNpwT9U=;
        b=O6l1X832cUfil21uviUn4U6F6rLMWiivfrLQcAc8EyJG/WnBAplWMnX46TrPVIIX5D
         BgMUHeJMmF9uW2OfqFRyzN90nL/gArvkdCfRJC4udLsUtD/IZePpa0bb7d4iVZs9ra2y
         /tE/HNK0THIMz1rSeegr5T7rhIjyCOFuFmCDAERU23FhnpNL6JlRMcMY6vrnJ2kdEEKa
         +VVlP1PXoqRaWdAphID4SmhjeoK7toHR7s4s/TVVgA892WVpNRZeFaaQBPncdJEtdR1B
         kySGFA4UapY/iTYcAIK3nJEsQuFp8OSUBd7vTszZPzDc9Y7jXTNyzEaHcxR8YnuPYCiw
         xT2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698403074; x=1699007874;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=N9P9bBcPV/VuHBLFNmxT04kZjvmZ3bel4kV2qNpwT9U=;
        b=vVB40Dvso8tYWa7ktvn80sBGl7fC86oyWPCk3mOw3RKCcQQKgbeVkWV8r+FxBHex1t
         XNukfF2EvxI80Uj7xQYxh8bE/+QpPFrWFOpgni4oM0PaZPqK+EsMb+ip5FAXRvSJvUKZ
         ODplIhe9/ndiZBwK6xG4nG1U7mSBLNx1BhueEaASdOrFwWEpfWsMKn9szossnz99iB9m
         FhzL2bEQ6XZstd3mjmZB6zQR9ZqZ33vseiull9uXy2namkflf2xOc1TaE4iRpwZgH0p4
         VX/SvCL0ztI+cWF1i826weQeohsUeqV37SAazvT2vEhc3fx0i3apst+UurMTTMO/uOOZ
         KKFg==
X-Gm-Message-State: AOJu0YwIaYIiTx9E63TSl9goPiovIf+lvCtOQZPaEmTOTV2LKi/XzJVT
        bIebYs7+0x3AAKFD3lpE39996E3oP3HKWwoZA5hMjbt/HSA=
X-Google-Smtp-Source: AGHT+IHYudUWE2mcTXyq89RdrQUbVXXeVpJ90oKBMJfgWahxuNG2cB3RNOnIPb0M/wWSeLcWu2rfNnae2hwSPGOofXU=
X-Received: by 2002:a50:cc87:0:b0:540:fd54:34fb with SMTP id
 q7-20020a50cc87000000b00540fd5434fbmr2120634edi.4.1698403074045; Fri, 27 Oct
 2023 03:37:54 -0700 (PDT)
MIME-Version: 1.0
References: <20231026182802.2194109-1-adhemerval.zanella@linaro.org>
 <CACKs7VAV4aamaYe3b-6XDdxwUrbp8xTrJYCQB4bj+QET7MK0tA@mail.gmail.com> <ZTuGVYV0qMGL9PqJ@debian>
In-Reply-To: <ZTuGVYV0qMGL9PqJ@debian>
From:   Stefan Puiu <stefan.puiu@gmail.com>
Date:   Fri, 27 Oct 2023 13:37:42 +0300
Message-ID: <CACKs7VC=9WbMMZLv7Ou+7hfOaTihXCX_RSjBMLBGa+UBXy_iGQ@mail.gmail.com>
Subject: Re: [PATCH v4] ld.so.8: Describe glibc Hardware capabilities
To:     Alejandro Colomar <alx@kernel.org>
Cc:     Adhemerval Zanella <adhemerval.zanella@linaro.org>,
        linux-man@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi again Alex,

(hopefully this time without HTML)

On Fri, Oct 27, 2023 at 12:43=E2=80=AFPM Alejandro Colomar <alx@kernel.org>=
 wrote:
>
> Hi Stefan,
>
> On Fri, Oct 27, 2023 at 11:57:51AM +0300, Stefan Puiu wrote:
> > LGTM, thanks!
>
> Should I count that as an acked-by?
Yes. Didn't know the procedure for saying that with tags.

Thanks,
Stefan.

>
> Cheers,
> Alex
>
> >
> > Stefan.
> >
> > > --
> > > 2.34.1
> > >
>
> --
> <https://www.alejandro-colomar.es/>
