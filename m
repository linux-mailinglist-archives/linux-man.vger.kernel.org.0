Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 758D1E88B8
	for <lists+linux-man@lfdr.de>; Tue, 29 Oct 2019 13:49:54 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2387727AbfJ2Mtx (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 29 Oct 2019 08:49:53 -0400
Received: from iota.tcarey.uk ([138.68.159.189]:46298 "EHLO iota.tcarey.uk"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1729253AbfJ2Mtx (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Tue, 29 Oct 2019 08:49:53 -0400
X-Greylist: delayed 475 seconds by postgrey-1.27 at vger.kernel.org; Tue, 29 Oct 2019 08:49:52 EDT
Received: from kappa (va185104.shef.ac.uk [143.167.185.104])
        by iota.tcarey.uk (Postfix) with ESMTPSA id 6B1C321793;
        Tue, 29 Oct 2019 12:41:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=tcarey.uk; s=iota;
        t=1572352916; bh=CLktPdiypJVnvgihaLN9ZeP9vDS/Xlrrx8lo29SDFnQ=;
        h=Date:From:To:Cc:Subject:From;
        b=pT3Q7Jp60Co+6qevaD9BjWsrW304R3pk4km4h2AuBvw8WLLP9MCIpyNZgT9EdaAFE
         JmnmaD4S7Smt/sH+cLrAWTWqnM7boav//9m3tGqisISnkATnBC/6sBg7QvyHwSjm5Q
         Fxb+C24BOPqP3OWY64BLDSRkcQOGv6oe26BLs4kjI5ItqeVoA3FAP4mwmGwrQJlODr
         Ekn+NMwiJziv6cDDA7UywgLH8exfqXivI6mGtYUSrsktpyeM2kyBksxKeCKitTQQhB
         BP7Nb29Htmm3FwXUH2tqHW6vSCR+k2HWSxoXiR2HYHpdPQmIPCv5zSNC6TewbLzYaW
         lcIzxHd6eZ2Sw==
Date:   Tue, 29 Oct 2019 12:41:54 +0000
From:   Torin Carey <torin@tcarey.uk>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org
Subject: [PATCH] unix.7: tfix
Message-ID: <20191029124153.GA14599@kappa>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Torin Carey <torin@tcarey.uk>
---
 man7/unix.7 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man7/unix.7 b/man7/unix.7
index a9d54c8c0..594894268 100644
--- a/man7/unix.7
+++ b/man7/unix.7
@@ -479,7 +479,7 @@ This can be used for authentication.
 The credentials are passed as a
 .I struct ucred
 ancillary message.
-Thus structure is defined in
+This structure is defined in
 .I <sys/socket.h>
 as follows:
 .IP
-- 
2.20.1

