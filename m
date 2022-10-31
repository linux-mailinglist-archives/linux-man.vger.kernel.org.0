Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D66E5612F51
	for <lists+linux-man@lfdr.de>; Mon, 31 Oct 2022 04:29:02 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229494AbiJaD3B (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 30 Oct 2022 23:29:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35794 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229476AbiJaD3A (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 30 Oct 2022 23:29:00 -0400
Received: from mail-pf1-x42f.google.com (mail-pf1-x42f.google.com [IPv6:2607:f8b0:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C6B699596
        for <linux-man@vger.kernel.org>; Sun, 30 Oct 2022 20:28:59 -0700 (PDT)
Received: by mail-pf1-x42f.google.com with SMTP id d10so9593247pfh.6
        for <linux-man@vger.kernel.org>; Sun, 30 Oct 2022 20:28:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:subject:from:cc:to:content-language
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=g1CTi/yWQ0rDkC2ZpSnUz5LmHhgSkMnRjyLWnFM05YI=;
        b=dxYk5yiazTFA3gsEDg28eucFvBQ81t/j8hPpBtVZe24QUJkVsxhY+Vna+iFZr3yRTL
         G31uDbvhaspogpYVO4uM0RLQA1q87owh+KNIg7G4GgEOuud3rWm+YRv/4UyrrWem6mUy
         ddk6D6qXJ/3v+0n/FjdikKf8/PEx6E5+9gi6KgEI9k1ursO6/eJyf633fB4FjNT0fD4V
         iT9P7/KLetCYiXvQi5N0bqi/+6+3ZLm3uh6P308XR+YpvDMN5wTPWwaV4RKMdmKSkaqd
         JTk4oO+kTcXIyD9EofwMecZpZi3XM6ojinyBHkI/HGq1YRrn+xr/xwGeWS7oLfKP0xtE
         9HpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:subject:from:cc:to:content-language
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=g1CTi/yWQ0rDkC2ZpSnUz5LmHhgSkMnRjyLWnFM05YI=;
        b=eKLHApE1DldpjJnhwKSM6ExKsz7Moku12MiWks8EE0FwFQ9uoYW4Wj3WD5xqny4UC0
         PPUjt/UHaJCuY4xLDay4psgtJiwhoGAqBDkTRbxLd1RxheqT4Uugb7OUhijO931AL3Nv
         guLgGElO5RMAXtu30u8u01b0sqH1P7Jcax9e4EetX4WZUsHzSQyJZSqj++F6l+4i+RIM
         8d+iFTPbi1cBYm4XZ90DRXbbFwiY6xrxOW8fLPfgs2sBpo1ZysdNYEO84qSlSuFbYxmQ
         le2wobL0WV5mLuYW+ZsPmVbiA+x8SPMJQ8pRCI8c9NA+eU72Y4S4N0vzR82CJ4WSturA
         fuKQ==
X-Gm-Message-State: ACrzQf0ruRpJ5vjrgycY3k5JxFpuBEXpI9uEyZrNXB4iV30ocB0O7GJr
        iT4jOTN4W6lGQDDIyFGWJ3BSOKCFjJU=
X-Google-Smtp-Source: AMsMyM45RRfxhh9EF9DzUg+P7Yb7DdDpeXQkNAJ8v9IJ2KFcrrVRozr6pd6nVY8GOroBh6LEn1Af/A==
X-Received: by 2002:a62:1b11:0:b0:56d:568d:c293 with SMTP id b17-20020a621b11000000b0056d568dc293mr5042555pfb.41.1667186939307;
        Sun, 30 Oct 2022 20:28:59 -0700 (PDT)
Received: from ?IPV6:2001:2f8:3a:2300::1:aa93? ([2001:2f8:3a:2300::1:aa93])
        by smtp.gmail.com with ESMTPSA id o21-20020a63e355000000b00451f4071151sm3052575pgj.65.2022.10.30.20.28.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 30 Oct 2022 20:28:58 -0700 (PDT)
Message-ID: <ab3898b4-58b5-d1f8-8cfa-a332e996881c@gmail.com>
Date:   Mon, 31 Oct 2022 12:28:55 +0900
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.0
Content-Language: en-US
To:     mtk.manpages@gmail.com, alx.manpages@gmail.com
Cc:     linux-man@vger.kernel.org
From:   Jun Ishiguro <algon.0320@gmail.com>
Subject: Possible typo in errno(3)
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi man-pages maintainers,

I found a possible typo in errno(3) specifically the following line:

ELNRANGE        Link number out of range.

I looked around include/uapi/asm-generic/errno.h
but I could not find "ELNRANGE" and found "ELNRNG" instead.
So, I suspect this line should be:

ELNRNG          Link number out of range.

Thanks,
Jun Ishiguro
