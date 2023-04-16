Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D1EF76E3CCD
	for <lists+linux-man@lfdr.de>; Mon, 17 Apr 2023 01:36:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229588AbjDPXgC (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 16 Apr 2023 19:36:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47798 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229478AbjDPXgC (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 16 Apr 2023 19:36:02 -0400
Received: from pulsar.hadrons.org (2.152.192.238.dyn.user.ono.com [2.152.192.238])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A1B1A19B2
        for <linux-man@vger.kernel.org>; Sun, 16 Apr 2023 16:36:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=hadrons.org
        ; s=201908; h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:
        Cc:To:From:From:Reply-To:Subject:Content-Type:Content-ID:Content-Description:
        In-Reply-To:References:X-Debbugs-Cc;
        bh=laUybc/APsjteirX0MoIl+nsdWgtycnPrm5Ft5WoTTk=; b=h77KBou/aBYUyb67rgGMZakYqW
        kKkfpIb+IP1qSOQgK83z9n5hHv/F8AlufdCI6/pjkPEt5b/uaYtcHKt3wQ7OyXN54T6JkmvlDQkO/
        KEU8f9SNtrwaiz3rci0LllERUXETiQeUK0KAxKd2lX789PlicuqKCMVWyZCIT9lsp9fjLb5YF2cVP
        HrhVFeAIfp6gZvXRWwF+DF5hQhoaLPkWLU9zxmFSjXGIsLenbF7QvykatA2imkCgM7YO5tMCzbCf3
        O3nIcvno33R/84VnMJyUMtFUfn+UPlQpV8L0MgDY1GUWkXclnmyare4yLnMPrFecZ4juIjwmvKHG4
        fsntNWEg==;
Received: from guillem by pulsar.hadrons.org with local (Exim 4.96)
        (envelope-from <guillem@hadrons.org>)
        id 1poBuY-0000sC-0Z;
        Mon, 17 Apr 2023 01:35:58 +0200
From:   Guillem Jover <guillem@hadrons.org>
To:     Alejandro Colomar <alx@kernel.org>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH 0/4] proc.5: Fixes and updates
Date:   Mon, 17 Apr 2023 01:35:48 +0200
Message-Id: <20230416233552.283776-1-guillem@hadrons.org>
X-Mailer: git-send-email 2.40.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_SORBS_DUL,RDNS_DYNAMIC,
        SPF_HELO_PASS,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi!

Had these old changes laying around for a long time, which I've now
refreshed and I'm sending out.

Thanks,
Guillem

Guillem Jover (4):
  proc.5: Document exact /proc/PID/exe behavior on unlinked pathnames
  proc.5: A process can increase its own /proc/PID/oom_adj setting
  proc.5: Document that /proc/<pid>/oom_adj is no longer present
  proc.5: tfix

 man5/proc.5 | 14 ++++++++++----
 1 file changed, 10 insertions(+), 4 deletions(-)

-- 
2.40.0

