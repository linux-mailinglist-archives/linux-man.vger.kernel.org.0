Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F36DA707CCF
	for <lists+linux-man@lfdr.de>; Thu, 18 May 2023 11:28:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230197AbjERJ2x (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 18 May 2023 05:28:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51520 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230127AbjERJ2w (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 18 May 2023 05:28:52 -0400
Received: from mail-ej1-x636.google.com (mail-ej1-x636.google.com [IPv6:2a00:1450:4864:20::636])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 68C2E211F
        for <linux-man@vger.kernel.org>; Thu, 18 May 2023 02:28:50 -0700 (PDT)
Received: by mail-ej1-x636.google.com with SMTP id a640c23a62f3a-96aae59bbd6so337872266b.3
        for <linux-man@vger.kernel.org>; Thu, 18 May 2023 02:28:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1684402129; x=1686994129;
        h=to:subject:message-id:date:from:reply-to:mime-version:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zYlqmqzmZQIzuckqyml+D+cUQfB/LAmhyfGQVjeCZAE=;
        b=gtnjKTyXOLSsKou+ZtT7Js3k0ABaZ2q/Vdv0ZoHT8Ndld7DDKF9uphJsozKbGnGUJj
         IkTSvev6rVN6QqyST/ZAU1gYqJaKESj2ZwV9Z3K7ekII6TsPWYBKnbEm5HOuRDVhcjfx
         8lL/heGhG0PytscwaOuqsFcY5tvez/3hpAsWjA0zrA4zqMaqaVOZVbaTfTrxKrhIrrKq
         MBwkLMqQtLovPfWBCrKe9fQT/+AhRH2WaPNEGb1piJBwYWEJAM2ftwojIK3QG6lcUIqy
         /aSVhL+FoUR3z5cw0q6x/wjG5lAVyOJFlO60iv4mr43N+SBZh91zl1EkD7cXkPaXW7mI
         Z9rQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684402129; x=1686994129;
        h=to:subject:message-id:date:from:reply-to:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=zYlqmqzmZQIzuckqyml+D+cUQfB/LAmhyfGQVjeCZAE=;
        b=hAHSKh2iqX2j93GAhp2IxdDUP3f6qwzriqZ0CTxk4TQIG6G8YUNgIN8iVE4lDHq2L+
         i4dHUYeYV/XQaagjZUGqI4PaSnnBlQSLqIS3ldWdTCt20NqaBTUwyvA2STyIm5gj2mmC
         aHuqPwunlzvOL4fjqrWqEyOO1MDz3LAmYm1O3hQxZENfp/rKcsGZT7Z3v1GkMsiPZJel
         DsbyWv+DSNp7MAbP1lmbCUI/YEY2M4maEY5Gba9uqbbmZrd7zXpqENKwHtrSQo8KO77x
         4MQJ7XOgynGti1+gAZBwFXw64ntXW7HCrkEvXt9bCtjthklcLE342DXXzq0wgnhPqLId
         gToA==
X-Gm-Message-State: AC+VfDwtKKAMZHMBbT1YOetgyURHmc+JlZW2tRNMwie9FN4hHIr0hSYq
        9pC5c7w2SOR0XxUca2SWPrJ1SxFn0yQDthatwdw=
X-Google-Smtp-Source: ACHHUZ6JLscwQclVvra+JH6DMsgNjrn1UYPFDeRU8pBIIiAI1n2oIqURpqQB8ZWxOFbgZqjPHiObNACk6qnSQNiIH+Y=
X-Received: by 2002:a17:907:9347:b0:94f:322d:909c with SMTP id
 bv7-20020a170907934700b0094f322d909cmr36760051ejc.34.1684402128402; Thu, 18
 May 2023 02:28:48 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a17:906:dace:b0:94a:7e28:ef2d with HTTP; Thu, 18 May 2023
 02:28:47 -0700 (PDT)
Reply-To: ninacoulibaly03@myself.com
From:   nina coulibaly <ninacoulibaly013@gmail.com>
Date:   Thu, 18 May 2023 02:28:47 -0700
Message-ID: <CAHS6EwX4OfwndFTCJNwNVSd_qkh309YmPxpfxe4_FPHuA+u3OQ@mail.gmail.com>
Subject: from nina coulibaly
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=4.8 required=5.0 tests=BAYES_50,DKIM_SIGNED,
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

Dear,

Please grant me permission to share a very crucial discussion with
you. I am looking forward to hearing from you at your earliest
convenience.

Mrs. Nina Coulibaly
