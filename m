Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 80860511ECC
	for <lists+linux-man@lfdr.de>; Wed, 27 Apr 2022 20:37:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234496AbiD0R0y (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 27 Apr 2022 13:26:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53576 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232736AbiD0R0x (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 27 Apr 2022 13:26:53 -0400
Received: from mail-vs1-xe34.google.com (mail-vs1-xe34.google.com [IPv6:2607:f8b0:4864:20::e34])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D38F04754B
        for <linux-man@vger.kernel.org>; Wed, 27 Apr 2022 10:23:41 -0700 (PDT)
Received: by mail-vs1-xe34.google.com with SMTP id z144so2318280vsz.13
        for <linux-man@vger.kernel.org>; Wed, 27 Apr 2022 10:23:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:reply-to:from:date:message-id:subject:to;
        bh=3EFWB19a1Chh2SjnoysoX6/VQoqNb6piiPOAPnA2gVg=;
        b=KKItSsIoZQKD9KywQPsLqXwEdGpFqgZOHNYPEQDe4K0d70VVRsvfu48Wr1KODC9YTO
         LaxG0tkItN2YgVdHLREzHPMXF8tV/ErwfIKs4j1HJuGam6O36YhZeBa1ejNo1BuU1oP8
         Fdx9dV0DZ0a2lMqVxGp6zIHmGcv6jdaDXOc4AfxtXEec7JLD4rHIgrEuqQNATRA3xKVR
         +9dwpnXqwtk8P5dTUkSCMY5PvCV6ghBS/NtHEsVbj84TaxOkbW7J0upB+ZJB8FR2p3xI
         aFDFlC48S0ou4rgp28qcFlMhyR9YV/4WUqATzxgB2mYagtc+xUP7Op5IAp9bo9mbf03T
         enIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:reply-to:from:date:message-id
         :subject:to;
        bh=3EFWB19a1Chh2SjnoysoX6/VQoqNb6piiPOAPnA2gVg=;
        b=HFuR23zSVqhamH/eE8G/WaLcsuMmH7g3OH3ZiC8O/+/rqMwgvKPBHwcP4ggWu/Zc3M
         y6SCaT9Q3wbEWW0KKo8ED+0ZHZg2xCBJ3rK9icM9sHsN4dM6vzRMJvPirLVa+on/kFXo
         2HBKPyjTEQMCPYLe+geNY3Z+xNbNm/WTGjXabkObitJeTyahIxUoB1HSxJumiyW3ADx3
         waZhwerisu5NuJLb8cbA92jzdEWd7UcUSkH7HY5nMQfNHInjQnk8Th2mkNw/tAon0oiS
         oxPJl+NThffb7ZpPlJK7YgHviCiuPLgdPE2Yz4tzw+MQ7c2W6BSPxxmcYo4Gvh/i1fAX
         QUvw==
X-Gm-Message-State: AOAM533HxCcK1icFuBWz2MU1SO+FovShdIP/eiSBU0zZoq6VhplYtwSU
        zNGdjgKMp+3xP6Hn3OUw9W6xxROGbq4wn6OhgmY=
X-Google-Smtp-Source: ABdhPJy9r1EyJsYYKN2EpBkH+Ceg/Jf3HX4nmu49vFoV7uea1q0649jEoShaUgtKE4e/SoqC/4kHReBtdInlnhhijrI=
X-Received: by 2002:a67:eb88:0:b0:32c:d3ee:ca35 with SMTP id
 e8-20020a67eb88000000b0032cd3eeca35mr4801252vso.15.1651080220253; Wed, 27 Apr
 2022 10:23:40 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a59:dcda:0:b0:2b1:1ede:b2f4 with HTTP; Wed, 27 Apr 2022
 10:23:39 -0700 (PDT)
Reply-To: awoonorpatrick301@gmail.com
From:   Dr Patrick Awoonor <pwmoffice1@gmail.com>
Date:   Wed, 27 Apr 2022 17:23:39 +0000
Message-ID: <CABWdBT7=XZn2T9jexXpY2rhRmaMBWDELiCbRk3V+Ysh7pCgM1Q@mail.gmail.com>
Subject: Re:
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=4.9 required=5.0 tests=BAYES_20,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,FREEMAIL_REPLYTO,FREEMAIL_REPLYTO_END_DIGIT,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,UNDISC_FREEM autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Level: ****
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Did you receive my previous email?

Dr Patrick Awoonor
