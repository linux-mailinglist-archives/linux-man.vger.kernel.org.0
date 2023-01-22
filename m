Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4979967720F
	for <lists+linux-man@lfdr.de>; Sun, 22 Jan 2023 20:36:48 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230137AbjAVTgr (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 22 Jan 2023 14:36:47 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53690 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231268AbjAVTgr (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 22 Jan 2023 14:36:47 -0500
Received: from static.213-239-213-133.clients.your-server.de (luckmann.name [213.239.213.133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5B3B41F48D
        for <linux-man@vger.kernel.org>; Sun, 22 Jan 2023 11:36:45 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
  (uid 502)
  by static.213-239-213-133.clients.your-server.de with local
  id 0000000000E5819B.0000000063CD8F16.000072F2; Sun, 22 Jan 2023 20:31:34 +0100
Date:   Sun, 22 Jan 2023 20:31:34 +0100
From:   Helge Kreutzmann <debian@helgefjell.de>
To:     alx.manpages@gmail.com
Cc:     mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page getpid.2.po
Message-ID: <20230122193134.GA29411@Debian-50-lenny-64-minimal>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
X-Public-Key-URL: http://www.helgefjell.de/data/debian_neu.asc
X-homepage: http://www.helgefjell.de/debian
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Spam-Status: No, score=0.3 required=5.0 tests=BAYES_00,CK_HELO_GENERIC,
        HELO_DYNAMIC_IPADDR,SPF_HELO_NONE,SPF_NONE autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Without further ado, the following was found:

Issue:    Linux 2.24 → Glibc 2.24

"From glibc 2.3.4 up to and including Linux 2.24, the glibc wrapper function "
"for B<getpid>()  cached PIDs, with the goal of avoiding additional system "
"calls when a process calls B<getpid>()  repeatedly.  Normally this caching "
"was invisible, but its correct operation relied on support in the wrapper "
"functions for B<fork>(2), B<vfork>(2), and B<clone>(2): if an application "
"bypassed the glibc wrappers for these system calls by using B<syscall>(2), "
"then a call to B<getpid>()  in the child would return the wrong value (to be "
"precise: it would return the PID of the parent process).  In addition, there "
"were cases where B<getpid>()  could return the wrong value even when "
"invoking B<clone>(2)  via the glibc wrapper function.  (For a discussion of "
"one such case, see BUGS in B<clone>(2).)  Furthermore, the complexity of the "
"caching code had been the source of a few bugs within glibc over the years."
