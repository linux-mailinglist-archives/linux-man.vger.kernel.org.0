Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E990F641BCC
	for <lists+linux-man@lfdr.de>; Sun,  4 Dec 2022 10:07:19 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230024AbiLDJHS (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 4 Dec 2022 04:07:18 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33480 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229995AbiLDJHQ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 4 Dec 2022 04:07:16 -0500
Received: from static.213-239-213-133.clients.your-server.de (luckmann.name [213.239.213.133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CF23C167E3
        for <linux-man@vger.kernel.org>; Sun,  4 Dec 2022 01:07:14 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
  (uid 502)
  by static.213-239-213-133.clients.your-server.de with local
  id 0000000000E540D6.00000000638C6340.000001B1; Sun, 04 Dec 2022 10:07:12 +0100
Date:   Sun, 4 Dec 2022 10:07:11 +0100
From:   Helge Kreutzmann <debian@helgefjell.de>
To:     alx.manpages@gmail.com
Cc:     mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page mount_namespaces.7
Message-ID: <20221204090711.GA418@Debian-50-lenny-64-minimal>
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

Issue:    mount point → mount

"Here, I<A> is a mount on I<B/b>, where I<B> is the parent mount and I<b> is "
"a subdirectory path under the mount point I<B>.  If B<B> is shared, then all "
"most-recently-mounted mounts at I<b> on mounts that receive propagation from "
"mount I<B> and do not have submounts under them are unmounted."
