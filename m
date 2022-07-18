Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 14D6357878A
	for <lists+linux-man@lfdr.de>; Mon, 18 Jul 2022 18:38:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233673AbiGRQiG (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 18 Jul 2022 12:38:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35966 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233751AbiGRQiB (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 18 Jul 2022 12:38:01 -0400
Received: from mail-pf1-x461.google.com (mail-pf1-x461.google.com [IPv6:2607:f8b0:4864:20::461])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 88C782AC6F
        for <linux-man@vger.kernel.org>; Mon, 18 Jul 2022 09:38:00 -0700 (PDT)
Received: by mail-pf1-x461.google.com with SMTP id w185so11133122pfb.4
        for <linux-man@vger.kernel.org>; Mon, 18 Jul 2022 09:38:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:dkim-signature:mime-version:from:date:message-id
         :subject:to:cc;
        bh=5M8xTCi/D9QBPzkDI/2GgfE8i/nROeHNntYeysIAZy4=;
        b=2Tj4EpEZxqwLVisv/RbwmC01uY1wCSHKn9XBPDoXvyDLPYfWRmDwxk4NUGjEShqFwp
         G8DLcIz3nEvh7XpyByNawuCc/R/HwaY6fwstGTXY+Kkr6OCLKCmWNO5zpvNhXC7qGilK
         L9DKWp4M6ZUP1OtSM78TWN8QVa9S1Gc3D2QgWxp8CG/qHN1dbcpTBb3lN5x0xIA+R4GH
         fuotuMGGOJBHK5h7xR0XGFcyAt9+V7IKxlk3dfvTvbedui5uHVyf79+722MjbieDLq6H
         nY3Vxb9kn38KvdUGf7mbwyYiJw1shUA05Lr1RpKL5CPM3csf6vOVvQg7Mq2mamlBNJf4
         U22A==
X-Gm-Message-State: AJIora8NTeUbAec9PtvkCxvT4A5wD7nZe11v0Ylq9+u5OJVX1ijj+oB9
        KqS2+Qgv6SuRwoaXaDeNVW5XrqsWkkHqsXiCkFqUAXHm130jOg==
X-Google-Smtp-Source: AGRyM1vgj2XRWFBL+KbjRW5XsGnNUKp8aKD+fMg618EXEoCj656t4l14wp97OzE9XSgjhJ3h9MwWEfTTzxH4
X-Received: by 2002:a05:6a00:1410:b0:528:5a5a:d846 with SMTP id l16-20020a056a00141000b005285a5ad846mr29455000pfu.9.1658162280086;
        Mon, 18 Jul 2022 09:38:00 -0700 (PDT)
Received: from restore.menlosecurity.com ([34.202.62.172])
        by smtp-relay.gmail.com with ESMTPS id u1-20020a170903124100b0016a4f37d292sm815800plh.126.2022.07.18.09.37.59
        for <linux-man@vger.kernel.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 18 Jul 2022 09:38:00 -0700 (PDT)
X-Relaying-Domain: menlosecurity.com
Received: from safemail-prod-02850030cr-re.menlosecurity.com (34.202.62.173)
    by restore.menlosecurity.com (34.202.62.172)
    with SMTP id fba94630-06b7-11ed-903e-f5958f0665dc;
    Mon, 18 Jul 2022 16:38:00 GMT
Received: from mail-yb1-f199.google.com (209.85.219.199)
    by safemail-prod-02850030cr-re.menlosecurity.com (34.202.62.173)
    with SMTP id fba94630-06b7-11ed-903e-f5958f0665dc;
    Mon, 18 Jul 2022 16:37:59 GMT
Received: by mail-yb1-f199.google.com with SMTP id u15-20020a25ab0f000000b0066e49f6c461so9051649ybi.2
        for <linux-man@vger.kernel.org>; Mon, 18 Jul 2022 09:37:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=menlosecurity.com; s=google;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=5M8xTCi/D9QBPzkDI/2GgfE8i/nROeHNntYeysIAZy4=;
        b=TmOP4SXEwxTYDpQt+xjGJ1NDHS3FXlYeuhtuc75Y6cH7QefHbeD4V3WPJr90o2UxCI
         AA8JWyVagXViN0fC0oZDf/uNThILn+kybqbNkxqUtfYMeQrqx4jv2zis5HQzNHs9VG0p
         UDfSE6fce0MvEkYxEhR3MOWSs/7RF1MN5V5S0=
X-Received: by 2002:a81:34a:0:b0:31c:849b:a9a with SMTP id 71-20020a81034a000000b0031c849b0a9amr31479817ywd.422.1658162278061;
        Mon, 18 Jul 2022 09:37:58 -0700 (PDT)
X-Received: by 2002:a81:34a:0:b0:31c:849b:a9a with SMTP id 71-20020a81034a000000b0031c849b0a9amr31479801ywd.422.1658162277874;
 Mon, 18 Jul 2022 09:37:57 -0700 (PDT)
MIME-Version: 1.0
From:   Rumen Telbizov <rumen.telbizov@menlosecurity.com>
Date:   Mon, 18 Jul 2022 09:37:43 -0700
Message-ID: <CA+FoirBpBrvp7Qme_sqViKf-90tG+s+tUZNy9fmZXEF5u4sx8w@mail.gmail.com>
Subject: Update bpf-helpers(7) man page
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org, quentin@isovalent.com
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Michael, everyone,

I was directed to you by Quentin Monnet with regards to a missing
function in the bpf-helpers(7) Linux man page. I found out that the
man page doesn't have anything regarding bpf_redirect_neigh(). Quentin
mentioned that he has a script which generates the man page from the
comments in the source code, but then I am not sure how and when the
man page is being generated so that it gets out of date. This function
definitely has comments/documentation in the code and it works
properly but is missing in the man page.

Is this something you can help with?

Thank you,
Rumen Telbizov
