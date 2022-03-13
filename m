Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D96574D752C
	for <lists+linux-man@lfdr.de>; Sun, 13 Mar 2022 13:39:25 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233650AbiCMMkb (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 13 Mar 2022 08:40:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37372 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233629AbiCMMka (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 13 Mar 2022 08:40:30 -0400
Received: from static.213-239-213-133.clients.your-server.de (luckmann.name [213.239.213.133])
        by lindbergh.monkeyblade.net (Postfix) with UTF8SMTPS id 5E0D32AE01
        for <linux-man@vger.kernel.org>; Sun, 13 Mar 2022 05:39:22 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
  (uid 502)
  by static.213-239-213-133.clients.your-server.de with local
  id 0000000000E54189.00000000622DE4CC.0000570D; Sun, 13 Mar 2022 13:34:20 +0100
Date:   Sun, 13 Mar 2022 13:34:20 +0100
From:   Helge Kreutzmann <debian@helgefjell.de>
To:     mtk.manpages@gmail.com
Cc:     mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page mount_namespaces.7
Message-ID: <20220313123420.GA22269@Debian-50-lenny-64-minimal>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
X-Public-Key-URL: http://www.helgefjell.de/data/debian_neu.asc
X-homepage: http://www.helgefjell.de/debian
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Spam-Status: No, score=0.0 required=5.0 tests=BAYES_00,CK_HELO_GENERIC,
        HELO_DYNAMIC_IPADDR,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE
        autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Without further ado, the following was found:

Issue:    Documentation/filesystems/sharedsubtree.txt → Documentation/filesystems/sharedsubtree.rst

"For a discussion of propagation types when moving mounts (B<MS_MOVE>)  and "
"creating bind mounts (B<MS_BIND>), see I<Documentation/filesystems/"
"sharedsubtree.txt>."

"I<Documentation/filesystems/sharedsubtree.txt> in the kernel source tree."
