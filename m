Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F17ED583A26
	for <lists+linux-man@lfdr.de>; Thu, 28 Jul 2022 10:16:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233818AbiG1IQs (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 28 Jul 2022 04:16:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34026 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234950AbiG1IQs (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 28 Jul 2022 04:16:48 -0400
Received: from mail-yb1-xb2d.google.com (mail-yb1-xb2d.google.com [IPv6:2607:f8b0:4864:20::b2d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 206EB5F9AB
        for <linux-man@vger.kernel.org>; Thu, 28 Jul 2022 01:16:47 -0700 (PDT)
Received: by mail-yb1-xb2d.google.com with SMTP id n8so2147912yba.2
        for <linux-man@vger.kernel.org>; Thu, 28 Jul 2022 01:16:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=cc:to:subject:message-id:date:from:mime-version:from:to:cc;
        bh=LzL2exMddnVNfSJkyJuM2XOWj/JeF9nX7uRb59aEzSg=;
        b=VfGE7O/fyDjv3DXe++pcZ9M8hfBEroLlRPNhMzEGOMJnGi3R7VbaIodLM8CQwkUYPg
         NfdBWmzyfelY/nvk7t5jC8sEpsIjyITZTEb0EcPoWu2df2W19QqyR0M1HJM9mfH8E00V
         XWc+YFI+tfC6lvRNHiJjTBjxZ5SM9NqV29SUG0BIVzKwGl3nDH4vLNEJGw1fN8D1BaI4
         T2H9Y62V5JETDR6jdxiuBd0q5Xtfe7KVhuorvy6YpfElagNma1GVkIXcLUuXPcXImPjO
         xTtNRhwynULkurOoy03qM5PlodJ1H8VYAGsKdPoaIGbtGgfko966aVsLHPYp+ipViXWz
         eF4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc;
        bh=LzL2exMddnVNfSJkyJuM2XOWj/JeF9nX7uRb59aEzSg=;
        b=4MupWetojX50ZdGClNeB2t4fsNi4AweowtLHFtOBSuFm81pITv4nfCFRit3wTU7liv
         v5AeubjZEZiH7qB8ar2AL11G6ZjzrnVUMLZYJmZ5uvq2Dmc3cI1CP8H2+6M0XnJgW5X1
         On+O/vOQgwlAXgfN5NJ6F803fdZYDISphD/yMo6FAKmsvbIkg3//uF4q/X1jhuyOyFf/
         iy7talIllHU4r2FSxVd7r0WCIMZB1PbeYc+7l8u1qgtqfCPtDNE4uyG9h+AoUFTizEhc
         6+Tmo8R8bnB7FszzEx+QoV8XzcXp21f1WPIXQRSGxXrFPjpQ/dJ++G8ACT868AguC5lP
         zHRw==
X-Gm-Message-State: AJIora+yG7Lw3eIIlzkJtEwhXoVslsg3c7ckc2kvFvaw+GElz1/7Vhbi
        XOE8hM67VE7bI0l7FbhRc5SurDkzTMBnyzzTEC1MGQ==
X-Google-Smtp-Source: AGRyM1vtR/99oa0CMtvAAYFhqesRAHcRZwGtPeBLhppOypX+C7x9oq72diodBa/2NNezLFKIhcQ+aaL6hYl/xrzti1Q=
X-Received: by 2002:a25:bc3:0:b0:673:bc78:c095 with SMTP id
 186-20020a250bc3000000b00673bc78c095mr2652233ybl.376.1658996205640; Thu, 28
 Jul 2022 01:16:45 -0700 (PDT)
MIME-Version: 1.0
From:   Almaz Mingaleev <mingaleev@google.com>
Date:   Thu, 28 Jul 2022 09:16:34 +0100
Message-ID: <CAJ0cOr-v1GDCqsU86w-rZVvejtppOAW56FxApFPnfPwRmAd47w@mail.gmail.com>
Subject: %z and %Z in strftime man page require clarification
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org, Elliott Hughes <enh@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-17.6 required=5.0 tests=BAYES_00,DKIMWL_WL_MED,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        ENV_AND_HDR_SPF_MATCH,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        USER_IN_DEF_DKIM_WL,USER_IN_DEF_SPF_WL autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Michael,
Current strftime specification in C language standard is not accurate.
It tells that tm_isdst is enough to find out time zone's offset. But
that's not true, for example Europe/Lisbon has changed [0] its
standard offset from 00:00 to 01:00 and back to 00:00, so an exact
date is needed to answer that.

To get correct answer with the current glibc tm struct should either
come from localtime or there should be a mktime call prior to
strftime. You can find a repro example and discussion here [1]. Paul
Eggert has proposed a fix to C standard [2].

Should man pages reflect that i.e. mention that there should be
localtime/mktime calls for %z and %Z?

Thanks,
Almaz

P.S. I am resending the email. My previous attempt was bounced back as
it wasn't TEXT/PLAIN.

[0] https://github.com/eggert/tz/blob/a249a0c64b2f87a24c7f1aab43056fb597c95b96/europe#L2400
[1] https://mm.icann.org/pipermail/tz/2022-July/031668.html
[2] https://mm.icann.org/pipermail/tz/2022-July/031674.html
