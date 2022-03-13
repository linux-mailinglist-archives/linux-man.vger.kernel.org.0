Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9335B4D7541
	for <lists+linux-man@lfdr.de>; Sun, 13 Mar 2022 13:39:36 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233815AbiCMMkm (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 13 Mar 2022 08:40:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38560 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233821AbiCMMkl (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 13 Mar 2022 08:40:41 -0400
Received: from static.213-239-213-133.clients.your-server.de (luckmann.name [213.239.213.133])
        by lindbergh.monkeyblade.net (Postfix) with UTF8SMTPS id 7CB382AE21
        for <linux-man@vger.kernel.org>; Sun, 13 Mar 2022 05:39:33 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
  (uid 502)
  by static.213-239-213-133.clients.your-server.de with local
  id 0000000000E541B9.00000000622DE4D3.00005869; Sun, 13 Mar 2022 13:34:27 +0100
Date:   Sun, 13 Mar 2022 13:34:27 +0100
From:   Helge Kreutzmann <debian@helgefjell.de>
To:     mtk.manpages@gmail.com
Cc:     mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page cgroup_namespaces.7
Message-ID: <20220313123427.GA22618@Debian-50-lenny-64-minimal>
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

Issue:    user ID → UID

"We have a cgroup directory, I</cg/1>, that is owned by user ID 9000."

"We have a process, I<X>, also owned by user ID 9000, that is namespaced "
"under the cgroup I</cg/1/2> (i.e., I<X> was placed in a new cgroup namespace "
"via B<clone>(2)  or B<unshare>(2)  with the B<CLONE_NEWCGROUP> flag)."

"In the absence of cgroup namespacing, because the cgroup directory I</cg/1> "
"is owned (and writable) by UID 9000 and process I<X> is also owned by user "
"ID 9000, process I<X> would be able to modify the contents of cgroups files "
"(i.e., change cgroup settings) not only in I</cg/1/2> but also in the "
"ancestor cgroup directory I</cg/1>.  Namespacing process I<X> under the "
"cgroup directory I</cg/1/2>, in combination with suitable mount operations "
"for the cgroup filesystem (as shown above), prevents it modifying files in "
"I</cg/1>, since it cannot even see the contents of that directory (or of "
"further removed cgroup ancestor directories).  Combined with correct "
"enforcement of hierarchical limits, this prevents process I<X> from escaping "
"the limits imposed by ancestor cgroups."
