Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9E04D54003A
	for <lists+linux-man@lfdr.de>; Tue,  7 Jun 2022 15:38:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235395AbiFGNit (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 7 Jun 2022 09:38:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60146 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243638AbiFGNis (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 7 Jun 2022 09:38:48 -0400
Received: from ams.source.kernel.org (ams.source.kernel.org [IPv6:2604:1380:4601:e00::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8E6C15EDCD
        for <linux-man@vger.kernel.org>; Tue,  7 Jun 2022 06:38:47 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id 27416B82017
        for <linux-man@vger.kernel.org>; Tue,  7 Jun 2022 13:38:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 32B34C34114;
        Tue,  7 Jun 2022 13:38:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1654609124;
        bh=HDYnV6raS8udz7FmwKS5Gqi7jv+DfpbHWbo4wqKAIC4=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
        b=IJyPvPm5GrInMA8hqzBBSWS0ZP0ZujcBZAMs9A0tEyCqX+nt/BVKUzsdt4sigT8K+
         CbFO2cpIHD9VA4fabFnF9WRBYdbDPcowu2WXL7RapZZOueEDI4q13XIbzDbA7VDPwa
         vxu04iwf4V46i8DOHv7IgAXHIPgbjX84fA8g/oJFfUATjoesDMxHe9OQGOLq9pWo+H
         uavo0oCzPVgSZ1NM0TqHOePz6Oa3wZVxXrsI9A7k5CpKHvrQDskL26pV8IOsp6FxJD
         ejk1OCabkUI7A/Dy3Dw+2hTZ6FxGjgh1qT76y+MVrxDayjsZSLRtYilyhFdsDsJCVr
         S9iIvFjswBlXA==
From:   Christian Brauner <brauner@kernel.org>
To:     linux-man@vger.kernel.org,
        Alejandro Colomar <alx.manpages@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>
Cc:     Christian Brauner <brauner@kernel.org>,
        Christoph Hellwig <hch@infradead.org>,
        Aleksa Sarai <cyphar@cyphar.com>
Subject: [PATCH 4/4] mount_setattr.2: ffix
Date:   Tue,  7 Jun 2022 15:38:20 +0200
Message-Id: <20220607133820.1721352-5-brauner@kernel.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220607133820.1721352-1-brauner@kernel.org>
References: <20220607133820.1721352-1-brauner@kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=824; h=from:subject; bh=HDYnV6raS8udz7FmwKS5Gqi7jv+DfpbHWbo4wqKAIC4=; b=owGbwMvMwCU28Zj0gdSKO4sYT6slMSTNDzlhu1+dM8nSiIllUe30uCq+jRNb7O1606bsP7anJmAG 13zzjhIWBjEuBlkxRRaHdpNwueU8FZuNMjVg5rAygQxh4OIUgIlINTN8U4/cdOfD7lR3PvXgzY8LFd nnbiuZdct83rHrpw+lChZ2M/zTMelqsw84JH9qxbwMk7JPk+TWnHgp5JM+g9mJY8HxqZGsAA==
X-Developer-Key: i=brauner@kernel.org; a=openpgp; fpr=4880B8C9BD0E5106FC070F4F7B3C391EFEA93624
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-8.3 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Fix a typo in my name.

Signed-off-by: Christian Brauner (Microsoft) <brauner@kernel.org>
---
 man2/mount_setattr.2 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man2/mount_setattr.2 b/man2/mount_setattr.2
index 13d66db4f..f1b73e370 100644
--- a/man2/mount_setattr.2
+++ b/man2/mount_setattr.2
@@ -543,7 +543,7 @@ a new peer group ID needs to be allocated for all mounts without a peer group
 ID set.
 This allocation failed because
 the kernel has run out of IDs.
-.\" Christian Bruner: i.e. someone has somehow managed to
+.\" Christian Brauner: i.e. someone has somehow managed to
 .\" allocate so many peer groups and managed to keep the kernel running
 .\" (???) that the ida has ran out of ids
 .\" Note that technically further error codes are possible that are
-- 
2.34.1

