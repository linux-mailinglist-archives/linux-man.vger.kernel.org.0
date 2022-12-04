Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0F2AD641BF2
	for <lists+linux-man@lfdr.de>; Sun,  4 Dec 2022 10:07:48 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230102AbiLDJHq (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 4 Dec 2022 04:07:46 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34162 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230077AbiLDJHh (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 4 Dec 2022 04:07:37 -0500
Received: from static.213-239-213-133.clients.your-server.de (luckmann.name [213.239.213.133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7B87113C
        for <linux-man@vger.kernel.org>; Sun,  4 Dec 2022 01:07:32 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
  (uid 502)
  by static.213-239-213-133.clients.your-server.de with local
  id 0000000000E541E4.00000000638C634D.0000053B; Sun, 04 Dec 2022 10:07:25 +0100
Date:   Sun, 4 Dec 2022 10:07:25 +0100
From:   Helge Kreutzmann <debian@helgefjell.de>
To:     alx.manpages@gmail.com
Cc:     mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page connect.2
Message-ID: <20221204090725.GA1324@Debian-50-lenny-64-minimal>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
X-Public-Key-URL: http://www.helgefjell.de/data/debian_neu.asc
X-homepage: http://www.helgefjell.de/debian
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Spam-Status: No, score=2.2 required=5.0 tests=BAYES_20,CK_HELO_GENERIC,
        HELO_DYNAMIC_IPADDR,SPF_HELO_NONE,SPF_NONE autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Level: **
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Without further ado, the following was found:

Issue:    "dd" at the end

"B<EACCES> can also be returned if an SELinux policy denied a connection (for "
"example, if there is a policy saying that an HTTP proxy can only connect to "
"ports associated with HTTP servers, and the proxy tries to connect to a "
"different port).  dd"
