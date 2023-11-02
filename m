Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A72B67DEF7E
	for <lists+linux-man@lfdr.de>; Thu,  2 Nov 2023 11:07:48 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1346153AbjKBKG5 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 2 Nov 2023 06:06:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51164 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1345934AbjKBKG4 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 2 Nov 2023 06:06:56 -0400
Received: from mail-ed1-x535.google.com (mail-ed1-x535.google.com [IPv6:2a00:1450:4864:20::535])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 69024138
        for <linux-man@vger.kernel.org>; Thu,  2 Nov 2023 03:06:47 -0700 (PDT)
Received: by mail-ed1-x535.google.com with SMTP id 4fb4d7f45d1cf-53e3b8f906fso1197070a12.2
        for <linux-man@vger.kernel.org>; Thu, 02 Nov 2023 03:06:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1698919606; x=1699524406; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=s107TgLKmeJGQDMz/DfJleqowyglcrGmoj+LLPMb2C4=;
        b=BtyAFaTelJkAQXygjZeRWY4dY5US54kCDtSCLp7GU31HYh1FPusF0U0ASZUjBYZ5E1
         8nlmvLg6l1otly5Sk+j/KdACkK8XhmbZmbFs3f+XWsGPUkw2ZvuKEiueMXooTmwXVpAV
         RY+A5H5WilfGHpBJy5sevqskKi7NNlgavt2xMkCqEvUUi1jKjeokiBmpF2OABqPYwWLK
         K1zXzk/8JQPu97FNQ1TY5wIpVI1YDM9qSywEymo+OwI/Z/68RTsAsWE/yvluR5nJXE8B
         /dM5ELpX/+pEA4/GDPrUWQQMYYG4tqoTLBlMp+0L0L2KpMArVKadpcPEsVMbTbihGDzj
         EWjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698919606; x=1699524406;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=s107TgLKmeJGQDMz/DfJleqowyglcrGmoj+LLPMb2C4=;
        b=MjoH9aWkcCv+fBjCLXuiLJWqSjpJbtcRZ23gN0DnnS+ZXNpNm5PRQGfkVMe1GLAy5P
         GdZ8aEbkGr+zAdFBNTHo67aqzwuYw4QfSo1U0YrOUaRqmwFXEhnvjOpzvHHwpkPOLYUY
         k23iXgxsmN8uRSBZfKCbizoJFBcip0futmSB436VT8z/j3NuhWSgysXc8Swj4D5cNa9a
         YS56LH+iEN9BqlxhxD83VPknScc0eKN1uewDGX5vpIpd41PpCSIvBwguv5/0hsyrym7E
         xbXduobGTmxcW5r3y4MEcwKhZFrDKN1mWRxS2+Ge/bl4d6Stw5n7dLi3N5enQUwJ5o4C
         vlOw==
X-Gm-Message-State: AOJu0Yzy+PkMgyxNMIXblTbpve81Oi6P4TNbrobdWhl2+Uu13wOjz5nK
        yf4i38FR4GPC6kbxKTpWlZwXFCJAYr4HOUEaVmU=
X-Google-Smtp-Source: AGHT+IGKGFJ5WkJvYOVU1jTbaE+PVP/novAFMqU11qWFiKkwmfwJtimiP1CyXezut4icumDHf/CZb1XBHEl+QtCeaFI=
X-Received: by 2002:a50:9994:0:b0:53e:7781:2279 with SMTP id
 m20-20020a509994000000b0053e77812279mr15427286edb.36.1698919605490; Thu, 02
 Nov 2023 03:06:45 -0700 (PDT)
MIME-Version: 1.0
References: <ZUJaZPqi0HGylv3K@meinfjell.helgefjelltest.de> <ZUJ7zYWY2yspm3Ec@debian>
In-Reply-To: <ZUJ7zYWY2yspm3Ec@debian>
From:   Stefan Puiu <stefan.puiu@gmail.com>
Date:   Thu, 2 Nov 2023 12:06:34 +0200
Message-ID: <CACKs7VAKY4tvY3yEq3Y6x10MBaY+_jW37_VJWbpZX0dX5V+cEg@mail.gmail.com>
Subject: Re: Issue in man page bcmp.3.
To:     Alejandro Colomar <alx@kernel.org>
Cc:     Helge Kreutzmann <debian@helgefjell.de>,
        mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On Wed, Nov 1, 2023 at 6:25=E2=80=AFPM Alejandro Colomar <alx@kernel.org> w=
rote:
>
> Hi Helge,
>
> On Wed, Nov 01, 2023 at 02:02:12PM +0000, Helge Kreutzmann wrote:
> > Without further ado, the following was found:
> >
> > Issue:    Who is "it"?
> > "B<bcmp>()  is identical to B<memcmp>(3); use it instead."
>
> Considering that the rest of the page is there just to say this function
> is deprecated and even removed from POSIX, I guess a suggestion to use
> 'it' can only mean use the other one, that is, memcmp(3).

Maybe 'use the latter instead' would be clearer?

Thanks,
Stefan.


>
>[..]
> <https://www.alejandro-colomar.es/>
