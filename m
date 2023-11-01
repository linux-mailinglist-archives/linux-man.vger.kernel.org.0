Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BF7EA7DE22C
	for <lists+linux-man@lfdr.de>; Wed,  1 Nov 2023 15:14:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1344290AbjKAOHY (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 1 Nov 2023 10:07:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35974 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1343920AbjKAOHV (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 1 Nov 2023 10:07:21 -0400
Received: from mail.helgefjell.de (unknown [IPv6:2a01:4f8:261:4d55::2])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 16591111
        for <linux-man@vger.kernel.org>; Wed,  1 Nov 2023 07:07:18 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 00000000000208C5.0000000065425A62.000FABE8; Wed, 01 Nov 2023 14:02:10 +0000
Date:   Wed, 1 Nov 2023 14:02:10 +0000
From:   Helge Kreutzmann <debian@helgefjell.de>
To:     alx.manpages@gmail.com
Cc:     mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page getent.1
Message-ID: <ZUJaYg5pUzF_9sP7@meinfjell.helgefjelltest.de>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
X-Public-Key-URL: http://www.helgefjell.de/data/debian_neu.asc
X-homepage: http://www.helgefjell.de/debian
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Without further ado, the following was found:

Issue:    No "in succession" here on purpose?

"When no I<key> is provided, use B<sethostent>(3), B<gethostent>(3), and "
"B<endhostent>(3)  to enumerate the hosts database.  When one or more I<key> "
"arguments are provided, pass each I<key> to B<gethostbyaddr>(3)  or "
"B<gethostbyname2>(3), depending on whether a call to B<inet_pton>(3)  "
"indicates that the I<key> is an IPv6 or IPv4 address or not, and display the "
"result."

"When one I<key> is provided, pass the I<key> to B<setnetgrent>(3)  and, "
"using B<getnetgrent>(3)  display the resulting string triple (I<hostname>, "
"I<username>, I<domainname>).  Alternatively, three I<keys> may be provided, "
"which are interpreted as the I<hostname>, I<username>, and I<domainname> to "
"match to a netgroup name via B<innetgr>(3).  Enumeration is not supported on "
"B<netgroup>, so either one or three I<keys> must be provided."

"When no I<key> is provided, use B<setnetent>(3), B<getnetent>(3), and "
"B<endnetent>(3)  to enumerate the networks database.  When one or more "
"I<key> arguments are provided, pass each numeric I<key> to "
"B<getnetbyaddr>(3)  and each nonnumeric I<key> to B<getnetbyname>(3)  and "
"display the result."

"When no I<key> is provided, use B<setpwent>(3), B<getpwent>(3), and "
"B<endpwent>(3)  to enumerate the passwd database.  When one or more I<key> "
"arguments are provided, pass each numeric I<key> to B<getpwuid>(3)  and each "
"nonnumeric I<key> to B<getpwnam>(3)  and display the result."

"When no I<key> is provided, use B<setprotoent>(3), B<getprotoent>(3), and "
"B<endprotoent>(3)  to enumerate the protocols database.  When one or more "
"I<key> arguments are provided, pass each numeric I<key> to "
"B<getprotobynumber>(3)  and each nonnumeric I<key> to B<getprotobyname>(3)  "
"and display the result."

"When no I<key> is provided, use B<setrpcent>(3), B<getrpcent>(3), and "
"B<endrpcent>(3)  to enumerate the rpc database.  When one or more I<key> "
"arguments are provided, pass each numeric I<key> to B<getrpcbynumber>(3)  "
"and each nonnumeric I<key> to B<getrpcbyname>(3)  and display the result."

"When no I<key> is provided, use B<setservent>(3), B<getservent>(3), and "
"B<endservent>(3)  to enumerate the services database.  When one or more "
"I<key> arguments are provided, pass each numeric I<key> to "
"B<getservbynumber>(3)  and each nonnumeric I<key> to B<getservbyname>(3)  "
"and display the result."
