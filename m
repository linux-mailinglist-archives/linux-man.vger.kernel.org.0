Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 538FF722630
	for <lists+linux-man@lfdr.de>; Mon,  5 Jun 2023 14:45:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233172AbjFEMov (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 5 Jun 2023 08:44:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38468 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230099AbjFEMos (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 5 Jun 2023 08:44:48 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8C692DA
        for <linux-man@vger.kernel.org>; Mon,  5 Jun 2023 05:43:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1685969030;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=PtFVK0V1S5rfXLiFhLuM+UVxatGyScouUnUCNCAVSx8=;
        b=UzTNmP64Ucj8yqIBbeem71tCx3GBL6qKWeRXvbiwWRl04BnEcIUSkXJ+aLamHaZIiFlw41
        ro1speMoSUt5SJmiQtJ/StE5ecFTncyleGxgpBRTJQ4pJqPYNNGzfHgcwJa5uKjnbszyuo
        18ehR55o+iO1sHOYam0PA+qw7N9Jurs=
Received: from mail-oo1-f72.google.com (mail-oo1-f72.google.com
 [209.85.161.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-461-xGDOgNe2P0G8UYPH8iMKFw-1; Mon, 05 Jun 2023 08:43:50 -0400
X-MC-Unique: xGDOgNe2P0G8UYPH8iMKFw-1
Received: by mail-oo1-f72.google.com with SMTP id 006d021491bc7-558a4d70fa9so1593251eaf.1
        for <linux-man@vger.kernel.org>; Mon, 05 Jun 2023 05:43:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685969029; x=1688561029;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PtFVK0V1S5rfXLiFhLuM+UVxatGyScouUnUCNCAVSx8=;
        b=RWdSBvZtsKdKve+Q98ORdb7cisrSzJJhZXXaN2VcJC/HB6UQAolYUTzIGiD44ZAnSe
         2y9Ty7S/xYmgxYB9AnKbjOuv4IpA+rxgLrFiNu3KmHWTv2NxnbC693I1E9vRXBJlDqyF
         pH7+M+6FizN9zMvEOftK5lGgX5Kui7Hstjc+CbxGhQK6JY3DAZCQiX2I2vDTSCGz78Jr
         0kan4STGqFE8CGURgk9fHJzw1i2R8iotvlyHB6tFtfL0QHFOmNt9merVBrq9fDv5NodP
         gkXCDMrQ3wqd9BgcrIKNQIi/5CEdZvlT7exFl8ctEzWWMAau9S1PkvPwgefKMX/5931+
         OKuA==
X-Gm-Message-State: AC+VfDz+IS1ohzmMho13TDxXpnDSwZGHEvLv9sFS3hH8S05eYax0zdbU
        PZKmZ7a4Ov+6yvHudn+sFK+NaIAtsRFBv601qt8xuYyS7WZTHia+UfJ/3VZDEmg/F15TK2A8Ts1
        RJwAGS5PZvA0gXoY5p8kHicC9f1jOPat3BDjEIT1URtcA
X-Received: by 2002:a54:4604:0:b0:38c:398e:6afd with SMTP id p4-20020a544604000000b0038c398e6afdmr8322368oip.53.1685969029050;
        Mon, 05 Jun 2023 05:43:49 -0700 (PDT)
X-Google-Smtp-Source: ACHHUZ7pHWC2NYEJTYq6hGPPpoDNyVY7L7mqdUS7z3/TgpQiejWh6lbikQgbE91jzAd7yu/QtJEOyYrqBaWvbdShgbc=
X-Received: by 2002:a54:4604:0:b0:38c:398e:6afd with SMTP id
 p4-20020a544604000000b0038c398e6afdmr8322356oip.53.1685969028817; Mon, 05 Jun
 2023 05:43:48 -0700 (PDT)
MIME-Version: 1.0
References: <14cbb4e3-9302-8065-2320-978181fbede0@gmail.com> <20230605113836.8496-1-alx@kernel.org>
In-Reply-To: <20230605113836.8496-1-alx@kernel.org>
From:   Yedidyah Bar David <didi@redhat.com>
Date:   Mon, 5 Jun 2023 15:43:37 +0300
Message-ID: <CAHRwYXsKdxNyK3pRRxJRqRcahQMN5XcD_mi29aZ5uGs7BY9e0w@mail.gmail.com>
Subject: Re: [PATCH v1b] isalpha.3: Move NOTES to CAVEATS, and clarify some
 Undefined Behavior
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, Alejandro Colomar <alx@kernel.org>
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

On Mon, Jun 5, 2023 at 2:39=E2=80=AFPM Alejandro Colomar <alx.manpages@gmai=
l.com> wrote:
>
> Reported-by: Yedidyah Bar David <didi@redhat.com>
> Signed-off-by: Alejandro Colomar <alx@kernel.org>
> ---
>
> I suggest this instead.

OK for me as well.

Best regards,
--=20
Didi

