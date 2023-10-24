Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A366B7D4D1C
	for <lists+linux-man@lfdr.de>; Tue, 24 Oct 2023 12:00:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233953AbjJXKA0 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 24 Oct 2023 06:00:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52974 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233832AbjJXKAZ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 24 Oct 2023 06:00:25 -0400
Received: from mail-ed1-x530.google.com (mail-ed1-x530.google.com [IPv6:2a00:1450:4864:20::530])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 056F0DA
        for <linux-man@vger.kernel.org>; Tue, 24 Oct 2023 03:00:23 -0700 (PDT)
Received: by mail-ed1-x530.google.com with SMTP id 4fb4d7f45d1cf-53d9b94731aso6684949a12.1
        for <linux-man@vger.kernel.org>; Tue, 24 Oct 2023 03:00:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1698141621; x=1698746421; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Q2As1qvZJxX+kJcLqzf1DtO2qy2ARIbH30vcLM2s5H0=;
        b=EyHKwZCmrv0VY27UOPOpH7hL+XNJ//vMdRq4326IQ5i41NG11UrPRjvw8OUkSA2/6k
         8koTIzKkCemEMrsgGsJzSb8Ef9yENHxDIFRV4ftr6m1KYoHkS8GlyY9zo29eqU51rSgL
         y3aoMJoegZoMWDcFrfrvwqCjmyBfV7oqMUl/tCYWr1IpUpOd/an0Of2wSh5tgpBeyWEC
         vjh0Um4aD03DN824ZA0phDTHD+PkKwT19s3N6XCfbsREgPvz+95QQNW3VKBHvZ31keHX
         EWpYvbVBYrkgzYHrIJIQvPTTtI4jPNNTUCnaJp0wunK6pNwQLBGlWwUovycfS/4Ul0TB
         cB5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698141621; x=1698746421;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Q2As1qvZJxX+kJcLqzf1DtO2qy2ARIbH30vcLM2s5H0=;
        b=PQrscvBSGEiYsu63I1FxoLLLBnR62+d/Px0n7Q6xbuq9x0sZL4pWGduH0tayHVolKy
         tsv3zKhi/pcgoig8rVakDf0KLdjNR/OGb22JknT6NBGL6oqQiAe7F9Ka/CRxMIwQViWD
         JyqrTAsrgcFeFpsStQcPxCU5sdlm0fxifDwimHgW4g1UMd1GZxL1Vd/zboK44XagMr2X
         AB+mSvmbEUL52KSgFeGpjX9tH1zUguXEkOC25Fp+Up51DOjZpsXa6wyHFv7gugxz1XX+
         6l+9MY8cYzf6dCln7LPymTfpO8yKfnpCDKuQKk2XQv0TofN7EFE2lt6ZKunDTMD8QBpj
         MfAg==
X-Gm-Message-State: AOJu0Yx0HOzsUF3IxwdFpk14t7D4ntBPJL4G1E4Tf+7f20YPBMnwWml/
        /uGqJnovfoL+iG9dzFS55a6e34NUxg05ezZRdfDzvldt2nE=
X-Google-Smtp-Source: AGHT+IEUzB4LcNYqTe+G0pWU28rqz44SzTHUyBwL+RsatG2H4tV/7EBL0hfERlJ5OmjB63qxoq4bTX4f/k4u5eafB+8=
X-Received: by 2002:a17:907:608a:b0:9be:6ccb:6a8f with SMTP id
 ht10-20020a170907608a00b009be6ccb6a8fmr9602463ejc.48.1698141621216; Tue, 24
 Oct 2023 03:00:21 -0700 (PDT)
MIME-Version: 1.0
References: <20231019172315.208972-1-adhemerval.zanella@linaro.org>
 <CACKs7VBtQNA-j=HapaBcM47gRE72jaBBU+c59G4Xx3WimPRFsg@mail.gmail.com>
 <d66f16b9-c65f-4fe5-9b86-05373a52561d@linaro.org> <CACKs7VBdNpWL6-GsECk46s7rK+aDiSr5BjROFL-T_Mh2AvPQ9Q@mail.gmail.com>
 <ZTeRx4vqHQ07eATQ@debian>
In-Reply-To: <ZTeRx4vqHQ07eATQ@debian>
From:   Stefan Puiu <stefan.puiu@gmail.com>
Date:   Tue, 24 Oct 2023 13:00:09 +0300
Message-ID: <CACKs7VDsMdC4FbJBNm7VQWBuq90_DwA6vqf2yh+Uqf2rjp5nww@mail.gmail.com>
Subject: Re: [PATCH v3] ld.so.8: Describe glibc Hardware capabilities
To:     Alejandro Colomar <alx@kernel.org>
Cc:     Adhemerval Zanella Netto <adhemerval.zanella@linaro.org>,
        linux-man@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On Tue, Oct 24, 2023 at 12:43=E2=80=AFPM Alejandro Colomar <alx@kernel.org>=
 wrote:
>
> Hi Stefan,
>
> On Tue, Oct 24, 2023 at 10:59:12AM +0300, Stefan Puiu wrote:
> [...]
>
> > > >> Signed-off-by: Adhemerval Zanella <adhemerval.zanella@linaro.org>
> > > >> ---
> > > >>  man8/ld.so.8 | 48 +++++++++++++++++++++++++++++++++++++++++++++++=
-
> > > >>  1 file changed, 47 insertions(+), 1 deletion(-)
> [...]
> >
> > >   .PP
> > >   For instance, on x86 64-bit, if the hardware supports
> > >   .B x86_64-v3
> > >   (for instance Intel Haswell or AMD Excavator)
> > >   , the resulting search path will be
> > >   .BR glibc-hwcaps/x86-64-v3:glibc-hwcaps/x86-64-v2:.
> >
> > I think it would be useful if the existing levels are defined
> > somewhere; maybe Alex can suggest the proper manpage.
>
> I'm sorry; I didn't even know about these things until Adhemerval sent
> the patch.  But yeah, I agree that if would be good to define them.  :)

I didn't know either. The email threads Adhemerval pointed to were
quite useful. That's what I think is one of the benefits of watching
this list, you learn a lot about new Linux features (and in my case,
features that are new to me).

The glibc-hwcaps support seems to be present in my Ubuntu 22.04
install, at least '/lib/x86_64-linux-gnu/ld-linux-x86-64.so.2 --help'
seems to imply that.

Regards,
Stefan.

>
> Cheers,
> Alex
>
> --
> <https://www.alejandro-colomar.es/>
