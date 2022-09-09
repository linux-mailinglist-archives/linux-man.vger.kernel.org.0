Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C1D635B3809
	for <lists+linux-man@lfdr.de>; Fri,  9 Sep 2022 14:44:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231451AbiIIMnD (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 9 Sep 2022 08:43:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51146 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230270AbiIIMnC (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 9 Sep 2022 08:43:02 -0400
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 245CBB24B1
        for <linux-man@vger.kernel.org>; Fri,  9 Sep 2022 05:43:01 -0700 (PDT)
Received: from theinternet.molgen.mpg.de (theinternet.molgen.mpg.de [141.14.31.7])
        (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        (Authenticated sender: buczek)
        by mx.molgen.mpg.de (Postfix) with ESMTPSA id AFDFC61EA1929;
        Fri,  9 Sep 2022 14:42:59 +0200 (CEST)
From:   Donald Buczek <buczek@molgen.mpg.de>
Subject: Repeated phrase in ipv6.7
To:     mtk.manpages@gmail.com, alx.manpages@gmail.com
Cc:     linux-man@vger.kernel.org
Message-ID: <0569b124-7069-cb6a-a487-8d7071f4e0ba@molgen.mpg.de>
Date:   Fri, 9 Sep 2022 14:42:59 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.1
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

[fixed cc]

IPv4 and IPv6 share the local port space.  When you get an IPv4
connection or packet to an IPv6 socket, its source address will
be mapped to v6 and it will be mapped to v6.
               ^^^^^^^^^^^^^^^^^^^^^^^^^^^^

D.

-- 
Donald Buczek
buczek@molgen.mpg.de
Tel: +49 30 8413 1433
