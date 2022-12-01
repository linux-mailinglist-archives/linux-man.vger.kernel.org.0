Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F3FDB63F306
	for <lists+linux-man@lfdr.de>; Thu,  1 Dec 2022 15:39:22 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231859AbiLAOjU (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 1 Dec 2022 09:39:20 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52566 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231862AbiLAOjS (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 1 Dec 2022 09:39:18 -0500
Received: from ewsoutbound.kpnmail.nl (ewsoutbound.kpnmail.nl [195.121.94.185])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2487BA6CEE
        for <linux-man@vger.kernel.org>; Thu,  1 Dec 2022 06:39:15 -0800 (PST)
X-KPN-MessageId: c102692f-7185-11ed-bfe8-005056999439
Received: from smtp.kpnmail.nl (unknown [10.31.155.8])
        by ewsoutbound.so.kpn.org (Halon) with ESMTPS
        id c102692f-7185-11ed-bfe8-005056999439;
        Thu, 01 Dec 2022 15:38:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=xs4all.nl; s=xs4all01;
        h=content-type:to:from:subject:mime-version:date:message-id;
        bh=/UI3Fv/m1ybGJuATx0DgWear22ZtPF2dZ4+3K9NvMMo=;
        b=N+RbmWOm/n2mThfkrmdg/6ZBqTzureCbMxHJCe049owERkrt3NH6qShpvWTzjZdNz7LR0odcKKMDR
         D5+ZzbwzSEHQic/woYvt6A3fcwisJ5A9KxMq3qi6nudCD7NMG/kxqL/g2+6XCtdMKGtrgNyess9p8/
         ZjsY4irZImtYlyyI/V6ZcwZ8kZ1UQMxPwsC0efh3NnO2ob8c3ZYqD2QC5CVYzWvhA9xBhh9KxaiCXH
         mTtY00vwH4y56HapKUOclqVFuc5Xu7TzKStBLJa9XhEgQ1LfNroZrLIv/xX/x+b9eXui4U0hBXIZKz
         mXCPJc+Lq+82cGqkPDUyY/TupANEjRg==
X-KPN-MID: 33|yRot1IujciJCWFwI+Yw7rhXy8JHFSN0kMbvfpYbXVxqYOfnp4HgPBYKaTnFleqc
 lnb2vojSETaGBdZ9RMw+5yCVCCRnD7ykBRnizE3SMOdI=
X-KPN-VerifiedSender: Yes
X-CMASSUN: 33|CgZBzaq9N4bAnapc0rnqhyTq0kK0OOk/AQNxgYUOb/Ugr0XuOHhNpQKfV+Uul8M
 PzVYl114LKeO+ifWpzHWyFQ==
X-Originating-IP: 77.173.35.122
Received: from [192.168.178.20] (77-173-35-122.fixed.kpn.net [77.173.35.122])
        by smtp.xs4all.nl (Halon) with ESMTPSA
        id ebf9eebd-7185-11ed-9b28-00505699d6e5;
        Thu, 01 Dec 2022 15:39:12 +0100 (CET)
Message-ID: <724c2a0a-7c20-3a99-b868-4a9ba27310f7@xs4all.nl>
Date:   Thu, 1 Dec 2022 15:39:12 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Subject: Re: Simple changes to select(2) and pipe(7)
Content-Language: en-US
From:   "J.H. vd Water" <henri.van.de.water@xs4all.nl>
To:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man <linux-man@vger.kernel.org>
Cc:     Ken Brown <kbrown@cornell.edu>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        "Michael T. Kerrisk" <mtk@man7.org>
References: <30847211-efc7-12be-6ce9-c5c4ada16805@xs4all.nl>
 <9f23de64-4748-5176-1caa-f05b9f4d5f0f@gmail.com>
 <0fd276c7-3aab-0075-8a54-1371e4fad925@gmail.com>
 <2d4d8b7b-5890-cd9f-061d-6d259d8ed6ee@xs4all.nl>
 <66aeb672-5ceb-00cc-70c0-592e2b7f293f@xs4all.nl>
 <a36590b4-a5fe-523c-f2bd-8af5c25f28a8@xs4all.nl>
In-Reply-To: <a36590b4-a5fe-523c-f2bd-8af5c25f28a8@xs4all.nl>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_LOW,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

Additional information:

LPI 63.2.3 Comparison of select() and poll():

Implementation details

"Within the Linux kernel, select() and poll() both employ the same set of
 kernel-internal poll routines ..."

See also: https://github.com/torvalds/linux/blob/master/fs/select.c

Furthermore:

 - https://pubs.opengroup.org/onlinepubs/9699919799/functions/poll.html

DESCRIPTION
...
  POLLHUP
    A device has been disconnected, or a pipe or FIFO has been closed by the last process
    that had it open for writing. ...
...
RATIONALE

  The POLLHUP event does not occur for FIFOs just because the FIFO is not open for writing.
  It only occurs when the FIFO is closed by the last writer and persists until some process
  opens the FIFO for writing or until all read-only file descriptors for the FIFO are closed.

Next I decided to verify this on Linux (Fedora 35): poll(2) returns zero (after time out) on
a FIFO of which the write end is closed from the start ...,

meaning neither POLLIN nor POLLHUP have been set in revents.

Bottom-line: select(2) blocks on a FIFO of which the write end is closed from
the start (i.e. select.2 is wrong, or at least not complete).

Regards,
Henri
