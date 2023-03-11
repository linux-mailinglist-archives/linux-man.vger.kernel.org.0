Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4E6A26B5E7B
	for <lists+linux-man@lfdr.de>; Sat, 11 Mar 2023 18:14:06 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229924AbjCKROE (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 11 Mar 2023 12:14:04 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54266 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229925AbjCKROD (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 11 Mar 2023 12:14:03 -0500
Received: from static.213-239-213-133.clients.your-server.de (luckmann.name [213.239.213.133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2B31B474CF
        for <linux-man@vger.kernel.org>; Sat, 11 Mar 2023 09:14:01 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
  (uid 502)
  by static.213-239-213-133.clients.your-server.de with local
  id 0000000000E540D1.00000000640CB6D7.000013CD; Sat, 11 Mar 2023 18:13:59 +0100
Date:   Sat, 11 Mar 2023 18:13:59 +0100
From:   Helge Kreutzmann <debian@helgefjell.de>
To:     alx.manpages@gmail.com
Cc:     mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page charsets.7
Message-ID: <20230311171359.GA5054@Debian-50-lenny-64-minimal>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
X-Public-Key-URL: http://www.helgefjell.de/data/debian_neu.asc
X-homepage: http://www.helgefjell.de/debian
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Spam-Status: No, score=2.0 required=5.0 tests=BAYES_20,CK_HELO_GENERIC,
        HELO_DYNAMIC_IPADDR,SPF_HELO_NONE,SPF_NONE autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Level: *
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Without further ado, the following was found:

Issue:    ISO 4873 → ISO/IEC 4873

"ISO 4873 stipulates a narrower use of character sets, where G0 is fixed "
"(always ASCII), so that G1, G2, and G3 can be invoked only for codes with "
"the high order bit set.  In particular, B<\\[ha]N> and B<\\[ha]O> are not "
"used anymore, ESC ( xx can be used only with xx=B, and ESC ) xx, ESC * xx, "
"ESC + xx are equivalent to ESC - xx, ESC . xx, ESC / xx, respectively."
