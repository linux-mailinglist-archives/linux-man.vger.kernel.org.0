Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 038AC69ECD5
	for <lists+linux-man@lfdr.de>; Wed, 22 Feb 2023 03:35:14 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229820AbjBVCfN (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 21 Feb 2023 21:35:13 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57140 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229660AbjBVCfM (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 21 Feb 2023 21:35:12 -0500
X-Greylist: delayed 403 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Tue, 21 Feb 2023 18:35:09 PST
Received: from hosted.mailcow.de (hosted.mailcow.de [IPv6:2a00:f820:417::202])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6FA5C1DB97
        for <linux-man@vger.kernel.org>; Tue, 21 Feb 2023 18:35:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pearson.onl; s=default;
        t=1677032900; h=from:subject:date:message-id:to:cc:mime-version:content-type:
         content-transfer-encoding:in-reply-to:references;
        bh=esM/vTJ13ta7T901wMQcZCibEkdYqXP/LLP4OHat5Uw=;
        b=P9e9qsAHPl7ADA6WgrEc1d4NUpJuMpVCE2FNdahHK1YneWi9r8Ov0KIC0Q0dSMEUWPJ/kB
        ei4oGw5I/NadHMx/X7ZdLkDo+8K40dot2puAFRjKAW5ANGFdeckNsBV0ziYlTrGLoSG9yj
        GYRlX0mTIIqZ4OaMvevrixpTJuEo72PhYRTQQRbeOC+VXslcrzV7dqx+V1oV2n+mIYnQnn
        y0Ir20px0nb7cQbmwfiI+9ZGTom34NLtmaWYwkNzcEbS7tOdZoUAsk3bTXlJEn2WVjAtl3
        wK5aNa6oN44Areip3SE94y5+jbDAkrG9IO5xJKz8mDkTPIHwmEp34RDy5mrkwQ==
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 7E7325C025E;
        Wed, 22 Feb 2023 03:28:19 +0100 (CET)
Message-ID: <9e2b4a99-7e68-844f-bffb-3c8efcc277fe@pearson.onl>
Date:   Tue, 21 Feb 2023 18:28:16 -0800
MIME-Version: 1.0
Subject: Re: [PATCH v2] clone.2: note EINVAL when exit_signal + bad flags
Content-Language: en-US
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org,
        GNU C Library <libc-alpha@sourceware.org>,
        Carlos O'Donell <carlos@redhat.com>
References: <20221214212849.17388-1-jack@pearson.onl>
From:   Jack Pearson <jack@pearson.onl>
In-Reply-To: <20221214212849.17388-1-jack@pearson.onl>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-0.9 required=5.0 tests=BAYES_40,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,SPF_HELO_PASS,
        T_SPF_PERMERROR autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello,

In this patch, I included my test program for the absence of this behavior with
normal `clone` per Alex's request:

https://lore.kernel.org/linux-man/fba3de52-91cc-6cbe-b4ae-7140564e9ad2@pearson.onl/T/#mde63a642e9c8d0b4e367b0a2817248e8e0b29a50

Let me know if there's anything else I should do.

Thanks,
Jack

On 12/14/22 13:28, Jack Pearson wrote:
> Document that Linux will report EINVAL when exit_signal is specified and
> either CLONE_THREAD or CLONE_PARENT is specified.
> 
...
