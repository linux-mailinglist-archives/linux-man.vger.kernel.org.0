Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 55A536A7FE1
	for <lists+linux-man@lfdr.de>; Thu,  2 Mar 2023 11:21:11 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229890AbjCBKVK (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 2 Mar 2023 05:21:10 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41094 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229749AbjCBKVJ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 2 Mar 2023 05:21:09 -0500
Received: from smtp.smtpout.orange.fr (smtp-22.smtpout.orange.fr [80.12.242.22])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 810873B3DA
        for <linux-man@vger.kernel.org>; Thu,  2 Mar 2023 02:21:05 -0800 (PST)
Received: from [137.202.253.23] ([192.94.31.2])
        by smtp.orange.fr with ESMTPA
        id Xg3apmwbns1Q5Xg3bpMek0; Thu, 02 Mar 2023 11:21:03 +0100
X-ME-Helo: [137.202.253.23]
X-ME-Auth: cGpmbG95ZEB3YW5hZG9vLmZy
X-ME-Date: Thu, 02 Mar 2023 11:21:03 +0100
X-ME-IP: 192.94.31.2
Message-ID: <0cbbd062-bc91-25ec-7744-d474e372cc62@wanadoo.fr>
Date:   Thu, 2 Mar 2023 11:21:01 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
To:     mtk.manpages@gmail.com, alx.manpages@gmail.com
Cc:     linux-man@vger.kernel.org
From:   "Floyd, Paul" <pjfloyd@wanadoo.fr>
Subject: memalign man page
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi

I see several issues with the man page for memalign/aligned_alloc with 
respect to the glibc implementations.

What is the best way to report them? Log an issue at 
https://bugzilla.kernel.org?


Regards

Paul Floyd

