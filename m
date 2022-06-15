Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7513F54C803
	for <lists+linux-man@lfdr.de>; Wed, 15 Jun 2022 13:59:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1347875AbiFOL7E (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 15 Jun 2022 07:59:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60680 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1348274AbiFOL6l (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 15 Jun 2022 07:58:41 -0400
Received: from mail-lf1-x12d.google.com (mail-lf1-x12d.google.com [IPv6:2a00:1450:4864:20::12d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A1BF13B3DA
        for <linux-man@vger.kernel.org>; Wed, 15 Jun 2022 04:58:40 -0700 (PDT)
Received: by mail-lf1-x12d.google.com with SMTP id i29so18561096lfp.3
        for <linux-man@vger.kernel.org>; Wed, 15 Jun 2022 04:58:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=TZtfTNHkz0jvujVfiTjLh7uHe9iOKyk25jy7WHYWPKc=;
        b=qJjmbSZcDnt+X3wabPORSoRPSlAVBWK3P6RZaTQc8GaHsO4nLH2cFslbUulinGMEo3
         YNv+ih9tGPaC6rYk3t1g0rGz1SkI8Ei8Kr90yNioJyzIPDR4UaZxNLX3W4TrXOpKunN+
         fh47sdXykcUz/D+9fpDNySPgBltiOuTW1LM7uFBfsoSi6MMlKUNxxaVfWGLUnG3lb306
         6Z5FHTkqjkIVKXTVWT26qSL7JPcp/lxAyhj3vXsIzm3db0yuPAdy8hU6lv7MiUTrFB9k
         Bu/7wAwwpw1uO5niemx840OCV4xE+E9jzt/TS8fEIxIcEy2eYwhWhmo3JqSW62urXCqB
         gsrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=TZtfTNHkz0jvujVfiTjLh7uHe9iOKyk25jy7WHYWPKc=;
        b=mVPOPypYKk+wsEk40J0JyDOGCCPS3zfC1QC3ILtsgDRdqvFElOOWnyn71Yz2uZHUiQ
         QNtwWH3gk8qxEodvl/0WIesf+pnmCRTaQ57W1Xcz26uBPdPPTQyU2AVjL2ADeRtrisym
         JFtlTJUobFoBcYnqU9g1exLNp2o5KdukhU53CTm2knYNE0UUyL0qImnZyVwUhImO4EGD
         BJsly7cfQQD1o8MZyq3xxPvmSvejnS6hbbmly7PzDXBvrty96NwCuZ8hOs0khM70dUB0
         0lKqrfIJOL87CutinOBn+uvpugGGlfeZdeQs5tElD1DOpTpOnrqMreBkDeySUpQmNxry
         2k1g==
X-Gm-Message-State: AJIora/QPkEAo4dsmwmrGKhRfbG8dkKlaDdKYAIw6F90+6jwmuXGVKU1
        /Aq2wuPF46W6soJbF7NYZnYsVT1dAXEPVnto82c=
X-Google-Smtp-Source: AGRyM1tYnjLGkXgnubzcc7hcvDSbkUuHeUNcFfOmjUlnRROcZigRGjWlJPX+J8t9o7ESg5ph10yGgoRdVlevxBHUdPE=
X-Received: by 2002:a05:6512:2611:b0:478:da8f:e2d8 with SMTP id
 bt17-20020a056512261100b00478da8fe2d8mr5968879lfb.460.1655294318874; Wed, 15
 Jun 2022 04:58:38 -0700 (PDT)
MIME-Version: 1.0
References: <4a27c7c7295739005855299b23d1ab20b11e0110.1655287466.git.nabijaczleweli@nabijaczleweli.xyz>
In-Reply-To: <4a27c7c7295739005855299b23d1ab20b11e0110.1655287466.git.nabijaczleweli@nabijaczleweli.xyz>
From:   Stefan Puiu <stefan.puiu@gmail.com>
Date:   Wed, 15 Jun 2022 14:58:27 +0300
Message-ID: <CACKs7VAdedMNLhx0NWvayt3GzDVYVuoKp1mEt8kGH_=YMYCaXw@mail.gmail.com>
Subject: Re: [PATCH 1/2] uname.2: fix standard reference wording
To:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>,
        lnx-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi =D0=9D=D0=B0=D0=B1,

On Wed, Jun 15, 2022 at 1:15 PM =D0=BD=D0=B0=D0=B1 <nabijaczleweli@nabijacz=
leweli.xyz> wrote:
>
> Issue 6:
>     IEEE Std 1003.1-2001/Cor 2-2004, item XBD/TC2/D6/27 is applied,
> changing the description of nodename within the utsname structure from
> ``an implementation-defined communications network'' to
> ``the communications network to which this node is attached, if any''.
>
> Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xy=
z>
> ---
>  man2/uname.2 | 11 ++++++-----
>  1 file changed, 6 insertions(+), 5 deletions(-)
>
> diff --git a/man2/uname.2 b/man2/uname.2
> index 94c9c951a..b43f5d8d6 100644
> --- a/man2/uname.2
> +++ b/man2/uname.2
> @@ -29,8 +29,8 @@ struct is defined in
>  .EX
>  struct utsname {
>      char sysname[];    /* Operating system name (e.g., "Linux") */
> -    char nodename[];   /* Name within "some implementation\-defined
> -                          network" */
> +    char nodename[];   /* Name within communications network
> +                          to which the node is attached, if any */
>      char release[];    /* Operating system release
>                            (e.g., "2.6.28") */
>      char version[];    /* Operating system version */
> @@ -73,9 +73,10 @@ So, four of the fields of the struct are meaningful.
>  On the other hand, the field
>  .I nodename
>  is meaningless:
> -it gives the name of the present machine in some undefined
> -network, but typically machines are in more than one network
> -and have several names.
> +it gives the name of the present machine in some "the" network

Maybe "in one network" sounds better here?

> +to which it's attached,
> +but typically machines are in more than one network
> +and have several names by which they're reachable.

I'm not sure the use case of many networks and many names is typical,
though it is common. Maybe we can rephrase this to "Note the machine
might sit in more than one network and have several names"?

Thanks,
Stefan.

>  Moreover, the kernel has no way of knowing
>  about such things, so it has to be told what to answer here.
>  The same holds for the additional
> --
> 2.30.2
>
