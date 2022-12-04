Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1C1A4641BF5
	for <lists+linux-man@lfdr.de>; Sun,  4 Dec 2022 10:07:52 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230085AbiLDJHu (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 4 Dec 2022 04:07:50 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34338 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230088AbiLDJHj (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 4 Dec 2022 04:07:39 -0500
Received: from static.213-239-213-133.clients.your-server.de (luckmann.name [213.239.213.133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C3E5DD8C
        for <linux-man@vger.kernel.org>; Sun,  4 Dec 2022 01:07:37 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
  (uid 502)
  by static.213-239-213-133.clients.your-server.de with local
  id 0000000000E541E7.00000000638C634F.00000599; Sun, 04 Dec 2022 10:07:27 +0100
Date:   Sun, 4 Dec 2022 10:07:27 +0100
From:   Helge Kreutzmann <debian@helgefjell.de>
To:     alx.manpages@gmail.com
Cc:     mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page credentials.7
Message-ID: <20221204090727.GA1416@Debian-50-lenny-64-minimal>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
X-Public-Key-URL: http://www.helgefjell.de/data/debian_neu.asc
X-homepage: http://www.helgefjell.de/debian
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Spam-Status: No, score=1.7 required=5.0 tests=BAYES_05,CK_HELO_GENERIC,
        HELO_DYNAMIC_IPADDR,SPF_HELO_NONE,SPF_NONE autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Level: *
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Without further ado, the following was found:

Issue:    from background job → from a background job

"At most one of the jobs in a session may be the I<foreground job>; other "
"jobs in the session are I<background jobs>.  Only the foreground job may "
"read from the terminal; when a process in the background attempts to read "
"from the terminal, its process group is sent a B<SIGTTIN> signal, which "
"suspends the job.  If the B<TOSTOP> flag has been set for the terminal (see "
"B<termios>(3)), then only the foreground job may write to the terminal; "
"writes from background job cause a B<SIGTTOU> signal to be generated, which "
"suspends the job.  When terminal keys that generate a signal (such as the "
"I<interrupt> key, normally control-C)  are pressed, the signal is sent to "
"the processes in the foreground job."
