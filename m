Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8B6BC603351
	for <lists+linux-man@lfdr.de>; Tue, 18 Oct 2022 21:22:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229452AbiJRTWd (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 18 Oct 2022 15:22:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36168 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229572AbiJRTWc (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 18 Oct 2022 15:22:32 -0400
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CE4EA6C134
        for <linux-man@vger.kernel.org>; Tue, 18 Oct 2022 12:22:31 -0700 (PDT)
Received: by mail-wr1-x429.google.com with SMTP id bk15so25295183wrb.13
        for <linux-man@vger.kernel.org>; Tue, 18 Oct 2022 12:22:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:subject:to:content-language:user-agent
         :mime-version:date:message-id:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0l2o6FF0Aa4QPBfSWwaWrhe6ftxYsQaAb7C/MIpJIZY=;
        b=Xo+FsrtJdZ88z8g5oX2UaPJ9pksosP+GIHt/79TVNvT73dHoLw/5jJBDN2u1bceIT/
         SBkaRjskG4BZiggduj6jTbqAl7d3gepV7XP6+o9MMYVCrGPwZsAYllqQPTA3B1JxXo7U
         c65gmgapTQ7Kyg8X6cJil7GfF0TOvz+q/67a2DxLZidDMs4/r++PhrzkujGU0krMWzw8
         XIoLP08DZGZD7M5p/LudAiBL3hCma8mMlQmTaM7fwqfrBb86JydHNQsVWKu5MajAZswP
         OcF0WY0pLT8T8DpoolZxHfIDFG0OvBEEgDf0go4Cxjg+41UVbmLIl+SMFTSAEbgSSiBY
         4qcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:subject:to:content-language:user-agent
         :mime-version:date:message-id:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0l2o6FF0Aa4QPBfSWwaWrhe6ftxYsQaAb7C/MIpJIZY=;
        b=KXUjYIBX1X+OvQlSfvrmPB8UfXDMjW7XshOsmylk0/BaPWQ6+w+w/q8HlM93h4aaV5
         MlAaflB80brQ3zKm8HDrq4TOpOORRV3dk0o4Nk4rYqZpkNZJfJRvPH8WMNsBMxHbkEBa
         0dplIeehCZm6iacl5u//xV5LniE37m+QcSZt4OIuvkE0DWvUjemL/ESx7MjmYqQU2yZe
         6rC146TEQaqELVCan0WYEBmpnh1ixq8nKc0y3ib+1851qD4eohteOpJeKXy5ZAE7uaTo
         a0aElyLRYH3AeN2Ta7jdbwS5X6rxWRlESmd9J6oSrpLb5bjH2QqGB40lpLpewi0c5ecc
         5GdQ==
X-Gm-Message-State: ACrzQf2/+ge3/Bzg10bV+5TLUjq5Ne+xgpi8EErPDzL+zrCkzloS9ABx
        +mwWO1230oeb6T4qNW4eJwdERxZOGhs=
X-Google-Smtp-Source: AMsMyM4COS/NFowwhF/GqG+Cr8tMTQzL6fUKST50MEYKoR8+XAJVJcNhuz24WOL75Ajek+loTJrFlw==
X-Received: by 2002:adf:a459:0:b0:22e:3725:ba17 with SMTP id e25-20020adfa459000000b0022e3725ba17mr2848575wra.110.1666120950038;
        Tue, 18 Oct 2022 12:22:30 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id r16-20020a05600c35d000b003a84375d0d1sm21765298wmq.44.2022.10.18.12.22.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Oct 2022 12:22:29 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
X-Google-Original-From: Alejandro Colomar <alx@kernel.org>
Message-ID: <a94037d5-b30b-897a-eac8-879c834914f8@kernel.org>
Date:   Tue, 18 Oct 2022 21:22:28 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.2
Content-Language: en-US
To:     Pierre Labastie <pierre.labastie@neuf.fr>,
        linux-man <linux-man@vger.kernel.org>
Subject: installing man-pages from source
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Pierre,

We discovered a bug about using install(1) very recently in a discussion 
in NGINX Unit:

<https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/commit/>

I forgot to apply this fix before releasing man-pages-6.01.  :(
I'm interested in knowing if it's important for you and if you'd like 
any action from me.  I guess it's especially important to linuxfromscratch.

Cheers,

Alex

-- 
<http://www.alejandro-colomar.es/>
