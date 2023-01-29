Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1D3ED680045
	for <lists+linux-man@lfdr.de>; Sun, 29 Jan 2023 17:45:23 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230076AbjA2QpW (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 29 Jan 2023 11:45:22 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43640 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229910AbjA2QpV (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 29 Jan 2023 11:45:21 -0500
Received: from mail-ej1-x629.google.com (mail-ej1-x629.google.com [IPv6:2a00:1450:4864:20::629])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 98A273AAD
        for <linux-man@vger.kernel.org>; Sun, 29 Jan 2023 08:45:17 -0800 (PST)
Received: by mail-ej1-x629.google.com with SMTP id me3so25741366ejb.7
        for <linux-man@vger.kernel.org>; Sun, 29 Jan 2023 08:45:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=D67EZQEFj7+31w+xJ9SWliLqC1TrGvu90ETNXlonRDc=;
        b=o4oO++xudJgmXh+CTFBFylgddnIVn2ewWP1p1p4QQxP3Ib0Bhg9tPmd5FSpAxnNqUx
         5219nypEUDE68HFg8FI+yPivHf5fr+T+U8CwUDg3i39Fd+7+WPmwT4ygzsntDIKFBebv
         bPGFCKtijayn3iK6JaIuWTLaPZoD0R78EaZ5gsQFbbJutO+Idh5UR838iaRJlfFiiJBa
         JAb5l1zpIPRV1Tm4n740z6zrKxPOT4L27kS4EUD+9cAr2UIoxwbXih3AYpzIMvoAgTOG
         uoXxUKqnurcOf7gxc1mkd1eIgdzxAMT7y2rzlgCBeX1p7FR8WXfp6ji7+e7VYLKWxpkF
         /lmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=D67EZQEFj7+31w+xJ9SWliLqC1TrGvu90ETNXlonRDc=;
        b=qCoKpyFx1SqUBgvEd77+Ov48xDhdSqv2m1B+j63FQ0TqbuwotQHrsoeYvJzERGJUGe
         zZRYgXjaYgH6HGQQg4xiwZn/PmzZo+LYT1hdinvpKlIX7M0fo/nz3bBCgn2QPIeOh+jt
         ewEuOFuPmkr33oKMHrkD5SoDnxYtodorsQwOIDD4+xDf1x68gPc2NF9vtPn00Nb1zGl4
         o5dkTCGUPP4RM2yMgdA330oNzeVb/gjQfFFAgA+0fbrlZizVhLKYd3M5KV4BWYYAq4Tb
         vXWfFSsc+YGOOoZ7q7QZ4Xkr2s8sBeFV3iculHBb1DhLGx5/Bj7K1cVtyazq5mqDZBGl
         criQ==
X-Gm-Message-State: AFqh2kogmjLsGFvr3jUAfOT/MBTqWX9OFnaxXdqBI3JLdjwGjbjmux1E
        sC1WWSRszw33c6ry6ARAg99zoZntwi71NmyFDGZtkl2XfIU=
X-Google-Smtp-Source: AMrXdXu7lA8gulwdXsfHYB0XbVrvhYDP0h6640nSsveIcfwB8ooxSOL1TOG6vz9tejKwNRkq0mJednrairxIRLbw1XE=
X-Received: by 2002:a17:907:8a09:b0:86c:c7a:6402 with SMTP id
 sc9-20020a1709078a0900b0086c0c7a6402mr9456293ejc.200.1675010716046; Sun, 29
 Jan 2023 08:45:16 -0800 (PST)
MIME-Version: 1.0
References: <20230122193134.GA29363@Debian-50-lenny-64-minimal>
In-Reply-To: <20230122193134.GA29363@Debian-50-lenny-64-minimal>
From:   Stefan Puiu <stefan.puiu@gmail.com>
Date:   Sun, 29 Jan 2023 18:45:04 +0200
Message-ID: <CACKs7VAbs=fuqfEYhXALq3_PfoVbvVYUCc_D-GK5ObZJUPNwSw@mail.gmail.com>
Subject: Re: Issue in man page charsets.7
To:     Helge Kreutzmann <debian@helgefjell.de>
Cc:     alx.manpages@gmail.com, mario.blaettermann@gmail.com,
        linux-man@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Helge,

On Sun, Jan 22, 2023 at 9:39 PM Helge Kreutzmann <debian@helgefjell.de> wro=
te:
>
> Without further ado, the following was found:
>
> Issue:    =E2=80=9E=E2=80=9C are not old-style, they are the current quot=
ation marks required by German othography

Those are also used in Romanian, and probably other languages as well.

>
> "Latin-1 covers many West European languages such as Albanian, Basque, "
> "Danish, English, Faroese, Galician, Icelandic, Irish, Italian, Norwegian=
, "
> "Portuguese, Spanish, and Swedish.  The lack of the ligatures Dutch =C4=
=B2/=C4=B3, "
> "French =C5=93, and old-style =E2=80=9EGerman=E2=80=9C quotation marks wa=
s considered tolerable."

A bit weird to include Albanian in West European languages, isn't it?
Maybe the text could be reworked to:

  "many West European languages such as Basque, Danish, [... other
languages ...] and also Albanian."

Regards,
Stefan.
