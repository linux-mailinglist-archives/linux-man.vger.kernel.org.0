Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 083F97DE230
	for <lists+linux-man@lfdr.de>; Wed,  1 Nov 2023 15:14:53 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231501AbjKAOCj (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 1 Nov 2023 10:02:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42802 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230460AbjKAOCi (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 1 Nov 2023 10:02:38 -0400
Received: from mail.helgefjell.de (unknown [IPv6:2a01:4f8:261:4d55::2])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 75063110
        for <linux-man@vger.kernel.org>; Wed,  1 Nov 2023 07:02:30 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 0000000000021549.0000000065425A65.000FAE5F; Wed, 01 Nov 2023 14:02:13 +0000
Date:   Wed, 1 Nov 2023 14:02:13 +0000
From:   Helge Kreutzmann <debian@helgefjell.de>
To:     alx.manpages@gmail.com
Cc:     mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page charsets.7
Message-ID: <ZUJaZcnGmZQJ4lhy@meinfjell.helgefjelltest.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
X-Public-Key-URL: http://www.helgefjell.de/data/debian_neu.asc
X-homepage: http://www.helgefjell.de/debian
X-Spam-Status: No, score=-0.0 required=5.0 tests=BAYES_20,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Without further ado, the following was found:

Issue:    ISO 8859 → ISO/IEC 8859

"For most texts in ISO 8859 character sets, this means that the characters "
"outside of ASCII are now coded with two bytes.  This tends to expand "
"ordinary text files by only one or two percent.  For Russian or Greek texts, "
"this expands ordinary text files by 100%, since text in those languages is "
"mostly outside of ASCII.  For Japanese users this means that the 16-bit "
"codes now in common use will take three bytes.  While there are algorithmic "
"conversions from some character sets (especially ISO 8859-1) to Unicode, "
"general conversion requires carrying around conversion tables, which can be "
"quite large for 16-bit codes."
