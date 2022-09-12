Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4FF515B59A3
	for <lists+linux-man@lfdr.de>; Mon, 12 Sep 2022 13:50:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229608AbiILLuV (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 12 Sep 2022 07:50:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43724 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229575AbiILLuU (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 12 Sep 2022 07:50:20 -0400
Received: from mail-ej1-x642.google.com (mail-ej1-x642.google.com [IPv6:2a00:1450:4864:20::642])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E5A07201B1
        for <linux-man@vger.kernel.org>; Mon, 12 Sep 2022 04:50:19 -0700 (PDT)
Received: by mail-ej1-x642.google.com with SMTP id lc7so19646339ejb.0
        for <linux-man@vger.kernel.org>; Mon, 12 Sep 2022 04:50:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:subject:message-id:date:from:sender:mime-version:from:to:cc
         :subject:date;
        bh=uQA+aIRjxMq5Er54+7F1flIAXLVuG7LSZ6eBJwAUGBk=;
        b=eLVtxydq7udkaajCSitUkhh8wp5x0prb8V768A68j3sqEREpd5K5mkT8AEm3IcU1uw
         qTCl24O4x8dCgjQDHMPuu3MoItWSEu2k/BSmsTYrgXsY6e4iRDN7cNXD68LwCiEXmCyo
         mPJ/6ou1bVpwT02FnsvpFjG8e8F430GR1Ywp3Id5rcsFA9n/9+GIczkYNyLEj8TtKR60
         1yup6xSgL/ybVJS0/cvhx/eFt5kj6huDNmSJzf9dUfiPrI6FKmfrcwjVqQY2xXHcg8p9
         PJf9DF3R1iIMu9DLY/tF/Cd6KtML2AgeyGy9ouYxUc7RX5Yq3fX76dtcVjKifGy2ifCx
         xp/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:sender:mime-version
         :x-gm-message-state:from:to:cc:subject:date;
        bh=uQA+aIRjxMq5Er54+7F1flIAXLVuG7LSZ6eBJwAUGBk=;
        b=JF3OGgbUUmLnXMskqOoylXK/Jin/p5OooBH0ffhbXrzVw2ZlJDeRh7gmPdyMGps8SC
         jGdYsCvxu/zYQ5SM8GzaVs0HhCT30E3xAjOeX6Nv1PozeVdpOKvl3ie5o0GWq08zQVhr
         qU+NETpMlOxds9k81RlTRuv6d/DxoXX0WwDtJaywLoklF86IMWafdw4ghutO7ZSBXqit
         XDzFb96EGccF33ltl8Y9wilG6KVFe4w8cIQDXibC3AvgReMa38/2ca4Iug34vcQgs6ks
         Nef5SiPHbxXIyP0e5EolV+iENXLltPJpT4TFjTdswnKbP9NpX/4PlBWAZWepebESqOmQ
         Ykpw==
X-Gm-Message-State: ACgBeo1Hp5+d38LHucBiTneEJZwd/W+E0ebHuAa1iWnLBluTrgIYS8js
        OjlYG6RhA2/TOP5xrMaPzEnRjTawwYicXP+VTxg=
X-Google-Smtp-Source: AA6agR7GJbctn5dduj2hq2TNCmc/OL2IRABizn7D0ayt7jb5iHfFed3U5y6PYw+vtwyzGrGj4w29bvM/hd58KLgFDdU=
X-Received: by 2002:a17:907:1b1c:b0:72f:9aac:ee41 with SMTP id
 mp28-20020a1709071b1c00b0072f9aacee41mr18283918ejc.56.1662983418290; Mon, 12
 Sep 2022 04:50:18 -0700 (PDT)
MIME-Version: 1.0
Sender: flanrodolphe@gmail.com
Received: by 2002:a05:6f02:ca18:b0:24:46bd:f03d with HTTP; Mon, 12 Sep 2022
 04:50:17 -0700 (PDT)
From:   Hannah Alex <hannah.aalex1@gmail.com>
Date:   Mon, 12 Sep 2022 11:50:17 +0000
X-Google-Sender-Auth: UvQfx53H6fveTY0NPui7nyKRmKM
Message-ID: <CAPF29T+VpdR53Ate6_UkuF0xYxXmPxJ29WsgcHtaFkDTjqRV_w@mail.gmail.com>
Subject: HELLO
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=4.2 required=5.0 tests=ADVANCE_FEE_5_NEW,BAYES_80,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        UNDISC_MONEY autolearn=no autolearn_force=no version=3.4.6
X-Spam-Level: ****
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Dearest,
My name is Hannah Alex, I would like to inquire about your services to be my
foreign partner / investor and help me to transfer and manage my
funds by investing in profit making ventures like buying of company
shares or Real Estate in your country. I have a reasonable sum that I
inherited from my late father, which I would like you to help me invest in
your country.i enclose my personal photos,proof of payment of the fund,my
international passport,my late fathers death certificate and a four page
will from my late father.i am sending you all this so that you can have
confidence that you are dealing with a real person
Note: below are the major reasons I am contacting you.
(1) To provide a new empty bank account in which this money would be
transferred. if you do not want us to use your personal account.
(2) To serve as a guardian of this fund since the bank insisted that their
agreement with my father was that I provide a foreign partner before
releasing the fund.
(3) To make arrangements for me to come over to your country to further my
education and to secure a resident permit in your country.
Please reply as soon as you read this message for more details and proof.
Kind regards.
Hannah Alex.
