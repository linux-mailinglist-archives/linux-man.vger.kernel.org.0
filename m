Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 6B2C3B9BAD
	for <lists+linux-man@lfdr.de>; Sat, 21 Sep 2019 02:23:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2405090AbfIUAWF (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 20 Sep 2019 20:22:05 -0400
Received: from mu.digital-domain.net ([108.61.197.113]:39580 "EHLO
        mu.digital-domain.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2404801AbfIUAWE (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 20 Sep 2019 20:22:04 -0400
X-Greylist: delayed 2375 seconds by postgrey-1.27 at vger.kernel.org; Fri, 20 Sep 2019 20:22:03 EDT
Received: from kappa.digital-domain.net (kappa.digital-domain.net [IPv6:2001:8b0:36c:cc91::ac])
        (authenticated bits=0)
        by mu.digital-domain.net (8.14.7/8.14.7) with ESMTP id x8KNgNgk025042
        (version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
        Sat, 21 Sep 2019 00:42:26 +0100
From:   Andrew Clayton <andrew@digital-domain.net>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org,
        Andrew Clayton <andrew@digital-domain.net>
Subject: [PATCH 0/1] Point out the interactions of signalfd with epoll & fork
Date:   Sat, 21 Sep 2019 00:42:10 +0100
Message-Id: <20190920234211.57596-1-andrew@digital-domain.net>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Michael,

I was just hit by this interaction of signalfd with epoll & fork.
Basically if you add a signalfd file descriptor to epoll and then fork,
you won't receive notifications for sent signals,

Hopefully this addition to the man page will help avoid people head
scratching in the future.

I've added links and quotes to the sources for this problem in the
commit message.

Hopefully the text is OK. I don't really understand what is going on
underneath.

Cheers,
Andrew

Andrew Clayton (1):
  signalfd.2: Note about interactions with epoll & fork

 man2/signalfd.2 | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

-- 
2.21.0

