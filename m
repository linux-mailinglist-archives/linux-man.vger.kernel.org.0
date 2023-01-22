Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id ABA6C677203
	for <lists+linux-man@lfdr.de>; Sun, 22 Jan 2023 20:36:37 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230365AbjAVTgh (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 22 Jan 2023 14:36:37 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53346 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231378AbjAVTge (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 22 Jan 2023 14:36:34 -0500
Received: from static.213-239-213-133.clients.your-server.de (luckmann.name [213.239.213.133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7201F1ABF9
        for <linux-man@vger.kernel.org>; Sun, 22 Jan 2023 11:36:33 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
  (uid 502)
  by static.213-239-213-133.clients.your-server.de with local
  id 0000000000E58187.0000000063CD8F13.00007214; Sun, 22 Jan 2023 20:31:31 +0100
Date:   Sun, 22 Jan 2023 20:31:31 +0100
From:   Helge Kreutzmann <debian@helgefjell.de>
To:     alx.manpages@gmail.com
Cc:     mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page user_namespaces.7
Message-ID: <20230122193131.GA29187@Debian-50-lenny-64-minimal>
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

Issue 1:  I</proc/ pid /setgroups> → I</proc/>pidI</setgroups>
Issue 2:  I</proc/ pid /gid_map> → I</proc/>pidI</gid_map>
Issue 3:  I</proc/ pid /gid_map> → I</proc/>pidI</gid_map>

"Writing \"I<deny>\" to the I</proc/ pid /setgroups> file before writing to "
"I</proc/ pid /gid_map> will permanently disable B<setgroups>(2)  in a user "
"namespace and allow writing to I</proc/ pid /gid_map> without having the "
"B<CAP_SETGID> capability in the parent user namespace."
