Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 840DA62F82F
	for <lists+linux-man@lfdr.de>; Fri, 18 Nov 2022 15:50:29 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242045AbiKROuY (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 18 Nov 2022 09:50:24 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49172 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242053AbiKROuQ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 18 Nov 2022 09:50:16 -0500
Received: from mail-ej1-x636.google.com (mail-ej1-x636.google.com [IPv6:2a00:1450:4864:20::636])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1DA859038F
        for <linux-man@vger.kernel.org>; Fri, 18 Nov 2022 06:50:08 -0800 (PST)
Received: by mail-ej1-x636.google.com with SMTP id f18so13625615ejz.5
        for <linux-man@vger.kernel.org>; Fri, 18 Nov 2022 06:50:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:to:subject:message-id:date:from:reply-to
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=bIY3TPZTVnWea00k4Qcne3TRu4UILnkul61ceLO7Q90=;
        b=oO52kwg6kY1Jiwv3VZVJ9MsyMHfJCdDzapTJc8FB2CzykeE+qznXLvbA8uFGPjTg+A
         0A4HHVTrk9TSN9omW0/GvYGwEWPXcnazA74PVfXWY8PO+9FFuRjhjYthtyK35N6pDNtv
         DFuEEUmDiTqpgeFKxNrlAOebNFzLs5SPbyKctb51I+zeYugK6p1d0JmFmRiyEdxAtgfv
         7VN95M+KbY5UEZ10TMIbzB4wKHxEcuReuU5TJJNqpQsBKHPpmqENYVyt+bwRFEq5iRSi
         3YzSVSqLJuqT0dx7M31uA3s9gU+h+9/1jVNFbBBuBAPYDi+twWwMxDCshAjQRrZsbcUQ
         7C9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:to:subject:message-id:date:from:reply-to
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bIY3TPZTVnWea00k4Qcne3TRu4UILnkul61ceLO7Q90=;
        b=hUpB52rxxmSlPuAi/bZzp9TGCO3vPa6u5AJG4xxWwmiRq6niPakJB45lgoyDDdbaZB
         blZXK+i/+RB4Ouvqw3AQITbRtWx69cAw0QGEdTVX3LT8U3JvD4fJ0ZaNjd0f6esaRKXV
         C6t77hpfQqxpTrlVMuffgDASvAzlS4RS5BrLWO05dJ1qAmHtRxfi3U0c2CoedlyNqRM3
         Bc5AjoM+GoS//pvh8YOkQgQL+V3dtts8yjwDrh2uhiMdKQQQ8nyj/NEME47Oto1ESTRx
         Fm3thKkVNq+OfSDXyZoHRwSDaXL2o8P/qAxPcCdrHFfzQ6a3BMxQ7/lHjDfq0DgTexcB
         KOdw==
X-Gm-Message-State: ANoB5pkxH8DpqMT2NQokmCKJ49K5MgpvVGYu6TAR2nCQ2QX+oXirCkZc
        w3NY/RasJg5XOaZ/4rar5UCcREHKYkzzr3fI9YU=
X-Google-Smtp-Source: AA0mqf6tfJglqPREBpc7SiyORwl8M4LRhNJiJNJ4imv8ozEbAOB0LzsdetDhlt3+JRhDIB5lfs1BGjhgck9C7yB1iJk=
X-Received: by 2002:a17:906:19d2:b0:78e:11ea:8528 with SMTP id
 h18-20020a17090619d200b0078e11ea8528mr6468096ejd.190.1668783006101; Fri, 18
 Nov 2022 06:50:06 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a17:906:328d:b0:782:a20:b9b1 with HTTP; Fri, 18 Nov 2022
 06:50:05 -0800 (PST)
Reply-To: tn0056454@gmail.com
From:   Belarbi Malik <janp38923@gmail.com>
Date:   Fri, 18 Nov 2022 14:50:05 +0000
Message-ID: <CAJN3hz0_JSvnJg2RmQJKxM+fUQGcE6Pxwjf-mXxCTzr90ax_ig@mail.gmail.com>
Subject: 
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: Yes, score=5.0 required=5.0 tests=BAYES_50,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,FREEMAIL_REPLYTO,FREEMAIL_REPLYTO_END_DIGIT,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,UNDISC_FREEM autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
        *      https://www.dnswl.org/, no trust
        *      [2a00:1450:4864:20:0:0:0:636 listed in]
        [list.dnswl.org]
        *  0.8 BAYES_50 BODY: Bayes spam probability is 40 to 60%
        *      [score: 0.5000]
        *  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
        *      provider
        *      [janp38923[at]gmail.com]
        *  0.0 SPF_HELO_NONE SPF: HELO does not publish an SPF Record
        *  0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
        *       in digit
        *      [janp38923[at]gmail.com]
        *  0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in
        *      digit
        *      [tn0056454[at]gmail.com]
        * -0.0 SPF_PASS SPF: sender matches SPF record
        *  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
        *       valid
        * -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
        * -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
        *      author's domain
        * -0.1 DKIM_VALID_EF Message has a valid DKIM or DK signature from
        *      envelope-from domain
        *  2.9 UNDISC_FREEM Undisclosed recipients + freemail reply-to
        *  1.0 FREEMAIL_REPLYTO Reply-To/From or Reply-To/body contain
        *      different freemails
X-Spam-Level: *****
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

--=20
Sch=C3=B6nen Tag

Mein Name ist Belarbi Malik. Ich bin von Beruf Rechtsanwalt. Nachdem
das Ecowas-Gericht die Kisten/Erbverm=C3=B6gen unserer verstorbenen
Mandanten freigegeben hat, m=C3=BCssen Sie diese Kisten erhalten. Ihr
Cousin, mein verstorbener Klient, hat hier in meinem Land an der
Goldk=C3=BCste nicht abgeholte Kisten zur=C3=BCckgelassen. Ich erwarte Ihre
Antwort bez=C3=BCglich des Verfahrens und Kopien der Dokumente werden Ihnen
zugesandt.

Belarbi Malik
+22897822988
