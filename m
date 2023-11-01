Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 31E0E7DE20E
	for <lists+linux-man@lfdr.de>; Wed,  1 Nov 2023 15:14:43 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1343920AbjKAOHZ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 1 Nov 2023 10:07:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35980 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1344082AbjKAOHW (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 1 Nov 2023 10:07:22 -0400
Received: from mail.helgefjell.de (unknown [IPv6:2a01:4f8:261:4d55::2])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ACF9D83
        for <linux-man@vger.kernel.org>; Wed,  1 Nov 2023 07:07:19 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 0000000000021509.0000000065425A64.000FAD57; Wed, 01 Nov 2023 14:02:12 +0000
Date:   Wed, 1 Nov 2023 14:02:12 +0000
From:   Helge Kreutzmann <debian@helgefjell.de>
To:     alx.manpages@gmail.com
Cc:     mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page regex.7
Message-ID: <ZUJaZKpi3x1c29CQ@meinfjell.helgefjelltest.de>
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

Issue:    I<egrep> → B<egrep>(1)

"Regular expressions (\"RE\"s), as defined in POSIX.2, come in two forms: "
"modern REs (roughly those of I<egrep>; POSIX.2 calls these \"extended\" "
"REs)  and obsolete REs (roughly those of B<ed>(1); POSIX.2 \"basic\" REs).  "
"Obsolete REs mostly exist for backward compatibility in some old programs; "
"they will be discussed at the end.  POSIX.2 leaves some aspects of RE syntax "
"and semantics open; \"\\*(dg\" marks decisions on these aspects that may not "
"be fully portable to other POSIX.2 implementations."
