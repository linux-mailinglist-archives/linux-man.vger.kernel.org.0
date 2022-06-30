Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3A31E561F9E
	for <lists+linux-man@lfdr.de>; Thu, 30 Jun 2022 17:46:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235195AbiF3Pqc (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 30 Jun 2022 11:46:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56026 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236137AbiF3Pq2 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 30 Jun 2022 11:46:28 -0400
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com [IPv6:2607:f8b0:4864:20::442])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 18C0940E73
        for <linux-man@vger.kernel.org>; Thu, 30 Jun 2022 08:46:28 -0700 (PDT)
Received: by mail-pf1-x442.google.com with SMTP id p14so18526535pfh.6
        for <linux-man@vger.kernel.org>; Thu, 30 Jun 2022 08:46:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:reply-to:from:date:message-id:subject:to;
        bh=edeevZ54MxyNr2ONaDsC9jI+UtdZjrCL/LCuSFC70Ao=;
        b=NMNg5enDuNC69B+RTKdg1qk8IPyeIqa+/WlRkNxx8STgP14PCQ0IaY5bAsm4lQ1d7S
         7njgYgXGX9JamsM6I4Y2z0ygWRo9vtnd0ombt2+aXSzI5kyN0f9rPPOPtkcrSXFnf7Jq
         HpGsdsmS9heQ9j4TP7w1xt1+/38Gltca8NF7/LsY6dHdPnsBpOshql+KsNfIOZZvoL1U
         JiCafvvurwghEV3d/Pi1uLcbFVvvHDq2T48tYrAXZNIt68Zh3N0Z0SfuD9rDUay4S+Lq
         BqbGGVPcIEHBb6fbk5bAqGhxz1z7+n8LSEMhe4yw0ILRwQrKP8pEYL2FT8F+aH5CXPpx
         vtmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:reply-to:from:date:message-id
         :subject:to;
        bh=edeevZ54MxyNr2ONaDsC9jI+UtdZjrCL/LCuSFC70Ao=;
        b=tnbzFOaDFHGy0Lwa2nw3dPG+dB8FSJwNoNDFl3RAmYO/WZNJLYdFEww1yhJfVBnZzF
         w+UpOGVuxWf81TF4pIYM4ta4KDmIUHCt88ENBjJIQvuun5SVGs8RGcHLvmqvdiUYcXQo
         tAfolUPi4ORcmLPpsP6orzoYwU/qcfqpiwnC2LgiszChlcaMEEm7m1kEb/3cBiLDjyZU
         +91dab1khZ1fIHIUtvIoz3LV+m8eX/zQJrZr14vLI3VOf0iDkngz/SPNGMFNk+SjZEle
         3Kh0lwGf0vQQjSKYmU/OPPE19U/3oQ7XxbPP5I+nqs26pxqfms8j+WjidJ3Xyi+fpw5m
         f52Q==
X-Gm-Message-State: AJIora8tOeVHLzrOv2IZUcXNYgfVn2/5lryvQrBGhvaDEiGZgv0pCgFY
        Edgi0xtdO6TD+XTlTKirdMYJv4nCktOFy9yV/Q==
X-Google-Smtp-Source: AGRyM1uSi+S3BPbvKYbho2kOKm5TPbm7SSLod7SbYlc1iwr8l/ODYlcRGvchxh2JIJ7Q5UBhlJzsSu0OiV2zLh0qTsg=
X-Received: by 2002:a63:2a92:0:b0:3fd:3da3:86ae with SMTP id
 q140-20020a632a92000000b003fd3da386aemr8172171pgq.284.1656603987062; Thu, 30
 Jun 2022 08:46:27 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a17:903:185:b0:16a:29ab:582f with HTTP; Thu, 30 Jun 2022
 08:46:26 -0700 (PDT)
Reply-To: mohammedsaeeda619@gmail.com
From:   Mohammed Saeed <mitash.m.patel2012@gmail.com>
Date:   Thu, 30 Jun 2022 08:46:26 -0700
Message-ID: <CANRWfSNONcsY2BjA4Qj0BoXmQzVMu-6Sb9u-1FmQezff-CWC-A@mail.gmail.com>
Subject: Proposal
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=4.5 required=5.0 tests=BAYES_50,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,FREEMAIL_REPLYTO,FREEMAIL_REPLYTO_END_DIGIT,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        UNDISC_FREEM autolearn=no autolearn_force=no version=3.4.6
X-Spam-Level: ****
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Salam alaikum,

I am the investment officer of UAE based investment company who are
ready to fund projects outside UAE, in the form of debt finance. We
grant loan to both Corporate and private entities at a low interest
rate of 2% ROI per annum. The terms are very flexible and
interesting.Kindly revert back if you have projects that needs funding
for further discussion and negotiation.

Thanks

investment officer
