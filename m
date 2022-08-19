Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 82DD3599985
	for <lists+linux-man@lfdr.de>; Fri, 19 Aug 2022 12:10:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1346997AbiHSKBo (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 19 Aug 2022 06:01:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37600 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1348295AbiHSKBl (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 19 Aug 2022 06:01:41 -0400
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com [IPv6:2a00:1450:4864:20::134])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6CA8FF4CB4
        for <linux-man@vger.kernel.org>; Fri, 19 Aug 2022 03:01:40 -0700 (PDT)
Received: by mail-lf1-x134.google.com with SMTP id z25so5508032lfr.2
        for <linux-man@vger.kernel.org>; Fri, 19 Aug 2022 03:01:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:subject:message-id:date:from:mime-version:from:to:cc;
        bh=VJHuqJnIx074BMYbiEwAJgSYfRr5by7w1jzdSrWW5qI=;
        b=bE/eDyZDjN5wnsMsYO53ulfbQ01bo4GX4bw0sjWVjOPGzkTvxPuNFWekUJVDRnfu5t
         VSFxS8PvcoewnwwTPCfNkkEz8uxz+/SH9SXp/0t5qbokeugCjGNv9DqrKFhHKxeFKaE3
         RU2PGg3X6P5UNk0o27zf/OY3SrWA1bDYbgf9tWbF1pvA6uqPPiiXLfPAaubwKcxCEpRv
         cn36Fq+kc+xtZHHaogrl9MAlpaTDxi8kRczfaUGmLCLiy5TkNKU7vvrm73xwUY292ATL
         DUPyqTMFH3/JQGqDFNpDeaf7bp9WRjAKvw1Tid7L7HehXnIfbRtpgMYdGB9x+ziUiIdO
         uipA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc;
        bh=VJHuqJnIx074BMYbiEwAJgSYfRr5by7w1jzdSrWW5qI=;
        b=jlGJvzCvcLo8WmuYZOa2GESYKJN4q/ssdSMctKKceHiRNJ4HUknzZn0iuLaH73k2Lb
         2NmsWAX7cQaMHGL0ssqlqkonNtGb90SoQdRABoJuyInmoxUpfzmV01RcqZv7QLlkav17
         5POLdNVBXgFClyASeY4khQcJ0+U9k2pAYDXZvnz24qTv6FMi3zfyQtGAQaTeacAiP26w
         xV5vUqpL2HVRVD7Vldaai/PULCt/nahdNbeTODHOddlF5e1QMh37N7uXAbiL0N0ieZas
         3tylPxNMJ5LNmcKxX+96Pa0r37rWCH8wkM2yiNDRNXzJTURfwcBsJYEiDeecSyW2q+zP
         gTNQ==
X-Gm-Message-State: ACgBeo1U6gepmhyn3K2tduEdnZI/JuNzvwtvXo6ebl7ndwEycxP1rKE3
        bJZR+uuh3FcDmPc3z4YaZ8f/IBLCQXmsAFycxIo=
X-Google-Smtp-Source: AA6agR7UTCRKVY7jEuWoKKuuVHaXGR5jVCikyaDLcNt8tHC1VntH441r8SaIV3+tfyAtncEwOsOekjojdfJBhURH0/k=
X-Received: by 2002:a05:6512:39c3:b0:48b:90c2:da4c with SMTP id
 k3-20020a05651239c300b0048b90c2da4cmr2069834lfu.282.1660903298764; Fri, 19
 Aug 2022 03:01:38 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:6520:4af1:b0:209:fafe:77cf with HTTP; Fri, 19 Aug 2022
 03:01:37 -0700 (PDT)
From:   Carol Carol <cc6461944@gmail.com>
Date:   Fri, 19 Aug 2022 11:01:37 +0100
Message-ID: <CAG4ZSmvDZnB7wn78vjn2Rb7VJpCpEzZZ0K7ZvsLC+Ea5Wq7urQ@mail.gmail.com>
Subject: GOOD DAY
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: Yes, score=7.3 required=5.0 tests=ADVANCE_FEE_3_NEW,BAYES_60,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,UNDISC_MONEY,YOU_INHERIT
        autolearn=no autolearn_force=no version=3.4.6
X-Spam-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
        *      https://www.dnswl.org/, no trust
        *      [2a00:1450:4864:20:0:0:0:134 listed in]
        [list.dnswl.org]
        *  1.5 BAYES_60 BODY: Bayes spam probability is 60 to 80%
        *      [score: 0.6756]
        * -0.0 SPF_PASS SPF: sender matches SPF record
        *  0.0 SPF_HELO_NONE SPF: HELO does not publish an SPF Record
        *  0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
        *       in digit
        *      [cc6461944[at]gmail.com]
        *  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
        *      provider
        *      [cc6461944[at]gmail.com]
        *  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
        *       valid
        * -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
        *      author's domain
        * -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
        * -0.1 DKIM_VALID_EF Message has a valid DKIM or DK signature from
        *      envelope-from domain
        *  0.0 YOU_INHERIT Discussing your inheritance
        * -0.0 T_SCC_BODY_TEXT_LINE No description available.
        *  3.5 ADVANCE_FEE_3_NEW Appears to be advance fee fraud (Nigerian
        *      419)
        *  2.2 UNDISC_MONEY Undisclosed recipients + money/fraud signs
X-Spam-Level: *******
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Good day,

My name is Miss. Anita Philip, I am 19 years old the only daughter to
my late parents. I am contacting you with tears in my eyes because I
really need your help to secure my inheritance that my late father
kept for me before he died. I really need your help to be my guardian
on this. Please can I trust you?? I wait for your reply for more
information on how you can help.

Best regards,
Miss. Anita Philip
