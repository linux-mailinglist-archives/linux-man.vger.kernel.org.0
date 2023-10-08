Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 316047BD10F
	for <lists+linux-man@lfdr.de>; Mon,  9 Oct 2023 00:55:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231652AbjJHWzI (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 8 Oct 2023 18:55:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54382 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231329AbjJHWzI (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 8 Oct 2023 18:55:08 -0400
Received: from mail-ot1-x332.google.com (mail-ot1-x332.google.com [IPv6:2607:f8b0:4864:20::332])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E0827A3
        for <linux-man@vger.kernel.org>; Sun,  8 Oct 2023 15:55:05 -0700 (PDT)
Received: by mail-ot1-x332.google.com with SMTP id 46e09a7af769-6c4bf619b57so2754582a34.1
        for <linux-man@vger.kernel.org>; Sun, 08 Oct 2023 15:55:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1696805705; x=1697410505; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=pStCKI4+bPDiKwV5HJZl7lC0A+3uxB6soZ6xV/WQNZc=;
        b=Mae8TXcZNANeZRCX6O+nN50z4Foo9ShnXN/pWozNFAZxX6OXq49r3Sgjym5YxCQku6
         39afG8y5lICd2uuR6BiNoGS7azT+mpLlyleFTFAR87u/nYRLZAtoLZxJCKuBTHEZ4G6g
         hcKxdrPkFrZbKuc9m/dgGrPtfmfQUD02cM0FOqeNhPGZMpS9r9gZ513c9thYJvXDTo3S
         wW3U8yq0iEBAT+cTOumjma/i3+LbLrtOxfvV2iE9scNmmCGg16nSHFpV1pcmsNuqOuys
         ly5F/poiIkttTOxJ9e+8Y8VKrsoioAqiMACcWjkpeL3KrpxbEjMRxjykUWMb7u0Y0zgq
         IkDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696805705; x=1697410505;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pStCKI4+bPDiKwV5HJZl7lC0A+3uxB6soZ6xV/WQNZc=;
        b=YMI0h5ThKp8bicbfmGbt2bMR9YNaq9HaBIp/7Mm840h4DfGfhsjs5jcJTmF8OjWGKN
         wC1QJ1tKNuwH7h2E6dwU9taaALO+YfFFSPS61MVGCCkYC7xBkOXj2wRkm2cW1XrkUgVW
         XLFIP7aB8SZ6dyliioEbqtE+EDGYt5BRMMC6UA6NfObosIFr/vygnvoyX769xUIkjXeR
         F79DP2zl+xxVoEboyClqNB6+UgyA0rwhtSm1mC6ROJ6HqeclBTodFVq0k+SwGmm5y1nj
         j6t/RRMWnTJgW41kxbB4TluAKBWSrKH6lsbhUpEcjGEuOnL4Y3tjipSosVFJmmIKG0/G
         WuLQ==
X-Gm-Message-State: AOJu0Yx4PhB+ENRkyRWR8wfa1Dv9YpelmMfjarwj0pFFy2YzXpS+HlB+
        trUAyib5BfiIlAj8Fp09NQHvclf8oKo=
X-Google-Smtp-Source: AGHT+IGXpFNmKlncODguut36sVhu6kevPq+Jtsg4szWZN0/m4nHtnasQFA/kBsQa1mCaMCt9sI/B6Q==
X-Received: by 2002:a05:6830:1db9:b0:6b8:6785:ed0b with SMTP id z25-20020a0568301db900b006b86785ed0bmr15186348oti.30.1696805705013;
        Sun, 08 Oct 2023 15:55:05 -0700 (PDT)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id p124-20020a4a4882000000b0057de3e449c8sm1352449ooa.8.2023.10.08.15.55.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 Oct 2023 15:55:04 -0700 (PDT)
Date:   Sun, 8 Oct 2023 17:55:02 -0500
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx@kernel.org>
Cc:     linux-man@vger.kernel.org
Subject: Re: [PATCH] man2/userfaultfd.2: ffix
Message-ID: <20231008225502.fjj7dnkwdtd6m6px@illithid>
References: <20231006064254.bsladknplzq5rurq@illithid>
 <ZSMxEqGwjmk1jDEz@debian>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="vbyt3mzieiwnusrg"
Content-Disposition: inline
In-Reply-To: <ZSMxEqGwjmk1jDEz@debian>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--vbyt3mzieiwnusrg
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Alex,

At 2023-10-09T00:45:37+0200, Alejandro Colomar wrote:
> Patch applied.  Should I amend with
> `Signed-off-by: "G. Branden Robinson" <branden@debian.org>`?

Sure.  I forgot (again).  :-O

Regards,
Branden

--vbyt3mzieiwnusrg
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmUjMz0ACgkQ0Z6cfXEm
bc6lTg/5Aa1dzSG4VBsQH+470+iQjHnVsWvSbcjl348HRCp2fTBQIUmtGvzgud89
OubKGFTnZgc030eN3tNJgK5iV9WuKyjbtX92bs+5//CQ4nFFHxf0vyFLhZP9jrYu
qLChnIqQACwjliH3Y1FQ/mdo3JPAmCpzCUfJwYxTtF6sd3BqKoQw1YTvkbj828sM
3b/iZ3l7MdonVXBfNrk4vcwLgpbizTlkRb8NndiG2JJLMfywSfU9xfGKB6tnORvu
ZhNUUZflUy4+RuKxZ+9N6VtV7cI5I/k8yS8NHOhaOfy7Se5kVm1C0H70ROucke7A
w4bTjS+b4R5XIsESHUQex9isA/4eLajU1Bxo7yJf/Q14J5BHPGrtpRaq1yY/c2uh
Bl70/BGPOmBnqLCVtAfwkv60qcSywSN+hY02zvreBv+acTkz3XSeqAUJnodh6rYy
ytxGFap1Gz2Okqxr4wNmnUGjPknWTkF6mbYI+h7JVoHYB4w0gB1WeXcneLESDiEv
eYRk1+uIfocxNfDALB90OYuliXy63BvapTKDFFvpT6wRz62D6LAsQGj7KdyW0t47
n8sE1xB7ObkxXxhC6zvpxeaV4TMfMTnQpfM1/LQCM4MAL3oKGotRxQUB/cH6Lkq+
vQAfjM6ta5bavn1ux9kHffEZ5+oJo95Uw5Ky7FdUxjdcVuCYN5Y=
=U4TC
-----END PGP SIGNATURE-----

--vbyt3mzieiwnusrg--
