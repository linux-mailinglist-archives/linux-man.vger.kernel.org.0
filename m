Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 83FC14C36F4
	for <lists+linux-man@lfdr.de>; Thu, 24 Feb 2022 21:43:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232574AbiBXUnn (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 24 Feb 2022 15:43:43 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35048 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231537AbiBXUnn (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 24 Feb 2022 15:43:43 -0500
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com [IPv6:2a00:1450:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 061DF1A273F
        for <linux-man@vger.kernel.org>; Thu, 24 Feb 2022 12:43:12 -0800 (PST)
Received: by mail-wr1-x430.google.com with SMTP id s13so1460503wrb.6
        for <linux-man@vger.kernel.org>; Thu, 24 Feb 2022 12:43:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:from:mime-version:content-transfer-encoding
         :content-description:subject:to:date:reply-to;
        bh=ixHVzoz696qN1Cmrg9x1bmR8vdWLOLbXCVjc9DtTLhI=;
        b=bnjp04KxGT//7s6zfiCfS296X5ePmRq5J5mfZP3a5sTPPSXYKR1aUlyghao7HeV2IR
         EeTWfxuHHEKykXrm9AVrv6nWiTdSm/3krC9n03fgiP00bi9UKonxHRBV51CJdCcGGMMu
         eouNQjPo8HQXgElul4E/nyKtNB+BznJamF9Fj4wBLYpspF63EM9wCzNe/RHJgLwyxNFm
         XRIDx8yxSi9Iq6p5D7y87Zg+rafaBQVd1u232dGq/1jf9jb5bO5NliHaWM/tfjeHpp90
         ge26PzXVZIdpswpy54pxUnSTcioxmBp9zQg77wgBw4DTz7GYQxH0Bic8CNVyqKV5q73/
         NRaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:from:mime-version
         :content-transfer-encoding:content-description:subject:to:date
         :reply-to;
        bh=ixHVzoz696qN1Cmrg9x1bmR8vdWLOLbXCVjc9DtTLhI=;
        b=yV7u1SdeGlneFCIeNU3topX31AR+r9ct3hJazS01OBI0b/uUpU9y3Oy4KiPYK5e7bb
         2O0acUCKjVHjOVVwqpJdvYxjFqMNW/E6gD/Ith6GNd7dqjx7m/icKCTwWF0I5k9CdCxF
         2LEb12gjcrWRDGlB5kLczx+hp/qTxg3K3+WyXp63xNm3Ysm2SIADAxAcOhLbbOsVwuon
         C+Z7IEh6tTSfE7+dvS9lvrB7Obs1xLHwhYqmSPTW1ECRrgCwdNSnMZE76WB/BQ515YUN
         tv/KZKSKWi3s6KU3gl4oKI/vnKwq/JWtkCMIuEAqwIbmrpFGjvlJFHmA6ChLOxX+7VLB
         HFGg==
X-Gm-Message-State: AOAM53229TT0ynZ9EmccVtwwNHPq/I8BYvToR0KdemC0Xqz0AjSOGRhB
        cM5bId7vdn8ueN6qmfjYxBM=
X-Google-Smtp-Source: ABdhPJwml5CNtNqyhj35JeH9QHNXxRtjKuTkbVyb1lHBNZ1/m7seRPwi8mb/5mh+h3lUtpCDYfSmZQ==
X-Received: by 2002:adf:fe0f:0:b0:1e2:f9dc:6ed with SMTP id n15-20020adffe0f000000b001e2f9dc06edmr3661941wrr.530.1645735390622;
        Thu, 24 Feb 2022 12:43:10 -0800 (PST)
Received: from [192.168.0.133] ([5.193.8.34])
        by smtp.gmail.com with ESMTPSA id bg42-20020a05600c3caa00b00380deeaae72sm10164937wmb.1.2022.02.24.12.43.06
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Thu, 24 Feb 2022 12:43:09 -0800 (PST)
Message-ID: <6217eddd.1c69fb81.a142b.71b9@mx.google.com>
From:   Mrs Maria Elisabeth Schaeffler <freedonation48@gmail.com>
X-Google-Original-From: Mrs Maria Elisabeth Schaeffler
Content-Type: text/plain; charset="iso-8859-1"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Description: Mail message body
Subject: Spende
To:     Recipients <Mrs@vger.kernel.org>
Date:   Fri, 25 Feb 2022 00:42:58 +0400
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
