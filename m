Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B1032574729
	for <lists+linux-man@lfdr.de>; Thu, 14 Jul 2022 10:37:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237371AbiGNIhy (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 14 Jul 2022 04:37:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60932 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235940AbiGNIhN (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 14 Jul 2022 04:37:13 -0400
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com [IPv6:2a00:1450:4864:20::136])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3A2073FA26
        for <linux-man@vger.kernel.org>; Thu, 14 Jul 2022 01:37:12 -0700 (PDT)
Received: by mail-lf1-x136.google.com with SMTP id r9so1620690lfp.10
        for <linux-man@vger.kernel.org>; Thu, 14 Jul 2022 01:37:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:reply-to:from:date:message-id:subject:to;
        bh=H3bGT1ZyGPu3PRQJlJHyQI9TvTjBPuNSyHjFOzNfiP0=;
        b=gaDZ6UkvWmoGLPkb5BiwWKXrxZqJRKNx4T2fn6EvGAM0nTMCvTzxyP4EuJ913j6Iv+
         SvMX4/pvx4tmhR/0cDdL9pbkcCOAwg/dZQZJjKvYYHG5zoS6pTup2xrhZON7aPFodE61
         jbdbe7f5x1iqsxnbqtRGk5VVyYe+GfguXyW53v/Jtk7m9BRLrugVau1mwPBhoM15I1rO
         FgfB/JoMGOti2QefdfOSOcdpcygQeBiN0idXo3yCL6hW5Cz+uWpratECqWcSagxAB5xP
         zT+sUZ3pJE3RjDVpLi/6z/hZ8yL43zLlaxwdm4ILJ3e9Bke6wVp5k2l7GAKtdogOGzmZ
         5LQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:reply-to:from:date:message-id
         :subject:to;
        bh=H3bGT1ZyGPu3PRQJlJHyQI9TvTjBPuNSyHjFOzNfiP0=;
        b=aegIaRNIQszBuiJCk/iT1pFheJf6uSeMuFK9BYGWb+OH9idMkEj6YlGaVPZPnm6pog
         pxsVe+E3T8RVsOd9uAQErUt0ogAEw4gZh6pT4AtVJHoZbwM+y1vDmIGpEYvTbeI/uwMo
         InRWhg8w0lNazjHTzVReyRJQMVLqCaudWwHR4UZjznpOKweejkIG4aCS/tOsHouh42Lw
         ZHlJX2Jp49/qgaNFNO/drK0o3nT67r4gZmFqmlT6Pfu6NuvcVBFOZ2iVBPmE/3doYz1F
         3lt/ZX/PVbhBPvJLFvuzV52mjhIcLQR9RsYrkhFN0erq1oirlybSUrK4oUjUE6xUYS/8
         AptA==
X-Gm-Message-State: AJIora9MLfMRmMEQ+5y2rF9ck02NslVLSKGb3QdZn3XxW0ppdnbG1QhK
        9gMqZR4OBL11Mia4P9u7X2Yob3GEktY43IIpG+fT1paJ9jUKyQ==
X-Google-Smtp-Source: AGRyM1vX4Zd9WIWDxqKGtP81mt11peMiDiT310/qUqT5enM4eeA2HoIqQaHp0s5sIeDBZVZu8TIFwya2pg7lDHDFDeo=
X-Received: by 2002:a05:6512:4004:b0:48a:12dc:7f63 with SMTP id
 br4-20020a056512400400b0048a12dc7f63mr2033540lfb.131.1657787820892; Thu, 14
 Jul 2022 01:37:00 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a2e:9041:0:0:0:0:0 with HTTP; Thu, 14 Jul 2022 01:37:00
 -0700 (PDT)
Reply-To: abdwabbomaddahm@gmail.com
From:   Abdwabbo Maddah <abdwabbomaddah746@gmail.com>
Date:   Thu, 14 Jul 2022 09:37:00 +0100
Message-ID: <CAFC-3ieta-vbGq7=-xp9Wgp2Sr8SYhFWTPWR2J6JsyQ_pZJxLQ@mail.gmail.com>
Subject: Get back to me... URGENT
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: Yes, score=5.0 required=5.0 tests=BAYES_50,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,FREEMAIL_REPLYTO,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE,UNDISC_FREEM autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
        *      https://www.dnswl.org/, no trust
        *      [2a00:1450:4864:20:0:0:0:136 listed in]
        [list.dnswl.org]
        *  0.8 BAYES_50 BODY: Bayes spam probability is 40 to 60%
        *      [score: 0.4969]
        *  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
        *      provider
        *      [abdwabbomaddah746[at]gmail.com]
        *  0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
        *       in digit
        *      [abdwabbomaddah746[at]gmail.com]
        * -0.0 SPF_PASS SPF: sender matches SPF record
        *  0.0 SPF_HELO_NONE SPF: HELO does not publish an SPF Record
        * -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
        *      author's domain
        *  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
        *       valid
        * -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
        * -0.1 DKIM_VALID_EF Message has a valid DKIM or DK signature from
        *      envelope-from domain
        * -0.0 T_SCC_BODY_TEXT_LINE No description available.
        *  3.2 UNDISC_FREEM Undisclosed recipients + freemail reply-to
        *  1.0 FREEMAIL_REPLYTO Reply-To/From or Reply-To/body contain
        *      different freemails
X-Spam-Level: *****
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

-- 
Dear,
I had sent you a mail but i don't think you received it that's why am
writing you again.It is important you get back to me as soon as you
can.
Abd-Wabbo Maddah
