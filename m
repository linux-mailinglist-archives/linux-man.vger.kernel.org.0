Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D257C511435
	for <lists+linux-man@lfdr.de>; Wed, 27 Apr 2022 11:16:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229565AbiD0JT6 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 27 Apr 2022 05:19:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59234 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234378AbiD0JTo (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 27 Apr 2022 05:19:44 -0400
Received: from mail-ej1-x634.google.com (mail-ej1-x634.google.com [IPv6:2a00:1450:4864:20::634])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BD8CE270C8E
        for <linux-man@vger.kernel.org>; Wed, 27 Apr 2022 02:16:07 -0700 (PDT)
Received: by mail-ej1-x634.google.com with SMTP id i19so2092568eja.11
        for <linux-man@vger.kernel.org>; Wed, 27 Apr 2022 02:16:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:message-id:date:mime-version:user-agent:to:content-language:cc
         :subject:content-transfer-encoding;
        bh=BM8hJ0buKmprmESjrfsdBGumG7NavpQsunAOJURd6KE=;
        b=nwng9ejxOiik2sISKjSPvUHKg7CtliKszXALIfRAK/NwrJCXYZ2COasstjcP6IJRvU
         2BH5lEs9x2K+UFbC/k1uFKS/tBuWJ7NsAyriiZ34LdI78eu8KO952/bNEMwc3bqFLUeH
         lFNWYW24CB8l8MhjhUbeSgX4t8GaTqcmDsTey8V5gve9u6VtivhcBzRpwpMP9/e1zpBR
         dzFWhI0JjwEzyF9e029tZSnDhu4KurXf+UBNolX0qh/o2L4XrqvRXsfE8TelChHZaq/9
         fcluthQt8oMQtiUQDOaiibnxEsSE3hBYan+p4eBBhXprYrnGEmQexPZI1Zeh6/+mnF/w
         I05w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:message-id:date:mime-version:user-agent:to
         :content-language:cc:subject:content-transfer-encoding;
        bh=BM8hJ0buKmprmESjrfsdBGumG7NavpQsunAOJURd6KE=;
        b=exO0T9yB2L8SMjh3cmp0HyZ0Z3c32cglwkPsyGJKPfpC6ELG2r3JzBFpfelCU7we8P
         kSxTAqPjU7RjIxKJgzomwtFD/floPK3ZmQ3ux5g2Iw1K/DK8P3cmte3Tlr5b1XsA3D3e
         2llGrmQJ7zOeYlw5go6BRVHRhfd22LvMq9fQxcR4sQjFOu/kAWclPLiMDb8b9NC1kv8w
         d7y0n2/9hjNdprSmiBoGbXP0Leqwl6u/G5Aj5izQFXBhhg/Dk79Li2N+D1/6PL4uHIba
         K+CLbIriQ6ItpP77GJa96knASRRadgNRjav48iGq0GZYhMp7XdePHOL4jThPGqVJ/lA1
         eGkA==
X-Gm-Message-State: AOAM5311U3NBH759RHvtbz9Y1380OTUkWL3e7/NLDHfb12oEWsIYGtsd
        XIAaIun/K6TWvgM2muU1p9GqzZkufHo=
X-Google-Smtp-Source: ABdhPJxqiUQ/lOUUxViHz15i9yqql0XZBe3QFMwFvJf9+L5LW5UjPvHUf+2Tae80UDtSpeOQLhyrVA==
X-Received: by 2002:a17:907:d8a:b0:6f3:8f30:d2b3 with SMTP id go10-20020a1709070d8a00b006f38f30d2b3mr14678686ejc.37.1651050936309;
        Wed, 27 Apr 2022 02:15:36 -0700 (PDT)
Received: from [192.168.0.199] (pd9515a0d.dip0.t-ipconnect.de. [217.81.90.13])
        by smtp.gmail.com with ESMTPSA id d6-20020a170906304600b006ef5da1b1besm6352667ejd.221.2022.04.27.02.15.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 27 Apr 2022 02:15:35 -0700 (PDT)
From:   "Dr. Wolfgang Armbruster" <dr.w.e.armbruster@gmail.com>
X-Google-Original-From: "Dr. Wolfgang Armbruster" <Dr.W.E.Armbruster@Gmail.Com>
Message-ID: <c6f78359-c187-d132-7d1b-05ffe131c39e@Gmail.Com>
Date:   Wed, 27 Apr 2022 11:15:34 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.4.0
To:     mtk.manpages@gmail.com, alx.manpages@gmail.com
Content-Language: de-DE
Cc:     linux-man@vger.kernel.org
Subject: (same) errors in ceil.3, floor.3, rint.3, and round.3
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

Hello Mr. Kerrisk, hello Mr. Colomar,

There are the same errors in ceil.3, floor.3, rint.3, and round.3
within the "NOTES"-section, e.g. floor.3, lines 111 - 115:

...
(More precisely, overflow can happen only when the maximum value
of the exponent is smaller than the number of mantissa bits.
For the IEEE-754 standard 32-bit and 64-bit floating-point numbers
the maximum value of the exponent is 128 (respectively, 1024),
and the number of mantissa bits is 24 (respectively, 53).)
...


1) According to IEEE 754 - 2008 , section 3.3, table 3.2
https://irem.univ-reunion.fr/IMG/pdf/ieee-754-2008.pdf
the value of emax is described as
emax = +127 / +1023

Section "Basic and interchange formats" at
https://en.wikipedia.org/wiki/IEEE_754
states the same values.

Thus, I suggest: line 114

the maximum value of the exponent is 127 (respectively, 1023),



2) To be more precise at line 115, I suggest:

and the number of mantissa bits including the implicit bit is 24 
(respectively, 53)



I'm using OpenSUSE 15.3
but the text is identical to the online man-page
https://man7.org/linux/man-pages/man3/floor.3.html
and I just cloned
git clone https://git.kernel.org/pub/scm/docs/man-pages/man-pages
the actual man-pages.


Yours,

Dr. Wolfgang Armbruster

