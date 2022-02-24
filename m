Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D25C84C3754
	for <lists+linux-man@lfdr.de>; Thu, 24 Feb 2022 22:04:54 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234331AbiBXVDW (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 24 Feb 2022 16:03:22 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55294 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232767AbiBXVDV (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 24 Feb 2022 16:03:21 -0500
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com [IPv6:2a00:1450:4864:20::335])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 083CB24FA27
        for <linux-man@vger.kernel.org>; Thu, 24 Feb 2022 13:02:49 -0800 (PST)
Received: by mail-wm1-x335.google.com with SMTP id p184-20020a1c29c1000000b0037f76d8b484so519704wmp.5
        for <linux-man@vger.kernel.org>; Thu, 24 Feb 2022 13:02:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:from:mime-version:content-transfer-encoding
         :content-description:subject:to:date:reply-to;
        bh=ixHVzoz696qN1Cmrg9x1bmR8vdWLOLbXCVjc9DtTLhI=;
        b=Pp08e1/qRTzYA+5mxyU1e2X3QVikfdKT92LY44QGIMhfJLtlYX6gyIvV6Tmw4N+9Qt
         s7mxMqQawRjzdRTWwghQpAt6Herir7wnwgBJhsFy9FfePlIMMFM95pgV5C/ZZ8wYffxb
         N+OcZMVS+MTo27UGX/LhvzLYPSpxaz2k5o1+8n8fRjrwRH4doARHBlUzXFYbD2Kpnd4S
         3wLClRCXbyq2rhG3Ba9EqxdAh7nDwcZZqL7odPuVLaWRVepI1Nla0VQe3oNsBDtzcfEa
         TSSHvAPfkPBA/VNVrLoJ/vmeKZAVwxuRFA1GTIK7x0gMY9wC3hoUo5Z15VM2gHit6LU2
         CZ6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:from:mime-version
         :content-transfer-encoding:content-description:subject:to:date
         :reply-to;
        bh=ixHVzoz696qN1Cmrg9x1bmR8vdWLOLbXCVjc9DtTLhI=;
        b=FBwFEeQWlNoiUMER7RORBez3mVDap/eJO1F54KrmXYno8CMsUI1YiSsRTHva4dzwdO
         up7XbbeY+uU+m9Pwnf5Bnkwf938lpEItQCawdCktuYI77R6Q/b7QWCnc4bUQh8RrVg6w
         PcRIDuEXWjLSAu+ftXTBX11mBXRHrzIAIwCf9lQJZ+kHJAXON08vPROFBT2lAa20pS8f
         zuP8jt6TNyiL1pViugHzsz2qlmax7++y4KffEpMPAHcl3pTfsHppIXFUmItKcqo6k4yy
         gmq4V6rQ6NOYdCqGw7VAMi8DzHtRQeA0WgILqG5Eco3wgQQiMndVL4Jv6BeEXTd+JnM5
         eL1g==
X-Gm-Message-State: AOAM532oQGAOord6/M8UdvDFcJgV7p4UV8hxSYpA5nCTHc5ViyC7tmq6
        1GRJZBkx7Ogu7J5GElaPQyk=
X-Google-Smtp-Source: ABdhPJxRq4bACsDe8zHqhXchTotOcGZ4qBAZSo4zRr+v0PeG6WQ6BFWAbNohnIWfstJjGzpLP6QyGg==
X-Received: by 2002:a05:600c:1c9a:b0:37b:c3ec:e41a with SMTP id k26-20020a05600c1c9a00b0037bc3ece41amr3849545wms.162.1645736567592;
        Thu, 24 Feb 2022 13:02:47 -0800 (PST)
Received: from [192.168.0.133] ([5.193.8.34])
        by smtp.gmail.com with ESMTPSA id e3-20020a5d65c3000000b001e4b3ba1423sm371301wrw.60.2022.02.24.13.02.44
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Thu, 24 Feb 2022 13:02:46 -0800 (PST)
Message-ID: <6217f276.1c69fb81.58d39.1a44@mx.google.com>
From:   Mrs Maria Elisabeth Schaeffler <ryanethan81@gmail.com>
X-Google-Original-From: Mrs Maria Elisabeth Schaeffler
Content-Type: text/plain; charset="iso-8859-1"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Description: Mail message body
Subject: Spende
To:     Recipients <Mrs@vger.kernel.org>
Date:   Fri, 25 Feb 2022 01:02:36 +0400
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
