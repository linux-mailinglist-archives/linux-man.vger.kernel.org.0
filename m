Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 78AC26B5E7D
	for <lists+linux-man@lfdr.de>; Sat, 11 Mar 2023 18:14:07 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229922AbjCKROG (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 11 Mar 2023 12:14:06 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54370 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229927AbjCKROE (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 11 Mar 2023 12:14:04 -0500
Received: from static.213-239-213-133.clients.your-server.de (luckmann.name [213.239.213.133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3C9A139BA1
        for <linux-man@vger.kernel.org>; Sat, 11 Mar 2023 09:14:02 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
  (uid 502)
  by static.213-239-213-133.clients.your-server.de with local
  id 0000000000E541AB.00000000640CB6D8.000013ED; Sat, 11 Mar 2023 18:14:00 +0100
Date:   Sat, 11 Mar 2023 18:14:00 +0100
From:   Helge Kreutzmann <debian@helgefjell.de>
To:     alx.manpages@gmail.com
Cc:     mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page charsets.7
Message-ID: <20230311171359.GA5084@Debian-50-lenny-64-minimal>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
X-Public-Key-URL: http://www.helgefjell.de/data/debian_neu.asc
X-homepage: http://www.helgefjell.de/debian
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Spam-Status: No, score=0.1 required=5.0 tests=BAYES_00,CK_HELO_GENERIC,
        HELO_DYNAMIC_IPADDR,SPF_HELO_NONE,SPF_NONE autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Without further ado, the following was found:

Issue:    ISO 10646 → ISO/IEC 10646

"Unicode (ISO 10646) is a standard which aims to unambiguously represent "
"every character in every human language.  Unicode's structure permits 20.1 "
"bits to encode every character.  Since most computers don't include 20.1-bit "
"integers, Unicode is usually encoded as 32-bit integers internally and "
"either a series of 16-bit integers (UTF-16) (needing two 16-bit integers "
"only when encoding certain rare characters) or a series of 8-bit bytes "
"(UTF-8)."

"A byte 110xxxxx is the start of a 2-byte code, and 110xxxxx 10yyyyyy is "
"assembled into 00000xxx xxyyyyyy.  A byte 1110xxxx is the start of a 3-byte "
"code, and 1110xxxx 10yyyyyy 10zzzzzz is assembled into xxxxyyyy yyzzzzzz.  "
"(When UTF-8 is used to code the 31-bit ISO 10646 then this progression "
"continues up to 6-byte codes.)"
