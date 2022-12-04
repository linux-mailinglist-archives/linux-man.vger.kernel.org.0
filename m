Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EAEBF641BEB
	for <lists+linux-man@lfdr.de>; Sun,  4 Dec 2022 10:07:40 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230053AbiLDJHj (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 4 Dec 2022 04:07:39 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33632 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230045AbiLDJHb (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 4 Dec 2022 04:07:31 -0500
Received: from static.213-239-213-133.clients.your-server.de (luckmann.name [213.239.213.133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5992D18B1F
        for <linux-man@vger.kernel.org>; Sun,  4 Dec 2022 01:07:29 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
  (uid 502)
  by static.213-239-213-133.clients.your-server.de with local
  id 0000000000E541D8.00000000638C634B.000004A9; Sun, 04 Dec 2022 10:07:23 +0100
Date:   Sun, 4 Dec 2022 10:07:23 +0100
From:   Helge Kreutzmann <debian@helgefjell.de>
To:     alx.manpages@gmail.com
Cc:     mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page wcscspn.3
Message-ID: <20221204090723.GA1178@Debian-50-lenny-64-minimal>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
X-Public-Key-URL: http://www.helgefjell.de/data/debian_neu.asc
X-homepage: http://www.helgefjell.de/debian
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Spam-Status: No, score=2.2 required=5.0 tests=BAYES_20,CK_HELO_GENERIC,
        HELO_DYNAMIC_IPADDR,SPF_HELO_NONE,SPF_NONE autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Level: **
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Without further ado, the following was found:

Issue:    longest initial → initial

"The B<wcscspn>()  function is the wide-character equivalent of the "
"B<strcspn>(3)  function.  It determines the length of the longest initial "
"segment of I<wcs> which consists entirely of wide-characters not listed in "
"I<reject>.  In other words, it searches for the first occurrence in the wide-"
"character string I<wcs> of any of the characters in the wide-character "
"string I<reject>."

"The B<wcscspn>()  function returns the number of wide characters in the "
"longest initial segment of I<wcs> which consists entirely of wide-characters "
"not listed in I<reject>.  In other words, it returns the position of the "
"first occurrence in the wide-character string I<wcs> of any of the "
"characters in the wide-character string I<reject>, or I<wcslen(wcs)> if "
"there is none."
