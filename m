Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C59507BC9C2
	for <lists+linux-man@lfdr.de>; Sat,  7 Oct 2023 22:28:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1343782AbjJGU2C (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 7 Oct 2023 16:28:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60660 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1344165AbjJGU2C (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 7 Oct 2023 16:28:02 -0400
Received: from smtp.sembritzki.me (smtp.sembritzki.me [5.45.101.249])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6EE3C93;
        Sat,  7 Oct 2023 13:27:59 -0700 (PDT)
Received: from smtp.sembritzki.me (v22018013267558932.luckysrv.de [5.45.101.249])
        by smtp.sembritzki.me (Postfix) with ESMTP id 107B99DBB0;
        Sat,  7 Oct 2023 22:27:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=sembritzki.org;
        s=dkim001; t=1696710470;
        bh=ufJZbVtr4CsxF7gThIrXtkp7Mq1GLn405h6Rbp6YTfw=;
        h=Message-ID:Date:MIME-Version:User-Agent:Subject:From:To:Cc:
         Content-Transfer-Encoding:subject:to:from:date:cc:reply-to:
         message-id;
        b=i3NL9qV6JMJ61D29KlU+ztt/vfef8rgTXNRzZqfdPvxCBFtpNJwc28HpJQ7GQiCXp
         mkVsmCWekAjJoAPmbN8MeYeoFf0pkleDrsoGVyFBzZRuBjq9dwhcnshu7S4cpeqIVd
         X7iLnmMMWcXKzcwLFsz/hc09nX3XYscEG7hZ/HvJRSlm8DnkL3QYg+vxbRlMUtV0+D
         8TYOwQz2zeO6COXsWV199V2gIV08mBDt1ZddeBUcYVdeolnM1PNMbYN6UJvKi8gViM
         jj8J0oFM2dc2B6wMKx8RpeiNvJUPMF6ipQsDIBuDTC3TO3uXPpWQ1mjZgtG3IxPNlK
         48WrKFLKAzE6g==
Received: (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp.sembritzki.me (Postfix) with ESMTPSA id AEEF79DB9E;
        Sat,  7 Oct 2023 22:27:50 +0200 (CEST)
Message-ID: <f4659099-e21a-e4e3-5360-46057d6bf603@sembritzki.org>
Date:   Sat, 7 Oct 2023 22:27:50 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH] Correct list of flags returned by SIOCGIFFLAGS in
 netdevice.7
Content-Language: en-US
From:   Yannik Sembritzki <yannik@sembritzki.org>
To:     Alejandro Colomar <alx@kernel.org>
Cc:     linux-man@vger.kernel.org, netdev@vger.kernel.org
References: <78adf50c-e8f9-d1ce-e933-418a850b6a44@sembritzki.org>
In-Reply-To: <78adf50c-e8f9-d1ce-e933-418a850b6a44@sembritzki.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_PASS,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Please cc me on replies, I'm not subscribed to the lists.
