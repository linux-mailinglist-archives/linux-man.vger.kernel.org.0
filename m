Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 941F8722768
	for <lists+linux-man@lfdr.de>; Mon,  5 Jun 2023 15:30:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232720AbjFENa2 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 5 Jun 2023 09:30:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42126 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231786AbjFENa0 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 5 Jun 2023 09:30:26 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3D8B192
        for <linux-man@vger.kernel.org>; Mon,  5 Jun 2023 06:29:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1685971777;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=cdgKsu6x1b9MM6J+TaOo+eo+JjXe7sJt0aCP8H+iMwc=;
        b=VXpkv0nDWTTQ76PP2hMawMCcjAK9eFaArsbzdDDAqpc12nZAur2zGmgwHSs6Bii01V8LJz
        eSvfLTUMQL5jtGF8HVsbZkHnQEPHJEYkYKLotIlXt4+fLHrS91eB5VTcvmQ54iTLnB/DWQ
        FhS9Ph2ofTxkgf/ZqqMAhsvAdta85vk=
Received: from mail-yb1-f200.google.com (mail-yb1-f200.google.com
 [209.85.219.200]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-561-pxESU3zpNwadYvTXCf5AlQ-1; Mon, 05 Jun 2023 09:29:36 -0400
X-MC-Unique: pxESU3zpNwadYvTXCf5AlQ-1
Received: by mail-yb1-f200.google.com with SMTP id 3f1490d57ef6-ba87bd29e9dso5603986276.3
        for <linux-man@vger.kernel.org>; Mon, 05 Jun 2023 06:29:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685971775; x=1688563775;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=cdgKsu6x1b9MM6J+TaOo+eo+JjXe7sJt0aCP8H+iMwc=;
        b=MQ1xFGxEpvZKJX6eX986JGQC7vFss0jF6CHmDv3y/IIFoPeXQtutC84qTvGVvCctpV
         tKmCyRYIRLHDnY0WB88hHjHE1ThH+8EnrEweG4AafQiyDNWWgFCP5WX0B9P3UBfGzBNQ
         lCQVNcAfLwmzqiPcUOzTGEtu2g6z7oeQFHaNrk1b1jnCwzM2DoKakHVJN/widxj9UIuE
         Fx52w8JmtfNB406GVA3v01w13+c/+xQ2eWl5A6cTSHv+NH9kSgwH9deZupOphbYjjLK/
         KoE+YMM/11x9eu9oBxkVF7IpyjtS90vH1PiABNMu+B3/KuPgfI0beFHpj7Q/erh6OpjY
         nhFQ==
X-Gm-Message-State: AC+VfDx78QrfCRukAk9RIS9oNLdYyfI/WuLAH0LwH8T4tO4x+ZbFZIMW
        60WNREzn9rA2TETKiKTYwlQePV1AEpcLsiOsua2N1hcvwX8E39gL4yE36tbLR4Hd2k6+ySZ+Tqy
        +TQVwRFdf3LUl9ScFuscSg2xT5+L9bL8EZk5wmZ6QJehF
X-Received: by 2002:a25:3405:0:b0:bb1:5628:59ee with SMTP id b5-20020a253405000000b00bb1562859eemr10000356yba.28.1685971775402;
        Mon, 05 Jun 2023 06:29:35 -0700 (PDT)
X-Google-Smtp-Source: ACHHUZ5xluDiCLjqQcdpiuHiDNvHzl95uOC1PZyeKzJtkeBHEarfB5kiMXz9p2AvWEkEPORAgU1Ca3HMBucgZvqbRMI=
X-Received: by 2002:a25:3405:0:b0:bb1:5628:59ee with SMTP id
 b5-20020a253405000000b00bb1562859eemr10000345yba.28.1685971775158; Mon, 05
 Jun 2023 06:29:35 -0700 (PDT)
MIME-Version: 1.0
References: <CAHRwYXsxK-vyOLpDXk7V5F0fvit7O2s0Dj28M5aqXh8vxLdChA@mail.gmail.com>
 <14cbb4e3-9302-8065-2320-978181fbede0@gmail.com> <CAHRwYXsPXtcT-QdO7u2kGhy4Uxgs8o+H_20sV8L2ZZURfkm8cQ@mail.gmail.com>
 <7ddd8165-5ae5-f242-9294-7ae7a7059303@kernel.org>
In-Reply-To: <7ddd8165-5ae5-f242-9294-7ae7a7059303@kernel.org>
From:   Yedidyah Bar David <didi@redhat.com>
Date:   Mon, 5 Jun 2023 16:29:23 +0300
Message-ID: <CAHRwYXvVPRgKhktm7528zwTcfJiviW7Ef9oXqHGLrkoWSQvRKw@mail.gmail.com>
Subject: Re: [PATCH] isalpha.3: behavior is undefined if c is out-of-range
To:     Alejandro Colomar <alx@kernel.org>
Cc:     linux-man@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Mon, Jun 5, 2023 at 4:15=E2=80=AFPM Alejandro Colomar <alx@kernel.org> w=
rote:
>
> Hi,
>
> On 6/5/23 14:34, Yedidyah Bar David wrote:
> > Hi,
> >
> > On Mon, Jun 5, 2023 at 2:35=E2=80=AFPM Alejandro Colomar <alx.manpages@=
gmail.com> wrote:
> >>
> >> Hi Yedidyah,
> >>
> >> On 6/5/23 13:17, Yedidyah Bar David wrote:
> >>> Clarify that the behavior of these functions is undefined if c is
> >>> neither in the unsigned char range nor EOF.
> >>>
> >>> I copied the added text from toupper.3.
> >>>
> >>> In practice, calling them on out-of-range values - tested with recent
> >>> glibc/gcc - is simply reading from random process memory - meaning, y=
ou
> >>> either get some garbage, if the memory was readable, or a segmentatio=
n
> >>> fault. See also:
> >>>
> >>> https://stackoverflow.com/questions/65514890/glibcs-isalpha-function-=
and-the-en-us-utf-8-locale
> >>>
> >>> Signed-off-by: Yedidyah Bar David <didi@redhat.com>
> >>
> >> This is already covered by the NOTES section, isn't it?
> >
> > It's _mentioned_ there, correct - but not sure it's covered.
>
> You're right.  That's why I've sent the patch mentioning UB.
> What do you think about that one?  (I now see that you like it).

Yes, I like it. Thanks!

Thanks also for the explanations/example.

Best regards,
--=20
Didi

