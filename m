Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D5EA9648B7B
	for <lists+linux-man@lfdr.de>; Sat, 10 Dec 2022 00:49:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229545AbiLIXt4 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 9 Dec 2022 18:49:56 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47554 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229635AbiLIXt4 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 9 Dec 2022 18:49:56 -0500
Received: from mail-yb1-xb35.google.com (mail-yb1-xb35.google.com [IPv6:2607:f8b0:4864:20::b35])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4B45231B
        for <linux-man@vger.kernel.org>; Fri,  9 Dec 2022 15:49:55 -0800 (PST)
Received: by mail-yb1-xb35.google.com with SMTP id j206so7364750ybj.1
        for <linux-man@vger.kernel.org>; Fri, 09 Dec 2022 15:49:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=x53QfsRUO1QoO/EGaWqccrG5Bbq12R20Ur9nn6LOAMc=;
        b=A+AaiN45dCAWYjp3pm2qHL7RkgEN7ua2yf1+SYtFouk2/oOSkqglQhtqY+L6RiA6FU
         YR0Ewv9Ilc7qDcUh8e9ZcQXLY9xestfn8SfMWAN+BmK00yorsm1fkckFNykGtEIwAmC0
         B29L0LmOrW5lwOMHLLHKRb+FyHvV8CCwmHudh7cKXyBHaXQwYBnE7SBGdIChfzDXaRh9
         RLqbPkDBABHdqqJOv14chynYpfBVDurFbAMl1X3NvoydLeqb+yH52izBurDBwhKyu9fQ
         UjqdTSQyy9JBOYmK/rb5us/h8V5nHkb5EeelDLTrWHXXJNojpzOEh/SH99ZJQ2GSfnYN
         f3kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=x53QfsRUO1QoO/EGaWqccrG5Bbq12R20Ur9nn6LOAMc=;
        b=CfahLRh12Jlx8C1VOHxA60AhxjfJA2bBtJZHFsjKKktMUi4OfqAbRz8BH+g435RKxJ
         JuCBX516VVVoC+N2bT085FV1d3gzP+V7oWN8IlS9VNdWpza18WoJx9pq1Pc82Crjfsev
         4ALbwb7+L/vDs4oyL4jVa6AxpMfPu+O0nHfE76abjdyGuQMd2qmGQ5oEGNmnMH53BQeT
         u9rRJiKEX9gimQFP5wDT814jFYId+iMNxS/w2ZcvstJB221WoVo7Gh5ZpYhgTgpYzPBm
         t7bsssldXyyGtzLTL424Whx3kmyM3TTLtrtMqDju6KErW3Ei5sQQ+SUrkV2Kbn37qMFU
         fO5w==
X-Gm-Message-State: ANoB5pnfCGa5DFk6Ja4PynHkg2zsuyz9qEIVPc5A2VNAMc1zJokckriV
        Nh2cYMVXtUC4eN0RQYXGGeb3XPuk87ei2cE5PcmCWfCcmfcbwQ==
X-Google-Smtp-Source: AA0mqf4MhQ0RB3FeZVijVLrokIf2Ui8mry241EC060KE7iPGm2W8F2opwzKP9t7cmN3BbS9u7nl9DKhq6pH+ILfMjJk=
X-Received: by 2002:a25:f205:0:b0:6df:1529:6ba with SMTP id
 i5-20020a25f205000000b006df152906bamr74857657ybe.145.1670629794548; Fri, 09
 Dec 2022 15:49:54 -0800 (PST)
MIME-Version: 1.0
References: <20221128205837.2408050-1-tycho@tycho.pizza> <a796c0f9-a4bf-bc5d-3953-9c725b53d10e@gmail.com>
In-Reply-To: <a796c0f9-a4bf-bc5d-3953-9c725b53d10e@gmail.com>
From:   Luis Javier Merino <ninjalj@gmail.com>
Date:   Sat, 10 Dec 2022 00:51:09 +0100
Message-ID: <CABjvSdjC93Bdi_1Vmy7r4eJTQrKx0B_A-=247RYLJeMcJbn42Q@mail.gmail.com>
Subject: Re: [PATCH] socket.7: be explicit that connect(2) respects SO_*TIMEO
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     Tycho Andersen <tycho@tycho.pizza>,
        Alejandro Colomar <alx@kernel.org>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        linux-man@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Note that accept(2) is also affected by SO_RCVTIMEO, at least on Linux.

See:

https://stackoverflow.com/questions/5968121/does-so-rcvtimeo-affect-accept
