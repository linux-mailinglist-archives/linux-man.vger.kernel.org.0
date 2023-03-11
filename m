Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 92A2A6B5E73
	for <lists+linux-man@lfdr.de>; Sat, 11 Mar 2023 18:14:01 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229914AbjCKROA (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 11 Mar 2023 12:14:00 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53906 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229919AbjCKRN7 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 11 Mar 2023 12:13:59 -0500
Received: from static.213-239-213-133.clients.your-server.de (luckmann.name [213.239.213.133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0031D96C12
        for <linux-man@vger.kernel.org>; Sat, 11 Mar 2023 09:13:57 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
  (uid 502)
  by static.213-239-213-133.clients.your-server.de with local
  id 0000000000E540EB.00000000640CB6D3.000012BD; Sat, 11 Mar 2023 18:13:55 +0100
Date:   Sat, 11 Mar 2023 18:13:55 +0100
From:   Helge Kreutzmann <debian@helgefjell.de>
To:     alx.manpages@gmail.com
Cc:     mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page regex.3
Message-ID: <20230311171355.GA4780@Debian-50-lenny-64-minimal>
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

Issue:    null byte → NUL byte

"B<regerror>()  is passed the error code, I<errcode>, the pattern buffer, "
"I<preg>, a pointer to a character string buffer, I<errbuf>, and the size of "
"the string buffer, I<errbuf_size>.  It returns the size of the I<errbuf> "
"required to contain the null-terminated error message string.  If both "
"I<errbuf> and I<errbuf_size> are nonzero, I<errbuf> is filled in with the "
"first I<errbuf_size - 1> characters of the error message and a terminating "
"null byte (\\[aq]\\e0\\[aq])."
