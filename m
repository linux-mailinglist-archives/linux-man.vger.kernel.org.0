Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EAB9562115D
	for <lists+linux-man@lfdr.de>; Tue,  8 Nov 2022 13:49:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234163AbiKHMs4 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 8 Nov 2022 07:48:56 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34652 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234255AbiKHMss (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 8 Nov 2022 07:48:48 -0500
Received: from mail-vs1-xe44.google.com (mail-vs1-xe44.google.com [IPv6:2607:f8b0:4864:20::e44])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2551013D11
        for <linux-man@vger.kernel.org>; Tue,  8 Nov 2022 04:48:38 -0800 (PST)
Received: by mail-vs1-xe44.google.com with SMTP id n68so13358949vsc.3
        for <linux-man@vger.kernel.org>; Tue, 08 Nov 2022 04:48:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:subject:message-id:date:from:reply-to:mime-version:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Ud2Qp+0j+JXG+xzOTKtAs0iVLtO4HhzSJ3v0hgygifc=;
        b=DjCIixFy+LExXsuVqk4S1SgKQxG9n1raPX2Qt1F4nfwwbVcjkG8aH3JgocQq2vbeEz
         c2adUek/uAIHuSbl1BPYhr7lnPoTqAgWpyN7D+dWAB+aYGpdUd1NhSZU2lzI9hMxUhm0
         CCEYFDlp1JmrDagDVXY3cCt2GK1BhsdXlPjhP/ti22Kwd41eIMVkLNthNPEn2Uqr9LIA
         WjXvDFx+atyhwGcx6lC7N/1goashw8Gg9nkt1q1wVcC/yTA2CmfCjlg64tOb4ZwPLDpM
         BzfwvP33gwPXTLYtWt9wKfRsv0C/h/MW6moqm4dzFbunKeAIQSMfX7kOtgZvLR3cZG+e
         0m3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:reply-to:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Ud2Qp+0j+JXG+xzOTKtAs0iVLtO4HhzSJ3v0hgygifc=;
        b=q326zsWkUzvvRMWz9642rGMcnwTysDzGTnM89gCwkrrbvwcCoBKguMT5xNw6cDaxYd
         lIyDJGRc7o/KSA5dclHHX4J/ineyk2UZcKIJ59knu0+8BCdcUiWFUv6MT9khr7hUhghu
         tEHRtF5Ln454iXjCBftrp5CBGZcCWY82GCN7OFcI3ZSZZSfU7KyEvzpgjJe4s5njGF6E
         WkVMWPthKkdr3JkrTCEhm7pzEJMMlesdSSIFeg79BAA0XyaukItkaL0b0EU/eG+NChiS
         tcY8Gy9hoQHVINk+GioUQ8hvSqc++XUWStfePkx4KE8THHat3d6RGYlp7BVEOTuhPnG/
         VlBw==
X-Gm-Message-State: ACrzQf0x9CmnaKFO1SIIR3Y2aMYxXNyAv6XNnZHxRjY/YyXD1d/68Erj
        fF2hgXni987+ehJF9UGbCy3GvhZAsNRNub2vDfw=
X-Google-Smtp-Source: AMsMyM5gPrq9U76fxlERIxEvWxabwxYnAbP6pd/546jYUM6jaiPAX3u+06K1eJ+qzNzth0cOnTQo/clxOE0JLs50fWU=
X-Received: by 2002:a17:902:aa01:b0:187:2e5a:5bcf with SMTP id
 be1-20020a170902aa0100b001872e5a5bcfmr41879098plb.63.1667911375699; Tue, 08
 Nov 2022 04:42:55 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:6a10:474a:b0:2ff:c4d2:f5ce with HTTP; Tue, 8 Nov 2022
 04:42:54 -0800 (PST)
Reply-To: akiraharuto@yahoo.com
From:   Abd-Jafaari Maddah <victoriastevernson1982@gmail.com>
Date:   Tue, 8 Nov 2022 04:42:54 -0800
Message-ID: <CAHuSFTadPqESykGySZRnmfzznxuppa1oFeC0xzS9zh1p97kBXw@mail.gmail.com>
Subject: Did you get my mail
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=4.8 required=5.0 tests=BAYES_50,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,FREEMAIL_REPLYTO,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,
        SPF_PASS,UNDISC_FREEM autolearn=no autolearn_force=no version=3.4.6
X-Spam-Level: ****
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

-- 
Dear,
I had sent you a mail but i don't think you received it that's why am
writing you again.It is important you get back to me as soon as you can.
Am waiting,
Abd-Jafaari Maddah
