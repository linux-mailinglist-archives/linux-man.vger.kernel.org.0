Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 40FD86AF8BC
	for <lists+linux-man@lfdr.de>; Tue,  7 Mar 2023 23:32:30 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230109AbjCGWc2 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 7 Mar 2023 17:32:28 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35160 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230200AbjCGWcK (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 7 Mar 2023 17:32:10 -0500
Received: from smtp.smtpout.orange.fr (smtp-22.smtpout.orange.fr [80.12.242.22])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 269CB91B5B
        for <linux-man@vger.kernel.org>; Tue,  7 Mar 2023 14:32:02 -0800 (PST)
Received: from [192.168.1.28] ([90.112.30.115])
        by smtp.orange.fr with ESMTPA
        id ZfjHpVhna1qiwZfjIpNQw2; Tue, 07 Mar 2023 23:24:20 +0100
X-ME-Helo: [192.168.1.28]
X-ME-Auth: cGpmbG95ZEB3YW5hZG9vLmZy
X-ME-Date: Tue, 07 Mar 2023 23:24:20 +0100
X-ME-IP: 90.112.30.115
Message-ID: <d79b505c-5b19-331c-5b25-d40adc9cc843@wanadoo.fr>
Date:   Tue, 7 Mar 2023 23:24:19 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; FreeBSD amd64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
From:   "Floyd, Paul" <pjfloyd@wanadoo.fr>
Subject: Issues in manpage memalign
To:     linux-man@vger.kernel.org
Cc:     mtk.manpages@gmail.com, alx.manpages@gmail.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi

Quick bit of background. I'm a Valgrind maintainer and recently I've 
been working on getting Valgrind to work more like the underlying OS / 
libc implementations of memalign, posix_memalign and aligned_alloc.

There are several issues with the manpage for memalign and aligned alloc.

quote:

        The  obsolete  function  memalign()  allocates size bytes and 
returns a
        pointer to the allocated memory.  The memory address will be a 
multiple
        of alignment, which must be a power of two.

endquote:

The power if two requirement is false for glibc which silently bumps up 
the alignment to the next power of two.

quote:

        The  function aligned_alloc() is the same as memalign(), except 
for the
        added restriction that size should be a multiple of alignment.

endquote:

This is also false for glibc. In the glibc implementation weak aliases 
are used so memalign and aligned_alloc call the same function.

quote:

ERRORS
        EINVAL The alignment argument was not a power of two, or was not 
a mul-
               tiple of sizeof(void *).

endquote:

Both of the above only apply to posix_memalign and not to either 
memalign or aligned_alloc.

There is a missing EINVAL description. If the alignment is so large that 
the allocation will not be possible to satisfy then the call will fail 
and set errno to EINVAL.


Regards

Paul


