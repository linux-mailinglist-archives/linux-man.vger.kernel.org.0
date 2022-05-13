Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 04EB85268B2
	for <lists+linux-man@lfdr.de>; Fri, 13 May 2022 19:44:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1382157AbiEMRoi (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 13 May 2022 13:44:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50208 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242071AbiEMRoh (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 13 May 2022 13:44:37 -0400
X-Greylist: delayed 904 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Fri, 13 May 2022 10:44:35 PDT
Received: from brightrain.aerifal.cx (brightrain.aerifal.cx [216.12.86.13])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 89448E733B
        for <linux-man@vger.kernel.org>; Fri, 13 May 2022 10:44:35 -0700 (PDT)
Date:   Fri, 13 May 2022 13:29:30 -0400
From:   Rich Felker <dalias@libc.org>
To:     Michael Kerrisk <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: Erroneous text about POSIX in tmpfile(3) man page
Message-ID: <20220513172929.GA15832@brightrain.aerifal.cx>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Spam-Status: No, score=-0.5 required=5.0 tests=BAYES_05,SPF_HELO_NONE,
        SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

tmpfile.3 contains the following text:

NOTES
       POSIX.1-2001 specifies: an error message may be written to stdout if
       the stream cannot be opened.

I can find no such text in POSIX.1-2001 (looking at
https://pubs.opengroup.org/onlinepubs/007904975/functions/tmpfile.html)
and such an allowance would contradict ISO C which makes no such
allowance for it to write to stdout. I'm not sure where this came from
but it should probably be removed, or changed to indicate whichever
historical implementation wrongly did this if there was one.

Rich
