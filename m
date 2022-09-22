Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6C2B65E6CDC
	for <lists+linux-man@lfdr.de>; Thu, 22 Sep 2022 22:16:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232367AbiIVUQQ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 22 Sep 2022 16:16:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39358 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230019AbiIVUQP (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 22 Sep 2022 16:16:15 -0400
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com [IPv6:2a00:1450:4864:20::443])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7255CEF0AA
        for <linux-man@vger.kernel.org>; Thu, 22 Sep 2022 13:16:14 -0700 (PDT)
Received: by mail-wr1-x443.google.com with SMTP id n10so17235631wrw.12
        for <linux-man@vger.kernel.org>; Thu, 22 Sep 2022 13:16:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=jguk.org; s=google;
        h=content-transfer-encoding:cc:to:subject:from:content-language
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date;
        bh=SbdIn9HS0itpku6d7+f8SR46UXNtvb04NKrir0LbhDk=;
        b=XMNbOoeHKpbmjaSnmB0HIRscr68mCVM26ARytFKPJ7qBTBJWNEgu6zdJ6fV1SN+6Kn
         tRQIlJsLq4mXnxPqG7lJcKX3CKWtclCzn4Xkr7d8u2+vWQIGzVBiv+vD2vVKZu15F2cN
         kjR41af1NE6U2VtqYLbLfN0R6JEG8FShVt+aXfqQnVzHvuhsZEDqP+Ol/oK6M3FXwiIY
         Rn3/gti2Iitr7GTjJpD8KrFUKC5KTl3lHb0zKBXl3XStDuAXHS/GXyiiR4xov0bE8A5H
         vmJiLU3fq/N1sZVIG4LGQtYqqG7JCFRy9bHEMqMvbSa1iYKw0ILtm0sl9kY2TqNbzUDm
         nyHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:from:content-language
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date;
        bh=SbdIn9HS0itpku6d7+f8SR46UXNtvb04NKrir0LbhDk=;
        b=tT+8OS5JeLuYJWBMzdsxYNELZ/5pgMEITgL5pbb0D7Uy00cWORzyq2cqunIkSpUkZY
         aTRkemlkEjhYRhIuufeFLP5cGgS5G1WzTiSoPWVgjEiATRzhiI5qUvTUeh/HH0jO6o1l
         OYFiSRv8UrIG/HsnhtCTyxf1tNJj+mAyftFoo5O12wgWm7SduSnLzGAr6U5NzRIMBRsH
         R+TD7mPAe9WQoKvTFI0QovHP+tbbt9/Qri8Roa782brYBruhedrsW0Su6PlUNmvaSDMt
         YYiPk40oi+JCwe7VEF+L7XhYD5JzqHYBPHXjauRm8KJMin2hUNSi+NEh/gNa7Hsh30S9
         VqHQ==
X-Gm-Message-State: ACrzQf2YVPtRRCwTiwiSweT71ADiqHUZjX77WDqbyq6ZaXoc1kKZL/O4
        cjJMyLEZ4RffUQvWmPqGk9Bh9KwLQ+loH/1aN3I=
X-Google-Smtp-Source: AMsMyM60c3frzQ5NYgEoqqxEIw1Oh+4lkZ3O0isW8Vj1RaiK8QtnAKxNNx4A6wAq/2mjgs6VA7NIZg==
X-Received: by 2002:a5d:4566:0:b0:228:77e7:2e25 with SMTP id a6-20020a5d4566000000b0022877e72e25mr3006449wrc.125.1663877772848;
        Thu, 22 Sep 2022 13:16:12 -0700 (PDT)
Received: from [10.1.128.126] (218.red-88-18-76.staticip.rima-tde.net. [88.18.76.218])
        by smtp.gmail.com with ESMTPSA id bs5-20020a056000070500b002253fd19a6asm6612283wrb.18.2022.09.22.13.16.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Sep 2022 13:16:12 -0700 (PDT)
Message-ID: <dea031ca-e98c-0b45-09a3-6e0657cf0841@jguk.org>
Date:   Thu, 22 Sep 2022 21:16:11 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-GB
From:   Jonny Grant <jg@jguk.org>
Subject: statfs 2
To:     linux-man <linux-man@vger.kernel.org>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello

https://man7.org/linux/man-pages/man2/statfs.2.html

           MSDOS_SUPER_MAGIC     0x4d44

Could this entry include FAT? All vfat drives show up this way.

           FAT_SUPER_MAGIC     0x4d44

Kind regards
Jonny
