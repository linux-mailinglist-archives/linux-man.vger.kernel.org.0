Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 10681641BED
	for <lists+linux-man@lfdr.de>; Sun,  4 Dec 2022 10:07:43 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230059AbiLDJHl (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 4 Dec 2022 04:07:41 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33520 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229928AbiLDJHb (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 4 Dec 2022 04:07:31 -0500
Received: from static.213-239-213-133.clients.your-server.de (luckmann.name [213.239.213.133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BDA6718B25
        for <linux-man@vger.kernel.org>; Sun,  4 Dec 2022 01:07:29 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
  (uid 502)
  by static.213-239-213-133.clients.your-server.de with local
  id 0000000000E541DD.00000000638C634C.000004F2; Sun, 04 Dec 2022 10:07:24 +0100
Date:   Sun, 4 Dec 2022 10:07:24 +0100
From:   Helge Kreutzmann <debian@helgefjell.de>
To:     alx.manpages@gmail.com
Cc:     mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page wcsncpy.3
Message-ID: <20221204090724.GA1249@Debian-50-lenny-64-minimal>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
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

Issue:    Is the "L" in the bracket (for the NULL character) correct?

"The B<wcsncpy>()  function is the wide-character equivalent of the "
"B<strncpy>(3)  function.  It copies at most I<n> wide characters from the "
"wide-character string pointed to by I<src>, including the terminating null "
"wide character (L\\(aq\\e0\\(aq), to the array pointed to by I<dest>.  "
"Exactly I<n> wide characters are written at I<dest>.  If the length "
"I<wcslen(src)> is smaller than I<n>, the remaining wide characters in the "
"array pointed to by I<dest> are filled with null wide characters.  If the "
"length I<wcslen(src)> is greater than or equal to I<n>, the string pointed "
"to by I<dest> will not be terminated by a null wide character."
