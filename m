Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 05AFD641BDE
	for <lists+linux-man@lfdr.de>; Sun,  4 Dec 2022 10:07:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230054AbiLDJH3 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 4 Dec 2022 04:07:29 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33680 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230057AbiLDJHY (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 4 Dec 2022 04:07:24 -0500
Received: from static.213-239-213-133.clients.your-server.de (luckmann.name [213.239.213.133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 459BF167D9
        for <linux-man@vger.kernel.org>; Sun,  4 Dec 2022 01:07:23 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
  (uid 502)
  by static.213-239-213-133.clients.your-server.de with local
  id 0000000000E54091.00000000638C6346.00000365; Sun, 04 Dec 2022 10:07:18 +0100
Date:   Sun, 4 Dec 2022 10:07:18 +0100
From:   Helge Kreutzmann <debian@helgefjell.de>
To:     alx.manpages@gmail.com
Cc:     mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page ttytype.5
Message-ID: <20221204090718.GA854@Debian-50-lenny-64-minimal>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
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

Issue:    I</dev/>) prefix → I</dev/> prefix)

"The I</etc/ttytype> file associates B<termcap>(5)/B<terminfo>(5)  terminal "
"type names with tty lines.  Each line consists of a terminal type, followed "
"by whitespace, followed by a tty name (a device name without the I</dev/>) "
"prefix."
