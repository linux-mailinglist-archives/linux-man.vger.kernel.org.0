Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D29A871451D
	for <lists+linux-man@lfdr.de>; Mon, 29 May 2023 08:51:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230173AbjE2Gv4 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 29 May 2023 02:51:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37858 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229961AbjE2Gvz (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 29 May 2023 02:51:55 -0400
Received: from mail-lj1-x229.google.com (mail-lj1-x229.google.com [IPv6:2a00:1450:4864:20::229])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3C12DA4
        for <linux-man@vger.kernel.org>; Sun, 28 May 2023 23:51:54 -0700 (PDT)
Received: by mail-lj1-x229.google.com with SMTP id 38308e7fff4ca-2af1822b710so30510411fa.1
        for <linux-man@vger.kernel.org>; Sun, 28 May 2023 23:51:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=globallinkbuilding.com; s=google; t=1685343112; x=1687935112;
        h=message-id:date:content-transfer-encoding:subject:to:reply-to:from
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=rGwUDfHVc2zcVTjxjGbIai5zJOwboqlp7xEChrv/k+8=;
        b=VrR0RKH85HoL0vzhjG/oFfCoLGhfoy3SYTHuEdfNBPmgsakvCk9dXZnwN6jCz5i+K8
         3aBGOyzhfWnVlRV6wyq42aMD8lrTOye2H1yso4aQRei/dWKGudGkgK3ku/3eAOze/xz5
         bmvmTnW58x9n86CRmII6Y+4l4hMaDk9wXBI24=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685343112; x=1687935112;
        h=message-id:date:content-transfer-encoding:subject:to:reply-to:from
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=rGwUDfHVc2zcVTjxjGbIai5zJOwboqlp7xEChrv/k+8=;
        b=WXKcRMFIvlvSBDS9KD/5KyQUsrciUYzULMOr7Hb1qJ8Jc2Jv6lANjerpixEHmCtnVC
         rZqdvLJueWMscTVbzsm6aBnhkLMxDyAKmUsZVM2ky6C+R2HTzgohNjn8NTXv2r1ux8AD
         hiYt20+QJZwXFsLuEp+NgFYZhDpEsgE4+YCdnA+rWtgLF9xQoWpbmp5kkaa24VA3lCO7
         0nTzJgKyrwU/LPC6W4suhJxSi3FEvD5+8AmlYi0JJHBqyBKVnJFn+GOQJ6nwymk9Y40K
         7jAF9Xp3jKr+assB6ZQiP8DY7E9eykNN0oWGrT/HX/fuJi1KfXnTDzuoMm1rlKXLOlW+
         IywQ==
X-Gm-Message-State: AC+VfDyGFhONmX3VDFjcxvtD02+mCIb5dCtU0YBAFmdLJWcLLpkuxT5j
        gTfBHLLJXAIKa/2ITsKaUJAdSvBd1cvx5ykVWMg=
X-Google-Smtp-Source: ACHHUZ5kNED3nXTDMty58qP/GvzzZxgTLY4WT4MTV4ZjZjsNzr4GTyd24LdmB9XbfVdZp561mEwkqQ==
X-Received: by 2002:a19:f616:0:b0:4f1:3bd7:e53a with SMTP id x22-20020a19f616000000b004f13bd7e53amr3181740lfe.49.1685343112406;
        Sun, 28 May 2023 23:51:52 -0700 (PDT)
Received: from 139.135.36.114 ([139.135.36.114])
        by smtp.gmail.com with ESMTPSA id j14-20020a19f50e000000b004f139712835sm1847099lfb.293.2023.05.28.23.51.50
        for <linux-man@vger.kernel.org>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Sun, 28 May 2023 23:51:51 -0700 (PDT)
MIME-Version: 1.0
From:   "Heena" <heena@globallinkbuilding.com>
Reply-To: heena@globallinkbuilding.com
To:     linux-man@vger.kernel.org
Subject: Sponsored Post
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable
X-Mailer: Smart_Send_3_1_6
Date:   Mon, 29 May 2023 11:51:47 +0500
Message-ID: <10540260301664786014698@DESKTOP-7HSBNRP>
X-Spam-Status: No, score=1.0 required=5.0 tests=BAYES_50,DKIM_INVALID,
        DKIM_SIGNED,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,T_SCC_BODY_TEXT_LINE,
        T_SPF_PERMERROR autolearn=no autolearn_force=no version=3.4.6
X-Spam-Level: *
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi,

I hope this email finds you well.

I am sending this email to ask if you are interested in sponsored posts.

We are searching for relevant sites and blogs for our clients.

You will get 100% top notch content with 1 do follow link relevant to your =
site niche.

Please let me know how much do you charge per post=3F

We will pay you through Paypal or Payoneer gateway as soon our article is p=
ublished.

Looking forward to building long-term business opportunities with you.

Best Regards,
Heena
