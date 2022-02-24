Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D0E164C33F5
	for <lists+linux-man@lfdr.de>; Thu, 24 Feb 2022 18:47:43 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229778AbiBXRqw (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 24 Feb 2022 12:46:52 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57114 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232173AbiBXRqw (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 24 Feb 2022 12:46:52 -0500
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com [IPv6:2a00:1450:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B2A3227DF2D
        for <linux-man@vger.kernel.org>; Thu, 24 Feb 2022 09:46:20 -0800 (PST)
Received: by mail-wr1-x434.google.com with SMTP id j22so786202wrb.13
        for <linux-man@vger.kernel.org>; Thu, 24 Feb 2022 09:46:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:from:mime-version:content-transfer-encoding
         :content-description:subject:to:date:reply-to;
        bh=ixHVzoz696qN1Cmrg9x1bmR8vdWLOLbXCVjc9DtTLhI=;
        b=HLgzX/vmTD9WQkAjpxQXaOdAf6G8RuKZK7p90aQe6BZmxifa9v4VgDTaT8k6k0wX3h
         YUrHFnGYWTlKbk+2fVafKRIBrA0OsNOGTyRyl4s3NKf8c3NwSgF0G2lAcOhQRxjrIL49
         LO2FkWsiANtPAugKg770lpx/oR+VFff2mkeAjFFXSEDyUeWoV9gkmYjQowi3BZi8Qftz
         69VId7UtcRPmtuZyYl1AJ2K1jMtlBd+zGuJs5/Sh827xFHfAuNCaf8gDFd8B9KX/70ll
         kKYgfUb3LzaBKkxjfmd/HwBkDj8j7ZAebmLmj0IUZGZwZsz/WKE5+YTXbb6Ny2JcqoLn
         MLCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:from:mime-version
         :content-transfer-encoding:content-description:subject:to:date
         :reply-to;
        bh=ixHVzoz696qN1Cmrg9x1bmR8vdWLOLbXCVjc9DtTLhI=;
        b=0SDIesLigkQBWlhzRdfaZYlGt/uwEsNGGMfoLIjWVOy8Nqq/Tp86bepUhj56GJfxsY
         oUwTe8OKpK+YHTfe4Amv0a4Ct+rZGwWjglxU9hTGfYle+kfSjtdAb4CBqQCTSrfdr6Cl
         BxeXYpVTfPwamKXJhtJPUojzsu3k60pPsHrcVxKv9UxtopZq2OQBinJsULGFCQ5W1/wv
         YQF6rUYnKvPgmpjwLjDWfoGWalqZL3BJBD+wfPSRP0Hry2I3/n0pV0KaR8Sh3gzSIL/B
         uH4zw7/BTIMjSvD8yJSirUZulqEZiKA2MIJMomTUc4f3+Htd7PnpNZ81mm/K2rnNSaZu
         xu/g==
X-Gm-Message-State: AOAM5327S3b8skS1RDPaalqLgUNMdJp3k2L/jhPZ4Ag8YxoRdxN4fE2x
        WfqNdd787zY5vdxlvNaL02o=
X-Google-Smtp-Source: ABdhPJxxYF4au86F2tevtMxuwOwpjUaPfpY3vjvRhormuUlsj3wHdvdtKQd9e7ltMhlnJDGr/+VOMg==
X-Received: by 2002:adf:d1ca:0:b0:1ea:939c:6d6c with SMTP id b10-20020adfd1ca000000b001ea939c6d6cmr3079004wrd.567.1645724779322;
        Thu, 24 Feb 2022 09:46:19 -0800 (PST)
Received: from [192.168.0.133] ([5.193.8.34])
        by smtp.gmail.com with ESMTPSA id z5-20020a05600c0a0500b0037fa93193a8sm15035wmp.44.2022.02.24.09.46.15
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Thu, 24 Feb 2022 09:46:18 -0800 (PST)
Message-ID: <6217c46a.1c69fb81.66f83.00d9@mx.google.com>
From:   Mrs Maria Elisabeth Schaeffler <freedonation48@gmail.com>
X-Google-Original-From: Mrs Maria Elisabeth Schaeffler
Content-Type: text/plain; charset="iso-8859-1"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Description: Mail message body
Subject: Spende
To:     Recipients <Mrs@vger.kernel.org>
Date:   Thu, 24 Feb 2022 21:46:07 +0400
Reply-To: mariaeisaeth001@gmail.com
X-Spam-Status: No, score=2.2 required=5.0 tests=BAYES_50,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,FREEMAIL_REPLYTO,FREEMAIL_REPLYTO_END_DIGIT,
        LOTS_OF_MONEY,MONEY_FREEMAIL_REPTO,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,
        SPF_PASS,TO_MALFORMED,T_HK_NAME_FM_MR_MRS,T_SCC_BODY_TEXT_LINE
        autolearn=no autolearn_force=no version=3.4.6
X-Spam-Level: **
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hallo,

Ich bin Frau Maria Elisabeth Schaeffler, eine deutsche Wirtschaftsmagnatin,=
 Investorin und Philanthropin. Ich bin der Vorsitzende von Wipro Limited. I=
ch habe 25 Prozent meines pers=F6nlichen Verm=F6gens f=FCr wohlt=E4tige Zwe=
cke ausgegeben. Und ich habe auch versprochen zu geben
der Rest von 25% geht dieses Jahr 2021 an Einzelpersonen. Ich habe mich ent=
schlossen, Ihnen 1.500.000,00 Euro zu spenden. Wenn Sie an meiner Spende in=
teressiert sind, kontaktieren Sie mich f=FCr weitere Informationen.

Sie k=F6nnen auch =FCber den untenstehenden Link mehr =FCber mich lesen


https://en.wikipedia.org/wiki/Maria-Elisabeth_Schaeffler

Sch=F6ne Gr=FC=DFe
Gesch=E4ftsf=FChrer Wipro Limited
Maria-Elisabeth_Schaeffler
Email: mariaeisaeth001@gmail.com
