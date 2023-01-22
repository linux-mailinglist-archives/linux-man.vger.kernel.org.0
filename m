Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8204767720B
	for <lists+linux-man@lfdr.de>; Sun, 22 Jan 2023 20:36:42 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231484AbjAVTgl (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 22 Jan 2023 14:36:41 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53552 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231383AbjAVTgk (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 22 Jan 2023 14:36:40 -0500
Received: from static.213-239-213-133.clients.your-server.de (luckmann.name [213.239.213.133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A52B21ABE8
        for <linux-man@vger.kernel.org>; Sun, 22 Jan 2023 11:36:39 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
  (uid 502)
  by static.213-239-213-133.clients.your-server.de with local
  id 0000000000E58193.0000000063CD8F15.0000728E; Sun, 22 Jan 2023 20:31:33 +0100
Date:   Sun, 22 Jan 2023 20:31:33 +0100
From:   Helge Kreutzmann <debian@helgefjell.de>
To:     alx.manpages@gmail.com
Cc:     mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page charsets.7
Message-ID: <20230122193133.GA29311@Debian-50-lenny-64-minimal>
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

Issue:    ISO → ISO/IEC

"ASCII (American Standard Code For Information Interchange) is the original 7-"
"bit character set, originally designed for American English.  Also known as "
"US-ASCII.  It is currently described by the ISO 646:1991 IRV (International "
"Reference Version) standard."

"The ISO 2022 and 4873 standards describe a font-control model based on VT100 "
"practice.  This model is (partially) supported by the Linux kernel and by "
"B<xterm>(1).  Several ISO 2022-based character encodings have been defined, "
"especially for Japanese."

"A 94-character set is designated as GI<n> character set by an escape "
"sequence ESC ( xx (for G0), ESC ) xx (for G1), ESC * xx (for G2), ESC + xx "
"(for G3), where xx is a symbol or a pair of symbols found in the ISO 2375 "
"International Register of Coded Character Sets.  For example, ESC ( @ "
"selects the ISO 646 character set as G0, ESC ( A selects the UK standard "
"character set (with pound instead of number sign), ESC ( B selects ASCII "
"(with dollar instead of currency sign), ESC ( M selects a character set for "
"African languages, ESC ( ! A selects the Cuban character set, and so on."

"ISO 4873 stipulates a narrower use of character sets, where G0 is fixed "
"(always ASCII), so that G1, G2, and G3 can be invoked only for codes with "
"the high order bit set.  In particular, B<\\(haN> and B<\\(haO> are not used "
"anymore, ESC ( xx can be used only with xx=B, and ESC ) xx, ESC * xx, ESC + "
"xx are equivalent to ESC - xx, ESC . xx, ESC / xx, respectively."

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

"For most texts in ISO 8859 character sets, this means that the characters "
"outside of ASCII are now coded with two bytes.  This tends to expand "
"ordinary text files by only one or two percent.  For Russian or Greek texts, "
"this expands ordinary text files by 100%, since text in those languages is "
"mostly outside of ASCII.  For Japanese users this means that the 16-bit "
"codes now in common use will take three bytes.  While there are algorithmic "
"conversions from some character sets (especially ISO 8859-1) to Unicode, "
"general conversion requires carrying around conversion tables, which can be "
"quite large for 16-bit codes."
