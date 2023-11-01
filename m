Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 14FE27DE20A
	for <lists+linux-man@lfdr.de>; Wed,  1 Nov 2023 15:14:42 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1344200AbjKAOH0 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 1 Nov 2023 10:07:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36012 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1343846AbjKAOHY (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 1 Nov 2023 10:07:24 -0400
Received: from mail.helgefjell.de (unknown [IPv6:2a01:4f8:261:4d55::2])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7C68710C
        for <linux-man@vger.kernel.org>; Wed,  1 Nov 2023 07:07:21 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 000000000002151B.0000000065425A64.000FAD6F; Wed, 01 Nov 2023 14:02:12 +0000
Date:   Wed, 1 Nov 2023 14:02:12 +0000
From:   Helge Kreutzmann <debian@helgefjell.de>
To:     alx.manpages@gmail.com
Cc:     mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page regex.7
Message-ID: <ZUJaZLJyT5jFlHmX@meinfjell.helgefjelltest.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
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

Issue 1:  alphabetic?
Issue 2:  multiple cases → both cases?

"If case-independent matching is specified, the effect is much as if all case "
"distinctions had vanished from the alphabet.  When an alphabetic that exists "
"in multiple cases appears as an ordinary character outside a bracket "
"expression, it is effectively transformed into a bracket expression "
"containing both cases, for example, \\[aq]x\\[aq] becomes \"I<[xX]>\".  When "
"it appears inside a bracket expression, all case counterparts of it are "
"added to the bracket expression, so that, for example, \"I<[x]>\" becomes "
"\"I<[xX]>\" and \"I<[\\[ha]x]>\" becomes \"I<[\\[ha]xX]>\"."
